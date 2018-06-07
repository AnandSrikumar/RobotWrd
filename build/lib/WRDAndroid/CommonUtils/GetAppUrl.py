import os
def getAppUrlForTestdroid():
        list=os.popen("python /home/shiva/WRDAndroid/CommonUtils/upload.py -k pDRwroaBc7QP58EHZXV9pvA5U8p5XFox -a /home/shiva/Downloads/app-debug.apk").read()
        print(list)
        newList=list.split(":",1)
        print(newList[1].strip())
        return newList[1].strip()
#getAppUrlForTestdroid()