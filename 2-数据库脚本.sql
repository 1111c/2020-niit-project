create database HouseRent
drop   database HouseRent
go

use HouseRent
go

drop table Users
create table Users( 
UName nvarchar(200) primary key  ,
UStatus  nvarchar(20) ,
UPicture nvarchar(1000)  ,
UPhone nvarchar(110)  ,
UEmail nvarchar(500)  ,
UBirthday nvarchar(500),
UGender nvarchar(100)  ,
UPassword nvarchar(200)  ,
);

delete Users where UName = 'admin'

insert into Users values( 'admin'  , '管理员', 'uploadImage/2722e518-b76e-4c4d-8b4b-d511921d443b.jpg' ,'17811111111' ,'17811111111@163.com' ,'1999-01-01' ,'1' ,'123123' )
insert into Users values( 'user1' ,'普通用户', 'uploadImage/3.jpg' ,'17811111111' ,'17811111111@163.com' ,'1999-01-01' ,'1' ,'123123' )
insert into Users values( 'user2' , '中介','uploadImage/c6cdc854-1eb8-4909-b55b-8a9ed8f88944.jpg' ,'17811111111' ,'17811111111@163.com' ,'1999-01-01' ,'1' ,'123123' )
insert into Users values( 'user3' , '中介','uploadImage/7bdbecc5-8db1-4967-986d-85d9be28ac6c.jpg' ,'17811111111' ,'17811111111@163.com' ,'1999-01-01' ,'1' ,'123123' )
insert into Users values( 'user4' ,'普通用户', 'uploadImage/6be59018-d4fb-4653-999a-e7961db6e5c8.jpg' ,'17811111111' ,'17811111111@163.com' ,'1999-01-01' ,'1' ,'123123' )
insert into Users values( 'user5' ,'中介', 'uploadImage/3f43d30d-bcdd-4c6e-af09-d56c50ddb52b.jpg' ,'17811111111' ,'17811111111@163.com' ,'1999-01-01' ,'1' ,'123123' )
insert into Users values( 'user6' , '中介','uploadImage/ea40dded-ed68-4e5f-a327-743665ff10fa.jpg' ,'17811111111' ,'17811111111@163.com' ,'1999-01-01' ,'1' ,'123123' )
insert into Users values( 'user7','普通用户',  'uploadImage/166473f4-4c81-4970-a7a0-204c1eb7e0a0.jpg' ,'17811111111' ,'17811111111@163.com' ,'1999-01-01' ,'1' ,'123123' )
insert into Users values( 'user8' ,'中介', 'uploadImage/3.jpg' ,'17811111111' ,'17811111111@163.com' ,'1999-01-01' ,'1' ,'123123' )
insert into Users values( 'user9' ,'中介', 'uploadImage/2722e518-b76e-4c4d-8b4b-d511921d443b.jpg' ,'17811111111' ,'17811111111@163.com' ,'1999-01-01' ,'1' ,'123123' )
insert into Users values( 'user10' ,'普通用户', 'uploadImage/166473f4-4c81-4970-a7a0-204c1eb7e0a0.jpg' ,'17811111111' ,'17811111111@163.com' ,'1999-01-01' ,'1' ,'123123' )
insert into Users values( 'user11' ,'中介', 'uploadImage/1.jpg' ,'17811111111' ,'17811111111@163.com' ,'1999-01-01' ,'1' ,'123123' )
insert into Users values( 'user12' ,'中介', 'uploadImage/0.jpg' ,'17811111111' ,'17811111111@163.com' ,'1999-01-01' ,'1' ,'123123' )
insert into Users values( 'user13' ,'中介', 'uploadImage/2.jpg' ,'17811111111' ,'17811111111@163.com' ,'1999-01-01' ,'1' ,'123123' ) 
insert into Users values( 'user14' ,'普通用户', 'uploadImage/2722e518-b76e-4c4d-8b4b-d511921d443b.jpg' ,'17811111111' ,'17811111111@163.com' ,'1999-01-01' ,'1' ,'123123' )
insert into Users values( 'user15' ,'中介', 'uploadImage/ea40dded-ed68-4e5f-a327-743665ff10fa.jpg' ,'17811111111' ,'17811111111@163.com' ,'1999-01-01' ,'1' ,'123123' )
insert into Users values( 'user16' ,'中介', 'uploadImage/7bdbecc5-8db1-4967-986d-85d9be28ac6c.jpg' ,'17811111111' ,'17811111111@163.com' ,'1999-01-01' ,'1' ,'123123' )
insert into Users values( 'user17' ,'中介', 'uploadImage/5.jpg' ,'17811111111' ,'17811111111@163.com' ,'1999-01-01' ,'1' ,'123123' )
insert into Users values( 'user18' ,'普通用户', 'uploadImage/0.jpg' ,'17811111111' ,'17811111111@163.com' ,'1999-01-01' ,'1' ,'123123' )
select * from Users

drop table House
create table House( 
Hnumber		    int  primary key  identity(1,1) ,  --房产号
Hpicture        nvarchar(200),  --图片 
Hcity           nvarchar(200),  --城市
Hcname           nvarchar(200), --小区名
Harea		    nvarchar(200),  --房屋实际面积面积
Lno             nvarchar(200),  --楼号 
Uno             nvarchar(200),  --单元号
Gno             nvarchar(200),  --门牌号
--房产地址
Hrentprice		float   ,       --出租价格
Howner          nvarchar(200),  --房屋主人
Hphone          nvarchar(200),  --手机号
Houseimg		nvarchar(200) , --房产图片 
Hcreatetime		nvarchar(200)  ,    --房产录入时间
Hisrenting		nvarchar(200)  ,    --房产是否租赁 
Hdescription	nvarchar(2200)  --房产描述
)
select * from House where Hpicture = 'uploadImage/1eed4fee-64fb-426b-9600-1a07780e2ff8.jpg';
go
 insert into House values('uploadImage/c6cdc854-1eb8-4909-b55b-8a9ed8f88944.jpg', '青岛市南','五四广场','120','4','3','301','2450','李先生','17866666666', 'uploadImage/c6cdc854-1eb8-4909-b55b-8a9ed8f88944.jpg','2019/12/11','否','为年轻人打造理想租房生活全国品牌连锁公寓，知名设计师匠心打造美式田园风、欧式简约风、优雅地中海等装修风格，全新家具电器，手绘油画装点你的梦想空间。美丽屋给予您的不仅仅是租住无忧，更是高品质的生活体验。美丽屋酒店式服务，入住深度保洁１客１锁专属管家免费上门维修周边配套设施学校、医院、银行、公园、餐饮、娱乐、菜市场、超市、商场等设施齐全一房屋优势1、朝向好日照充足2、室内装修简洁大方、拎包入住二房屋介绍1、客厅宽敞大方使用率高2、卧室温馨舒适3、厨房设施齐全三社区配套1、环境优雅、低密度社区2、小区绿化率高空气清新四周边配套1、地理位置得天独厚出行方便节约时间期待您的来电！')
 insert into House values('uploadImage/house1.jpg', '青岛市南','五四广场','120','4','3','301','2450','李先生','17866666666', 'uploadImage/house1.jpg','2019/12/11','否','中润置家是青岛市中高端的公寓运营商。存量资产运营管理，房屋托管，酒店式公寓是中润置家的三大核心业务。干净，舒适，友好，高性价比，是中润置家的核心卖点。中润置家凭借资源整合及专业化的优势，对受托房屋资产进行合理规划性市场运作，致力于为租客创造品质生活！省钱：免免物业取暖免网费月付：支持月付分期季付半年付年付房间配置：双人床1.5m2m、床垫、床头柜、衣柜、电脑桌、椅子、置物架、晾衣架')
 insert into House values('uploadImage/house2.jpg', '青岛市南','五四广场','120','4','3','301','2450','李先生','17866666666', 'uploadImage/house2.jpg','2019/12/11','否','为年轻人打造理想租房生活（首月免租金）全国品牌连锁公寓，知名设计师匠心打造美式田园风、欧式简约风、优雅地中海等装修风格，全新家具电器，手绘油画装点你的梦想空间。美丽屋给予您的不仅仅是租住无忧，更是高品质的生*验。美丽屋酒店式服务，入住深度保洁１客１锁专属管家免费上门维修')
 insert into House values('uploadImage/house3.jpg', '青岛市南','五四广场','120','4','3','301','2450','李先生','17866666666', 'uploadImage/house3.jpg','2019/12/11','否','中润置家是青岛市中高端的公寓运营商。存量资产运营管理，房屋托管，酒店式公寓是中润置家的三大核心业务。干净，舒适，友好，高性价比，是中润置家的核心卖点。中润置家凭借资源整合及专业化的优势，对受托房屋资产进行合理规划性市场运作，致力于为租客创造品质生活！省钱：免免物业取暖免网费月付：支持月付分期季付半年付年付房间配置：双人床1.5m2m、床垫、床头柜、衣柜、电脑桌、椅子、置物架、晾衣架')
 insert into House values('uploadImage/house4.jpg', '青岛市南','五四广场','120','4','3','301','2450','李先生','17866666666', 'uploadImage/house4.jpg','2019/12/11','否','自己家房子，可以月付，付款方式灵活，家具家电齐全，合租都是年轻人，房子干净，，可拎包入住，随时看房，欢迎电话联系')
 insert into House values('uploadImage/house5.jpg', '青岛市南','五四广场','120','4','3','301','2450','李先生','17866666666', 'uploadImage/house5.jpg','2019/12/11','否','中润置家是青岛市中高端的公寓运营商。存量资产运营管理，房屋托管，酒店式公寓是中润置家的三大核心业务。干净，舒适，友好，高性价比，是中润置家的核心卖点。中润置家凭借资源整合及专业化的优势，对受托房屋资产进行合理规划性市场运作，致力于为租客创造品质生活！省钱：免免物业取暖免网费月付：支持月付分期季付半年付年付房间配置：双人床1.5m2m、床垫、床头柜、衣柜、电脑桌、椅子、置物架、晾衣架')
 insert into House values('uploadImage/house1.jpg', '青岛市南','五四广场','120','4','3','301','2450','李先生','17866666666', 'uploadImage/house1.jpg','2019/12/11','否','中润置家是青岛市中高端的公寓运营商。存量资产运营管理，房屋托管，酒店式公寓是中润置家的三大核心业务。干净，舒适，友好，高性价比，是中润置家的核心卖点。中润置家凭借资源整合及专业化的优势，对受托房屋资产进行合理规划性市场运作，致力于为租客创造品质生活！省钱：免免物业取暖免网费月付：支持月付分期季付半年付年付房间配置：双人床1.5m2m、床垫、床头柜、衣柜、电脑桌、椅子、置物架、晾衣架')
 insert into House values('uploadImage/house1.jpg', '青岛市南','五四广场','120','4','3','301','2450','李先生','17866666666', 'uploadImage/house2.jpg','2019/12/11','否','中润置家是青岛市中高端的公寓运营商。存量资产运营管理，房屋托管，酒店式公寓是中润置家的三大核心业务。干净，舒适，友好，高性价比，是中润置家的核心卖点。中润置家凭借资源整合及专业化的优势，对受托房屋资产进行合理规划性市场运作，致力于为租客创造品质生活！省钱：免免物业取暖免网费月付：支持月付分期季付半年付年付房间配置：双人床1.5m2m、床垫、床头柜、衣柜、电脑桌、椅子、置物架、晾衣架')
 insert into House values('uploadImage/house2.jpg', '青岛市南','五四广场','120','4','3','301','2450','李先生','17866666666', 'uploadImage/house3.jpg','2019/12/11','否','中润置家是青岛市中高端的公寓运营商。存量资产运营管理，房屋托管，酒店式公寓是中润置家的三大核心业务。干净，舒适，友好，高性价比，是中润置家的核心卖点。中润置家凭借资源整合及专业化的优势，对受托房屋资产进行合理规划性市场运作，致力于为租客创造品质生活！省钱：免免物业取暖免网费月付：支持月付分期季付半年付年付房间配置：双人床1.5m2m、床垫、床头柜、衣柜、电脑桌、椅子、置物架、晾衣架')
 insert into House values('uploadImage/house3.jpg', '青岛市南','五四广场','120','4','3','301','2450','李先生','17866666666', 'uploadImage/house4.jpg','2019/12/11','否','中润置家是青岛市中高端的公寓运营商。存量资产运营管理，房屋托管，酒店式公寓是中润置家的三大核心业务。干净，舒适，友好，高性价比，是中润置家的核心卖点。中润置家凭借资源整合及专业化的优势，对受托房屋资产进行合理规划性市场运作，致力于为租客创造品质生活！省钱：免免物业取暖免网费月付：支持月付分期季付半年付年付房间配置：双人床1.5m2m、床垫、床头柜、衣柜、电脑桌、椅子、置物架、晾衣架')
 insert into House values('uploadImage/house4.jpg', '青岛市南','五四广场','120','4','3','301','2450','李先生','17866666666', 'uploadImage/house5.jpg','2019/12/11','否','中润置家是青岛市中高端的公寓运营商。存量资产运营管理，房屋托管，酒店式公寓是中润置家的三大核心业务。干净，舒适，友好，高性价比，是中润置家的核心卖点。中润置家凭借资源整合及专业化的优势，对受托房屋资产进行合理规划性市场运作，致力于为租客创造品质生活！省钱：免免物业取暖免网费月付：支持月付分期季付半年付年付房间配置：双人床1.5m2m、床垫、床头柜、衣柜、电脑桌、椅子、置物架、晾衣架')
 insert into House values('uploadImage/house5.jpg', '青岛市南','五四广场','120','4','3','301','2450','李先生','17866666666', 'uploadImage/house1.jpg','2019/12/11','否','中润置家是青岛市中高端的公寓运营商。存量资产运营管理，房屋托管，酒店式公寓是中润置家的三大核心业务。干净，舒适，友好，高性价比，是中润置家的核心卖点。中润置家凭借资源整合及专业化的优势，对受托房屋资产进行合理规划性市场运作，致力于为租客创造品质生活！省钱：免免物业取暖免网费月付：支持月付分期季付半年付年付房间配置：双人床1.5m2m、床垫、床头柜、衣柜、电脑桌、椅子、置物架、晾衣架')






go
drop   table Comment;
go

create table Comment(
       id      int  primary key identity(1,1),
	   UName   nvarchar(200) ,--  foreign key references  Users( UName)  not null,
	   Hnumber int  ,--foreign key references  House( Hnumber  )  not null,
	   UImage  nvarchar(200) ,
	   content varchar(300)  
)

select * from Comment

 
 













