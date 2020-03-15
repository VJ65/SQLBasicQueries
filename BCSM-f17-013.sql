use quiz1
select * from labs

create procedure display 
as
select * from labs
go;
exec display;


CREATE PROCEDURE selectfromlab @name nvarchar(25)
AS
SELECT * FROM labs WHERE @name = s_name ;
GO

selectfromlab @name = "Jack"; 


CREATE PROCEDURE Sfl @name nvarchar(30), @id nvarchar(10)
AS
SELECT * FROM labs WHERE s_name = @name AND s_id = @id
GO;

exec sfl @name ="Jack" , @id=6

CREATE PROCEDURE ins( @id int, @name varchar(30))

 as BEGIN

INSERT INTO labs values (@id , @name)

END


exec ins  43, 'wajeeh shah'

CREATE PROCEDURE deletef( @id int)

 as BEGIN

delete from labs where @id=s_id

END

deletef @id=9


CREATE PROCEDURE DOneupdate
    @ContactID      int
  , @FirstName      nvarchar(50)
   
as
   UPDATE labs 
   SET s_id = @ContactID
     ,  s_name= @FirstName
	 where s_id= @ContactID

     
DOneupdate    9 , "Wajeeh"

