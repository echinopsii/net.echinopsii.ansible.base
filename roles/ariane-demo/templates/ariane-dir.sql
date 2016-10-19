INSERT INTO `company` VALUES (4,'Pivotal','Pivotal',0),(5,'The Debian Libre Community','Debian',0),(6,'The Cassandra Company','Datastax',1),(7,'The New Cacti Company','echinopsii',0);
INSERT INTO `environment` VALUES (2,'The KernelPanic Environment','DEV',13,'1aa818');
INSERT INTO `team` VALUES (1,'054d31','Unix server support team','SRV UNIX',39),(2,'11301f','Middleware bus support team','MDW BUS',25),(6,'a68ad1','BackOfficeService OPS team','BOSops',5),(7,'077810','MiddleOfficeService OPS team','MOSops',5),(8,'ab71a3','FrontOfficeService OPS team','FOSops',10),(9,'6b2a33','RiskService OPS team','RISops',13),(10,'aed6b1','FeederService OPS team','FEEDops',10),(11,'96348e','Cassandra OPS team','CASSops',9),(12,'e0724a','Ariane OPS team','ARops',2),(13,'cc6c4a','Ariane DEV team','ARdev',8),(14,'137bd1','Neo4J DBA team','Neo4J DBA',6);
INSERT INTO `application` VALUES (6,'ff6600','Robust messaging for applications','RabbitMQ','RabbitMQ',4,4,2),(7,'a68ad1','BackOffice Service Application','BackOfficeService','BOS',2,7,6),(8,'077810','MiddleOffice Service Application','MiddleOfficeService','MOS',1,7,7),(9,'ab71a3','FrontOffice Service Application','FrontOfficeService','FOS',2,7,8),(10,'6b2a33','Risk Service Application','RiskService','RIS',9,7,9),(11,'23a608','Feeder Service Application','FeederService','FEED',5,7,10),(12,'93c4ed','Cassandra DB','Cassandra','CASS',3,7,11),(13,'ed8863','Ariane Mapping Framework','Ariane','ARI',0,7,12);

INSERT INTO `location` VALUES (1,'22 Rue de l\'Argonne','France','FakeDC for some demo',48.8938827,2.3829063000000588,'FakeDC','Paris','DATACENTER',6,75019),(2,'57 Rue Saint-Maximin','France','Fake Office for some demo',45.7483089,4.871961100000021,'FakeOFF1','Lyon','OFFICE',6,69003),(3,'Chemin de Mesturon','France','Fake Office for some demo',43.7617953,-1.0848014000000603,'FakeOFF2','Saint-Paul-lès-Dax','OFFICE',8,40990);
INSERT INTO `routingArea` VALUES (2,'Some LAN routing area in FakeDC','FakeDCLanRA','LAN','NONE',0),(3,'Some LAN routing area in FakeOFF1','FakeOFF1LanRA','LAN','NONE',0),(4,'Some LAN routing area in FakeOFF2','FakeOFF2LanRA','LAN','NONE',0),(5,'RabbitMQ Overlay MAN routing area','RbmqOverlayManRA','MAN','NONE',0),(6,'Cassandra Overlay MAN routing area','CasssOverlayManRA','MAN','NONE',0);
INSERT INTO `subnet` VALUES (4,'Some subnet in FakeDC','FakeDCLan1','172.20.0.0','255.255.255.0',14,2),(5,'Some subnet in FakeOFF1','FakeOFF1Lan1','172.21.0.0','255.255.255.0',9,3),(6,'Some subnet in FakeOFF2','FakeOFF2Lan1','172.22.0.0','255.255.255.0',3,4),(7,'Cassandra Overlay Subnet','CassOverlayLan','10.70.69.0','255.255.255.0',6,6),(8,'RabbitMQ Overlay Subnet','RbmqOverlayLan','10.71.69.0','255.255.255.0',6,5);
INSERT INTO `location_routingArea` VALUES (1,2),(1,5),(1,6),(2,3),(2,5),(2,6),(3,4),(3,5),(3,6);
INSERT INTO `location_subnet` VALUES (1,4),(1,7),(1,8),(2,5),(2,7),(2,8),(3,6),(3,7),(3,8);

INSERT INTO `osType` VALUES (2,'x86_64','Linux Debian 8',0,5);
INSERT INTO `osInstance` VALUES (6,'ssh://cass00','Cassandra Node','cass00',0,NULL,2),(7,'ssh://cass01','Cassandra Node','cass01',0,NULL,2),(9,'ssh://cass02','Cassandra Node','cass02',0,NULL,2),(10,'ssh://rbmq00','RabbitMQ Node','rbmq00',0,NULL,2),(11,'ssh://rbmq01','RabbitMQ Node','rbmq01',0,NULL,2),(12,'ssh://rbmq02','RabbitMQ Node','rbmq02',0,NULL,2),(13,'ssh://bo01','BackOffice Node','bo01',0,NULL,2),(14,'ssh://ri01','Risk Node','ri01',0,NULL,2),(15,'ssh://mo01','MiddleOffice Node','mo01',0,NULL,2),(17,'ssh://fd01','Feeder Node','fd01',0,NULL,2),(18,'ssh://fo01','FrontOffice Node','fo01',0,NULL,2),(19,'ssh://fo02','FrontOffice Node','fo02',0,NULL,2);
INSERT INTO `application_osInstance` VALUES (6,10),(6,11),(6,12),(7,13),(8,15),(9,18),(9,19),(10,14),(11,17),(12,6),(12,7),(12,9);
INSERT INTO `environment_osInstance` VALUES (2,6),(2,7),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(2,15),(2,17),(2,18),(2,19);
INSERT INTO `subnet_osInstance` VALUES (4,6),(4,10),(4,13),(4,14),(4,15),(4,17),(5,7),(5,11),(5,18),(6,9),(6,12),(6,19);
INSERT INTO `team_osInstance` VALUES (2,10),(2,11),(2,12),(6,13),(7,15),(8,18),(8,19),(9,14),(10,17),(11,6),(11,7),(11,9);

INSERT INTO `rabbitmqCluster` VALUES (2,'Tradeflow RBMQ Cluster','rabbit@rbmq00',0);
INSERT INTO `rabbitmqNode` VALUES (2,'RabbitMQ TradeWF Node','rabbit@rbmq00','admin','http://rbmq00:15672','admin',0,2,10,2),(3,'RabbitMQ TradeWF Node','rabbit@rbmq01','admin','http://rbmq01:15672','admin',0,2,11,2),(4,'RabbitMQ TradeWF Node','rabbit@rbmq02','admin','http://rbmq02:15672','admin',0,2,12,2);



