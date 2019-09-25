# Building out a many-to-many relationship

1. Figure out **classes** 

2. **Relationship**

3. **Attributes** for classes

4. Create classes with initialize method

5. **TEST** your **CODE**

6. **attr_macros** (attr_reader/attr_wrirter/attr_accessor)

7. Create **class variable** (@@all) and **class method** (.all)

8. **TEST** your **CODE**

9. From the "many" classes, create a method to get all of the "joiner" class instances that belong to that instance (**many-many**) / From the "one" classes, create a method to get all of the "many" instances that belong to that instance (**one-many**)

10. **TEST** your **CODE**

11. From the "many" classes, create a method to get all of the other "many" instances that belong to that instance

12. **TEST** your **CODE**

13. Check the Deliverables 

## customer
- Customer.new() should create a new customer with a name and account_type

- Customer#name and Customer#account_type should work

- Customer.all should return all customer instances

- Customer#accounts should return all account that belong to the customer

- Customer#banks should return all banks that are associated with the customer

- Customer#balance should return total balance from all the accounts from all the bank that are associated with the customer

## bank
- Bank.new() should create a new bank with a name

- Bank#name should work

- Bank.all should return all bank instances

- Bank#account should return all account that belong to the bank

- Bank#customers should return all of the Customers that are associated with the bank

## account
- Account.new() should create a new account that takes an customer instance, bank instance and balance

- Account#customer, Account#bank and Account#balance should work

- Account.all should return all account instances
