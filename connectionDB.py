import mysql.connector

class ConnectionDB():
    def __init__(self, host="localhost", user="root", pwd="", db="users"):
        self.host = host
        self.user = user
        self.pwd = pwd
        self.db = db

    def connect(self):
        self.con = mysql.connector.connect(host = self.host,
                                           user = self.user,
                                           password = self.pwd,
                                           database = self.db)
        
        self.cursor = self.con.cursor()
    
    def disconnect(self):
        self.con.close()

    def toExecuteDQL(self, sql):
        self.connect()
        self.cursor.execute(sql)
        res =  self.cursor.fetchall()
        self.disconnect()
        return res
    
    def toExecuteDML(self, sql):
        self.connect()
        self.cursor.execute(sql)
        self.con.commit()
        self.disconnect()