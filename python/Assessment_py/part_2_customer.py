from Main import load_data, save_data, write_log


def buy_fruit():

    fruits = load_data()

    if len(fruits) == 0:
        print("No Fruits Available")
        return

    print("\n AVAILABLE FRUITS ")

    for fruit, details in fruits.items():

        print(f"{fruit} - Qty: {details['qty']} - Price: {details['price']}")

    user_input = input("Enter Fruit Name: ").strip().lower()

    real_fruit = None

    for fruit in fruits:

        for fruit in fruits:

          if fruit.strip().lower() == user_input:
            real_fruit = fruit
            break

    if real_fruit is None:
        print("Fruit Not Available")
        return

    try:
        buy_qty = int(input("Enter Quantity: "))

    except:
        print("Invalid Quantity")
        return

    if buy_qty > fruits[real_fruit]["qty"]:
        print("Not Enough Stock")
        return

    total = buy_qty * fruits[real_fruit]["price"]

    fruits[real_fruit]["qty"] -= buy_qty

    save_data(fruits)

    write_log(f"{real_fruit} Purchased")

    print(f"Total Amount = {total}")
    print("Purchase Successful")