from Main import load_data, save_data, write_log


def add_fruit():

    fruits = load_data()

    fruit_name = input("Enter Fruit Name: ").title()

    try:
        qty = int(input("Enter Quantity: "))
        price = int(input("Enter Price: "))

    except:
        print("Invalid Input")
        return

    fruits[fruit_name] = {
        "qty": qty,
        "price": price
    }

    save_data(fruits)

    write_log(f"{fruit_name} Added")

    print("Fruit Added Successfully")


def view_fruits():

    fruits = load_data()

    if len(fruits) == 0:
        print("No Fruits Available")
        return

    print("\n ALL FRUITS ")

    for fruit, details in fruits.items():

        print(f"Fruit Name : {fruit}")
        print(f"Quantity   : {details['qty']}")
        print(f"Price      : {details['price']}")
        print("-------------------------")


def update_fruit_stock():

    fruits = load_data()

    fruit_name = input("Enter Fruit Name: ").title()

    if fruit_name not in fruits:
        print("Fruit Not Found")
        return

    try:
        new_qty = int(input("Enter New Quantity: "))

    except:
        print("Invalid Quantity")
        return

    fruits[fruit_name]["qty"] = new_qty

    save_data(fruits)

    write_log(f"{fruit_name} Stock Updated")

    print("Stock Updated Successfully")



