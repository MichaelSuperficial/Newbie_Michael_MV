medium_name = input("Введите название питательной среды: ")
agar = input("Введите концентрацию агара (%): ")
temperature = input("Введите температуру стерилизации (°C): ")

with open("recipe.txt", "w", encoding="utf-8") as file:
    file.write(f"{medium_name}\n")
    file.write("\n")
    file.write("Параметры среды:\n")
    file.write(f"\t- Концентрация агара: {agar}%\n")
    file.write(f"\t- Температура стерилизации: {temperature}°C\n")

print("Файл 'recipe.txt' успешно сформирован!")
