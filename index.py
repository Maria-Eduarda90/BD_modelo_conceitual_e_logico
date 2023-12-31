from connectionDB import ConnectionDB


c = ConnectionDB()
table = c.toExecuteDQL("SELECT * FROM tb_users")
print(table)