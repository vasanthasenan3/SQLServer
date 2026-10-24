Create procedure GetAllProduct
As
Begin
   Select*from Products
End
Exec GetAllProduct

--
Alter procedure UpdateProduct
@ProductName varchar(100)
As
Begin
Update Products Set ProductName= 'Buds' where ProductName = @ProductName
End
go
Exec  UpdateProduct
@ProductName = 'laptop' 





--@Category = 'Electronics',
--@Price = 1000,
--@stock =20
--Select*from Products;
Select SCOPE_IDENTITY() as Productid
--
Create Procedure GetPrduct
@Getproductid int
As
Begin
  Select*from Products
  where ProductId = @Getproductid
End
Exec GetPrduct 4
--
Create Procedure Updatestocks
@ProductID int, 
@NewStock int
As Begin
 If @NewStock > 10 
 Begin
 Update Products set Stock = @NewStock where ProductId = @ProductID
 end
 Else
   Begin
    select 'Product is in Stock' asMessage;
   end
   end;
 exec Updatestocks 2,7
 select*from Products