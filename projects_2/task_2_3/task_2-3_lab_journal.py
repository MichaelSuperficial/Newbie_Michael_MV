fio = input("Введите ФИО исследователя: ")
date = input("Введите дату: ")
experiment = input("Введите название эксперимента: ")
conclusion = input("Введите вывод: ")

with open("journal.txt", "w", encoding="utf-8") as file:
    file.write("+--------------------------------------------------+\n")
    file.write("| Электронный лабораторный журнал                  |\n")
    file.write("+--------------------------------------------------+\n")
    file.write(f"| ФИО исследователя : {fio}\n")
    file.write(f"| Дата             : {date}\n")
    file.write(f"| Эксперимент      : {experiment}\n")
    file.write("+--------------------------------------------------+\n")
    file.write("| Вывод:                                           |\n")
    file.write(f"| {conclusion}\n")
    file.write("+--------------------------------------------------+\n")

print("Файл 'journal.txt' успешно сформирован!")
