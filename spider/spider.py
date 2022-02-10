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

    saveData()
    # #2、逐一解析数据
    # savaPath = r"\豆瓣电影Top250.xls"
    # #3、保存数据
    # saveData(savaPath)

# 得到指定的一个url的网页的内容
# head用来模拟浏览器头部信息，向豆瓣服务器发送消息
# 用户代理，表示告诉豆瓣服务器，我们是什么类型的机器以及浏览器
# (本质上是告诉浏览器，我们可以接收什么类型的文件内容、我们可以显示什么文件内容）
def askURL(url):
    head = {
        "User-Agent": "Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36"
    }
    request = urllib.request.Request(url, headers=head)
    html = ""
    try:
        response = urllib.request.urlopen(request)
        html = response.read().decode("utf-8")
        # print(html)
    except urllib.error.URLError as e:
        if hasattr(e, "code"):
            print(e.code)
        if hasattr(e, "reason"):
            print(e.reason)
    return html


# 爬取网页
def getData(baseurl):
    # 爬取网页并放在一个list中
    datalist = {
        
    }
    # 调用获取页面信息，重复10次，每次25条
    # for i in range(1,10):

    reg_img = re.compile('original="(.*?)"')
    reg_alt = re.compile('alt="(.*?)"')
    
    url = baseurl
    html = askURL(url)
    # 逐一解析数据
    soup = BeautifulSoup(html, "html.parser")  # 解析html对象，用html.parser解析器
    # 查找符合要求的字符串，存储在列表中
    data = soup.find_all('div',attrs={'class':['s1-l-con']})  # 存储电影信息

    data = str(data)

    img_src = reg_img.findall(data)
    img_title = reg_alt.findall(data)

    datalist = {
        'scr':img_src,
        'title':img_title
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
def saveData():
    baseurl = "https://www.ali213.net/"
    # #1、爬取网页
    datalist = getData(baseurl)
    

    data_src = datalist.get('scr')
    data_title = datalist.get('title')

    

    with UsingMysql(log_time=True) as um:
        
        for i,item in enumerate(data_src):
            if(item == ''):
                continue
            item = 'http:'+item

            # print(item)
            # print(data_title[i])

            sql = 'INSERT INTO banner(img,title) VALUES ("{}","{}")'.format(item,data_title[i])

            um.fetch_one(sql)
            # print(sql)



        # for item in data_title:
        #     if(item == ''):
        #         continue
            
        #     sql = 'INSERT INTO banner(title) VALUES ("{}")'.format(item)
        #     um.fetch_one(sql)


if __name__ == '__main__':
    main()
