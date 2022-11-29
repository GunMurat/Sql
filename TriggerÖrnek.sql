Create TRIGGER StokEksilt
ON [Order Details]
AFTER INSERT
AS
BEGIN
	DECLARE @UrunID int
	DECLARE @UrunMiktari int

	SELECT @UrunID = ProductID, @UrunMiktari =Quantity From inserted

	UPDATE Products
	SET UnitsInStock = UnitsInStock - @UrunMiktari
	WHERE ProductID = @UrunID

END

INSERT INTO [Order Details]
(OrderID,ProductID,UnitPrice,Quantity,Discount)
VALUES(10266, 13, 75.25, 5, 0.25) --Bir üst satırdaki başlıklara ait sırasıyla giriyoruz.

--: (10266, 13, 75.25, 100, 0.25)

Select * From [Order Details]
Select * From Products