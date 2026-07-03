import json


FILE_NAME = "stock.txt"


def load_data():

    try:

        file = open(FILE_NAME, "r")

        data = file.read()

        file.close()
#file text → python

        if data == "":
            return {}

        return json.loads(data)

    except:
        return {}


def save_data(data):

    file = open(FILE_NAME, "w")
#python → file text
    file.write(json.dumps(data))

    file.close()


def write_log(message):

    file = open("log.txt", "a")

    file.write(message + "\n")

    file.close()
