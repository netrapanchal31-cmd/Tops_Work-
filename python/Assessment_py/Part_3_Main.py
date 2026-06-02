from Part_1_Manager import add_fruit, view_fruits, update_fruit_stock
from part_2_customer import buy_fruit


def manager_menu():

    while True:

        print("\n FRUIT MANAGER ")
        print("1. Add Fruit")
        print("2. View Fruits")
        print("3. Update Fruit Stock")
        print("4. Back")

        choice = input("Enter Choice: ")

        if choice == "1":
            add_fruit()

        elif choice == "2":
            view_fruits()

        elif choice == "3":
            update_fruit_stock()

        elif choice == "4":
            break

        else:
            print("Invalid Choice")


def customer_menu():

    while True:

        print("\n CUSTOMER MENU ")
        print("1. View Fruits")
        print("2. Buy Fruit")
        print("3. Back")

        choice = input("Enter Choice: ")

        if choice == "1":
            view_fruits()

        elif choice == "2":
            buy_fruit()

        elif choice == "3":
            break

        else:
            print("Invalid Choice")


while True:

    print("\n FRUIT STORE ")
    print("1. Fruit Manager")
    print("2. Customer")
    print("3. Exit")

    choice = input("Enter Choice: ")

    if choice == "1":
        manager_menu()

    elif choice == "2":
        customer_menu()

    elif choice == "3":
        print("Thank You")
        break

    else:
        print("Invalid Choice")