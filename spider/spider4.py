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
    name1 = 'introduction'
    # # ##创建表
    createDataBase(name1)
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
    # data_desc = []
    # data_date = []
    # data_write = []
    data_img = []

    # ##配置正则
    reg_title = re.compile('alt="(.*?)"')

    reg_href = re.compile('href="(.*?)"')

    # reg_desc = re.compile('"lone_f_r_t">([\s\S]*?)<\/div>')

    reg_img = re.compile('src="(.*?)"')

    # reg_date_write = re.compile('<span>(.*?)<\/span>')

    for i in range(2,10):
        baseurl = "https://gl.ali213.net/pc/All-0-0-hot-{}.html".format(i)

        url = baseurl
        html = askURL(url)
        # 逐一解析数据
        soup = BeautifulSoup(html, "html.parser")  # 解析html对象，用html.parser解析器
        # 查找符合要求的字符串，存储在列表中
        data = soup.find_all('div',attrs={'class':['glzjlistcon_one']})  

        data = str(data)
        ##----------------------------分割线------------------------------------##

        title = reg_title.findall(data)
        href = reg_href.findall(data)
        imgs = reg_img.findall(data)

        for i in title:
            if i not in data_title:
                data_title.append(i)

        for i in href:
            i = 'https://gl.ali213.net'+i
            if i not in data_href:
                data_href.append(i)

        for i in imgs:
            i = 'http:'+i
            if i not in data_img:
                data_img.append(i)

    data_href.pop(98)
    data_title.pop(98)



    # print(data_img[224])
    # print(len(data_img))
    # print(data_href[224])
    # print(len(data_href))
    
    # print(data_title[224])
    # print(len(data_title))


    datalist = {
        'title':data_title,
        'imgs':data_img,
        'hrefs':data_href
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

    hrefs = datalist.get('hrefs')

    imgs = datalist.get('imgs')


    print(title)
    print(hrefs)
    print(imgs)

    with UsingMysql(log_time=True) as um:



        for index in range(len(title)):
            sql = 'INSERT INTO {}(name,href,img) VALUES ("{}","{}","{}")'.format(name1,title[index],hrefs[index],imgs[index])

            print(sql)
            um.fetch_one(sql)
    

def createDataBase(name):

    with UsingMysql(log_time=True) as um:

            sql = 'CREATE TABLE `ran`.`{}`  (`id` int NOT NULL AUTO_INCREMENT,`name` varchar(255) NULL,`href` varchar(255) NULL,`img` varchar(255) NULL,PRIMARY KEY (`id`));'.format(name)

            um.fetch_one(sql)


if __name__ == '__main__':
    main()
