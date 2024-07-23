# EmployeeTrackingApp

## Overview
EmployeeTrackingApp is a web application designed to manage and track employee information and activities. This project leverages modern web technologies to provide a scalable and user-friendly platform for employee management.

## Table of Contents
- [Overview](#overview)
- [Project Structure](#project-structure)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Configuration](#configuration)
  - [Database Setup](#database-setup)
  - [Running the Application](#running-the-application)
- [Usage](#usage)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Contributing](#contributing)

## Project Structure
The project is structured as follows:

- `README.md` - The main README file for the project.
- `build.xml` - The Ant build script.
- `build` - The directory containing build files.
- `dist` - The directory containing distribution files.
- `nbproject` - The NetBeans project files.
- `src` - The directory containing the source code.
  - `main` - The main Java application code.
  - `resources` - The resource files.
- `web` - The directory containing web application files.

## Getting Started

### Prerequisites
To run this project, you will need:

- JDK 8 or later
- Apache Ant
- MySQL or another relational database

### Installation

1. **Clone the repository:**
   ```sh
   git clone https://github.com/Parmeet15/EmployeeTrackingApp.git
   cd EmployeeTrackingApp
   ```

2. **Build the project:**
   Run the Ant build script to compile the project:
   ```sh
   ant build
   ```

### Configuration

Update the configuration settings in the `src/main/resources/application.properties` file:

```properties
spring.datasource.url=jdbc:mysql://<your-server>:3306/employeetrackingdb
spring.datasource.username=<your-username>
spring.datasource.password=<your-password>
spring.jpa.hibernate.ddl-auto=update
```

### Database Setup

1. **Create the database:**
   Ensure your MySQL instance is running and create a new database named `employeetrackingdb`.

2. **Run the application:**
   The application will automatically create the necessary tables when it starts up.

### Running the Application

1. **Run the application:**
   Use the following command to run the application:
   ```sh
   ant run
   ```

2. **Access the application:**
   Open your web browser and go to `http://localhost:8080` to access the application.

## Usage
After running the application, you can access the following features:

- **Employee Management:** Add, update, delete, and view employee details.
- **Activity Tracking:** Record and view employee activities.
- **Reporting:** Generate and view reports on employee performance.

## Features
- **User Management:** Register, login, and manage user accounts.
- **Employee Records:** Create, update, delete, and view employee records.
- **Activity Logs:** Track employee activities and generate reports.
- **Search and Filter:** Search and filter employee records and activities based on various criteria.

## Technologies Used
- **Java:** The main programming language for the application.
- **Spring Boot:** For building the backend services.
- **MySQL:** The relational database management system.
- **Thymeleaf:** For server-side rendering of web pages.
- **Bootstrap:** For responsive design and styling.
- **JavaScript:** For client-side scripting.

## Contributing
Contributions are welcome! To contribute:

1. **Fork the repository:**
   Click the "Fork" button on the repository page to create a copy of the repository in your GitHub account.

2. **Clone the forked repository:**
   ```sh
   git clone <your-forked-repository-url>
   cd EmployeeTrackingApp-master
   ```

3. **Create a new branch:**
   ```sh
   git checkout -b feature/your-feature-name
   ```

4. **Make your changes:**
   Implement your feature or bug fix.

5. **Commit your changes:**
   ```sh
   git add .
   git commit -m "Add your commit message"
   ```

6. **Push to your branch:**
   ```sh
   git push origin feature/your-feature-name
   ```

7. **Create a pull request:**
   Go to the original repository and create a pull request from your forked repository.




