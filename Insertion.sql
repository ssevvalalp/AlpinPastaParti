--insert

use AlpinPastaParti

INSERT INTO Product (ProductID, CategoryID, ProductName, ProductPrice, ProductColor)
VALUES

--Kostümler
     (700,1,'Süperman Kostüm', 119.99, 'Lavicert'),
     (701,1,'İtfaiyeci Kostüm', 129.99, 'Kırmızı'),
     (702,1,'Elsa Kostüm', 134.99, 'Mavi'),
     (703,1,'Prenses Kostüm', 104.99, 'Pembe,'),
     (704,1,'Wednesday Kostüm', 144.99, 'Siyah'),
     (705,1,'Cin Cüce Kostüm', 154.99, 'Siyah'),
     (706,1,'Tavşan Kostüm', 115.99, 'Lavicert'),
     (707,1,'Maymun Kostüm', 117.99, 'Kırmızı'),
     (708,1,'Peri Kostüm', 164.99, 'Mavi'),
     (709,1,'Transformers Kostüm', 144.99, 'Renkli,'),
     (710,1,'Batman Kostüm', 146.99, 'Siyah'),
        

--Parti Aksesuarları

     (800,2,'Lisans Şapka', 29.99, 'Renkli'),
	 (801,2,'Parti Şapkası', 19.99, 'Mor'),
	 (802,2,'Hediye Paketleri', 10.99, 'Mavi'),
	 (803,2,'Renkli Konfeti', 22.99, 'Turuncu'),
	 (804,2,'Gold Mum', 8.99, 'Kırmızı'),
	 (805,2,'Sis Bombası', 29.99, 'Pembe'),
     (806,2,'Parti Düdüğü', 14.99, 'Yeşil'),
	 (807,2,'Tavşan Şapkası', 29.99, 'Mor'),
	 (808,2,'Kalpli mum', 10.99, 'Mavi'),
	 (809,2,'Doğum Günü Süs', 24.99, 'Turuncu'),
	 (810,2,'Kedi Merdiveni Süs', 8.99, 'Kırmızı'),
	

--Parti Süsleri
	 (900,3,'Püskül Kit', 19.99, 'Mor'),
	 (901,3,'Rakam Mum', 24.99, 'Yeşil'),
	 (902,3,'Mesaj Pleksi', 10.99, 'Mavi'),
	 (903,3,'Asma Süs', 22.99, 'Turuncu'),
	 (904,3,'Temalı Kürdan', 8.99, 'Kırmızı'),
	 (905,3,'Parti Şapka', 29.99, 'Pembe'),
	 (906,3,'Meşale', 19.99, 'Lacivert'),
	 (907,3,'Happy B. Day Süs', 24.99, 'Beyaz'),
	 (908,3,'Mavi Konfeti', 10.99, 'Mavi'),
	 (909,3,'Tema Peçete', 22.99, 'Renkli'),
	 (910,3,'Tema Tabak', 8.99, 'Renkli'),


--Balon
	 (600,4,'Taç Balon', 19.99, 'Mor'),
	 (601,4,'Uçan Balon', 24.99, 'Yeşil'),
	 (602,4,'Dinazor Balon', 10.99, 'Mavi'),
	 (603,4,'Kedi Balon', 22.99, 'Turuncu'),
	 (604,4,'Birthday Balon', 8.99, 'Kırmızı'),
	 (605,4,'Zincir Balon', 29.99, 'Pembe'),
	 (606,4,'Şeffaf Balon', 9.99, 'Mor'),
	 (607,4,'Sosis Balon', 14.99, 'Yeşil'),
	 (608,4,'Harf Balon', 20.99, 'Mavi'),
	 (609,4,'Folyo Balon', 26.99, 'Turuncu'),
	 (610,4,'Krom Balon', 14.99, 'Kırmızı'),


--Pastry
--300 kodlu

	 (300,5,'Harf Kaşe', 24.99, 'Metal'),	
	 (301,5,'Plastik Merdane', 34.99, 'Plastik'),
	 (302,5,'Pasta Spatula', 29.99, 'Metal'),	
	 (303,5,'Pasta Taşıyıcı', 39.99, 'Plastik'),	
	 (304,5,'Pasta Tarağı', 14.99, 'Plastik'),	
	 (305,5,'Pasta Testeresi', 34.99, 'Metal'),
     (306,5,'Süzgeç', 34.99, 'Metal'),	
	 (307,5,'Pasta Fırçası', 54.99, 'Plastik'),	
     (308,5,'Sıkma Torbası', 33.99, 'Metal'),	
	 (309,5,'Enjektör', 64.99, 'Şeffaf'),
	 (310,5,'Silikon Kalıp', 74.99, 'Şeffaf'),

--400 kodlu
 	 (400,6,'Şeker Hamuru', 24.99, 'Yeşil'),
	 (401,6,'Krem Şanti', 10.99, 'Renksiz'),
	 (402,6,'Damla Çikolata', 22.99, 'Renksiz'),
	 (403,6,'Yenilebilir Çiçek', 4.99, 'Pembe'),
	 (404,6,'Jöle', 14.99, 'Kırmızı'),
	 (405,6,'Pul Çikolata', 22.99, 'Kahverengi'),	 
	 (406,6,'Orman Meyve Sos', 20.99, 'Mor'),
	 (407,6,'Karamel Sos', 20.99, 'Hardal'),
	 (408,6,'Frambuaz Sos', 22.99, 'Pembe'),
	 (409,6,'Çikolata Sos', 22.99, 'Siyah'),
	 (410,6,'Fındık Sos', 22.99, 'Beyaz'),

	 --Products for Rent
	 (1001,7,'Nişan Tag', 100.99, 'Mor'),
	 (1002,7,'Konsept Masa', 20.99, 'Hardal'),
	 (1003,7,'Nişan Tepsi', 22.99, 'Pembe'),
	 (1004,7,'Masa Vazo', 22.99, 'Siyah'),
	 (1005,7,'Masa Şamdan', 22.99, 'Gümüş');


-- Party_Products 
INSERT INTO Party_Products (PartyCategoryName, ProductMetarial, PartyProductID)
VALUES
    ('Kostümler', 'Kumaş', 700),
    ('Parti Aksesuarları', 'Kağıt', 800),
    ('Parti Süsleri', 'Plastik', 900),
	('Balon', 'Latex', 600);

-- Pastry_Products 
INSERT INTO Pastry_Products (PastryCategoryName, PastryExpireDate, PastryProductID)
VALUES
    ('Pastacılık Ekipmanları', '2028-12-31', 300),
    ('Gıda Malzemeleri', '2025-11-30', 400);


--Storage
	INSERT INTO Storage (Quantity, RequestedProductName, ProductID)
VALUES
    
      (10,'Harf Kaşe', 300),	
      (9,'Şeker Hamuru',400),
      (8,'Plastik Merdane', 301),	
      (4,'Krem Şanti',401),
      (3,'Pasta Spatula', 302),	
      (0,'Damla Çikolata',402),
      (1,'Pasta Taşıyıcı', 303),	
      (8,'Yenilebilir Çiçek',403),
      (2,'Pasta Tarağı', 304),	
      (2,'Jöle',404),
      (20,'Pasta Testeresi', 305),	
      (4,'Pul Çikolata',405),
      (2,'Süzgeç', 306),	
      (35,'Orman Meyve Sos',406),
      (16,'Pasta Fırçası', 307),	
      (35,'Karamel Sos',407),
      (60,'Sıkma Torbası', 308),	
      (35,'Frambuaz Sos',408),
      (23,'Enjektör', 309),	
      (35,'Çikolata Sos',409),
      (20,'Silikon Kalıp', 310),	
      (35,'Fındık Sos',410),
	  (20,'Nişan Tag',1001 ),
	  (10,'Konsept Masa',1002),
	  (30,'Nişan Tepsi', 1003),
	  (40,'Masa Vazo', 1004),
	  (15,'Masa Şamdan', 1005);

	
-- Customer 
INSERT INTO Customer ( CustomerName, Email, Telephone, Address)
VALUES
    (  'Ali Yilmaz', 'aliyilmaz@mail.com',   '1234567890', 'İstanbul'),
    (  'Mehmet Semiz', 'mehmetsemiz@mail.com',   '9876543210', 'Ankara'),
    (  'Meryem Beyza', 'meryembeyza@mail.com',   '5551234567', 'İzmir'),
    (  'Veli Sezen', 'velisezen@mail.com',   '2583691475', 'Konya'),
    (  'Veli Şirin', 'velisirin@mail.com',   '7539514852', 'İzmir'),
    (  'Dilek Mutlu', 'dilekmutlu@mail.com',   '4567823914', 'Kocaeli'),
    (  'Tolga Kaymaz', 'tolgakaymaz@mail.com',   '1548753698', 'Bilecik'),
    (  'Zeynep Demir', 'zeynepdemir@mail.com',   '5698547851', 'İzmir'),
    (  'Sertab Erener', 'sertaberener@mail.com',   '2156325981', 'Bursa'),
    ( 'Ahmet Kaya', 'ahmetkaya@mail.com', '7514852368', 'Trabzon'),
    ( 'Barış Manço', 'barismanco@mail.com', '1454785214', 'Rize'),
    ( 'Mustafa Sandal', 'mustafasandal@mail.com', '1478547154', 'Ankara'),
    ( 'Eda Erdem', 'edaerdem@mail.com', '1598745632', 'Amasya'),
    ( 'Zehra Güneş', 'zehragunes@mail.com', '1547854123', 'Zonguldak'),
    ( 'Gizem Örge', 'gizemorge@mail.com', '9587456325', 'Van'),
    ( 'Hande Baladın', 'handebaladın@mail.com', '8547456324', 'Ankara'),
    ( 'Cansu Özbay', 'cansuozbay@mail.com', '7547852547', 'Yozgat'),
    ( 'Ebrar Karakurt', 'ebrarkarakurt@mail.com', '6548741235', 'Şanlıurfa'),
    ( 'Simge Aköz', 'simgeakoz@mail.com', '5587455472', 'Gaziantep'),
    ( 'Melissa Vargas', 'melissavargas@mail.com', '4478541258', 'Kahramanmaraş'),
    ( 'Elif Şahin', 'elifsahin@mail.com', '4541256327', 'Hatay'),
    ( 'Sezen Aksu', 'sezenaksu@mail.com', '3254125879', 'Erzurum'),
    ( 'Yıldız Tilbe', 'yildiztilbe@mail.com', '2541548745', 'Muğla'),
    ( 'Meryem Boz', 'meryemboz@mail.com', '1478547963', 'Antalya'),
    ( 'Ajda Pekkan', 'ajdapekkan@mail.com', '9852145675', 'Denizli'),
    ( 'Zeynep Bastık', 'zeynepbastik@mail.com', '8525869698', 'Manisa'),
    ( 'Haluk Levent', 'haluklevent@mail.com', '7458525698', 'Giresun'),
    ( 'Levent Yüksel', 'leventyüksel@mail.com', '6585544792', 'Adana');


	

	INSERT INTO Service (ServiceID, ServiceType, City, Street, ZipCode) 
VALUES
    (1,'Special Designs', 'İstanbul', 'İstiklal Caddesi', '34000'),
    (2,'Rent', 'Ankara', 'Kızılay Meydanı', '06000');
	
-- Customer_Order Tablosuna Veri Ekleniyor
INSERT INTO Customer_Order (CustomerOrderDate, ServiceID, CustomerID)
VALUES
    ('2023-01-01', 1, 1),
    ('2023-02-15', 2, 2),
    ('2023-03-30', 2, 3),
    ('2023-04-09', 1, 4),
    ('2023-05-17', 2, 5),
    ('2023-06-29', 1, 6),
    ('2023-07-09', 2, 7),
    ('2023-08-15', 1, 8),
    ('2023-09-25', 1, 9),
    ('2023-10-10', 2, 10),
    ('2023-11-13', 2, 11),
    ('2023-12-22', 1, 12),
    ('2023-01-05', 2, 13),
    ('2023-02-16', 2, 14),
    ('2023-03-11', 1, 15),
    ('2023-04-19', 1, 16),
    ('2023-05-11', 2, 17),
    ('2023-06-21', 2, 18),
    ('2023-07-08', 1, 19),
    ('2023-08-17', 2, 20),
    ('2023-09-22', 1, 21),
    ('2023-10-25', 1, 22),
    ('2023-11-18', 2, 23),
    ('2023-12-25', 2, 24),
    ('2023-01-03', 1, 25),
    ('2023-02-17', 2, 26),
    ('2022-01-12', 1, 27),
    ('2022-03-12', 1, 28);

		

	-- Payment 
INSERT INTO Payment (PaymentID, PaymentMethod, PaymentDate)
VALUES
    (1000, 'Kredi Kartı', '2023-01-01'),
    (1001, 'Nakit', '2023-02-02'),
    (1002, 'Havale', '2023-03-03'),
    (1003, 'Kredi Kartı', '2023-04-04'),
    (1004, 'Nakit', '2023-05-05'),
    (1005, 'Havale', '2023-06-06'),
    (1006, 'Kredi Kartı', '2023-07-07'),
    (1007, 'Nakit', '2023-08-08'),
    (1008, 'Havale', '2023-09-09'),
    (1009, 'Kredi Kartı', '2023-10-10'),
    (1010, 'Nakit', '2023-11-11'),
    (1011, 'Havale', '2023-12-12'),
    (1012, 'Kredi Kartı', '2023-01-13'),
    (1013, 'Nakit', '2023-02-14'),
    (1014, 'Havale', '2023-03-15'),
    (1015, 'Kredi Kartı', '2023-01-16'),
    (1016, 'Nakit', '2023-12-17'),
    (1017, 'Havale', '2023-05-18'),
    (1018, 'Kredi Kartı', '2023-07-19'),
    (1019, 'Nakit', '2023-09-20'),
    (1020, 'Havale', '2023-10-21'),
    (1021, 'Kredi Kartı', '2023-05-22'),
    (1022, 'Nakit', '2023-11-23'),
    (1023, 'Havale', '2023-06-24'),
    (1024, 'Kredi Kartı', '2023-07-25'),
    (1025, 'Nakit', '2023-08-26'),
    (1026, 'Kredi Kartı', '2022-08-20'),
    (1027, 'Havale', '2023-03-25');

	
-- Customer_Bill  
INSERT INTO Customer_Bill (CustomerID,  PaymentID)
VALUES
		(1,   1000),
		(2,   1001),
		(3,   1002),
		(4,   1003),
		(5,   1004),
		(6,   1005),
		(7,   1006),
		(8,   1007),
		(9,   1008),
		(10,  1009),
		(11,  1010),
		(12,  1011),
		(13,  1012),
		(14,  1013),
		(15,  1014),
		(16,  1015),
		(17,  1016),
		(18,  1017),
		(19,  1018),
		(20,  1019),
		(21,  1020),
		(22,  1021),
		(23,  1022),
		(24,  1023),
		(25,  1024),
		(26,  1025),
		(27,  1026),
		(28,  1027);

	

	
-- Price 
INSERT INTO Price(PriceID, Price) 
VALUES

--Service price
		(1,200.00),
		(2,300.00),
		(3,350.00),

--Product price

        (300, 24.99),
		(301, 34.99),
		(302, 29.99),
		(303, 39.99),
		(304, 14.99),
		(305, 34.99),
		(306, 34.99),
		(307, 54.99),
		(308, 33.99),
		(309, 64.99),
		(310, 74.99),
		(400, 24.99),
		(401, 10.99),
		(402, 22.99),
		(403, 4.99),
		(404, 14.99),
		(405, 22.99),
		(406, 20.99),
		(407, 20.99),
		(408, 22.99),
		(409, 22.99),
		(410, 22.99),
		(600, 19.99),
		(601, 24.99),
		(602, 10.99),
		(603, 22.99),
		(604, 8.99),
		(605, 29.99),
		(606, 9.99),
		(607, 14.99),
		(608, 20.99),
		(609, 26.99),
		(610, 14.99),
		(700, 119.99),
		(701, 129.99),
		(702, 134.99),
		(703, 104.99),
		(704, 144.99),
		(705, 154.99),
		(706, 115.99),
		(707, 117.99),
		(708, 164.99),
		(709, 144.99),
		(710, 146.99),
		(800, 29.99),
		(801, 19.99),
		(802, 10.99),
		(803, 22.99),
		(804, 8.99),
		(805, 29.99),
		(806, 14.99),
		(807, 29.99),
		(808, 10.99),
		(809, 24.99),
		(810, 8.99),
		(900, 19.99),
		(901, 24.99),
		(902, 10.99),
		(903, 22.99),
		(904, 8.99),
		(905, 29.99),
		(906, 19.99),
		(907, 24.99),
		(908, 10.99),
		(909, 22.99),
		(910, 8.99);


	
INSERT INTO PRICE_Service(ServiceID,ServicePrice)
values 
		(1,200.00),
		(2,300.00);

INSERT INTO PRICE_Product(ProductID,ProductPrice)
values
		(300, 24.99),
		(301, 34.99),
		(302, 29.99),
		(303, 39.99),
		(304, 14.99),
		(305, 34.99),
		(306, 34.99),
		(307, 54.99),
		(308, 33.99),
		(309, 64.99),
		(310, 74.99),
		(400, 24.99),
		(401, 10.99),
		(402, 22.99),
		(403, 4.99),
		(404, 14.99),
		(405, 22.99),
		(406, 20.99),
		(407, 20.99),
		(408, 22.99),
		(409, 22.99),
		(410, 22.99),
		(600, 19.99),
		(601, 24.99),
		(602, 10.99),
		(603, 22.99),
		(604, 8.99),
		(605, 29.99),
		(606, 9.99),
		(607, 14.99),
		(608, 20.99),
		(609, 26.99),
		(610, 14.99),
		(700, 119.99),
		(701, 129.99),
		(702, 134.99),
		(703, 104.99),
		(704, 144.99),
		(705, 154.99),
		(706, 115.99),
		(707, 117.99),
		(708, 164.99),
		(709, 144.99),
		(710, 146.99),
		(800, 29.99),
		(801, 19.99),
		(802, 10.99),
		(803, 22.99),
		(804, 8.99),
		(805, 29.99),
		(806, 14.99),
		(807, 29.99),
		(808, 10.99),
		(809, 24.99),
		(810, 8.99),
		(900, 19.99),
		(901, 24.99),
		(902, 10.99),
		(903, 22.99),
		(904, 8.99),
		(905, 29.99),
		(906, 19.99),
		(907, 24.99),
		(908, 10.99),
		(909, 22.99),
		(910, 8.99);

	
-- Company_Order
INSERT INTO Company_Order (CompanyOrderDate)
VALUES
		('2023-01-01'),
		('2023-02-02'),
		('2023-03-03'),
		('2023-04-04'),
		('2023-05-05'),
		('2023-07-06'),
		('2023-09-07'),
		('2023-11-08'),
		('2023-06-09'),
		('2023-08-10'),
		('2023-10-11'),
		('2023-09-12'),
		('2023-02-13'),
		('2023-03-14'),
		('2021-04-15'),
		('2021-05-16'),
		('2021-11-17'),
		('2021-12-18'),
		('2021-12-19'),
		('2022-10-20'),
		('2022-07-21'),
		('2022-08-22'),
		('2022-09-23'),
		('2022-05-24'),
		('2022-04-25'),
		('2022-01-26');

	

-- Company_Bill

INSERT INTO Company_Bill (OrderID, PaymentID) 
VALUES
		(10000, 1000),
		(10001, 1001),
		(10002, 1002),
		(10003, 1003),
		(10004, 1004),
		(10005, 1005),
		(10006, 1006),
		(10007, 1007),
		(10008, 1008),
		(10009, 1009),
		(10010, 1010),
		(10011, 1011),
		(10012, 1012),
		(10013, 1013),
		(10014, 1014),
		(10015, 1015),
		(10016, 1016),
		(10017, 1017),
		(10018, 1018),
		(10019, 1019),
		(10020, 1020),
		(10021, 1021),
		(10022, 1022),
		(10023, 1023),
		(10024, 1024),
		(10025, 1025);
	                    
	

-- Employee
INSERT INTO Employee (EmployeeSSN, FirstName, LastName, Email, PhoneNumber, Address, Salary)
VALUES
		(123456732, 'Ahmet', 'Yılmaz', 'ahmet.yilmaz@mail.com', '5551112233', 'Maltepe', 5000),
		(234567812, 'Ayşe', 'Demir', 'ayse.demir@mail.com', '5552223344', 'Başıbüyük', 6000),
		(345678954, 'Mehmet', 'Kaya', 'mehmet.kaya@mail.com', '5553334455', 'Maltepe', 5500),
		(123456765, 'Aysun', 'Yıldız', 'aysun.yilmaz@mail.com', '5356812257', 'Kartal', 7000),
		(234567887, 'Miraç', 'Keş', 'Mirac.kes@mail.com', '5052586587', 'Kartal', 9000),
		(345678926, 'Fatma', 'Kalın', 'fatma.kalin@mail.com', '5336548785', 'Kartal', 5500),
		(123456796, 'Sertab', 'İnci', 'sertab.inci@mail.com', '5036668899', 'Üsküdar', 7500),
		(234567839, 'Mustafa', 'Tunç', 'mustafa.tunc@mail.com', '5398785466', 'Üsküdar', 6500),
		(445678971, 'Şebnem', 'Han', 'sebnem.han@mail.com', '5336542122', 'Üsküdar', 5500),
		(523456765, 'Deniz', 'Yıldırım', 'deniz.yildirim@mail.com', '5058889911', 'Maltepe', 9500),
		(634567893, 'Derya', 'Güçlü', 'derya.guclu@mail.com', '5558526699', 'Bağcılar', 8500),
		(745678956, 'Hakan', 'Eser', 'hakan.eser@mail.com', '5398745656', 'Bağcılar', 8000),
		(823456792, 'Gökhan', 'Daner', 'gokhan.daner@mail.com', '5996663311', 'Bağcılar', 7000),
		(934567891, 'Şevval', 'Alp', 'sevval.alp@mail.com', '5557774152', 'Bağcılar', 7500),
		(545678993, 'Rana', 'İnan', 'rana.inan@mail.com', '5396658541', 'Muğla', 9500),
		(934567090, 'Melih', 'Çubukcuoğlu', 'melih.cubukcuoglu@mail.com', '5559876543', 'Maltepe', 8000),
		(984567895, 'Kaan', 'Bilge', 'kaan.bilge@mail.com', '5398566555', 'Bağcılar', 3000),
		(145678956, 'Kerem', 'Akyol', 'kerem.akyol@mail.com', '5053212211', 'Fatih', 7500),
		(163456778, 'Miray', 'Karabulut', 'miray.karabulut@mail.com', '5033335487', 'Fatih', 4000),
		(174567815, 'Selen', 'Soydemir', 'selen.soydemir@mail.com', '5415557788', 'Bakırköy', 8000),
		(185678916, 'Eren', 'Tevetoğlu', 'eren.tevetoglu@mail.com', '5419871111', 'Pendik', 9500);

	

	-- Workplaces
INSERT INTO Workplaces (WorkplaceID, WorkplaceName)
VALUES
		(1, 'Altıntepe Şubesi'),
		(2, 'Maltepe Şubesi'),
		(3, 'Altıntepe Depo');

	-- EmployeeWorkplaces
INSERT INTO EmployeeWorkplaces (EmployeeSSN, WorkplaceID)
VALUES
		(123456732, 1),
		(234567812, 2),
		(345678954, 3),
		(123456765, 1),
		(234567887, 2),
		(345678926, 3),
		(123456796, 1),
		(234567839, 2),
		(445678971, 3),
		(523456765, 1),
		(634567893, 2),
		(745678956, 3),
		(823456792, 1),
		(934567891, 2),
		(545678993, 3),
		(934567090, 1),
		(984567895, 2),
		(145678956, 3),
		(163456778, 1),
		(174567815, 2),
		(185678916, 3);
	

	-- Special_Design 
INSERT INTO Special_Design (SpecialServiceID)
VALUES
    (1);

	
-- Rent
INSERT INTO Rent (RentServiceID, StorageID)
VALUES
   
		(2, 1001),
		(2, 1002),  
		(2, 1003),
  		(2, 1004),
   		(2, 1005);
    	