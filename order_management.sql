create database OrderManagement;
use OrderManagement;
create table userdetails(user_Id varchar(100),user_name varchar(30),phone_no varchar(10),address varchar(100),primary key(user_Id),foreign key(user_Id) references logindetails(user_Id));
create table productdetails(prodID int,prodName varchar(30),price int,quan int,category varchar(20),primary key(prodID));
insert into userdetails(user_id,user_name,phone_no,address) values("arjun@gmail.com","arjun",9876567890,"attur"),("vishnu@gmail.com","vishnu",9234554321,"mars"),("manoj@gmail.com","manoj",9123432100,"namakkal"),("sasi@gmail.com","sasi",9754321234,"tiruchengode"),("dharun@gmail.com","dharun",9999888877,"namakkal"),("saran@gmail.com","saran",9123098790,"namakkal"),("logesh@gmail.com","logesh",9393295678,"attur"),("jayaprasath@gmail.com","jayaprasath",9112233657,"attur"),("barath@gmail.com","barath",9701232100,"mallur"),("jeeva@gmail.com","jeeva",9812114390,"namakkal");
insert into productdetails(prodID,prodName,price,quan,category) values(11,"tv",25000,2,"electronics"),(12,"fridge",30000,1,"electronics"),(13,"washing machine",35000,1,"electronics"),(14,"bag",800,1,"leather"),(15,"shoe",1900,1,"leather"),(16,"belt",500,2,"leather"),(17,"mobile",28000,2,"electronics"),(18,"laptop",1000000,2,"elecyronics"),(19,"keyboard",3000,2,"electronics"),(20,"monitor",6000,2,"electronics");
create table logindetails(user_Id varchar(100),pass varchar(10),primary key(user_Id)); 
insert into logindetails(user_Id,pass)values("logesh@gmail.com","logesh12"),("saran@gmail.com","saran123"),("dharun@gmail.com","dharun12"),("sasi@gmail.com","sasi1234"),("vishnu@gmail.com","vishnu12"),("jayaprasath@gmail.com","jaya1234"),("arjun@gmail.com","arjun123"),("barath@gmail.com","barath12"),("jeeva@gmail.com","jeeva123"),("manoj@gmail.com","manoj123");
create table productorder(order_Id int auto_increment,user_Id varchar(100),prodID int,quan int,primary key(order_Id),foreign key(user_Id) references logindetails(user_Id),foreign key(prodID) references productdetails(prodId));
create table deliverystatus(order_Id int auto_increment,dstatus varchar(20),primary key(order_Id),foreign key(order_Id) references productorder(order_Id));
select*from deliverystatus;
drop table deliverystatus;
insert into deliverystatus(dstatus) values("NA");

select * from productorder;
select * from deliverystatus;
select productorder.order_Id,productorder.user_Id,deliverystatus.dstatus from productorder join deliverystatus where productorder.order_Id = deliverystatus.order_Id and deliverystatus.dstatus = "notdelivered";
update deliverystatus set dstatus='delivered' where order_id=1;