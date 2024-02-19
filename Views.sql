	
	--View 1

CREATE VIEW AnkaraIzmirCustomersWithPaymentAndOrder AS
SELECT 
		c.CustomerID, 
		c.Address,
		c.Telephone, 
		c.Email, 
		cb.PaymentID, 
		p.PaymentMethod, 
		p.PaymentDate,
		co.CustomerOrderDate,
		co.ServiceID
	FROM Customer c
	JOIN Customer_Bill cb ON c.CustomerID = cb.CustomerID
	JOIN Payment p ON cb.PaymentID = p.PaymentID
	JOIN Customer_Order co ON c.CustomerID = co.CustomerID 
	WHERE c.Address IN ('Ankara', 'İzmir');

SELECT * FROM AnkaraIzmirCustomersWithPaymentAndOrder;


	--View 2

CREATE VIEW ProductPriceDetails AS
SELECT
		p.ProductID,
		p.ProductName,
		p.ProductPrice AS BaseProductPrice,
		ps.ServicePrice AS ProductServicePrice,
		pp.ProductPrice AS AdditionalProductPrice
	FROM
		Product p
	JOIN PRICE_Product pp ON p.ProductID = pp.ProductID
	LEFT JOIN PRICE_Service ps ON p.ProductID = ps.ServiceID
	WHERE
		p.ProductID > 600
		AND p.ProductName LIKE '%Balon%';

SELECT * FROM ProductPriceDetails;

	--View 3 
CREATE VIEW ProductDetailsView AS
SELECT
		p.ProductID,
		p.CategoryID,
		p.ProductName,
		p.ProductPrice,
		p.ProductColor,
		pp.PartyCategoryName AS PartyCategory,
		pp.ProductMetarial AS PartyProductMaterial,
		pa.PastryCategoryName AS PastryCategory,
		pa.PastryExpireDate,
		s.Quantity,
		s.RequestedProductName
	FROM
		Product p
	LEFT JOIN Party_Products pp ON p.ProductID = pp.PartyProductID
	LEFT JOIN Pastry_Products pa ON p.ProductID = pa.PastryProductID
	LEFT JOIN Storage s ON p.ProductID = s.ProductID
	WHERE
		s.RequestedProductName IS NOT NULL;


	SELECT * FROM ProductDetailsView;

	--View 4 
CREATE VIEW EmployeeDetailsView AS
SELECT
		e.EmployeeSSN,
		e.FirstName,
		e.LastName,
		e.Email,
		e.PhoneNumber,
		e.Address,
		CASE
			WHEN e.Salary <= 8500 THEN e.Salary * 1.2
			ELSE e.Salary
		END AS Salary,
		w.WorkplaceName
	FROM
		Employee e
	JOIN EmployeeWorkplaces ew ON e.EmployeeSSN = ew.EmployeeSSN
	JOIN Workplaces w ON ew.WorkplaceID = w.WorkplaceID;

SELECT * FROM EmployeeDetailsView;
