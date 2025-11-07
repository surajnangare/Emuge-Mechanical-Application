import pyodbc

# Connect to SQL Server
conn = pyodbc.connect(
    'DRIVER={SQL Server};SERVER=YOUR_SERVER_NAME;DATABASE=Emuge;Trusted_Connection=yes;'
)
cursor = conn.cursor()

# Fetch and display product details
cursor.execute("SELECT * FROM Product")
for row in cursor.fetchall():
    print(row)

conn.close()
