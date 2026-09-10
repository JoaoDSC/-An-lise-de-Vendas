import pandas as pd
import matplotlib.pyplot as plt
import mysql.connector

conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="vendas_db")

df = pd.read_sql("SELECT * FROM vendas", conn)
conn.close()

print(df.head())  

total_por_categoria = df.groupby('categoria')['valor'].sum()

print(total_por_categoria)  

total_por_categoria.plot(kind='bar', color=['#4C72B0', '#DD8452'])
plt.title('Total de Vendas por Categoria')
plt.xlabel('Categoria')
plt.ylabel('Valor Total (R$)')
plt.xticks(rotation=0)
plt.tight_layout()
plt.show()

