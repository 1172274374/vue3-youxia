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
    name1 = 'test'
    ##创建表
    createDataBase(name1)
    ##插入
    saveData(name1)


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
def getData(baseurl):

    data_name = []
    data_xijie = []
    data_num = []
    data_href = []
    data_img = []
    ran = []

    ##配置正则
    reg_name = re.compile('>(.*)<\/a')
    reg_xijie = re.compile('<p>([\s\S]*?)<\/p>')
    reg_href = re.compile('href="(.*?)"')
    reg_img = re.compile('data-original="(.*?)"')
    
    url = baseurl
    html = askURL(url)
    # 逐一解析数据
    soup = BeautifulSoup(html, "html.parser")  # 解析html对象，用html.parser解析器
    # 查找符合要求的字符串，存储在列表中
    data = soup.find_all('div',attrs={'class':['l-pc-li']})  

    data = str(data)
    ##----------------------------分割线------------------------------------##




    ##名字
    name = reg_name.findall(data)

    data_name = name


    ##细节
    xijie = reg_xijie.findall(data)


    for i in xijie:

        i = str(i).strip().replace('\t','')
        ran.append(i)

    
    for i in range(len(ran)):
        if i%2 == 0:
            data_xijie.append(ran[i])
        else:
            data_num.append(ran[i])

    ## herf跳转
    href = reg_href.findall(data)

    data_href = href

    ## 图片
    img = reg_img.findall(data)

    for i in img:
        i = 'http:'+i
        data_img.append(i)

    datalist = {
        "name":data_name,
        "num":data_num,
        "xijie":data_xijie,
        "href":data_href,
        "img":data_img
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
def saveData(name1 = 'test'):
    baseurl = "https://www.ali213.net/"
    # #1、爬取网页
    datalist = getData(baseurl)

    name = datalist.get('name')
    num = datalist.get('num')
    xijie = datalist.get('xijie')
    href = datalist.get('href')
    img = datalist.get('img')

    with UsingMysql(log_time=True) as um:



        for  index in range(len(name)):
            sql = 'INSERT INTO {}(name,xijie,number,href,img) VALUES ("{}","{}","{}","{}","{}")'.format(name1,name[index],xijie[index],num[index],href[index],img[index])

            print(sql)
            um.fetch_one(sql)
    

def createDataBase(name):

    with UsingMysql(log_time=True) as um:

            sql = 'CREATE TABLE `ran`.`{}`  (`id` int(22) NOT NULL AUTO_INCREMENT,`name` varchar(255) NULL,`xijie` varchar(255) NULL,`number` varchar(255) NULL,`href` varchar(255) NULL,`img` varchar(255) NULL,PRIMARY KEY (`id`))'.format(name)

            um.fetch_one(sql)


if __name__ == '__main__':
    main()
