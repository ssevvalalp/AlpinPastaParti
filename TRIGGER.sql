-- Use database AlpinPastaParti
USE AlpinPastaParti;

-- Create a trigger named trgInsertEmployee
CREATE TRIGGER trgInsertEmployee
ON Employee
AFTER INSERT
AS
BEGIN
    -- This trigger will insert a record into EmployeeWorkplaces table
    -- for each new record inserted into Employee table.
    -- It automatically sets the WorkplaceID to 1 for the new employee.
    INSERT INTO EmployeeWorkplaces (EmployeeSSN, WorkplaceID)
    VALUES ((SELECT EmployeeSSN FROM inserted), 1); 
END;

-- Insert a new employee record into the Employee table
INSERT INTO Employee (EmployeeSSN, FirstName, LastName, Email, PhoneNumber, Address, Salary)
VALUES (046295639, 'Koray', 'Özer', 'koray.ozer@mail.com', '54198711122', 'Fındıklı', 9300);

-- Query to check the newly added employee in the Employee table
SELECT * FROM Employee;

-- Query to check if the trigger has worked and the new employee's details
-- have been added to the EmployeeWorkplaces table as well
SELECT * FROM EmployeeWorkplaces WHERE EmployeeSSN = '046295639';