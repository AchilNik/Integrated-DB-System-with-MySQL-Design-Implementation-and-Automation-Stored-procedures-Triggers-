/*Procedure erotimatos 3.1.3.1*/
drop procedure if exists proc3131;
delimiter $
create procedure proc3131(in ev varchar(30), in em varchar(30), in jid char(9), out result int)
begin 
	declare evusr1 varchar(30);
	declare evusr2 varchar(30);
	declare emusr varchar(30);
	declare id char(9);
	declare gr1 int;
	declare gr2 int;
	declare bbsc int;
	declare bMSc int;
	declare bPhD int;
	declare blang int;
	declare blang1 int;
	declare blang2 int;
	declare blang3 int;
	declare blang4 int;
	declare blang5 int;
	declare blang6 int;
	declare bpro int;

	/*Epilogi stoixeion an einai o evus1*/
	select rating.evus1,rating.emp,rating.jid,rating.g1 into evusr1,emusr,id,gr1 from rating 
	where (ev=rating.evus1 and em=rating.emp and jid=rating.jid);

	/*O evaluator einai o evus1*/
	if(evusr1 is not null and emusr is not null and id is not null) then
		/*exei bathmologisei ton employee me gr1*/
		if(gr1 is not null) then  													
			select 'O evaluator me username',evusr1,'exei bathmologisei ton employee me username',emusr,'me bathmo',gr1;
			select gr1 into result;
		/*den exei bathmologisei akoma*/
		else 	
			select 'O evaluator me username',evusr1,' den exei bathmologisei ton employee me username',emusr,'perimenete gia ipologismo bathmou';
			/*ipologismos bathmologias apo ptixia*/
			set bbsc=0;
			select count(employee.username) into bbsc 
			from degree inner join has_degree on degree.titlos=has_degree.degr_title and degree.idryma=has_degree.degr_idryma inner join employee on has_degree.cand_usrname=employee.username
			where employee.username=emusr and degree.bathmida='BSc';
			select 'O employee me username',emusr,'exei',bbsc,'BSc mazeuei',bbsc,'bathmologia';

			set bMSc=0;
			select count(employee.username) into bMSc
			from degree inner join has_degree on degree.titlos=has_degree.degr_title and degree.idryma=has_degree.degr_idryma inner join employee on has_degree.cand_usrname=employee.username
			where employee.username=emusr and degree.bathmida='MSc';
			select 'O employee me username',emusr,'exei',bMSc,'MSc mazeuei',2*bMSc,'bathmologia';

			set bPhD=0;
			select count(employee.username) into bPhD
			from degree inner join has_degree on degree.titlos=has_degree.degr_title and degree.idryma=has_degree.degr_idryma inner join employee on has_degree.cand_usrname=employee.username
			where employee.username=emusr and degree.bathmida='PhD';
			select 'O employee me username',emusr,'exei',bPhD,'PhD mazeuei',3*bPhD,'bathmologia';

			/*ipologismos bathmologias apo ksenes glosses*/
			set blang1=0;
			select count(employee.username) into blang1
			from employee inner join languages on languages.candid=employee.username
			where employee.username=emusr and lang like'%GR%';

			set blang2=0;
			select count(employee.username) into blang2
			from employee inner join languages on languages.candid=employee.username
			where employee.username=emusr and lang like '%EN%';

			set blang3=0;
			select count(employee.username) into blang3
			from employee inner join languages on languages.candid=employee.username
			where employee.username=emusr and lang like '%FR%';

			set blang4=0;
			select count(employee.username) into blang4
			from employee inner join languages on languages.candid=employee.username
			where employee.username=emusr and lang like '%SP%';

			set blang5=0;
			select count(employee.username) into blang5
			from employee inner join languages on languages.candid=employee.username
			where employee.username=emusr and lang like '%GE%';

			set blang6=0;
			select count(employee.username) into blang6
			from employee inner join languages on languages.candid=employee.username
			where employee.username=emusr and lang like '%CH%';

			set blang=blang1+blang2+blang3+blang4+blang5+blang6;
			if(blang>1) then
				set blang1=1;
				select 'O employee me username',emusr,'milaei',blang,'glosses kai mazeuei',blang1,'bathmologia';
			else 
				set blang1=0;
				select 'O employee me username',emusr,'milaei mono ti mitrikh toy glosssa kai de mazeuei extra bathmologia';
			end if;

			/*ipologismos bathmologias apo project*/
			set bpro=0;
			select count(employee.username) into bpro
			from employee inner join project on project.candid=employee.username
			where employee.username=emusr;
			if(bpro>0) then
				select 'O employee me username',emusr,'exei ilopoihsei',bpro,'project kai mazeuei bathmologia',bpro;
			else 
				select 'O employee me username',emusr,'denexei ilopoihsei project kai de mazeuei extra bathmologia';
			end if;	
			select 'H sinoliki bathmologia tou employee me username',emusr,'ipologistike stous',bbsc+2*bMSc+3*bPhD+blang1+bpro,'bathmous';
			select bbsc+2*bMSc+3*bPhD+blang1+bpro into result;
		end if;
	else
		/*Epilogi stoixeion an einai o evus2*/
		select rating.evus2,rating.emp,rating.jid,rating.g2 into evusr2,emusr,id,gr2 from rating 
		where (ev=rating.evus2 and em=rating.emp and jid=rating.jid);
		/*O evaluator einai o evus2*/
		if(evusr2 is not null and emusr is not null and id is not null) then
			/*exei bathmologisei ton employee me gr2*/
			if(gr2 is not null) then  													
				select 'O evaluator me username',evusr2,'exei bathmologisei ton employee me username',emusr,'me bathmo',gr2;
				select gr2 into result;
			/*den exei bathmologisei akoma*/
			else 	
				select 'O evaluator me username',evusr2,' den exei bathmologisei ton employee me username',emusr,'perimenete gia ipologismo bathmou';
				/*ipologismos bathmologias apo ptixia*/
				select count(employee.username) into bbsc 
				from degree inner join has_degree on degree.titlos=has_degree.degr_title and degree.idryma=has_degree.degr_idryma inner join employee on has_degree.cand_usrname=employee.username
				where employee.username=emusr and degree.bathmida='BSc';
				select 'O employee me username',emusr,'exei',bbsc,'BSc mazeuei',bbsc,'bathmologia';

				select count(employee.username) into bMSc
				from degree inner join has_degree on degree.titlos=has_degree.degr_title and degree.idryma=has_degree.degr_idryma inner join employee on has_degree.cand_usrname=employee.username
				where employee.username=emusr and degree.bathmida='MSc';
				select 'O employee me username',emusr,'exei',bMSc,'MSc mazeuei',2*bMSc,'bathmologia';

				select count(employee.username) into bPhD
				from degree inner join has_degree on degree.titlos=has_degree.degr_title and degree.idryma=has_degree.degr_idryma inner join employee on has_degree.cand_usrname=employee.username
				where employee.username=emusr and degree.bathmida='PhD';
				select 'O employee me username',emusr,'exei',bPhD,'PhD mazeuei',3*bPhD,'bathmologia';

				/*ipologismos bathmologias apo ksenes glosses*/
				select count(employee.username) into blang1
				from employee inner join languages on languages.candid=employee.username
				where employee.username=emusr and lang like'%GR%';
				select count(employee.username) into blang2
				from employee inner join languages on languages.candid=employee.username
				where employee.username=emusr and lang like '%EN%';
				select count(employee.username) into blang3
				from employee inner join languages on languages.candid=employee.username
				where employee.username=emusr and lang like '%FR%';
				select count(employee.username) into blang4
				from employee inner join languages on languages.candid=employee.username
				where employee.username=emusr and lang like '%SP%';
				select count(employee.username) into blang5
				from employee inner join languages on languages.candid=employee.username
				where employee.username=emusr and lang like '%GE%';
				select count(employee.username) into blang6
				from employee inner join languages on languages.candid=employee.username
				where employee.username=emusr and lang like '%CH%';
				set blang=blang1+blang2+blang3+blang4+blang5+blang6;
				if(blang>1) then
					set blang1=1;
					select 'O employee me username',emusr,'milaei',blang,'glosses kai mazeuei',blang1,'bathmologia';
				else 
					select 'O employee me username',emusr,'milaei mono ti mitrikh toy glosssa kai de mazeuei extra bathmologia';
				end if;

				/*ipologismos bathmologias apo project*/
				select count(employee.username) into bpro
				from employee inner join project on project.candid=employee.username
				where employee.username=emusr;
				if(bpro>0) then
					select 'O employee me username',emusr,'exei ilopoihsei',bpro,'project kai mazeuei bathmologia',bpro;
				else 
					select 'O employee me username',emusr,'denexei ilopoihsei project kai de mazeuei extra bathmologia';
				end if;
				select 'H sinoliki bathmologia tou employee me username',emusr,'ipologistike stous',bbsc+2*bMSc+3*bPhD+blang1+bpro,'bathmous';
				select bbsc+2*bMSc+3*bPhD+blang1+bpro into result;	
			end if;
		end if;	
	end if;
	/*O evaluator pou eisaxthike den einai oute o evus1 oute o evus2*/
	if(evusr1 is null and evusr2 is null) then
		select 'O evaluator me username',ev,'den aksiologei ton employee',em,'gia ti job',jid;
	end if;	
end$	
delimiter ;		

call proc3131('MarPan','GioMic',21,@a); 
call proc3131('antkou','leosot',11,@a);

/*Procedure erotimatos 3.1.3.2*/
drop procedure if exists proc3132;
delimiter $
create procedure proc3132(in em varchar(30), in jid int(11),in choice enum ('i','c','a'))
begin 
	declare id char(9);
	declare evusr1 varchar(30);
	declare evusr2 varchar(30);
	declare empl varchar(30);
	declare jjid int(11);
	declare afm char(9);
	declare st enum('Energh','Akirwmenh');

	/*Dimiourgia aitisis me eisodo i*/
	if (choice='i') then 											
		select job.id into id 
		from job where job.id=jid;                    
		/*Elegxos an iparxei job me auto to id*/
		if(id is null) then 
			select 'Den iparxei job me id',jid,'gia na dhmiourgithei aitisi gia auti';
		else 
			/*Iparxei job me auto to id*/
			select rating.evus1,rating.evus2,rating.emp,rating.jid,rating.firm into evusr1,evusr2,empl,jjid,afm 						
			from rating 
			where rating.jid=id and rating.emp=em;
			/*Elegxos an iparxei ston pinaka rating eggrafh gia ton sigkekrimeno employee sth sigkekrimeni job*/  
			if(empl is not null and jjid is not null) then
				/*Elegxos an exoun oristei kai oi dio evaluators*/
				if(evusr1<>'none' and evusr2<>'none') then
					insert into applies (cand_usrname, job_id, state, req_date, req_num) values 
					(em, jid, 'Energh', curdate(), 1);
					select 'I aitisi tou employee me username',em,'gia ti job me id',jjid,'egine dekti kai tin aksiologisi tou anelaban oi evaluators me username',evusr1,'kai',evusr2;
				else
					/*Elegxos an den exei oristei evaluator2*/
					if(evusr1<>'none' and evusr2='none') then 
						/*Epilogi evaluator 2 apo tin idia etaireia me ton 1*/
						select evaluator.username into evusr2
   						from evaluator
    					where evaluator.firm=(select evaluator.firm from evaluator where evaluator.username=evusr1) and evaluator.username<>evusr1
    					order by rand() limit 1;
						update rating set evus2=evusr2 where evus1=evusr1 and emp=empl and jid=id;
						/*Eisagogi tis neas aitisis ston pinaka applies afou simplirothikan kai oi dio evaluators*/
						insert into applies (cand_usrname, job_id, state, req_date, req_num) values 
						(em, jid, 'Energh', curdate() ,1);
						select 'I aitisi tou employee me username',em,'gia ti job me id',jjid,'egine dekti kai tin aksiologisi tou anelaban oi evaluators me username',evusr1,'kai',evusr2;
					else 
						/*Elegxos an den exei oristei evaluator1*/
						if(evusr2<>'none' and evusr1='none') then    
							/*Epilogi evaluator 1  apo tin idia etaireia me ton 2*/ 
							select evaluator.username into evusr1
							from evaluator
							where evaluator.firm=(select evaluator.firm from evaluator where evaluator.username=evusr2) and evaluator.username<>evusr2
							order by rand() limit 1;
							update rating set evus1=evusr1 where evus2=evusr2 and emp=empl and jid=id;
							/*Eisagogi tis neas aitisis ston pinaka applies afou simplirothikan kai oi dio evaluators*/
							insert into applies (cand_usrname, job_id, state, req_date, req_num) values 
							(em, jid, 'Energh', curdate(), 1);
							select 'I aitisi tou employee me username'em,'gia ti job me id',jjid,'egine dekti kai tin aksiologisi tou anelaban oi evaluators me username',evusr1,'kai',evusr2;			
						else
							/*Elegxos an den exei oristei kanenas evaluator*/
							if(evusr1='none' and evusr2='none') then
								/*Epilogi tixaias etaireias apo tin opoia tha epilekso tous evaluator*/
								select evaluator.firm into afm
								from evaluator
								where firm is not null    -- To firm exei dilothei null mono sthn periptosi pou o evaluator den iparxei ara prepei na eksairethei apo to select 
								order by rand() limit 1;
								update rating set firm=afm where emp=empl and jid=id;
								/*Epilogi protou tixaiou evaluator apo thn etaireia pou epilexthike prin*/
								select evaluator.username into evusr1
								from evaluator
								where firm=afm  
								order by rand() limit 1;
								/*Epilogi deuterou tixaiou evaluator apo thn etaireia pou epilexthike prin, diaforetiko apo auton pou epileksame prin*/
								select evaluator.username into evusr2
								from evaluator
								where firm=afm and username<>evusr1
								order by rand() limit 1;
								/*Enimerosi tou pinaka rating me tous evaluator pou epilexthikan*/
								update rating set evus1=evusr1 where emp=empl and jid=id;
								update rating set evus2=evusr2 where emp=empl and jid=id;
								/*Eisagogi tis neas aitisis ston pinaka applies afou simplirothikan kai oi dio evaluators*/
								insert into applies (cand_usrname, job_id, state, req_date, req_num) values 
								(em, jid, 'Energh', curdate(), 1); 
								select 'I aitisi tou employee me username',em,'gia ti job me id',jid,'egine dekti kai tin aksiologisi tou anelaban oi evaluators me username',evusr1,'kai',evusr2;
							end if;	
						end if;
					end if;
				end if;	
			else		
				/*Den iparxei ston rating eggrafi gia ton sigkekrimeno employee gia tin sigkekrimeni job ara ginetai isagogi ston applies kai ston rating gia na oristoun evaluators kateutheian giati exei elegxthei apo tin arxi oti iparxei to sigkekrimeno job*/
				/*Epilogi tixaias etaireias apo tin opoia tha epilekso tous evaluator*/
				select evaluator.firm into afm
				from evaluator
				where firm is not null    -- To firm exei dilothei null mono sthn periptosi pou o evaluator den iparxei ara prepei na eksairethei apo to select 
				order by rand() limit 1;
				/*Epilogi protou tixaiou evaluator apo thn etaireia pou epilexthike prin*/
				select evaluator.username into evusr1
				from evaluator
				where firm=afm  
				order by rand() limit 1;
				/*Epilogi deuterou tixaiou evaluator apo thn etaireia pou epilexthike prin, diaforetiko apo auton pou epileksame prin*/
				select evaluator.username into evusr2
				from evaluator
				where firm=afm and username<>evusr1
				order by rand() limit 1;
				/*Eisagogi ston applies tis neas aitisis*/			
				insert into applies (cand_usrname, job_id, state, req_date, req_num) values 
				(em, jid, 'Energh', curdate(), 1);
				/*Eisagogi ston pinaka rating me tous orismenous evaluators*/
				insert into rating (evus1,evus2,emp,jid,g1,g2,firm) values
				(evusr1,evusr2,em,jid,null,null,afm);	
				select 'I aitisi tou employee me username',em,'gia ti job me id',jid,'egine dekti kai tin aksiologisi tou anelaban oi evaluators me username',evusr1,'kai',evusr2;
			end if;
		end if;		
	end if;
	if (choice='c') then 
		select applies.cand_usrname,applies.job_id,applies.state into empl,jjid,st
		from applies 
		where applies.cand_usrname=em and applies.job_id=jid;
		/*Elegxos an iparxei aitisi gia ton sigkekrimeno employee gia ti sigkekrimeni job*/
		if(empl is not null and jjid is not null and st<>'Akirwmenh') then
			update applies set state='Akirwmenh' where applies.cand_usrname=em;
			select 'I aitisi apo ton employee me username',em,'gia tin job me id',jjid,'akirothike';
		else
			select 'Idi akiromeni aitisi h mi iparksi aitisis';
		end if;
	end if;	
	if (choice='a') then 
		select applies.cand_usrname,applies.job_id into empl,jjid
		from applies 
		where applies.cand_usrname=em and applies.job_id=jid and state='Akirwmenh';
		/*Elegxos an iparxei aitisi gia ton sigkekrimeno employee gia ti sigkekrimeni job kai einai akirwmeni*/
		if(empl is not null and jjid is not null) then
			update applies set state='Energh' where applies.cand_usrname=em;
			select 'I aitisi apo ton employee me username',em,'gia tin job me id',jjid,'energopoihthike';
		else
			select 'Idi energi aitisi h mi iparksi aitisis';
		end if;	
	end if;	
end$
delimiter ;	
				
call proc3132('AndLiv',1,'c');

/*Procedure erotimatos 3.1.3.3*/
drop procedure if exists proc3133;
delimiter $
create procedure proc3133(in id int(11))
begin 
	declare nf int;
	declare maxg float(5,2);
	declare emus varchar(30);
	declare apdate date;
	declare evusr1 varchar(30);
	declare evusr2 varchar(30);
	declare em varchar(30);
	declare gr1 int;
	declare gr2 int;
	declare st enum('Energh','Akirwmenh');
	declare da date;
	declare afm char(9);
	declare result int;

	/*Xrisi cursor oste na elegkso oles tis eggrafes tou pinaka rating kai applies kai na bro ton employee me thn kaluterh bathmologia gia tin job*/
	declare vector1 cursor for 
	select rating.evus1,rating.evus2,rating.emp,rating.g1,rating.g2,applies.state,applies.req_date
	from rating inner join applies on rating.emp=applies.cand_usrname   							-- parolo pou den exo orisei kseno kleidi anamesa se rating kai applies ta sisxetizo afou ksero oti exoyn koina pedia
	where rating.jid=id;

	declare continue handler for not found set nf=1;
	set nf=0;
	open vector1;
	set maxg=0;
	set emus=null;
	set apdate=null;
	repeat 
		fetch vector1 into evusr1,evusr2,em,gr1,gr2,st,da;
		select evusr1,evusr2,em,gr1,gr2,st,da;
		if(nf=0) then
			if (st='Akirwmenh') then 
				select 'I aitisi tou employee me username',em,'gia tin job me id',id,'einai akirwmeni kai den aksiologeitai';
			else
				/*Elegxos oti exoun baumologisei kai oi dio*/
				if(gr1 is not null and gr2 is not null) then 
					/*Ipologismos tou megistou bathmou gia tin job*/
					if ((gr1+gr2)/2>maxg) then 
						select '1';
						set maxg=(gr1+gr2)/2;
						set emus=em;
						set apdate=da;
					end if;
					if ((gr1+gr2)/2=maxg) then
						if(da<apdate) then
							select '2';
							set emus=em;
							set apdate=da;
						end if;
					end if;	
				else 
					/*Elegxos an iparxei bathmologia 2*/
					if(gr1 is not null and gr2 is null) then 
						select '3';
						/*Ipologismos bathmou deuterou aksiologiti*/
						call proc3131(evusr2,em,id,result);
						select result;
						set gr2=result;
						update rating set g2=result where evus2=evusr2 and emp=em and jid=id;
						if ((gr1+gr2)/2>maxg) then 
							select '6';
							set maxg=(gr1+gr2)/2;
							set emus=em;
							set apdate=da;
						end if;
						if ((gr1+gr2)/2=maxg) then
							if(da<apdate) then
								select '7';
								set emus=em;
								set apdate=da;
							end if;
						end if;
					else		
						/*Elegxos an iparxei bathmologia 1*/
						if(gr1 is null and gr2 is not null) then  
							select '8';
							/*Ipologismos bathmou protou aksiologiti*/
							call proc3131(evusr1,em,id,result);
							select result;
							set gr1=result;
							update rating set g1=result where evus1=evusr1 and emp=em and jid=id;
							if ((gr1+gr2)/2>maxg) then 
								select '10';
								set maxg=(gr1+gr2)/2;
								set emus=em;
								set apdate=da;
							end if;
							if ((gr1+gr2)/2=maxg) then
								if(da<apdate) then
								select '11';
									set emus=em;
									set apdate=da;
								end if;
							end if;	
						else
							/*Elegxos an den iparxedi kamia bathmologia*/
							if(gr1 is null and gr2 is null) then
								/*Ipologismos bathmou deuterou aksiologiti*/ 
								call proc3131(evusr2,em,id,result);
								select result;
								set gr2=result;
								/*Ipologismos bathmou protou aksiologiti*/
								call proc3131(evusr1,em,id,result);
								select result;
								set gr1=result;
								if ((gr1+gr2)/2>maxg) then 
									select '10';
									set maxg=(gr1+gr2)/2;
									set emus=em;
									set apdate=da;
								end if;
								if ((gr1+gr2)/2=maxg) then
									if(da<apdate) then
									select '11';
										set emus=em;
										set apdate=da;
									end if;
								end if;
							end if;
						end if;
					end if;
				end if;			
			end if;
		end if;		
	until(nf=1)
	end repeat;
	/*An i job anatethike se kapoion employee*/
	if (em is not null) then 
		/*O bathmos prepei na einai apo 1 mexri 20*/
		if (maxg=0) then 
			set maxg=1;
			else 
				if(maxg>20) then
					set maxg=20;
				end if;	
		end if;	
		/*Enimerwsi tou istorikou aitisewn me ton employee pou pire ti job*/	
		insert into history (evus1,evus2,emp,jid,state,grade) values
		(evusr1,evusr2,em,id,'Oloklirwmenh',maxg);
		/*Enimerwsi tou pinka applies me ti diagrafi ton aitiseon gia ti job pou molis anatethike se kapoion employee*/	
		delete from applies where job_id=id;
		delete from rating where jid=id;
		select 'O employee me username',emus,' exei tin kaliteri bathmologia me',maxg,'pontous kai tha perei tin job me id',id;
		select 'O pinakas aitiseon applies kai o pinakas bathmologias rating enimerothikan';
	else 
		select 'Oles oi aitiseis gia tin job me id',id,'einai akirwmenes h den iparxei kamia aitisi';	
	end if;
	
	close vector1;
end$
delimiter ;		

/*Procedure erotimatos 3.1.3.4*/
drop procedure if exists proc3134a;
delimiter $
create procedure proc3134a(in a int,in b int)
begin
select emp,jid,grade from history where grade between a and b;
end$
delimiter ;	

call proc3134a(7,12);


drop procedure if exists proc3134b;
delimiter $
create procedure proc3134b(in ev varchar (30))
begin
select emp,jid from history where evus1=ev or evus2=ev;
end$
delimiter ;	


set global local_infile = 1;
load data  INFILE 'c:/wamp64/tmp/mydata.txt' into table history;
alter table history add index grade_index(grade) using BTREE;
alter table history add index emp_index(emp) using BTREE;