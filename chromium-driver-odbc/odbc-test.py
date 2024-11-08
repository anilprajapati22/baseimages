import pyodbc

def test_pyodbc_connection():
    # Define connection parameters. Replace with your test database details.
    server = 'YOUR_SERVER'           # e.g., 'localhost' or '127.0.0.1'
    database = 'YOUR_DATABASE'       # Replace with the database name
    username = 'YOUR_USERNAME'       # Your DB username
    password = 'YOUR_PASSWORD'       # Your DB password
    driver = 'ODBC Driver 18 for SQL Server'  # Adjust driver if needed

    try:
        # Set up the connection string
        connection_string = f"DRIVER={{{driver}}};SERVER={server};DATABASE={database};UID={username};PWD={password}"
        conn = pyodbc.connect(connection_string)
        
        # Run a test query
        cursor = conn.cursor()
        cursor.execute("SELECT 1")
        row = cursor.fetchone()
        
        if row:
            print("pyodbc installation and connection test succeeded.")
        else:
            print("Connection test failed.")

        # Close the connection
        cursor.close()
        conn.close()

    except pyodbc.Error as e:
        print("Error:", e)
        print("pyodbc installation or connection test failed.")

# Run the test function
if __name__ == "__main__":
    test_pyodbc_connection()
