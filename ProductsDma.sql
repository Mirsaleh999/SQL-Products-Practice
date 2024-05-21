-- Products adlı veritabanının yaradılması
CREATE DATABASE ProductsDma;
USE ProductsDma;

-- Gender (Cinsiyet) cədvəlini yaradılması
CREATE TABLE Gender (
    GenderID INT PRIMARY KEY,
    GenderName VARCHAR(10)
);

-- Category (Kateqoriya) cədvəlini yaradılması
CREATE TABLE Category (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(50)
);

-- Brand (Brend) cədvəlini yaradılması
CREATE TABLE Brand (
    BrandID INT PRIMARY KEY,
    BrandName VARCHAR(50)
);

-- Branch (Filial) cədvəlini yaradılması
CREATE TABLE Branch (
    BranchID INT PRIMARY KEY,
    BranchName VARCHAR(100),
    Address VARCHAR(255)
);

-- Costumer (Müştəri) cədvəlini yaradılması
CREATE TABLE Costumer (
    CostumerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    MidName VARCHAR(50),
    Surname VARCHAR(50),
    FIN VARCHAR(50),
    BornYear INT,
    Number VARCHAR(15),
    GenderID INT,
    FOREIGN KEY (GenderID) REFERENCES Gender(GenderID)
);

-- Seller (Satıcı) cədvəlini yaradılması
CREATE TABLE Seller (
    SellerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    MidName VARCHAR(50),
    Surname VARCHAR(50),
    FIN VARCHAR(50),
    BornYear INT,
    Number VARCHAR(15),
    GenderID INT,
    BranchID INT,
    FOREIGN KEY (GenderID) REFERENCES Gender(GenderID),
    FOREIGN KEY (BranchID) REFERENCES Branch(BranchID)
);

-- Product (Məhsul) cədvəlini yaradılması
CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    CategoryID INT,
    BrandID INT,
    Model VARCHAR(50),
    BuyPrice DECIMAL(10, 2),
    SellPrice DECIMAL(10, 2),
    Quantity INT,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID),
    FOREIGN KEY (BrandID) REFERENCES Brand(BrandID)
);

-- Gender cədvəlinə məlumatların əlavə edilməsi
INSERT INTO Gender (GenderID, GenderName) VALUES
(1, N'Kişi'),
(2, N'Qadın');

-- Category cədvəlinə məlumatların əlavə edilməsi
INSERT INTO Category (CategoryID, CategoryName) VALUES
(1, 'Telefon'),
(2, 'Televizor'),
(3, N'Böyük Məişət Texnikası'),
(4, N'Kiçik Məişət Texnikası'),
(5, N'Kompüterlər'),
(6, N'Planşetlər'),
(7, N'Geyilə Bilən Texnologiyalar');

-- Brand cədvəlinə məlumatların əlavə edilməsi
INSERT INTO Brand (BrandID, BrandName) VALUES
(1, 'Apple'),
(2, 'Samsung'),
(3, 'LG'),
(4, 'Sony'),
(5, 'Dell'),
(6, 'HP'),
(7, 'Lenovo');

-- Branch cədvəlinə məlumatların əlavə edilməsi
INSERT INTO Branch (BranchID, BranchName, Address) VALUES
(1, N'Şəhər Mərkəzi', '123 Mərkəzi Küçə, Bakı'),
(2, N'Şəhər Yuxarısı', '456 Yuxarı Küçə, Bakı'),
(3, N'Kənar Şəhər', '789 Metro Küçə, Bakı'),
(4, N'Mərkəz', '101 Baş Küçə, Bakı'),
(5, N'Qərb Tərəfi', '202 Qərb Küçə, Bakı');

-- Costumer (Müştəri) cədvəlinə məlumatların əlavə edilməsi
INSERT INTO Costumer (CostumerID, FirstName, MidName, Surname, FIN, BornYear, Number, GenderID) VALUES
(1, N'Mahir', 'Omar', 'Orucov', 'FIN1236', 1985, '051-567-67-67', 1),
(2, N'İlyas', 'Sakit', 'Qənbərov', 'FIN6541', 1990, '050-567-66-67', 1),
(3, N'Azər', 'Bayram', 'Cəbiyev', 'FIN1133', 1995, '055-567-65-67', 1),
(4, N'Aysel', 'Rəşad', 'Aslanova', 'FIN4567', 1992, '051-123-45-67', 2),
(5, N'Leyla', 'Farid', 'Quliyeva', 'FIN7890', 1988, '050-987-65-43', 2),
(6, N'Cavid', 'Elçin', 'Məmmədov', 'FIN2468', 1993, '055-345-67-89', 1),
(7, N'Nigar', 'Kamal', 'Kərimova', 'FIN1357', 1991, '051-567-89-01', 2),
(8, N'Orxan', 'Vahid', 'Əliyev', 'FIN3579', 1986, '050-678-90-12', 1);

-- Seller (Satıcı) cədvəlinə məlumatların əlavə edilməsi
INSERT INTO Seller (SellerID, FirstName, MidName, Surname, FIN, BornYear, Number, GenderID, BranchID) VALUES
(1, N'Zəhra', 'Babək', 'Nəmetova', 'FIN8877', 1980, '055-978-90-34', 2, 1),
(2, N'Gülər', 'Lətif', 'Eyvazova', 'FIN9900', 1983, '055-978-91-34', 2, 2),
(3, N'Nərmin', 'Orxan', 'Rəfiyeva', 'FIN6655', 1987, '055-978-92-34', 2, 3),
(4, N'Rövşən', 'Samir', 'Məmmədov', 'FIN2244', 1982, '055-567-23-45', 1, 1),
(5, N'Elvin', 'Ramil', 'Əliyev', 'FIN5566', 1985, '055-567-34-56', 1, 2),
(6, N'Tural', 'İsmayıl', 'Həsənov', 'FIN7788', 1989, '055-567-45-67', 1, 3);

-- Product (Məhsul) cədvəlinə məlumatların əlavə edilməsi
INSERT INTO Product (ProductID, CategoryID, BrandID, Model, BuyPrice, SellPrice, Quantity) VALUES
(1, 1, 1, 'iPhone 13', 700.00, 999.99, 50),
(2, 2, 4, 'Bravia X90J', 800.00, 1199.99, 30),
(3, 3, 3, 'LG Washer', 400.00, 699.99, 20),
(4, 4, 2, 'Samsung Microwave', 100.00, 149.99, 100),
(5, 5, 5, 'Dell XPS 13', 900.00, 1299.99, 25),
(6, 1, 2, 'Galaxy S21', 600.00, 899.99, 40),
(7, 6, 1, 'iPad Air', 500.00, 799.99, 35),
(8, 7, 2, 'Galaxy Watch', 200.00, 299.99, 60),
(9, 5, 6, 'HP Spectre x360', 1000.00, 1399.99, 15),
(10, 7, 7, 'Lenovo Smartwatch', 150.00, 249.99, 50);



-- Bütün qadın satıcıların seçilməsi
SELECT Seller.SellerID, Seller.FirstName, Seller.MidName, Seller.Surname, Gender.GenderName
FROM Seller
INNER JOIN Gender ON Seller.GenderID = Gender.GenderID
WHERE Gender.GenderName = N'Qadın';


-- Bütün kişi müştərilərin seçilməsi
SELECT Costumer.CostumerID, Costumer.FirstName, Costumer.MidName, Costumer.Surname, Gender.GenderName
FROM Costumer
INNER JOIN Gender ON Costumer.GenderID = Gender.GenderID
WHERE Gender.GenderName = N'Kişi';

--Telefon nömrəsi 051 və ya 050 ilə başlayan müştərilərin seçilməsi
SELECT Costumer.CostumerID, Costumer.FirstName, Costumer.MidName, Costumer.Surname, Costumer.Number
FROM Costumer
WHERE Costumer.Number LIKE '051%' OR Costumer.Number LIKE '050%';


-- Telefon nömrəsi 051 və ya 050 ilə başlayan müştərilərin seçilməsi
SELECT Costumer.CostumerID, Costumer.FirstName, Costumer.MidName, Costumer.Surname, Costumer.BornYear
FROM Costumer
WHERE Costumer.BornYear BETWEEN 1988 AND 2005;

