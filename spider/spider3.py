from bs4 import BeautifulSoup  # 网页解析，获取数据
import re  # 正则表达式，进行文字匹配
import urllib.request, urllib.error  # 指定url，获取网页数据
import xlwt  # 进行excel操作
from pymysql_lib_1 import UsingMysql

# 步骤：
# 1、爬取网页
# 2、逐一解析数据
# 3、保存数据

# 定义筛选链接的正则表达式
findLink = re.compile(r'<a href="(.*?)"')  # 创造一个正则表达式对象

def main():
    ##表名
    name1 = 'zhixun'
    # # ##创建表
    # createDataBase(name1)
    # # ##插入
    saveData(name1)

    # getData()






##配置爬虫设置
def askURL(url):
    head = {
        "User-Agent": "Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36"
    }
    request = urllib.request.Request(url, headers=head)
    html = ""
    try:
        response = urllib.request.urlopen(request)
        html = response.read().decode("utf-8")

    except urllib.error.URLError as e:
        if hasattr(e, "code"):
            print(e.code)
        if hasattr(e, "reason"):
            print(e.reason)
    return html


# 爬取网页
def getData():

    data_title = []
    data_href = []
    data_desc = []
    data_date = []
    data_write = []
    data_img = []

    # ##配置正则
    reg_title = re.compile('title="(.*?)"')

    reg_href = re.compile('href="(.*?)"')

    reg_desc = re.compile('"lone_f_r_t">([\s\S]*?)<\/div>')

    reg_img = re.compile('src="(.*?)"')

    reg_date_write = re.compile('<span>(.*?)<\/span>')

    for i in range(2,11):
        baseurl = "https://www.ali213.net/news/new/index_{}.html".format(i)

        url = baseurl
        html = askURL(url)
        # 逐一解析数据
        soup = BeautifulSoup(html, "html.parser")  # 解析html对象，用html.parser解析器
        # 查找符合要求的字符串，存储在列表中
        data = soup.find_all('div',attrs={'class':['n_lone']})  

        data = str(data)
        ##----------------------------分割线------------------------------------##
        title = reg_title.findall(data)

        href = reg_href.findall(data)

        desc = reg_desc.findall(data)

        imgs = reg_img.findall(data)

        reg_data= reg_date_write.findall(data)

        for i in range(len(title)):
            if title[i] not in data_title:
                data_title.append(title[i])


        for i in range(len(href)):

            if href[i] not in data_href:
                data_href.append(href[i])


        for i in range(len(desc)):
            desc[i].strip()
            if desc[i] not in data_desc:
                data_desc.append(desc[i])

        for i in range(len(reg_data)):
            if i%2 == 0:
                data_date.append(reg_data[i])
            else:
                data_write.append(reg_data[i])

        for i in range(len(imgs)):
            data_img.append(imgs[i])
    
    data_write.pop(84)
    data_date.pop(84)
    data_write.pop(84)
    data_date.pop(84)
    data_write.pop(84)
    data_date.pop(84)
    data_title.pop(84)
    data_desc.pop(84)
    data_href.pop(84)
    data_img.pop(121)
    data_img.pop(121)
    data_img.pop(121)


    data_write.pop(85)
    data_img.pop(121)
    data_date.pop(85)
    data_title.pop(85)
    data_desc.pop(85)
    data_href.pop(85)
    data_href.pop(85)
    data_title.pop(103)
    data_href.pop(103)
        
    # print(data_write[118])
    # print(data_date[118])
    # print(data_title[118])
    # print(data_desc[118])
    # print(data_href[118])
    # print(data_img[121])


    # print(len(data_write))
    # print(len(data_date))
    # print(len(data_title))
    # print(len(data_desc))
    # print(len(data_href))
    # print(len(data_img))

    datalist = {
        'title':data_title,
        'desc':data_desc,
        'href':data_href,
        'date':data_date,
        'writer':data_write,
        'imgs':data_img
    }

    # print(ran)

    # for item in ran:  # 查找所有包含class属性且class属性值为item的，名字为div的标签
    #     item = str(item).replace("'",'').replace(',','').strip()
    #     shi = reg1.findall(item)
    #     shi = str(shi).replace('>','').replace('<','').replace(' ','').replace("'",'').replace('[','').replace(']','')
    #     datalist.append(shi)
        
    #     data = reg.findall(item)
    #     datalist.append(data)
    #     # link = re.findall(findLink, item)[0]  # 用正则表达式查找指定文件

    # 输出结果
    return datalist


# 保存数据
def saveData(name1):

    # #1、爬取网页
    datalist = getData()


    title = datalist.get('title')

    href = datalist.get('href')

    desc = datalist.get('desc')

    date = datalist.get('date')

    writer = datalist.get('writer')

    img = datalist.get('imgs')


    # print(title)
    # print(desc)
    # print(href)
    # print(date)
    # print(writer)
    # print(img)

    with UsingMysql(log_time=True) as um:



        for  index in range(len(title)):
            sql = 'INSERT INTO {}(title,simple_into,href,date,writer,img) VALUES ("{}","{}","{}","{}","{}","{}")'.format(name1,title[index],desc[index],href[index],date[index],writer[index],img[index])

            print(sql)
            um.fetch_one(sql)
    

def createDataBase(name):

    with UsingMysql(log_time=True) as um:

            sql = 'CREATE TABLE `ran`.`{}`  (`id` int NOT NULL AUTO_INCREMENT,`title` varchar(255) NULL,`simple_into` varchar(255) NULL,`href` varchar(255) NULL,`date` varchar(255) NULL,`writer` varchar(255) NULL,`img` varchar(255) NULL,`datetime` datetime NULL ON UPDATE CURRENT_TIMESTAMP,PRIMARY KEY (`id`));'.format(name)

            um.fetch_one(sql)


if __name__ == '__main__':
    main()
