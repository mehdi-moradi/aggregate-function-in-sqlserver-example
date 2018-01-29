use Store

select sum([Transaction].[Count]) as total , [Group].Title
from [Transaction] , [Group] , Product
where [Transaction].ProductID = Product.ID and Product.GroupID = [Group].ID
group by [Group].Title

having sum([Transaction].[Count]) > 50000