-- Stored Procedures FOR Web Interface

--Create Customer

use AlpinPastaParti

--drop procedure AddNewCustomerAndOrders 
	
	CREATE PROCEDURE AddNewCustomerAndOrders
	
    @CustomerName VARCHAR(50),
    @Email VARCHAR(50),
    @Telephone VARCHAR(15)
 
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @InsertedCustomer TABLE (
        CustomerID INT
    );

	--Add a new customer and get the ID of the added customer.
    INSERT INTO Customer (CustomerName, Email, Telephone)
    OUTPUT INSERTED.CustomerID INTO @InsertedCustomer
    VALUES (@CustomerName, @Email, @Telephone);
	
    SELECT CustomerID, CustomerName, Email, Telephone
    FROM Customer
    WHERE CustomerID = (SELECT CustomerID FROM @InsertedCustomer);
END;

-----
--EXEC AddNewCustomerAndOrders
  
--    @CustomerName = 'Yeni Müşteri',
--    @Email = 'yenimusteri@mail.com',
--    @Telephone = '1234567890';
 

-- View the details of the added customer
	--SELECT CustomerID, CustomerName, Email, Telephone, Address
	--FROM Customer
	--WHERE CustomerName = 'Yeni Müşteri';


-- CustomerViewAll

Create procedure CustomerViewAll
AS
	BEGIN
	SELECT *
	FROM Customer
	END

--EXEC CustomerViewAll;


-- CustomerViewByID 
CREATE PROCEDURE CustomerViewByID
    @CustomerID INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        CustomerID,
        CustomerName,
        Email,
        Telephone,
        Address
    FROM 
        Customer
    WHERE 
        CustomerID = @CustomerID;
END;


--DeleteByID


CREATE PROCEDURE CustomerDeleteByID
    @CustomerID INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Delete the bills related to the respective customer from the Customer_Bill table
    DELETE FROM Customer_Bill
    WHERE CustomerID = @CustomerID;

    -- Delete the orders related to the respective customer from the Customer_Order table
    DELETE FROM Customer_Order
    WHERE CustomerID = @CustomerID;

    -- Delete the customer from the Customer table.
    DELETE FROM Customer
    WHERE CustomerID = @CustomerID;
END;


	--EXEC CustomerDeleteByID @CustomerID = 1;

	--For Control
	DECLARE @CustomerIDToDelete INT = 1; -- Deleted customer ID

	SELECT
		C.CustomerID,
		C.CustomerName,
		C.Email,
		C.Telephone,
		C.Address,
		CB.CustomerBillID,
		CO.CustomerOrderID,
		CO.CustomerOrderDate,
		S.ServiceType
	FROM Customer C
	LEFT JOIN Customer_Bill CB ON C.CustomerID = CB.CustomerID
	LEFT JOIN Customer_Order CO ON C.CustomerID = CO.CustomerID
	LEFT JOIN Service S ON CO.ServiceID = S.ServiceID
	WHERE C.CustomerID = @CustomerIDToDelete;




----------------------------------------------------------------------------------------

--Stored Procedure
use AlpinPastaParti

-- 1) UpdateCustomerOrderDate
CREATE PROCEDURE UpdateCustomerOrderDate
AS
BEGIN
    -- Update Customer_Order table,  PaymentID'si 1022'den büyük olan Customer'ların CutomerOrderDate bilgilerini 01-01-2022 olarak değiştir
    UPDATE Customer_Order
    SET CustomerOrderDate = '2022-01-01'
    WHERE CustomerID IN (SELECT CustomerID FROM Customer_Bill WHERE PaymentID > 1022)

    -- Print a success message
    PRINT 'Customer Order Dates updated successfully!'
END


EXEC UpdateCustomerOrderDate;
select * from Customer_Order

--2)

CREATE PROCEDURE AddNewProduct
    @ProductID INT,             -- Parameter for the product ID
    @CategoryID INT,            -- Parameter for the category ID
    @ProductName NVARCHAR(50),  -- Parameter for the product name
    @ProductPrice DECIMAL(10,2),-- Parameter for the product price
    @ProductColor NVARCHAR(20)  -- Parameter for the product color
AS
BEGIN
    -- Insert statement to add a new product into the 'Product' table
    INSERT INTO Product (ProductID, CategoryID, ProductName, ProductPrice, ProductColor)
    VALUES (@ProductID, @CategoryID, @ProductName, @ProductPrice, @ProductColor)
    -- Values for the insert are provided by the parameters
END
-- Executing the stored procedure with specific values
EXEC AddNewProduct 
    @ProductID = 711, 
    @CategoryID = 3, 
    @ProductName = 'Kırmızı Başlıklı Kız Kostüm', 
    @ProductPrice = 29.99, 
    @ProductColor = 'Kırmızı'

select * from Product
select * from Product where product.ProductName = 'Kırmızı Başlıklı Kız Kostüm';

--3)-- Creating a stored procedure named 'UpdateProductPrice'
CREATE PROCEDURE UpdateProductPrice
    @ProductID INT,                -- Parameter for the product ID
    @NewPrice DECIMAL(10,2)        -- Parameter for the new product price
AS
BEGIN
    -- Update statement to modify the price of a specific product
    -- in the 'Product' table
    UPDATE Product
    SET ProductPrice = @NewPrice   -- Setting the new price
    WHERE ProductID = @ProductID   -- Condition to identify the correct product
END

-- Executing the stored procedure with specific values
EXEC UpdateProductPrice 
    @ProductID = 711, 
    @NewPrice = 35.99
SELECT ProductID, ProductName, ProductPrice FROM Product WHERE ProductID = 711;


--4) --Deletes a product from the Product table based on the given ProductID. 
CREATE PROCEDURE DeleteProduct
    @ProductID INT  -- Parameter: Product ID of the product to be deleted
AS
BEGIN
    -- Delete referencing rows from Pastry_Products
    DELETE FROM Pastry_Products
    WHERE PastryProductID = @ProductID;

    -- Delete referencing rows from Storage
    DELETE FROM Storage
    WHERE ProductID = @ProductID;

    -- Delete referencing rows from PRICE_Product
    DELETE FROM PRICE_Product
    WHERE ProductID = @ProductID;

    -- Then, delete the product from the Product table
    DELETE FROM Product
    WHERE ProductID = @ProductID;
END


-- Example: Deleting a product with ProductID = 101
EXEC DeleteProduct 300;
select * from Product;
select * from Product where product.ProductID = 300;

--Drop Procedure DeleteProduct

--5) -- Adds a new customer record to the 'Customer' table.

CREATE PROCEDURE AddCustomer
    @CustomerID INT,   --   @CustomerID: Unique identifier for the customer (INT).
    @CustomerName VARCHAR(50),   --   @CustomerName: Full name of the customer (VARCHAR(50)).
    @Email VARCHAR(50),   --   @Email: Email address of the customer (VARCHAR(50)).
    @Telephone VARCHAR(15),
    @Address VARCHAR(50)
AS
BEGIN
    -- Inserting a new record into the Customer table.
    INSERT INTO Customer (CustomerID, CustomerName, Email, Telephone, Address)
    VALUES (@CustomerID, @CustomerName, @Email, @Telephone, @Address)
END
-- Example Execution of AddCustomer Stored Procedure
EXEC AddCustomer 
    @CustomerID = 101, 
    @CustomerName = 'Ahmet Öz', 
    @Email = 'ahmetoz@example.com', 
    @Telephone = '1234567891', 
    @Address = 'Kars'
select * from Customer where Customer.CustomerName='Ahmet Öz';

--6) -- Stored procedure that updates customer information
    CREATE PROCEDURE UpdateCustomerInfo
    @CustomerID INT,            -- Parameter for the unique ID of the customer
	@NewCustomerName VARCHAR(50),   -- Parameter for the new name of the customer
    @NewEmail VARCHAR(50),      -- Parameter for the new email address of the customer
    @NewTelephone VARCHAR(15),  -- Parameter for the new telephone number of the customer
    @NewAddress VARCHAR(50)     -- Parameter for the new address of the customer
AS
BEGIN
    -- Updating the Customer table
    UPDATE Customer
    SET 
		CustomerName = @NewCustomerName,
        Email = @NewEmail,        -- Setting the new email
        Telephone = @NewTelephone,-- Setting the new telephone number
        Address = @NewAddress     -- Setting the new address
    WHERE CustomerID = @CustomerID -- Condition to match the customer to be updated
END
EXEC UpdateCustomerInfo 
    @CustomerID = 28,
	@NewCustomerName = 'Selda Bağcan',
    @NewEmail = 'seldabagcan@example.com', 
    @NewTelephone = '9876543210', 
    @NewAddress = 'Diyarbakır'

	select * from Customer where Customer.CustomerID=28;

	--drop procedure UpdateCustomerInfo

--7)	-- Stored Procedure to Add a New Employee
CREATE PROCEDURE AddEmployee
    @EmployeeSSN INT,            -- Social Security Number of the employee
    @FirstName VARCHAR(30),      -- First Name of the employee
    @LastName VARCHAR(30),       -- Last Name of the employee
    @Email VARCHAR(50),          -- Email address of the employee
    @PhoneNumber VARCHAR(15),    -- Phone number of the employee
    @Address VARCHAR(50),        -- Residential address of the employee
    @Salary INT                  -- Salary of the employee
AS
BEGIN
    -- Inserting the provided data into the Employee table
    INSERT INTO Employee (EmployeeSSN, FirstName, LastName, Email, PhoneNumber, Address, Salary)
    VALUES (@EmployeeSSN, @FirstName, @LastName, @Email, @PhoneNumber, @Address, @Salary)
END
-- Example of executing the AddEmployee stored procedure
EXEC AddEmployee 
    @EmployeeSSN = 123356789, 
    @FirstName = 'Ahmet', 
    @LastName = 'Kaya', 
    @Email = 'ahmetkaya@email.com', 
    @PhoneNumber = '553602222', 
    @Address = 'Bingöl', 
    @Salary = 60000
select * from Employee where Employee.EmployeeSSN=123356789;


--8) 
CREATE PROCEDURE GetProductStockStatus
    @ProductID INT -- Parameter: ProductID to check the stock status
AS
BEGIN
    -- The procedure selects the product name and its stock status
    -- from the Product and Storage tables.
    -- It joins these tables on their ProductID field
    -- and filters the result for the given ProductID.
    SELECT ProductName, StockStatus
    FROM Product
    JOIN Storage ON Product.ProductID = Storage.ProductID
    WHERE Product.ProductID = @ProductID
END

EXEC GetProductStockStatus @ProductID = 301;

select * from product

--9)-- Stored Procedure: CustomerDetailedReport
CREATE PROCEDURE CustomerDetailedReport
    @CustomerID INT -- Parameter: Customer ID for the report
AS
BEGIN
    -- Selecting customer information
    SELECT *
    FROM Customer
    WHERE CustomerID = @CustomerID;

    -- Selecting customer orders
    SELECT co.CustomerOrderID, co.CustomerOrderDate, s.ServiceType, s.City
    FROM Customer_Order co
    JOIN Service s ON co.ServiceID = s.ServiceID
    WHERE co.CustomerID = @CustomerID;

    -- Selecting customer payments and bills
    SELECT cb.CustomerBillID, p.PaymentMethod, p.PaymentDate
    FROM Customer_Bill cb
    JOIN Payment p ON cb.PaymentID = p.PaymentID
    WHERE cb.CustomerID = @CustomerID;

    -- Additional queries can be added as needed to provide more details
END
EXEC CustomerDetailedReport @CustomerID = 1;
--10) 
CREATE PROCEDURE RecordNewOrder
    @CustomerID INT,           -- Parameter for Customer's ID
    @ServiceID INT,            -- Parameter for Service ID
    @CustomerOrderDate DATE    -- Parameter for the date of the order
AS
BEGIN
    -- Inserting a new record into the Customer_Order table
    INSERT INTO Customer_Order (CustomerID, ServiceID, CustomerOrderDate)
    VALUES (@CustomerID, @ServiceID, @CustomerOrderDate)
END
GO

-- Executing the stored procedure with specific values
EXEC RecordNewOrder 
    @CustomerID = 1,           -- Example Customer ID
    @ServiceID = 2,            -- Example Service ID
    @CustomerOrderDate = '2024-01-01'  -- Example Order Date
GO

-- Select the newly created order details
SELECT *
FROM Customer_Order
WHERE CustomerID = 1
  AND ServiceID = 2
  AND CustomerOrderDate = '2024-01-01';

  select * from Customer_Order


                                                     