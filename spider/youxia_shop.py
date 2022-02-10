from cmath import log
from bs4 import BeautifulSoup  # 网页解析，获取数据
import re  # 正则表达式，进行文字匹配
import urllib.request, urllib.error  # 指定url，获取网页数据
import xlwt  # 进行excel操作
from pymysql_lib_1 import UsingMysql


# 主页商城栏目爬取

def main():

    name1 = 'masterpiece'

    saveData(name1)

    # getData()






    ##----------------------------分割线-----------------配置爬虫-------------------##
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



def getData():

    data_title = []  #标题
    data_tag = [] #标签
    data_slogan = [] #标语
    data_img = [] #主图片
    data_img_href = [] #主图片href
    data_zhuanti_href = [] #专题href
    data_luntan_href = []   #论坛href
    data_strategy_title = []    #攻略标题
    data_strategy_title_sql = []    
    data_strategy_href = [] #攻略href
    data_strategy_href_sql = []
    data_video_img = [] #视频图片
    data_video_img_sql = []
    data_video_href = []    #视频地址
    data_video_href_sql = []    
    data_score_youxia = []  #游侠打分
    data_score_player = []  #玩家打分
    data_youxia_comments = []   #游侠简介
    data_player_comments = []   #玩家简介
    data_steam_price = []   #steam价格
    data_player_price = []  #凤凰商城价格
    data_shop_href = [] #商店地址
    data_shop_img = []  #商店图片

    ##----------------------------分割线-----------------配置正则-------------------##
    reg_title = re.compile('<span>(.*)<\/span>')

    reg_tag= re.compile('<span>(.*)<\/span>')

    reg_slogan = re.compile('<p>(.*)<\/p>')

    reg_img = re.compile('original="(.*?)"')

    reg_img_href = re.compile('href="(.*?)"')

    reg_strategy_href = re.compile('href="(.*?)"')

    reg_strategy_title = re.compile('title="(.*?)<\/a>')

    reg_video_img = re.compile('data-original="(.*?)"')

    reg_video_href = re.compile('href="(.*?)"')

    reg_score = re.compile('<span>(.*?)<\/span>')

    reg_comments= re.compile('<p>(.*\s*?)<\/p>')

    reg_steam_price= re.compile('<span>(.*?)<\/span>')

    reg_player_price = re.compile('<b>(.*?)<\/b>')

    reg_shop_href = re.compile('href="(.*?)"')

    reg_shop_img = re.compile('original="(.*?)"')



    ##----------------------------分割线-----------------获取网页-------------------##


    baseurl = "https://www.ali213.net"

    html = askURL(baseurl)
    # 逐一解析数据
    soup = BeautifulSoup(html, "html.parser")  # 解析html对象，用html.parser解析器
    # 查找符合要求的字符串，存储在列表中
    data = soup.find_all('div',attrs={'class':['s3-p1-ul toggle-ul']})
    data1 = soup.find_all('div',attrs={'class':['s3-p1-head']})
    data2 = soup.find_all('div',attrs={'class':['s3-info-l']})
    data3 = soup.find_all('div',attrs={'class':['tj-right']})
    data4 = soup.find_all('div',attrs={'class':['s3-info-video']})
    data5 = soup.find_all('div',attrs={'class':['toggle-ul s3-r-ul fn-clear']})
    data6 = soup.find_all('div',attrs={'class':['toggle-con-ul s3-r-con']})
    data7 = soup.find_all('div',attrs={'class':['s3-to-buy']})
    

    data = str(data)
    data1 = str(data1)
    data2 = str(data2)
    data3 = str(data3)
    data4 = str(data4)
    data5 = str(data5)
    data6 = str(data6)
    data7 = str(data7)

    # print(data4)


    ##----------------------------分割线-----------------爬取数据-------------------##

    title = reg_title.findall(data)
    tag = reg_tag.findall(data1)
    slogan = reg_slogan.findall(data1)
    imgs = reg_img.findall(data2)
    imgs_href = reg_img_href.findall(data2)
    strategy_title  = reg_strategy_title.findall(data3)
    video_img = reg_video_img.findall(data4)
    video_href = reg_video_href.findall(data4)
    score = reg_score.findall(data5)
    comments = reg_comments.findall(data6)


    #直接获取
    data_shop_img = reg_shop_img.findall(data7)
    data_shop_href = reg_shop_href.findall(data7)
    data_player_price = reg_player_price.findall(data7)
    data_steam_price = reg_steam_price.findall(data7)    
    data_strategy_href  = reg_strategy_href.findall(data3) 

    ##----------------------------分割线-------------解析数据-----------------------##
    

    for i in range(len(comments)):
        comments[i] = comments[i].strip()
        if i % 2 ==0:
            data_youxia_comments.append(comments[i])
        else:
            data_player_comments.append(comments[i])

    

    for i in range(len(score)):
        if i % 2 ==0:
            data_score_youxia.append(score[i])
        else:
            data_score_player.append(score[i])

    for i in video_img:
        if i not in data_video_img:
            i = 'https:'+i
            data_video_img.append(i)

    for i in range(10):
        value = ','.join(data_video_img[i*2:(i+1)*2])
        data_video_img_sql.append(value)

    for i in video_href:
        if i not in data_video_href:
            data_video_href.append(i)

    for i in range(10):
        value = ','.join(data_video_href[i*2:(i+1)*2])
        data_video_href_sql.append(value)

    for i in strategy_title:
        index = i.find('>')
        i = i[index+1:]
        data_strategy_title.append(i)

    for i in range(len(strategy_title)):
        if i>=0 and i<4:
                data_strategy_title.pop(0)
                data_strategy_href.pop(0)
        elif i>=4 and i<8:
                data_strategy_title.pop(8)
                data_strategy_href.pop(8)
        elif i>=8 and i<12:
                data_strategy_title.pop(16)
                data_strategy_href.pop(16)
        elif i>=13 and i<18:
                data_strategy_title.pop(24)
                data_strategy_href.pop(24)
        elif i>=18 and i<23:
                data_strategy_title.pop(32)
                data_strategy_href.pop(32)
        elif i>=25 and i<31:
                data_strategy_title.pop(40)
                data_strategy_href.pop(40)
        elif i>=31 and i<36:
                data_strategy_title.pop(48)
                data_strategy_href.pop(48)
        elif i>=36 and i<40:
                data_strategy_title.pop(56)
                data_strategy_href.pop(56)
        elif i>=40 and i<45:
                data_strategy_title.pop(64)
                data_strategy_href.pop(64)
        elif i>=46 and i<49:
                data_strategy_title.pop(72)
                data_strategy_href.pop(72)

    for i in range(10):
        value = ','.join(data_strategy_title[i*8:(i+1)*8])
        data_strategy_title_sql.append(value)

        value_href = ','.join(data_strategy_href[i*8:(i+1)*8])
        data_strategy_href_sql.append(value_href)
       
    for i in range(3):
        
        for y in imgs_href[i::3]:
            if i == 0:
                y='https:'+y
                data_img_href.append(y)
            elif i == 1:
                data_zhuanti_href.append(y)
            else:
                data_luntan_href.append(y)
    
    for i in imgs:
        i = 'https:'+i
        data_img.append(i)
    
    for i in slogan:
        data_slogan.append(i)

    for i in tag:
        i = str(i).replace('</span><span>','')
        data_tag.append(i)

    for i in range(len(title)):
        if i == 9:
            i = title[i][2:]
        else:
            i = title[i][1:]


        data_title.append(i)
        

    # print(len(data_shop_href)) 
    # print(len(data_player_price))
    # print(len(data_steam_price))
    # print(len(data_shop_img))
    # print(len(data_player_comments))
    # print(len(data_youxia_comments))
    # print(len(data_score_youxia))
    # print(len(data_score_player))
    # print(len(data_video_img_sql))
    # print(len(data_video_href_sql))
    # print(len(data_strategy_href_sql))
    # print(len(data_strategy_title_sql))
    # print(len(data_slogan))
    # print(len(data_luntan_href))
    # print(len(data_zhuanti_href))
    # print(len(data_img))
    # print(len(data_tag))
    # print(len(data_title))

    datalist = {
        'title':data_title,
        'tag':data_tag,
        'img':data_img,
        'zhuanti_href':data_zhuanti_href,
        'luntan_href':data_luntan_href,
        'slogan':data_slogan,
        'strategy_title':data_strategy_title_sql,
        'strategy_href':data_strategy_href_sql,
        'video_href':data_video_href_sql,
        'video_img':data_video_img_sql,
        'score_player':data_score_player,
        'score_youxia':data_score_youxia,
        'comments_player':data_player_comments,
        'comments_youxia':data_youxia_comments,
        'shop_img':data_shop_img,
        'steam_price':data_steam_price,
        'youxia_price':data_player_price,
        'shop_href':data_shop_href
    }

    return datalist


    ##----------------------------分割线-------------插入数据库-----------------------##
def saveData(name1):

    # #1、爬取网页
    datalist = getData()


    title = datalist.get('title')
    tag = datalist.get('tag')
    img = datalist.get('img')
    zhuanti_href = datalist.get('zhuanti_href')
    luntan_href = datalist.get('luntan_href')
    slogan = datalist.get('slogan')
    strategy_title = datalist.get('strategy_title')
    strategy_href = datalist.get('strategy_href')
    video_img = datalist.get('video_img')
    video_href = datalist.get('video_href')
    score_youxia = datalist.get('score_youxia')
    comments_youxia = datalist.get('comments_youxia')
    comments_player = datalist.get('comments_player')
    shop_img = datalist.get('shop_img')
    steam_price = datalist.get('steam_price')
    shop_href = datalist.get('shop_href')
    youxia_price = datalist.get('youxia_price')
    score_player = datalist.get('score_player')
    


    with UsingMysql(log_time=True) as um:



        for index in range(len(title)):
            sql = 'INSERT INTO {}(title,tag,img,zhuanti_href,luntan_href,slogan,strategy_title,strategy_href,video_img,video_href,score_youxia,youxia_comments,player_comments,shop_img,shop_steam_price,shop_href,shop_youxia_price,score_player) VALUES ("{}","{}","{}","{}","{}","{}","{}","{}","{}","{}","{}","{}","{}","{}","{}","{}","{}","{}")'.format(name1,title[index],tag[index],img[index],zhuanti_href[index],luntan_href[index],slogan[index],strategy_title[index],strategy_href[index],video_img[index],video_href[index],score_youxia[index],comments_youxia[index],comments_player[index],shop_img[index],steam_price[index],shop_href[index],youxia_price[index],score_player[index])

            print(sql)
            um.fetch_one(sql)
    


if __name__ == '__main__':
    main()