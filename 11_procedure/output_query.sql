USE [sqlDB]
GO
/****** Object:  StoredProcedure [dbo].[usp_users]    Script Date: 2021-02-15 오후 2:12:34 ******/
create or ALTER procedure usp_users4
	@txtValue nvarchar(20),
	@outValue int output --리턴받은 매개변수
as 
	insert into TestTbl values (@txtValue)
	select @outValue = IDENT_CURRENT('testTbl'); --testTbl의 현재 identity 값 리턴
go

declare @myValue int;

exec usp_users4 '테스트값', @myValue output;

print concat('현재 입력된 값은 ==> ', @myValue);
select * from testTbl;