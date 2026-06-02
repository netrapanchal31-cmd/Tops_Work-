import json


FILE_NAME = "stock.txt"

#Reads data from stock.txt for that use load_data

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

#Saves latest fruits into stock.txt and it remove content and write new one

def save_data(data):

    file = open(FILE_NAME, "w")
#python → file text
    file.write(json.dumps(data))

    file.close()

#Stores activity history into log.txt it will handle the old data

def write_log(message):

    file = open("log.txt", "a")

    file.write(message + "\n")

    file.close()