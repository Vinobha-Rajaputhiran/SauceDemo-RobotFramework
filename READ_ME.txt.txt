# SauceDemo Robot Framework Testing Project

## Overview
This project utilizes Robot Framework to automate testing for the SauceDemo website. It includes test cases for key functionalities such as user login, product selection, and checkout processes. The goal is to ensure that all features work as expected and to identify any issues promptly.

## Prerequisites
Before running the tests, ensure you have the following installed:

- Python (3.6 or higher)
- Robot Framework
- SeleniumLibrary
- WebDriver (e.g., ChromeDriver for Google Chrome)

## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Vinobha-Rajaputhiran/SauceDemo-RobotFramework
   cd SauceDemo-RobotFramework
   ```

2. Install required packages:
   ```bash
   pip install robotframework selenium
   ```

3. Download and install the appropriate WebDriver for your browser (e.g., ChromeDriver) and ensure it is in your system PATH.

## Project Structure

```
saucedemo-robotframework/
├── README.md
├── Resources/
│   ├── PageObject/
│   │   ├── Locators/
│   │   │   └── test_locators.py
│   │   ├── TestData/
│   │   │   └── test_data.py
│   │   └── KeywordDefinitionFiles/
│   │       ├── generic.robot
│   │       ├── loginpage.robot
│   │       ├── inventorypage.robot
│   │       └── checkoutpage.robot
│   └── Upload/
│       └── data.csv
├── TestCodes/
|   ├── Results/
│   ├── login_tests.robot
│   ├── inventory_tests.robot
│   ├── cart_tests.robot
│   └── checkout_tests.robot
|   └── user_login.robot 
└── requirements.txt
```

## Running the Tests

To execute the tests, navigate to the project directory and run the following command:

```bash
robot .
```

This command will execute all the test cases in the `TestCodes` directory and generate a report in the `Results` folder.

## Test Cases

### LoginPage Tests
- Validate the Invalid Login Error Message.
- Validate the Blank Username Login Error Message.
- Validate the Blank Password Login Error Message.

### InventoryPage Tests
- Validate Footer Items.
- Validate Footer Message.
- Validate Sort Operations.
- Validate Successful Logout.
- Validate About Option.
- Validate Reset App State Option.

### CartPage Tests
- Validate Add Item To Cart.
- Validate Remove Item From Cart.

### CheckoutPage Tests
- Validate Checkout Of Products.
- Validate Item Total Of Cart.
- Validate Checkout Details Error Messages

## Reporting

After running the tests, you can view the generated report and log files in the `Results` directory. These files provide detailed information about the test execution, including passed and failed tests.

## Contributing

Contributions are welcome! Please create a pull request or open an issue for any enhancements or bug fixes.

## License

SauceDemo is a sample website built by SauceLabs that allows users to practice browser automation.  This webpage is licensed under © 2024 Sauce Labs.

## Acknowledgments

Thanks to the Robot Framework and Selenium communities for their invaluable resources and documentation that made this project possible.