# inventory_system

A simplified Laravel RESTful API for managing inventory across multiple warehouses

---

## How to Run the Project / Task

### 1. Install Dependencies

After cloning or downloading the project, open your terminal inside the project folder and run:

```bash
composer install

> Note: Make sure Composer is installed on your machine.




---

2. Configure the Database

1. Create a new database in your local database server (MySQL).


2. Copy the .env.example file to .env:



cp .env.example .env

3. Open the .env file and update the database connection settings:



DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=your_database_name
DB_USERNAME=your_db_username
DB_PASSWORD=your_db_password


---

3. Run Migrations

Run the migrations to create the necessary tables:

php artisan migrate


---

OR: Import Database File (included with project)

If you prefer, you can import the provided database SQL file instead of running migrations.

Use this command (replace username, database_name, and the file path accordingly):

mysql -u username -p database_name < path/to/database.sql


---

4. Run Seeders

To populate the database with sample data, run:

php artisan db:seed


---

5. Start the Local Development Server

Run the following command to start the local server:

php artisan serve

The application will be accessible at:

http://localhost:8000


---

6. Using the Postman Collection

To test the API endpoints:

1. Open Postman.


2. Click on Import.


3. Select the Postman Collection JSON file included in the project.


4. Click Import.



Now you can test all API routes easily.


---

OR: Use the Public Link

Access the published API at:

https://documenter.getpostman.com/view/5621977/2sB3BAMstq

```
