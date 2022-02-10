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
    name1 = 'news'
    ##创建表
    createDataBase(name1)
    # ##插入
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
def getData(baseurl = "https://www.ali213.net/"):

    data_name = []
    data_href = []
    data_date = []

    ##配置正则
    reg_name = re.compile('title="(.*?)"')

    reg_href = re.compile('href="(.*?)"')

    reg_date = re.compile('<span>(.*?)<\/span>')

    
    url = baseurl
    html = askURL(url)
    # 逐一解析数据
    soup = BeautifulSoup(html, "html.parser")  # 解析html对象，用html.parser解析器
    # 查找符合要求的字符串，存储在列表中
    data = soup.find_all('ul',attrs={'class':['news-link-ul']})  

    data = str(data)
    ##----------------------------分割线------------------------------------##

    name = reg_name.findall(data)

    href = reg_href.findall(data)

    date = reg_date.findall(data)

    for i in range(140):
        data_name.append(name[i])
        data_href.append(href[i])
        data_date.append(date[i])

    
    

    datalist = {
        "name":data_name,
        "href":data_href,
        "date":data_date
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

    href = datalist.get('href')

    date = datalist.get('date')

    with UsingMysql(log_time=True) as um:



        for  index in range(len(name)):
            sql = 'INSERT INTO {}(name,href,date) VALUES ("{}","{}","{}")'.format(name1,name[index],href[index],date[index])

            print(sql)
            um.fetch_one(sql)
    

def createDataBase(name):

    with UsingMysql(log_time=True) as um:

            sql = 'CREATE TABLE `ran`.`{}`  (`id` int(22) NOT NULL AUTO_INCREMENT,`name` varchar(255) NULL,`href` varchar(255) NULL,`date` varchar(255) NULL,PRIMARY KEY (`id`))'.format(name)

            um.fetch_one(sql)


if __name__ == '__main__':
    main()
