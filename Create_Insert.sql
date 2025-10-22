drop database if exists project;
create database project;


use project;

/* dimiouurgia pinaka user*/
create table user(username varchar(30) not null primary key,
password varchar(20),
name varchar(25),
lastname varchar(35),
reg_date datetime,
email varchar(30),
dba_usr varchar(30),
-- Dimiourgia tis autosisxetisis oste kathe fora pou ginetai mia energeia ston pinaka,me to pedio dba_usr na ksero poios dba tin pragmatopoihse 
constraint fk19 foreign key(dba_usr) references user(username)) engine=innodb;				

/* eosagogi eggrafon ston user*/
insert into user (username, password, name, lastname, reg_date, email,dba_usr) values
	('DimPap', 'pass37', 'Dimitris', 'Papadopoulos', '2023-11-12', 'jade@example.com',null),
	('EleGeo', 'pass38', 'Eleni', 'Georgiou', '2023-09-12', 'helen@example.com','DimPap'),
	('NikTsa', 'pass39', 'Nikos', 'Tsakalidis', '2023-01-11', 'tsak@example.com','DimPap'),
    ('AleKar', 'pass1', 'Alexios', 'Karpoulos', '2023-01-01', 'john@example.com','DimPap'),
    ('EleZer', 'pass2', 'Elektra', 'Zervou', '2023-02-02', 'alice@example.com','EleGeo'),
    ('PavGeo', 'pass3', 'Pavlos', 'Georgiadis', '2023-03-03', 'michael@example.com','NikTsa'),
    ('EleKat', 'pass4', 'Eleni', 'Katsarou', '2023-04-04', 'emily@example.com','EleGeo'),
    ('DimAnt', 'pass5', 'Dimitris', 'Antonopoulos', '2023-05-05', 'william@example.com','EleGeo'),
    ('MarPap', 'pass6', 'Maria', 'Papadellou', '2023-06-06', 'sophia@example.com','EleGeo'),
    ('GioMic', 'pass7', 'Giorgos', 'Michalopoulos', '2023-07-07', 'james@example.com','EleGeo'),
    ('AthThe', 'pass8', 'Athena', 'Theodorou', '2023-08-08', 'olivia@example.com','EleGeo'),
    ('NikKar', 'pass9', 'Nikos', 'Karagiannis', '2023-09-09', 'daniel@example.com','NikTsa'),
    ('SofPap', 'pass10', 'Sofia', 'Papoutsaki', '2023-10-10', 'emma@example.com','NikTsa'),
    ('AndLiv', 'pass11', 'Andreas', 'Livanos', '2023-11-11', 'alexander@example.com','NikTsa'),
    ('AngPap', 'pass12', 'Angeliki', 'Papandreou', '2023-12-12', 'mia@example.com','NikTsa'),
	('PanPap', 'pass13', 'Panagiotis', 'Papanikolaou', '2023-01-01', 'john@example.com','NikTsa'),
    ('KatDou', 'pass14', 'Katerina', 'Doukas', '2023-02-02', 'alice@example.com','NikTsa'),
    ('ChrVla', 'pass15', 'Christos', 'Vlachos', '2023-03-03', 'michael@example.com','NikTsa'),
    ('IoaNel', 'pass16', 'Ioanna', 'Kanellopoulou', '2023-04-04', 'emily@example.com','NikTsa'),
    ('LeoSot', 'pass17', 'Leonidas', 'Sotiriou', '2023-05-05', 'william@example.com','NikTsa'),
    ('DesPap', 'pass18', 'Despina', 'Papamichael', '2023-06-06', 'sophia@example.com','NikTsa'),
    ('PetDim', 'pass19', 'Petros', 'Dimitriou', '2023-07-07', 'james@example.com','NikTsa'),
    ('VasKos', 'pass20', 'Vasiliki', 'Kostas', '2023-08-08', 'olivia@example.com','NikTsa'),
    ('KonPav', 'pass21', 'Konstantinos', 'Pavlidis', '2023-09-09', 'daniel@example.com','NikTsa'),
    ('AnaAng', 'pass22', 'Anastasia', 'Angelou', '2023-10-10', 'emma@example.com','DimPap'),
    ('ThaPap', 'pass23', 'Thanasis', 'Papadopoulos', '2023-11-11', 'alexander@example.com','DimPap'),
    ('EleIoa', 'pass24', 'Eleftheria', 'Ioannou', '2023-12-12', 'mia@example.com','DimPap'),
	('AntKou', 'pass25', 'Antonis', 'Kouris', '2023-01-01', 'john@example.com','DimPap'),
    ('MarPan', 'pass26', 'Marina', 'Panagiotou', '2023-02-02', 'alice@example.com','DimPap'),
    ('SpyVas', 'pass27', 'Spyros', 'Vasilakis', '2023-03-03', 'michael@example.com','DimPap'),
    ('AggKir', 'pass28', 'Aggeliki', 'Kiriakou', '2023-04-04', 'emily@example.com','DimPap'),
    ('HarSta', 'pass28', 'Haris', 'Stavropoulos', '2023-05-05', 'william@example.com','DimPap'),
    ('EvgNik', 'pass30', 'Evgenia', 'Nikolaidou', '2023-06-06', 'sophia@example.com','DimPap'),
    ('StePap', 'pass31', 'Stelios', 'Papazoglou', '2023-07-07', 'james@example.com','DimPap'),
    ('EirChr', 'pass32', 'Eirini', 'Christodoulou', '2023-08-08', 'olivia@example.com','DimPap'),
    ('IoanGe', 'pass33', 'Ioannis', 'Georgiou', '2023-09-09', 'daniel@example.com','DimPap'),
    ('OlgMav', 'pass34', 'Olga', 'Mavridou', '2023-10-10', 'emma@example.com','DimPap'),
    ('ApoTri', 'pass35', 'Apostolos', 'Triantafyllou', '2023-11-11', 'alexander@example.com','DimPap'),
    ('KalPar', 'pass36', 'Kalliopi', 'Paraskevopoulou', '2023-12-12', 'mia@example.com','DimPap');
	

/* dimiouurgia pinaka dba*/
create table dba(dba_usr varchar(30) primary key,
name varchar (30),
surname varchar(30),
start_date date,
end_date date,
constraint fk18 foreign key(dba_usr) references user(username) on delete cascade on update cascade) engine=innodb;

/* eisagogi eggrafon ston dba*/
insert into dba (dba_usr, name, surname, start_date, end_date) values
	('DimPap', 'Dimitris', 'Papadopoulos', '2023-11-12',null),
	('EleGeo', 'Eleni', 'Georgiou', '2023-09-12', '2023-12-09'),
	('NikTsa', 'Nikos', 'Tsakalidis', '2023-01-11', null);	

/* dimiouurgia pinaka employee*/
create table employee(username varchar(30)not null primary key,
bio text,
sistatikes varchar(35),
certificates varchar(35),
constraint fk1 foreign key(username) references user(username) on delete cascade on update cascade) engine=innodb;

/* eisagogi eggrafon ston employee*/
insert into employee(username, bio, sistatikes, certificates) values
    ('AleKar', 'Alexios Karpoulos is a visionary software architect renowned for groundbreaking innovations in distributed systems. With a Ph.D. in Computer Science, he spearheads projects combining AI and blockchain, revolutionizing data security. His expertise in cloud computing and scalable infrastructures has propelled him as a sought-after consultant for tech giants seeking cutting-edge solutions', 'Dear Hiring Manager,
	I wholeheartedly recommend Alexios Karpoulos for his exceptional expertise in distributed systems and AI. His innovative approach and problem-solving skills make him an invaluable asset to any team.', 'Certificate of Excellence'),
    ('EleZer', 'Elektra Zervou is an ingenious algorithm designer and machine learning specialist. Holding a masters degree in Computer Engineering, she champions ethical AI development, crafting algorithms that prioritize fairness and transparency. Her research in neural networks has led to advancements in medical diagnostics, earning her accolades in the intersection of healthcare and technology', 'To Whom It May Concern,
	I am pleased to recommend Elektra Zervou, a meticulous algorithm designer. Her dedication to ethical AI and her adeptness in machine learning underscore her as a standout candidate.', 'Certificate of Outstanding Achievement'),
    ('PavGeo', 'Pavlos Georgiadis, a dedicated cybersecurity expert with a background in Computer Science, fortifies digital landscapes against cyber threats. As a Chief Information Security Officer, he formulates robust defense strategies for corporations, leveraging his expertise in cryptography and penetration testing to safeguard sensitive data.', 'Dear Recruiting Team,
	I highly endorse Pavlos Georgiadis for his outstanding cybersecurity skills. His proficiency in cryptography and penetration testing ensures comprehensive protection against evolving cyber threats.', 'Certificate of Innovation'),
    ('EleKat', 'Eleni Katsarou, a proficient software engineer, is celebrated for her expertise in full-stack development. Her passion lies in creating user-centric applications that meld cutting-edge technology with intuitive design. With a penchant for UX/UI, she crafts seamless digital experiences, positioning her at the forefront of user-driven innovation.', 'Dear Hiring Committee,
	It is my pleasure to recommend Eleni Katsarou, a talented full-stack developer. Her ability to fuse technology and user-centric design sets her apart in crafting intuitive applications.', 'Certificate of Creative Excellence'),
    ('DimAnt', 'Dimitris Antonopoulos is a visionary data scientist revolutionizing analytics paradigms. Armed with a Ph.D. in Computer Engineering, he pioneers algorithms that unlock complex patterns in big data, driving transformative insights for industries ranging from finance to renewable energy.', 'To the Hiring Panel,
	I enthusiastically recommend Dimitris Antonopoulos for his pioneering work in data science. His innovative algorithms and insights derived from big data analysis drive transformative changes in various industries.', 'Certificate of Pioneering Research'),
    ('MarPap', 'Maria Papadellou, a computational linguistics specialist, bridges language and technology. Her expertise in natural language processing and machine translation redefines communication boundaries. Marias work influences multilingual chatbots and language models, facilitating global connectivity through nuanced language understanding.', 'Dear Hiring Manager,
	I confidently endorse Maria Papadellou for her expertise in computational linguistics. Her contributions in natural language processing redefine communication interfaces and user experiences.', 'Certificate of Language Innovation'),
    ('GioMic', 'Giorgos Michalopoulos, a trailblazing virtual reality (VR) developer, crafts immersive experiences that push the boundaries of VR technology. With a background in Computer Graphics, his creations redefine entertainment and educational paradigms, transporting users to captivating digital realms.', 'o Whom It May Concern,
	I am delighted to recommend Giorgos Michalopoulos for his groundbreaking work in virtual reality development. His creations push the boundaries of immersive digital experiences.', 'Certificate of Visionary Development'),
    ('AthThe', 'Athena Theodorou, a cybersecurity researcher, shields critical infrastructures from emerging threats. Her interdisciplinary approach, blending Computer Science and Cyber Defense, underpins her success in devising resilient systems, pivotal in safeguarding against sophisticated cyberattacks.', 'Dear Hiring Committee,
	I highly recommend Athena Theodorou for her proficiency in cybersecurity. Her interdisciplinary approach and robust defense strategies make her a standout candidate in safeguarding digital landscapes.', 'Certificate of Cyber Excellence'),
    ('NikKar', 'Nikos Karagiannis is an innovative software architect known for designing scalable and fault-tolerant systems. His expertise in distributed computing and cloud infrastructure has empowered enterprises to navigate the complexities of modern tech ecosystems.', 'To the Hiring Panel,
	I am pleased to recommend Nikos Karagiannis for his expertise in designing scalable systems. His in-depth knowledge of distributed computing and cloud infrastructure makes him an asset to any technological endeavor.', 'Certificate of Scalable Systems'),
    ('SofPap', 'Sofia Papoutsaki, a computer vision expert, harnesses the power of image analysis to revolutionize industries. Her pioneering work in deep learning algorithms fuels advancements in areas like autonomous vehicles and medical imaging diagnostics, enhancing precision and efficiency.', 'Dear Recruiting Team,
	I wholeheartedly endorse Sofia Papoutsaki for her outstanding contributions in computer vision. Her advancements in deep learning algorithms redefine image analysis applications with precision and efficiency.', 'Certificate of Visionary Design'),
    ('AndLiv', 'Andreas Livanos is a trailblazing quantum computing researcher, pioneering quantum algorithms that hold promise for revolutionizing computation. His groundbreaking work in quantum cryptography and algorithm optimization marks him as a thought leader in the quest for quantum supremacy.', 'Dear Hiring Manager,
	It is with great enthusiasm that I recommend Andreas Livanos for his groundbreaking research in quantum computing. His expertise in quantum algorithms and cryptography marks him as a visionary in the field.', 'Certificate of Quantum Excellence'),
    ('AngPap', 'Angeliki Papandreou, a prominent software architect, specializes in scalable microservices architecture. Her expertise in containerization and DevOps practices streamlines software development, empowering businesses to adapt swiftly in dynamic market landscapes.', 'To Whom It May Concern,
	I am pleased to recommend Angeliki Papandreou for her expertise in scalable microservices architecture. Her proficiency in DevOps practices and containerization is exceptional.', 'Certificate of Technical Architecture'),
	('PanPap', 'Panagiotis Papanikolaou, a cybersecurity analyst, safeguards digital ecosystems through threat intelligence and risk assessment methodologies. His proactive approach and expertise in incident response contribute significantly to preemptive cyber defense strategies.', 'Dear Hiring Committee,
	I highly endorse Panagiotis Papanikolaou for his exceptional skills in cybersecurity analysis. His proactive approach and incident response expertise make him a reliable asset.', 'Certificate of Advanced Networking'),
    ('KatDou', 'Katerina Doukas, a versatile UX/UI designer, crafts immersive digital experiences through human-centered design principles. Her proficiency in user research and interactive design elevates products by seamlessly blending aesthetics with functionality.', 'To the Hiring Panel,
	I enthusiastically recommend Katerina Doukas for her outstanding talent in UX/UI design. Her ability to create immersive digital experiences through user-centric design principles is commendable.', 'Certificate of Quality Assurance'),
    ('ChrVla', 'Christos Vlachos is a seasoned network engineer specializing in infrastructure optimization. His mastery in network architecture and protocols ensures robust connectivity and scalability for complex systems.', 'Dear Recruiting Team,
	I confidently endorse Christos Vlachos for his expertise in network engineering. His mastery in network architecture ensures robust and scalable systems', 'Certificate of Ethical AI'),
    ('IoaNel', 'Ioanna Kanellopoulou, a dedicated software quality assurance engineer, ensures the reliability and functionality of software systems through meticulous testing methodologies. Her attention to detail and systematic approach streamline product deployments.', 'Dear Hiring Manager,
	It is my pleasure to recommend Ioanna Kanellopoulou for her dedication as a software quality assurance engineer. Her meticulous testing methodologies ensure the reliability and functionality of software systems.', 'Certificate of Project Management'),
    ('LeoSot', 'Leonidas Sotiriou is an AI ethics advocate, leveraging his background in computer science to address ethical implications in AI development. He advocates for responsible AI frameworks and guidelines to ensure fair and unbiased AI implementations.', 'To Whom It May Concern,
	I am delighted to recommend Leonidas Sotiriou for his commitment to advocating AI ethics. His insights and dedication to responsible AI frameworks are invaluable.', 'Certificate of Database Management'),
    ('DesPap', 'Despina Papamichael, an IT project manager, orchestrates multifaceted tech projects with finesse. Her leadership in coordinating teams and managing resources ensures timely and successful project deliveries.', 'Dear Hiring Committee,
	I highly endorse Despina Papamichael for her exceptional skills in IT project management. Her leadership in coordinating complex tech projects ensures successful deliveries.', 'Certificate of Multilingual Software');

/* dimiouurgia pinaka languages*/
create table languages(candid varchar(30) not null,
lang set('EN','FR','SP','GE','CH','GR'),
primary key(candid,lang),
constraint fk2 foreign key(candid) references employee(username) on delete cascade on update cascade) engine=innodb;

/* eisagogi eggrafon ston languages*/
insert into languages (candid, lang) values 
    ('AleKar', 'GR,FR,EN,CH'),
    ('EleZer', 'GR,GE,EN'),
    ('PavGeo', 'GR,EN'),
    ('EleKat', 'GR,SP,EN,CH'),
	('DimAnt', 'GR,FR,EN'),
    ('MarPap', 'GR,GE'),
    ('GioMic', 'GR,EN'),
    ('AthThe', 'GR,SP'),
	('NikKar', 'GR,FR'),
    ('SofPap', 'GR,GE'),
    ('AndLiv', 'GR,EN'),
    ('AngPap', 'GR,SP'),
	('PanPap', 'GR,FR'),
    ('KatDou', 'GR,GE'),
    ('ChrVla', 'GR,EN,CH'),
	('IoaNel', 'GR,GE,CH'),
    ('LeoSot', 'GR,EN'),
    ('DesPap', 'GR');

/* dimiouurgia pinaka project*/
create table project(candid varchar(30) not null,
num tinyint(4),
descr text,
url varchar(60),
primary key(candid,num),
constraint fk3 foreign key(candid) references employee(username) on delete cascade on update cascade) engine=innodb;

/* eisagogi eggrafon ston project*/
insert into project (candid, num, descr, url) values 
	('AleKar', 1, 'Programs c', 'https://github.com/user1/project1'),
	('PavGeo', 1, 'Programs python', 'https://github.com/user1/repo-example'),
	('EleZer', 1, 'Database examples', 'https://github.com/user1/code-sample'),
	('AleKar', 2, 'AI examples', 'https://github.com/user8/demo-repository'),
	('PavGeo', 2, 'C programs', 'https://github.com/user8/test-project'),
	('GioMic', 1,'Graphic design ideas','https://github.com/user4/my-awesome-repo'),
	('AleKar', 3,'Robotics','https://github.com/user4/practice-repo'),
	('GioMic', 2, 'Programs c', 'https://github.com/user1/project1'),
	('PanPap', 1, 'Programs python', 'https://github.com/user1/repo-example'),
	('KatDou', 1, 'Database examples', 'https://github.com/user1/code-sample'),
	('IoaNel', 1, 'AI examples', 'https://github.com/user8/demo-repository'),
	('LeoSot', 1, 'C programs', 'https://github.com/user8/test-project'),
	('ChrVla', 1,'Graphic design ideas','https://github.com/user4/my-awesome-repo'),
	('AleKar', 4,'Robotics','https://github.com/user4/practice-repo'),
	('IoaNel', 2, 'Programs c', 'https://github.com/user1/project1'),
	('DimAnt', 1, 'Programs python', 'https://github.com/user1/repo-example'),
	('AleKar', 5, 'Database examples', 'https://github.com/user1/code-sample'),
	('EleKat', 1, 'AI examples', 'https://github.com/user8/demo-repository'),
	('MarPap', 1, 'C programs', 'https://github.com/user8/test-project'),
	('KatDou', 2,'Graphic design ideas','https://github.com/user4/my-awesome-repo'),
	('MarPap', 2,'Robotics','https://github.com/user4/practice-repo');

/* dimiouurgia pinaka etaireia*/
create table etaireia(afm char(9) primary key not null,
doy varchar(30),
name varchar(35),
tel varchar(10),
street varchar(15),
num int(11),
city varchar(45),
country varchar(15)) engine=innodb;

/* eisagogi eggrafon ston etaireia*/
insert into etaireia (AFM, DOY, name, tel, street, num, city, country) values 
	('003256289', 'B Piraia', 'Neural Motion Inc.', 2619259329, 'Dervenakion', 14, 'Athina', 'Greece'), 
	('123456789', 'Athens DOY', 'WebTech Solutions Ltd.', 2440234457, 'Arhaggelou', 88, 'Athens', 'Greece'),
	('987654321', 'A Thessalonikis', 'Quantum Cube Enterprises', 2507459131, 'Toumpas', 183, 'Thessaloniki', 'Greece'),
	('246813579', 'B Piraia', 'Quantum Computing Solutions Ltd.', 4567890123, 'Papaflessa', 43, 'Athina', 'Greece'), 
	('227053210', 'C Trikalon', 'Cybernetic Innovations Inc.', 9876543210, 'Dimitriadou', 96, 'Trikala', 'Greece'),
	('103409870', 'A Thessalonikis', 'Data Science Dynamics Corp.', 1234567890, 'Euaggelistrias', 10, 'Thessaloniki', 'Greece'),
	('555444333', 'B Piraia', 'Neural Networks Technologies LLC.', 8901234567, 'Kiprou', 29, 'Athina', 'Greece'), 
	('777888999', 'C Trikalon', 'Cloud Computing Ventures S.A.', 2345678901, 'Thivon', 77, 'Trikala', 'Greece'),
	('999888777', 'A Thessalonikis', 'Artificial Intelligence Enterprises Ltd.', 5678901234, 'Valaoritou', 190, 'Thessaloniki', 'Greece');

/* dimiouurgia pinaka evaluator*/
create table evaluator(username varchar(30) not null primary key,
exp_years tinyint(4),
firm char(9),
constraint fk4 foreign key(firm) references etaireia(afm) on delete cascade on update cascade) engine=innodb;

/* eisagogi eggrafon ston evaluator me sxediastiki paradoxi oti i eisagogi tou none ginetai gia na elegxetai ston pinaka rating an exoyn anatethei oi bathmologies se evaluators,opou iparxei none den exei anatethei i bathmologisi se kapoio evaluator*/
insert into evaluator (username, exp_years, firm) values 
	('PetDim', 1, '003256289'),
	('VasKos', 8, '123456789'),
	('KonPav', 6, '227053210'),
	('AnaAng', 6, '246813579'),
	('ThaPap', 2, '123456789'),
	('EleIoa', 0, '103409870'),
	('AntKou', 5, '987654321'),
	('MarPan', 4, '003256289'),
	('SpyVas', 0, '227053210'),
	('AggKir', 10,'227053210'),
	('HarSta', 3, '987654321'),
	('EvgNik', 12,'103409870'),
	('StePap', 1, '003256289'),
	('EirChr', 0, '246813579'),
	('IoanGe', 9, '227053210'),
	('OlgMav', 6, '999888777'),
	('ApoTri', 2, '999888777'), 
	('KalPar', 1, '103409870'),
	('none',null,null);  
	
/* dimiouurgia pinaka job*/
create table job(id int(11) auto_increment not null primary key,
start_date date,
salary float,
position varchar(60),
edra varchar(60),
evaluator varchar(30),
announce_date datetime,
submision_date date,
dba_usr varchar(30) not null,
constraint fk5 foreign key(evaluator) references evaluator(username) on delete cascade on update cascade,
-- Dimiourgia ksenou kleidiou pou deixnei sto username tou dba gia  na ksero poios dba pragmatopoihse tin energeia 
constraint fk20 foreign key(dba_usr) references dba(dba_usr) on delete cascade on update cascade) engine=innodb;

/* eisagogi eggrafon ston job*/
insert into job (id,start_date, salary, position, edra, evaluator, announce_date, submision_date,dba_usr) values 
	(null,'2023-09-15', 1900, 'Software Engineer', 'Patra, Greece', 'PetDim', '2011-06-16', '2021-12-20','DimPap'),
	(null,'2022-07-03', 1950, 'Data Analyst', 'Athina, Greece', 'VasKos', '2022-06-01', '2023-01-10','EleGeo'),
	(null,'2023-11-28', 2200, 'Information Security Specialist', 'Athina, Greece', 'AnaAng', '2019-11-29', '2021-01-12','NikTsa'),
	(null,'2023-08-07', 1700, 'Artificial Intelligence Specialist', 'Peiraias, Greece', 'VasKos', '2021-10-10', '2018-18-10','NikTsa'),
	(null,'2022-01-18', 1100, 'Web Developer', 'Thessaloniki, Greece', 'ThaPap', '2012-15-15', '2023-02-01','NikTsa'),
	(null,'2023-10-01', 1100, 'Machine Learning Engineer', 'Peiraias, Greece','EleIoa', '2022-12-22', '2023-01-10','NikTsa'),
	(null,'2022-03-22', 2250, 'Data Scientist', 'Hania, Greece','EleIoa', '2021-11-20', '2020-04-10','NikTsa'),
	(null,'2023-04-11', 4400, 'Systems Security Analyst', 'Thessaloniki, Greece','AntKou', '2020-10-20', '2023-04-12','NikTsa'),
	(null,'2023-01-09', 2877, 'Network and Telecommunications Engineer', 'Patra, Greece', 'MarPan', '2011-06-16', '2021-12-20','NikTsa'),
	(null,'2023-08-29', 978, 'App Developer', 'Athina, Greece', 'PetDim', '2022-06-01', '2023-01-10','NikTsa'),
	(null,'2023-03-15', 2187, 'Blockchain Technology Researcher', 'Athina, Greece', 'AnaAng', '2019-11-29', '2021-01-12','DimPap'),
	(null,'2022-11-20', 1356, 'AI', 'Peiraias, Greece', 'SpyVas', '2021-10-10', '2018-18-10','DimPap'),
	(null,'2023-04-05', 2010, 'Communications', 'Hania, Greece', 'AnaAng', '2012-15-15', '2023-02-01','DimPap'),
	(null,'2023-02-28', 2544, 'Prolog expert', 'Peiraias, Greece','PetDim', '2022-12-22', '2023-01-10','DimPap'),
	(null,'2023-10-12', 1079, 'DB', 'Hania, Greece','AggKir', '2021-11-20', '2020-04-10','DimPap'),
	(null,'2022-07-19', 2932, 'graphics', 'Thessaloniki, Greece','EleIoa', '2020-10-20', '2023-04-12','DimPap'),
	(null,'2023-01-27', 1145, 'Java developer', 'Hania, Greece', 'VasKos', '2011-06-16', '2021-12-20','DimPap'),
	(null,'2022-06-07', 800, 'Java developer', 'Athina, Greece', 'HarSta', '2022-06-01', '2023-01-10','DimPap'),
	(null,'2023-02-22', 2312, 'algorithm developer', 'Athina, Greece', 'PetDim', '2019-11-29', '2021-01-12','DimPap'),
	(null,'2023-10-04', 2795, 'AI', 'Peiraias, Greece', 'ThaPap', '2021-10-10', '2018-18-10','DimPap'),
	(null,'2023-04-18', 1590, 'Database Designer', 'Thessaloniki, Greece', 'PetDim', '2012-15-15', '2023-02-01','EleGeo'),
	(null,'2022-12-01', 2225, 'Prolog expert', 'Peiraias, Greece','EvgNik', '2022-12-22', '2023-01-10','EleGeo'),
	(null,'2023-08-12', 2711, 'DB', 'Patra, Greece','OlgMav', '2021-11-20', '2020-04-10','EleGeo'),
	(null,'2022-12-15', 1903, 'graphics', 'Thessaloniki, Greece','AnaAng', '2020-10-20', '2023-04-12','EleGeo');

/* dimiouurgia pinaka subject*/
create table subject(title varchar(36) not null primary key,
descr tinytext,
belongs_to varchar(36),
constraint fk6 foreign key(belongs_to) references subject(title) on delete cascade on update cascade) engine=innodb; 

/* eisagogi eggrafon ston subject*/
insert into subject (title, descr, belongs_to) values 
    ('Computer Science', 'Root', NULL),
	('Artificial Intelligence', 'Intelligent systems development', 'Computer Science'),
	('Neural Networks and Deep Learning', 'Cognitive Computing Methods', 'Artificial Intelligence'),
	('Natural Language Processing', 'Language Data Processing', 'Artificial Intelligence'),
	('Machine Vision', 'Visual Perception Technology', 'Artificial Intelligence'),
	('Software Engineering', 'Efficient Software Development', 'Computer Science'),
	('Agile Development Methodologies', 'Adaptive Software Approaches', 'Software Engineering'),
	('Wireless Networks', 'System Structure Planning', 'Software Engineering'),
	('DevOps and Continuous Integration', 'Integrated Development Operations','Software Engineering'),
	('Cybersecurity', 'Protection from Digital Threats', 'Computer Science'),
	('Ethical Hacking Techniques', 'Security Testing Methods', 'Cybersecurity'),
	('Network Security Protocols', 'Secure Network Measures', 'Cybersecurity'),
	('Cryptography and Encryption', 'Secure Data Encryption Methods', 'Cybersecurity'),
	('Data Science', 'Data-Driven Decision Making', 'Computer Science'),
	('Big Data Analytics', 'Vast Data Analysis', 'Data Science'),
	('Predictive Modeling', 'Future Insight Prediction', 'Data Science'),
	('Data Visualization Techniques', 'Visual Data Representation','Data Science'),
	('Cloud Computing', 'Scalable Remote Computing', 'Computer Science'),
	('Infrastructure as a Service', 'Remote Infrastructure Provisioning', 'Cloud Computing'),
	('Platform as a Service', 'Cloud-Based Platform Services', 'Cloud Computing'),
	('Serverless Computing', 'Event-Driven Computing Architecture', 'Cloud Computing'),
	('Computer Networks', 'Data Communication Technologies', 'Computer Science'),
	('Wireless Communication Technologies', 'Wireless Data Transmission', 'Computer Networks'),
	('Network Protocols and Routing Algorithms', 'Interconnected Device Network', 'Computer Networks');
	
/* dimiouurgia pinaka requires*/
create table requires(job_id int(11) not null,
subject_title varchar(36) not null,
primary key(job_id,subject_title),
constraint fk7 foreign key(job_id) references job(id) on delete cascade on update cascade,
constraint fk8 foreign key(subject_title) references subject(title) on delete cascade on update cascade) engine=innodb;

/* eisagogi eggrafon ston requires*/
insert into requires (job_id, subject_title) values 
	(1,'Computer Science'),
	(2,'Artificial Intelligence'),
	(3,'Neural Networks and Deep Learning'),
	(4,'Natural Language Processing'),
	(5,'Machine Vision'),
	(6,'Software Engineering'),
	(7,'Agile Development Methodologies'),
	(8,'Wireless Networks'),
	(9,'DevOps and Continuous Integration'),
	(10,'Cybersecurity'),
	(11,'Ethical Hacking Techniques'),
	(12,'Network Security Protocols'),
	(13,'Cryptography and Encryption'),
	(14,'Data Science'),
	(15,'Big Data Analytics'),
	(16,'Predictive Modeling'),
	(17,'Data Visualization Techniques'),
	(18,'Cloud Computing'),
	(19,'Infrastructure as a Service'),
	(20,'Platform as a Service'),
	(21,'Serverless Computing'),
	(22,'Computer Networks'),
	(23,'Wireless Communication Technologies'),
	(24,'Network Protocols and Routing Algorithms');

/* dimiouurgia pinaka applies*/
create table applies(cand_usrname varchar(30) not null,
job_id int(11) not null,
state enum('Energh','Akirwmenh'),
req_date date,
req_num int,
primary key(cand_usrname,job_id),
constraint fk9 foreign key(cand_usrname) references employee(username) on delete cascade on update cascade,
constraint fk10 foreign key(job_id) references job(id) on delete cascade on update cascade) engine=innodb;

/* eisagogi eggrafon ston applies*/
insert into applies (cand_usrname, job_id, state, req_date, req_num) values 
	('DesPap',23,'Energh','2022-08-20',1),
	('NikKar',1,'Energh','2022-04-01',1),
	('LeoSot',11,'Energh','2021-09-25',1),
	('IoaNel',2,'Energh','2021-10-30',1),
	('DesPap',20,'Energh','2022-02-05',2),
	('PanPap',15,'Akirwmenh','2021-12-01',1),
	('DesPap',3,'Energh','2022-05-18',3),
	('AndLiv',1,'Energh','2022-01-02',1),
	('SofPap',21,'Energh','2021-07-10',1),
	('GioMic',21,'Energh','2022-06-22',1),
	('DimAnt',17,'Akirwmenh','2021-11-11',1),
	('PavGeo',5,'Energh','2022-09-03',1),
	('EleZer',6,'Akirwmenh','2022-03-17',1),
	('AthThe',9,'Energh','2021-08-05',1),
	('KatDou',10,'Energh','2022-11-26',1),
	('NikKar',4,'Energh','2022-07-15',2),
	('AngPap',6,'Energh','2021-06-29',1),
	('ChrVla',18,'Energh','2021-04-23',1);

/* dimiouurgia pinaka applies*/
create table degree(titlos varchar(150) not null,
idryma varchar (150),
bathmida enum('bsc','msc','phd'),
dba_usr varchar(30) not null,
primary key(titlos,idryma),
-- Dimiourgia ksenou kleidiou pou deixnei sto username tou dba gia  na ksero poios dba pragmatopoihse tin energeia
constraint fk21 foreign key(dba_usr) references dba(dba_usr) on delete cascade on update cascade) engine=innodb;

/* eisagogi eggrafon ston degree*/
insert into degree (titlos, idryma, bathmida,dba_usr) values 
	('Computer Science', 'University of ABC', 'bsc','DimPap'),
	('Data Analytics', 'XYZ Institute', 'msc','DimPap'),
	('Artificial Intelligence', 'University 123', 'phd','DimPap'),
	('Cybersecurity', 'Tech College', 'bsc','DimPap'),
	('Machine Learning', 'Science University', 'msc','DimPap'),
	('Information Technology', 'Digital Academy', 'bsc','DimPap'),
	('Computer Engineering', 'Institute of Technology', 'msc','EleGeo'),
	('Network Security', 'Tech Institute XYZ', 'phd','EleGeo'),
	('Software Development', 'ABC College', 'bsc','EleGeo'),
	('Cloud Computing', 'Tech University', 'msc','EleGeo'),
	('Data Science', 'University of Data', 'phd','EleGeo'),
	('Web Development', 'Web Institute', 'bsc','EleGeo'),
	('Computer Vision', 'Visionary College', 'msc','EleGeo'),
	('Blockchain Technology', 'Blockchain Academy', 'phd','EleGeo'),
	('Human-Computer Interaction', 'HCI Institute', 'bsc','EleGeo'),
	('Quantum Computing', 'Quantum College', 'msc','NikTsa'),
	('Mobile Application Development', 'Mobile Tech', 'phd','NikTsa'),
	('Internet of Things', 'IoT University', 'bsc','NikTsa');

/* dimiouurgia pinaka has_degree*/
create table has_degree(degr_title varchar(150) not null,
degr_idryma varchar (150) not null,
cand_usrname varchar(30),
etos year(4),
grade float,
primary key(degr_title,degr_idryma,cand_usrname),
constraint fk11 foreign key(degr_title,degr_idryma) references degree(titlos,idryma) on delete cascade on update cascade,
constraint fk12 foreign key(cand_usrname) references employee(username) on delete cascade on update cascade) engine=innodb;

/* eisagogi eggrafon ston degree*/
insert into has_degree (degr_title, degr_idryma, cand_usrname, etos, grade) values 

	('Computer Science', 'University of ABC','EleKat',2020,8.9),
	('Data Analytics', 'XYZ Institute','AleKar',2017,9.5),
	('Artificial Intelligence', 'University 123','PanPap',2008,8.5),
	('Cloud Computing', 'Tech University','AleKar',2006,7.3),
	('Machine Learning', 'Science University','EleZer',2018,9.7),
	('Information Technology', 'Digital Academy','PavGeo',2023,8.3),
	('Computer Engineering', 'Institute of Technology','DimAnt',2001,6.8),
	('Network Security', 'Tech Institute XYZ','MarPap',2022,7.8),
	('Software Development', 'ABC College','GioMic',2012,7.9),
	('Computer Vision', 'Visionary College','NikKar',2023,9.0),
	('Data Science', 'University of Data','SofPap',2015,8.8),
	('Web Development', 'Web Institute','IoaNel',2005,7.7);

/* dimiouurgia pinaka rating*/
create table rating(evus1 varchar(30) not null,
evus2 varchar(30) not null,
emp varchar(30),
jid int(11) not null,
g1 int,
g2 int,
firm char(9),
primary key(evus1,evus2,emp,jid),
constraint fk13 foreign key(evus1) references evaluator(username) on delete cascade on update cascade,
constraint fk15 foreign key(jid) references job(id) on delete cascade on update cascade,
constraint fk16 foreign key(evus2) references evaluator(username) on delete cascade on update cascade,
constraint fk17 foreign key(firm) references evaluator(firm) on delete cascade on update cascade) engine=innodb;	

/* eisagogi eggrafon ston rating me sxediastikh paradoxi oti to none simainei pos den exei anatethei evaluator*/
insert into rating (evus1,evus2,emp,jid,g1,g2,firm) values
	('PetDim','MarPan','DesPap',23,null,null,'003256289'),
	('VasKos','ThaPap','NikKar',1,null,9,'123456789'),
	('HarSta','AntKou','LeoSot',11,18,null,'987654321'),
	('KalPar','EleIoa','IoaNel',2,15,11,'103409870'),
	('PetDim','StePap','DesPap',20,18,20,'003256289'),
	('StePap','MarPan','DesPap',3,null,19,'003256289'),
	('none','MarPan','SofPap',21,null,16,'003256289'),
	('VasKos','none','GioMic',21,9,null,'123456789'),
	('none','none','AndLiv',1,null,null,null),
	('none','none','NikKar',4,null,null,null),
	('none','none','PavGeo',5,null,null,null),
	('none','none','AngPap',6,null,null,null),
	('none','none','EleZer',6,null,null,null),
	('EirChr','none','AthThe',9,null,null,'246813579'),
	('none','SpyVas','KatDou',10,null,null,'227053210'),
	('none','none','PanPap',15,null,null,null),
	('ApoTri','none','DimAnt',17,null,null,'999888777'),
	('none','none','ChrVla',18,null,null,null);


/* dimiouurgia pinaka history*/
create table history(evus1 varchar(30),
evus2 varchar(30),
emp varchar(30),
jid int(11),
state enum('Oloklirwmenh'),
grade int);

/* dimiouurgia pinaka log*/
create table log(num int auto_increment  primary key,
dba_usr varchar(30),
action enum('insert','update','delete'),
act_date datetime,
where_to varchar (10));