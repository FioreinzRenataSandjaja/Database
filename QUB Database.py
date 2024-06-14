import mysql.connector
from prettytable import PrettyTable
from mysql.connector import Error

# Set initial cursor as None
cursor = None
def select_feature():
    print("Select features available : ")
    print("[1]. Check Table Records")
    print("[2]. Write a query")
    print("[3]. Add a new record")
    print("[4]. CLOSING PROGRAM")
def show_table_data(table_name, connection):
    global cursor  #set cursor as a global variable
    try:
        if cursor is None:
            cursor = connection.cursor()
        cursor.execute(f"SELECT * FROM {table_name}")
        records = cursor.fetchall()
        # Extract column names from the cursor description
        headers = [desc[0] for desc in cursor.description]
        table = PrettyTable(headers)
        for record in records:
            table.add_row(record)
        print(table)
    except Error as e:
        print(f"Error while accessing {table_name}:", e)
def write_query ():
    query = input(f"Write an SQL query: ")
    global cursor
    try:
        if cursor is None:
            cursor = connection.cursor()
        cursor.execute(query)
        if cursor.description:
            records = cursor.fetchall()
            # Extract column names from the cursor description
            headers = [desc[0] for desc in cursor.description]
            table = PrettyTable(headers)
            for record in records:
                table.add_row(record)
            print(table)
        else:
            print("Query executed successfully.")
    except Error as e:
        print("Error executing SQL query:", e)
def add_data_to_table(connection, table_name):
    global cursor
    try:
        if cursor is None:
            cursor = connection.cursor()
        cursor.execute(f"SHOW COLUMNS FROM {table_name}")
        columns_info = cursor.fetchall()
        column_names = [col[0] for col in columns_info]
        # create an empty dictionary to store column values
        column_values = {}
        for column in column_names:
            if column.lower() != 'id':  # id is the auto-increment column
                value = input(f"Enter value for column '{column}': ")
                column_values[column] = value
        columns = ', '.join(column_values.keys())
        values = ', '.join(['%s' for _ in column_values.values()])
        insert_statement = f"INSERT INTO {table_name} ({columns}) VALUES ({values})"
        table = PrettyTable(['Column', 'Value'])
        for col, val in column_values.items():
            table.add_row([col, val])
        print(f"\nInserting data into {table_name} with the following values:")
        print(table)
        # Execute the SQL INSERT statement skipping the auto-increment column
        cursor.execute(insert_statement, tuple(val for val in column_values.values()))
        # save the changes to the database
        connection.commit()
        print(f"Data inserted into {table_name} successfully.")
    except Error as e:
        print(f"Error inserting data into {table_name}:", e)
try:
    connection = mysql.connector.connect(
        host= "fsandjaja03.webhosting1.eeecs.qub.ac.uk",
        port= 3306,
        database= "fsandjaja03",
        username= "fsandjaja03",
        password= "9Mxn1tFrfTyZ6Bbn"
    )
    if connection.is_connected():
        print("Successfully connected to Database")
        while True:
            select_feature()
            selection = input("Enter your selection: ")
            if selection == "1":
                Tablename = input("Table to check records: ")
                show_table_data(Tablename, connection)
            elif selection == "2":
                write_query()
            elif selection == "3":
                tablename = input("Table to add a record: ")
                add_data_to_table(connection,tablename)
            elif selection == "4":
                print("---------Program finished proceed to exit the program---------------")
                break
            else:
                print("Selection not Available, Please try again.")
except Error as e:
    print("Error connecting to mySQL:", e)

finally:
    # Check if the cursor is defined before trying to close it
    if cursor:
        cursor.close()
    if connection and connection.is_connected():
        # Close the connection in the finally block
        connection.close()
        print("Connection closed.")
