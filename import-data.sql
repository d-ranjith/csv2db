USE csv2db;

INSERT INTO employees(emp_id,name,address)
      values (1, "Don Draper","783 Park Ave, New York, NY 10021");
INSERT INTO expenses(expense_id,emp_id,category,expense_date, description, pre_tax_amt, tax_name,tax_amt   )
      values (1, 1,"Travel", STR_TO_DATE('12/1/2013', '%m/%d/%Y') , "Taxi ride",350.00 ,"NY Sales tax", 31.06);

INSERT INTO employees(emp_id,name,address)
      values (2, "Steve Jobs","1 Infinite Loop, Cupertino, CA 95014");
INSERT INTO expenses(expense_id,emp_id,category,expense_date, description, pre_tax_amt, tax_name,tax_amt   )
      values (2, 2,"Meals and Entertainment", STR_TO_DATE('12/15/2013','%m/%d/%Y'), "Team lunch", 235.00 ,"CA Sales tax", 17.63);

INSERT INTO employees(emp_id,name,address)
      values (3, "Jonathan Ive","1 Infinite Loop, Cupertino, CA 95014");
INSERT INTO expenses(expense_id,emp_id,category,expense_date, description, pre_tax_amt, tax_name,tax_amt   )
      values (3, 3,"Computer - Hardware", STR_TO_DATE('12/31/2013','%m/%d/%Y') , "HP Laptop", 999.00 ,"CA Sales tax", 74.93);

INSERT INTO employees(emp_id,name,address)
      values (4, "Tim Cook","11 Infinite Loop, Cupertino, CA 95014");
INSERT INTO expenses(expense_id,emp_id,category,expense_date, description, pre_tax_amt, tax_name,tax_amt   )
      values (4, 4,"Computer - Hardware", STR_TO_DATE('12/14/2013', '%m/%d/%Y'), "Microsoft Office", 899.00 ,"CA Sales tax", 67.43);

INSERT INTO employees(emp_id,name,address)
      values (5, "Sergey Brin","1600 Amphitheatre Parkway, Mountain View, CA 94043");
INSERT INTO expenses(expense_id,emp_id,category,expense_date, description, pre_tax_amt, tax_name,tax_amt   )
      values (5, 5,"Computer - Software", STR_TO_DATE('12/6/2013', '%m/%d/%Y'), "Cloud Subscription", 50.00 ,"CA Sales tax", 3.75);

INSERT INTO employees(emp_id,name,address)
      values (6, "Larry Page","1600 Amphitheatre Parkway, Mountain View, CA 94043");
INSERT INTO expenses(expense_id,emp_id,category,expense_date, description, pre_tax_amt, tax_name,tax_amt   )
      values (6, 6,"Computer - Software", STR_TO_DATE('12/9/2013', '%m/%d/%Y'), "iCloud Subscription", 50.00 ,"CA Sales tax", 3.75);

INSERT INTO employees(emp_id,name,address)
      values (7, "Eric Schmidt","1600 Amphitheatre Parkway, Mountain View, CA 94043");
INSERT INTO expenses(expense_id,emp_id,category,expense_date, description, pre_tax_amt, tax_name,tax_amt   )
      values (7, 7,"Meals and Entertainment", STR_TO_DATE('11/10/2013', '%m/%d/%Y'), "Coffee with Steve", 300.00 ,"CA Sales tax", 22.50);

INSERT INTO employees(emp_id,name,address)
      values (8, "Larry Page","1600 Amphitheatre Parkway, Mountain View, CA 94043");
INSERT INTO expenses(expense_id,emp_id,category,expense_date, description, pre_tax_amt, tax_name,tax_amt   )
      values (8, 8,"Travel", STR_TO_DATE('11/12/2013', '%m/%d/%Y'), "Taxi ride", 230.00 ,"CA Sales tax", 17.25);

INSERT INTO employees(emp_id,name,address)
      values (9, "Don Draper","783 Park Ave, New York, NY 10021");
INSERT INTO expenses(expense_id,emp_id,category,expense_date, description, pre_tax_amt, tax_name,tax_amt   )
      values (9, 9,"Meals and Entertainment", STR_TO_DATE('11/20/2013', '%m/%d/%Y'), "Client dinner", 200.00 ,"NY Sales tax", 15.00);

INSERT INTO employees(emp_id,name,address)
      values (10, "Eric Schmidt","1600 Amphitheatre Parkway, Mountain View, CA 94043");
INSERT INTO expenses(expense_id,emp_id,category,expense_date, description, pre_tax_amt, tax_name,tax_amt   )
      values (10, 10,"Travel", STR_TO_DATE('10/4/2013', '%m/%d/%Y'), "Flight to Miami", 200.00 ,"CA Sales tax", 15.00);

INSERT INTO employees(emp_id,name,address)
      values (11, "Don Draper","783 Park Ave, New York, NY 10021");
INSERT INTO expenses(expense_id,emp_id,category,expense_date, description, pre_tax_amt, tax_name,tax_amt   )
      values (11, 11,"Computer - Hardware", STR_TO_DATE('10/12/2013', '%m/%d/%Y'), "Macbook Air", 1999.00,"NY Sales tax", 177.41);

INSERT INTO employees(emp_id,name,address)
      values (12, "Steve Jobs","1 Infinite Loop, Cupertino, CA 95014");
INSERT INTO expenses(expense_id,emp_id,category,expense_date, description, pre_tax_amt, tax_name,tax_amt   )
      values (12, 12,"Computer - Software", STR_TO_DATE('12/9/2013','%m/%d/%Y'), "Dropbox Subscription", 15.00 ,"CA Sales tax", 1.13);

INSERT INTO employees(emp_id,name,address)
      values (13, "Tim Cook","1 Infinite Loop, Cupertino, CA 95014");
INSERT INTO expenses(expense_id,emp_id,category,expense_date, description, pre_tax_amt, tax_name,tax_amt   )
      values (13, 13,"Travel", STR_TO_DATE('9/18/2013','%m/%d/%Y'), "Taxi ride", 200.00 ,"CA Sales tax", 15.00);

INSERT INTO employees(emp_id,name,address)
      values (14, "Larry Page","1600 Amphitheatre Parkway, Mountain View, CA 94043");
INSERT INTO expenses(expense_id,emp_id,category,expense_date, description, pre_tax_amt, tax_name,tax_amt   )
      values (14, 14,"Office Supplies", STR_TO_DATE('9/30/2013', '%m/%d/%Y'), "Paper", 200.00 ,"CA Sales tax", 15.00);

INSERT INTO employees(emp_id,name,address)
      values (15, "Larry Page","1600 Amphitheatre Parkway, Mountain View, CA 94043");
INSERT INTO expenses(expense_id,emp_id,category,expense_date, description, pre_tax_amt, tax_name,tax_amt   )
      values (15, 15,"Meals and Entertainment", STR_TO_DATE('12/30/2013', '%m/%d/%Y'), "Dinner with potential acquisition", 200.00 ,"CA Sales tax", 15.00);

INSERT INTO employees(emp_id,name,address)
      values (16, "Eric Schmidt","1600 Amphitheatre Parkway, Mountain View, CA 94043");
INSERT INTO expenses(expense_id,emp_id,category,expense_date, description, pre_tax_amt, tax_name,tax_amt   )
      values (16, 16,"Computer - Hardware", STR_TO_DATE('1/6/2014', '%m/%d/%Y'), "iPhone", 200.00 ,"CA Sales tax", 15.00);

INSERT INTO employees(emp_id,name,address)
      values (17, "Steve Jobs","1 Infinite Loop, Cupertino, CA 95014");
INSERT INTO expenses(expense_id,emp_id,category,expense_date, description, pre_tax_amt, tax_name,tax_amt   )
      values (17, 17,"Travel", STR_TO_DATE('1/7/2014','%m/%d/%Y'), "Airplane ticket to NY", 200.00 ,"CA Sales tax", 15.00);

INSERT INTO employees(emp_id,name,address)
      values (18, "Jonathan Ive","1 Infinite Loop, Cupertino, CA 95014");
INSERT INTO expenses(expense_id,emp_id,category,expense_date, description, pre_tax_amt, tax_name,tax_amt   )
      values (18, 18,"Meals and Entertainment", STR_TO_DATE('2/3/2014','%m/%d/%Y'), "Starbucks coffee", 12.00 ,"CA Sales tax", 0.90);

INSERT INTO employees(emp_id,name,address)
      values (19, "Eric Schmidt","1600 Amphitheatre Parkway, Mountain View, CA 94043");
INSERT INTO expenses(expense_id,emp_id,category,expense_date, description, pre_tax_amt, tax_name,tax_amt   )
      values (19, 19,"Travel", STR_TO_DATE('2/18/2014', '%m/%d/%Y'), "Airplane ticket to NY", 1500.00,"CA Sales tax", 112.50);
