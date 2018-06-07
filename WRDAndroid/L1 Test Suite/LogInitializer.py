import logging
import logging.config
from logging import StreamHandler
from fileinput import filename
import getpass


class Log:
    log=None
    def __init__(self):
        user=getpass.getuser()
        self.configLog("/home/"+user+"/WRDAndroid/pythonLog.log")
    @staticmethod
    def configLog(LOG_FILE):
        global log
        logger = logging.getLogger("-")
        logger.setLevel(logging.INFO)
        cons= logging.StreamHandler()
        cons.setLevel(logging.INFO)
        formatter = logging.Formatter("%(asctime)s - %(name)s - %(levelname)s - %(message)s")
        cons.setFormatter(formatter)
        sizeConfig = logging.handlers.RotatingFileHandler(LOG_FILE, maxBytes=1024*1024*1024*2, backupCount=1)
        sizeConfig.setFormatter(formatter)
        logger.addHandler(cons)
        logger.addHandler(sizeConfig)
        log=logger

    def logInfo(self,str):
        log.info(str)
l=Log()
#l.logInfo("HII")
# l.logInfo("Sivaa")
    

    