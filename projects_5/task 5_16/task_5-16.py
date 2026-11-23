import psycopg2

connection = None
cursor = None

try:
    # Устанавливаем соединение с ВАШИМИ параметрами
    connection = psycopg2.connect(
        host="localhost",
        port="5435",               # Из вашего скриншота
        user="postgres",
        password="student",        # Из вашего сообщения
        database="student_task"    # Из вашего скриншота
    )
    print("Подключение к базе данных прошло успешно!")

    cursor = connection.cursor()

    # Выполняем SQL-запрос (выводим все товары)
    cursor.execute("SELECT id, name, category FROM products;")

    # Извлекаем все строки
    products = cursor.fetchall()

    print("\nСписок товаров:")
    for product in products:
        print(f"ID: {product[0]}, Название: {product[1]}, Категория: {product[2]}")

except Exception as error:
    print(f"Ошибка при работе с базой данных: {error}")

finally:
    if cursor is not None:
        cursor.close()
    if connection is not None:
        connection.close()
    print("\nСоединение закрыто.")