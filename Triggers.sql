/*Dimiourgia trigger gia tin enimerwsi pinaka log me tis energeies kathe dba*/
/*To trigger auto exei dimiourgithei me tin sxediadtiki paradoxi oti insert ston pinaka job mporei na kanei opoiosdipote dba*/
drop trigger if exists trig1;
delimiter $
create trigger trig1 before insert on job
for each row 
begin 
	if(new.dba_usr='DimPap') then 
		insert into log (dba_usr,action,act_date,where_to) values
		('DimPap','insert',now(),'job');
	else
		if(new.dba_usr='EleGeo') then
			insert into log (dba_usr,action,act_date,where_to) values
			('EleGeo','insert',now(),'job');
		else
			if(new.dba_usr='NikTsa') then	
				insert into log (dba_usr,action,act_date,where_to) values
				('NikTsa','insert',now(),'job');
			end if;
		end if;
	end if;		
end$
delimiter ;		

insert into job (id, start_date, salary, position, edra, evaluator, announce_date, submision_date,dba_usr)
values (null, '2024-12-15', 4500, 'Software Developer', 'Athens', 'EvgNik', '2023-12-10 08:00:00', '2023-12-12','DimPap');

/*Dimiourgia trigger gia tin enimerwsi pinaka log me tis energeies kathe dba*/
/*To trigger auto exei dimiourgithei me tin sxediadtiki paradoxi oti update se mia eggrafi tou job mporei na kanei mono o dba pou tin eisigage ston pinaka */
drop trigger if exists trig2;
delimiter $
create trigger trig2 before update on job
for each row 
begin 
	if(old.dba_usr='DimPap') then 
		insert into log (dba_usr,action,act_date,where_to) values
		('DimPap','update',now(),'job');
	else
		if(old.dba_usr='EleGeo') then
			insert into log (dba_usr,action,act_date,where_to) values
			('EleGeo','update',now(),'job');
		else
			if(old.dba_usr='NikTsa') then	
				insert into log (dba_usr,action,act_date,where_to) values
				('NikTsa','update',now(),'job');
			end if;
		end if;
	end if;		
end$
delimiter ;		

update job set salary=900 where id=25;

/*Dimiourgia trigger gia tin enimerwsi pinaka log me tis energeies kathe dba*/
/*To trigger auto exei dimiourgithei me tin sxediadtiki paradoxi oti i diagrafi mias eggrafis apo ton pinaka job mporei na ginei mono apo ton dba pou tin eisigage */
drop trigger if exists trig3;
delimiter $
create trigger trig3 before delete on job
for each row 
begin 
	if(old.dba_usr='DimPap') then 
		insert into log (dba_usr,action,act_date,where_to) values
		('DimPap','delete',now(),'job');
	else
		if(old.dba_usr='EleGeo') then
			insert into log (dba_usr,action,act_date,where_to) values
			('EleGeo','delete',now(),'job');
		else
			if(old.dba_usr='NikTsa') then	
				insert into log (dba_usr,action,act_date,where_to) values
				('NikTsa','delete',now(),'job');
			end if;
		end if;
	end if;		
end$
delimiter ;	

delete from job where id=25;


/*Dimiourgia trigger gia tin enimerwsi pinaka log me tis energeies kathe dba*/
/*To trigger auto exei dimiourgithei me tin sxediadtiki paradoxi oti insert ston pinaka user mporei na kanei opoiosdipote dba*/
drop trigger if exists trig4;
delimiter $
create trigger trig4 before insert on user
for each row 
begin 
	if(new.dba_usr='DimPap') then 
		insert into log (dba_usr,action,act_date,where_to) values
		('DimPap','insert',now(),'user');
	else
		if(new.dba_usr='EleGeo') then
			insert into log (dba_usr,action,act_date,where_to) values
			('EleGeo','insert',now(),'user');
		else
			if(new.dba_usr='NikTsa') then	
				insert into log (dba_usr,action,act_date,where_to) values
				('NikTsa','insert',now(),'user');
			end if;
		end if;
	end if;		
end$
delimiter ;	

insert into user (username, password, name, lastname, reg_date, email,dba_usr) values
	('LeoNik', 'pass37', 'Leonidas', 'Nikolaou', '2022-11-12', 'leo@example.com','NikTsa');


/*Dimiourgia trigger gia tin enimerwsi pinaka log me tis energeies kathe dba*/
/*To trigger auto exei dimiourgithei me tin sxediadtiki paradoxi oti update ston pinaka user mporei na kanei opoiosdipote dba*/
drop trigger if exists trig5;
delimiter $
create trigger trig5 before update on user
for each row 
begin 
	if(old.dba_usr='DimPap') then 
		insert into log (dba_usr,action,act_date,where_to) values
		('DimPap','update',now(),'user');
	else
		if(old.dba_usr='EleGeo') then
			insert into log (dba_usr,action,act_date,where_to) values
			('EleGeo','update',now(),'user');
		else
			if(old.dba_usr='NikTsa') then	
				insert into log (dba_usr,action,act_date,where_to) values
				('NikTsa','update',now(),'user');
			end if;
		end if;
	end if;		
end$
delimiter ;	

update user set password='pass42' where username='LeoNik';


/*Dimiourgia trigger gia tin enimerwsi pinaka log me tis energeies kathe dba*/
/*To trigger auto exei dimiourgithei me tin sxediadtiki paradoxi oti i diagrafi mias eggrafis apo ton pinaka user mporei na ginei mono apo ton dba pou tin eisigage */
drop trigger if exists trig6;
delimiter $
create trigger trig6 before delete on user
for each row 
begin 
	if(old.dba_usr='DimPap') then 
		insert into log (dba_usr,action,act_date,where_to) values
		('DimPap','delete',now(),'user');
	else
		if(old.dba_usr='EleGeo') then
			insert into log (dba_usr,action,act_date,where_to) values
			('EleGeo','delete',now(),'user');
		else
			if(old.dba_usr='NikTsa') then	
				insert into log (dba_usr,action,act_date,where_to) values
				('NikTsa','delete',now(),'user');
			end if;
		end if;
	end if;		
end$
delimiter ;

delete from user where username='LeoNik';



/*Dimiourgia trigger gia tin enimerwsi pinaka log me tis energeies kathe dba*/
/*To trigger auto exei dimiourgithei me tin sxediadtiki paradoxi oti insert ston pinaka degree mporei na kanei opoiosdipote dba*/
drop trigger if exists trig7;
delimiter $
create trigger trig7 before insert on degree
for each row 
begin 
	if(new.dba_usr='DimPap') then 
		insert into log (dba_usr,action,act_date,where_to) values
		('DimPap','insert',now(),'degree');
	else
		if(new.dba_usr='EleGeo') then
			insert into log (dba_usr,action,act_date,where_to) values
			('EleGeo','insert',now(),'degree');
		else
			if(new.dba_usr='NikTsa') then	
				insert into log (dba_usr,action,act_date,where_to) values
				('NikTsa','insert',now(),'degree');
			end if;
		end if;
	end if;		
end$
delimiter ;	

insert into degree (titlos, idryma, bathmida,dba_usr) values 
	('Computers of the world', 'University of Sasex', 'bsc','DimPap');

/*Dimiourgia trigger gia tin enimerwsi pinaka log me tis energeies kathe dba*/
/*To trigger auto exei dimiourgithei me tin sxediadtiki paradoxi oti update ston pinaka degree mporei na kanei opoiosdipote dba*/
drop trigger if exists trig8;
delimiter $
create trigger trig8 before update on degree
for each row 
begin 
	if(old.dba_usr='DimPap') then 
		insert into log (dba_usr,action,act_date,where_to) values
		('DimPap','update',now(),'degree');
	else
		if(old.dba_usr='EleGeo') then
			insert into log (dba_usr,action,act_date,where_to) values
			('EleGeo','update',now(),'degree');
		else
			if(old.dba_usr='NikTsa') then	
				insert into log (dba_usr,action,act_date,where_to) values
				('NikTsa','update',now(),'degree');
			end if;
		end if;
	end if;		
end$
delimiter ;

update degree set idryma='University of Aspen' where titlos='Computers of the world';


/*Dimiourgia trigger gia tin enimerwsi pinaka log me tis energeies kathe dba*/
/*To trigger auto exei dimiourgithei me tin sxediadtiki paradoxi oti i diagrafi mias eggrafis apo ton pinaka degree mporei na ginei mono apo ton dba pou tin eisigage */
drop trigger if exists trig9;
delimiter $
create trigger trig9 before delete on degree
for each row 
begin 
	if(old.dba_usr='DimPap') then 
		insert into log (dba_usr,action,act_date,where_to) values
		('DimPap','delete',now(),'degree');
	else
		if(old.dba_usr='EleGeo') then
			insert into log (dba_usr,action,act_date,where_to) values
			('EleGeo','delete',now(),'degree');
		else
			if(old.dba_usr='NikTsa') then	
				insert into log (dba_usr,action,act_date,where_to) values
				('NikTsa','delete',now(),'degree');
			end if;
		end if;
	end if;		
end$
delimiter ;

delete from degree where titlos='Computers of the world';

/*Dimiourgia trigger pou apotrepei tin eisagwgi aitisis ston pinaka applies an o ergazomenos exei >=3 energes aitiseis h exei perasei i kataliktiki imerominia gia ipoboli aitiseon*/
drop trigger if exists trig10;
delimiter $
create trigger trig10 before insert on applies
for each row
begin 
	declare message_text text;
	declare im date;
	declare active int;
	/* Epilogi imerominias enarksis tis job pou theloume na kanoume aitisi*/
	select job.start_date into im
	from job 
	where id=new.job_id;
	/*Ean i imerominia pou theloume na kanoume aitisi einai ligotero apo 15 meres makria apo tin imerominia enarksis*/
	if (datediff(im,new.req_date)<15) then 
		signal sqlstate value '45000'
		set message_text='I hmerominia enarksis tis job apexei ligotero apo 15 apo tin imerominia aitisis kai den ginetai dekti';
	end if;	
	/*Me trisi ton aitision gia job pou exei o employee gia ton opoio theloume na kanoume nea aitisi*/
	select count(job_id) into active
	from applies
	where applies.cand_usrname=new.cand_usrname and applies.state='Energh';
	/*Ean o arithmos aitiseon einai >=3 tote*/
	if (active>=3) then
		signal sqlstate value '45000' 
		set message_text='O ergazomenos exei idi toulaxiston 3 energes aitiseis gia alla job';
	end if;	
end$
delimiter ;

insert into job (id, start_date, salary, position, edra, evaluator, announce_date, submision_date,dba_usr)
values (null, '2024-12-15', 4500, 'Software Developer', 'Athens', 'EvgNik', '2023-12-10 08:00:00', '2023-12-12','DimPap');

call proc3132('IoaNel',22,'i');			-- Paradeigma pou den ginetai dekto logo imerominias
call proc3132('IoaNel',26,'i');			-- Paradeigma pou ginetai dekto logo imerominias
call proc3132('DesPap',26,'i');			-- Paradeigma pou den ginetai dekto logo arithmou aitisewn gia job
call proc3132('PavGeo',26,'i');			-- Paradeigma pou ginetai dekto logo arithmou aitisewn gia job


/*Dimiourgia trigger pou apotrepei tin akirwsi aitisis an exei perasei i kataliktiki hmerominia akirwsis kai apotrepei tin energopoihsi akirwmneis aitisis an o ergazomenos exei idi 3 energes aitisis*/
drop trigger if exists trig11;
delimiter $
create trigger trig11 before update on applies
for each row
begin 
	declare message_text text;
	declare im date;
	declare active int;

	/*Epilogi tis imerominias enarksis tis job kai tis katastasis tis aitisis*/
	select job.start_date into im
	from job
	where id=new.job_id;
	if (new.state='Akirwmenh')then
		if (datediff(im,curdate())<10) then 
			signal sqlstate value '45000'
			set message_text='I hmerominia enarksis tis job apexei ligotero apo 10 apo tin simerini imerominia kai den mporei na akirothei';
		end if;
	end if;	

	/*Athroisi twn job gia ta opoia exei energh aitisi o employee gia ton opoio theloume na energopoihsoume aitisi*/
	select count(job_id) into active
	from applies
	where applies.cand_usrname=new.cand_usrname and applies.state='Energh';
	if (new.state='Energh') then 
		if (active>=3) then  
			signal sqlstate value '45000' 
			set message_text='O ergazomenos exei idi toulaxiston 3 energes aitiseis gia alla job kai den mporei na energopoihthei alli aitisi';
		end if;	
	end if;	
end$
delimiter ;

update applies set state='Akirwmenh' where job_id=21 and cand_usrname='GioMic'; 			-- Paradeigma pou den epitrepetai i akirosi tis aitisis giati exei parelthei i kataliktiki hmerominia
update applies set state='Akirwmenh' where job_id=26 and cand_usrname='PavGeo';				-- Paradeigma pou epitrepetai i akirosi tis aitisis giati den exei parelthei i kataliktiki hmerominia
update applies set state='Energh' where job_id=26 and cand_usrname='DesPap';				-- Paradeigma pou den epitrepetai i energopoihsi tis aitisis giati iparxoun idi toulaxiston alles treis energes aitiseis
update applies set state='Energh' where job_id=26 and cand_usrname='PavGeo';				-- Paradeigma pou epitrepetai i energopoihsi tis aitisis giati den iparxoun idi toulaxiston alles treis energes aitiseis