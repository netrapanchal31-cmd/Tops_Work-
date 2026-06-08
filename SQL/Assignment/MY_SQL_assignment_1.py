import sqlite3

conn = sqlite3.connect("foodie.db")
cursor = conn.cursor()

cursor.execute("CREATE TABLE IF NOT EXISTS Restaurants "
"(id INTEGER PRIMARY KEY, name TEXT NOT NULL, cuisine TEXT, rating REAL)")

conn.commit()
print("Database and table created successfully.")

sample_restaurants = [(1, "Pasta Palace", "Italian", 4.7),
(2, "Burger Joint", "American", 3.9),
(3, "Sushi Zen", "Japanese", 4.5),]


