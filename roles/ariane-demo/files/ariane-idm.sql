INSERT  IGNORE INTO `uxResourceDirectory` VALUES (1,'The Mapping DSL Root Registry Directory','MappingDSLRegistry',1,7,NULL,1),(2,'The Mapping DSL Samples Directory','Samples',1,8,1,1),(3,'The Mapping DSL Users Directory','Users',1,9,1,1),(4,'General samples folder','General',1,8,2,1),(6,'yoda home','yoda',0,7,3,1),(7,'RabbitMQ requests','RabbitMQ',0,7,6,1);
INSERT  IGNORE INTO `uxResourceDirectory_uxpermission` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,7),(2,1),(2,2),(2,3),(2,4),(2,5),(2,7),(3,1),(3,2),(3,3),(3,4),(3,5),(3,7),(4,1),(4,2),(4,3),(4,4),(4,5),(4,7),(6,1),(6,2),(6,3),(6,4),(6,5),(6,7),(7,1),(7,2),(7,3),(7,4),(7,5),(7,7);
INSERT  IGNORE INTO `uxResourceRequest` VALUES (1,'This template requests routes between two containers.','\0','container--container.tpl','{\r\n    \'startContainer\': \'FROM container WHERE startContainer.containerPrimaryAdminGate.nodeName =~ \"<container primary admin gate identifier>\" \'\r\n}\r\n--\r\n{\r\n    \'endContainer\': \'FROM container WHERE endContainer.containerPrimaryAdminGate.nodeName =~ \"<container primary admin gate identifier>\" \'\r\n}',5,8,4,1),(2,'This template requests routes between two nodes.','\0','node--node.tpl','{\r\n    \'startNode\': \'FROM node WHERE startNode.nodeName=\"<node name>\" \'\r\n}\r\n--\r\n{\r\n    \'endNode\': \'FROM node WHERE endNode.nodeName=\"<node name>\" \'\r\n}',3,8,4,1),(3,'This template requests routes between two endpoints.','\0','endpoint--endpoint.tpl','{\r\n    \'startEP\': \'FROM endpoint WHERE startEP.endpointURL=\"<endpoint url>\" \'\r\n}\r\n--\r\n{\r\n    \'endEP\': \'FROM endpoint WHERE endEP.endpointURL=\"<endpoint url>\" \'\r\n}',2,8,4,1),(4,'This template requests routes between one container and one endpoint.','\0','container--endpoint.tpl','{\r\n    \'startContainer\': \'FROM container WHERE startContainer.containerPrimaryAdminGate.nodeName =~ \"<container primary admin gate identifier>\" \'\r\n}\r\n--\r\n{\r\n    \'endEP\': \'FROM endpoint WHERE endEP.endpointURL=\"<endpoint url>\" \'\r\n}',3,8,4,1),(5,'This template requests routes between two start container and one end container.','\0','containers--container.tpl','{\r\n    \'startContainers\': \'FROM container WHERE  startContainers.containerPrimaryAdminGate.nodeName =~ \"<container primary admin gate identifier>\"  OR startContainers.containerPrimaryAdminGate.nodeName =~ \"<container primary admin gate identifier>\" \'\r\n}\r\n--\r\n{\r\n    \'endContainer\': \'FROM container WHERE endContainer.containerPrimaryAdminGate.nodeName =~ \"<container primary admin gate identifier>\" \'\r\n}',2,8,4,1),(6,'This template requests routes from one container and one node to one container.','\0','container_node--container.tpl','{\r\n    \'startContainer\': \'FROM container WHERE startContainer.containerPrimaryAdminGate.nodeName =~ \"<container primary admin gate identifier>\" \',\r\n    \'startNode\': \'FROM node WHERE startNode.nodeName=\"<node name>\" \'\r\n}\r\n--\r\n{\r\n    \'endContainer\': \'FROM container WHERE endContainer.containerPrimaryAdminGate.nodeName =~ \"<container primary admin gate identifier>\" \'\r\n}',5,8,4,1),(7,'This template requests routes from one container to one container and one node.','\0','container--container_node.tpl','{\r\n    \'startContainer\': \'FROM container WHERE startContainer.containerPrimaryAdminGate.nodeName =~ \"<container primary admin gate identifier>\" \'\r\n}\r\n--\r\n{\r\n    \'endContainer\': \'FROM container WHERE endContainer.containerPrimaryAdminGate.nodeName =~ \"<container primary admin gate identifier>\" \',\r\n    \'endNode\': \'FROM node WHERE endNode.nodeName=\"<node name>\" \'\r\n}',3,8,4,1),(8,'This template requests routes from one container to another though the specified transport.','\0','container-transport-container.tpl','{\r\n    \'startContainer\': \'FROM container WHERE startContainer.containerPrimaryAdminGate.nodeName =~ \"<container primary admin gate identifier>\" \'\r\n}\r\n- {\r\n    \'moulticast\': \'FROM transport WHERE moulticast.transportName=\"<transport name>\" \' \r\n} -\r\n{\r\n    \'endContainer\': \'FROM container WHERE endContainer.containerPrimaryAdminGate.nodeName =~ \"<container primary admin gate identifier>\" \'\r\n}',1,8,4,1),(13,'Around rabbit@rbmq00','\0','Around rabbit@rbmq00','-\r\n{\r\n	\'rbmqpool\': \'FROM container WHERE rbmqpool.containerName = \"rabbit@rbmq00\"\'\r\n}\r\n-',0,7,7,1),(14,'Around rabbit@rbmq01','\0','Around rabbit@rbmq01','-\r\n{\r\n	\'rbmqpool\': \'FROM container WHERE rbmqpool.containerName = \"rabbit@rbmq01\"\'\r\n}\r\n-',0,7,7,1),(15,'Around rabbit@rbmq02','\0','Around rabbit@rbmq02','-\r\n{\r\n	\'rbmqpool\': \'FROM container WHERE rbmqpool.containerName = \"rabbit@rbmq02\"\'\r\n}\r\n-',0,7,7,1),(16,'Around rabbit@rbmq.*','\0','Around rabbit@rbmq.*','-\r\n{\r\n	\'rbmqpool\': \'FROM container WHERE rbmqpool.containerName =~ \"rabbit@rbmq.*\"\'\r\n}\r\n-',0,7,7,1),(17,'Feeder to Front desktop through RabbitMQ Cluster','\0','Feeder to Front','{\r\n    \'feederService\': \'FROM container WHERE feederService.containerPrimaryAdminGate.nodeName =~ \"rbqcliadmingate.fd.*\"\'\r\n}\r\n-\r\n{\r\n	\'rbqNode2TwinsConsumerEP\': \'FROM endpoint WHERE rbqNode2TwinsConsumerEP.endpointURL =~ \".*5672.*\"\',\r\n	\'path\': \' -[:owns*]-> feederEP <-[:link]-> rbqNode1EP1 <-[:owns]- rbqNode1 -[:owns]-> rbqNode1EP2 <-[:link]-> rbqNode2EP1 <-[:owns]- rbqNode2 <-[:twin]-> rbqNode2Twins -[:owns]-> rbqNode2TwinsConsumerEP <-[:link]-> frontEP <-[:owns*]- \'\r\n}\r\n-\r\n{\r\n    \'frontService\': \'FROM container WHERE frontService.containerPrimaryAdminGate.nodeName =~ \"rbqcliadmingate.fo.*\" \'\r\n}',0,7,7,1),(18,'MiddleOffice to Back and Risk service through RabbitMQ node','\0','MiddleOffice to Back and Risk','{\r\n    \'middleOfficeService\': \'FROM container WHERE middleOfficeService.containerPrimaryAdminGate.nodeName =~ \"rbqcliadmingate.mo.*\" \'\r\n}\r\n-\r\n{ \r\n	\'rbqNode1EP2\': \'FROM endpoint WHERE rbqNode1EP2.endpointURL =~ \".*MiddleOfficeService.*\" OR rbqNode1EP2.endpointURL =~ \".*RPC/BOQ.*\" OR rbqNode1EP2.endpointURL =~ \".*RPC/RIQ.*\"\',\r\n	\'rbqNode2EP1\': \'FROM endpoint WHERE rbqNode2EP1.endpointURL =~ \".*MiddleOfficeService.*\" OR rbqNode2EP1.endpointURL =~ \".*BOQ/BOQ.*\" OR rbqNode2EP1.endpointURL =~ \".*RIQ/RIQ.*\"\',\r\n	\'path\': \' -[:owns*]-> startContainerEP <-[:link]-> rbqNode1EP1 <-[:owns]- rbqNode1 -[:owns]-> rbqNode1EP2 -[:link]- rbqNode2EP1 <-[:owns]- rbqNode2 -[:owns]-> rbqNode2EP2 <-[:link]-> endContainerEP <-[:owns*]- \'\r\n} \r\n-\r\n{\r\n    \'riskService\': \'FROM container WHERE riskService.containerPrimaryAdminGate.nodeName =~ \"rbqcliadmingate.ri.*\" \',\r\n    \'backOfficeService\': \'FROM container WHERE backOfficeService.containerPrimaryAdminGate.nodeName =~ \"rbqcliadmingate.bo.*\" \'\r\n}',0,7,7,1);
INSERT  IGNORE INTO `uxResourceRequest_uxpermission` VALUES (13,1),(13,2),(13,3),(13,4),(13,5),(13,7),(14,1),(14,2),(14,3),(14,4),(14,5),(14,7),(15,1),(15,2),(15,3),(15,4),(15,5),(15,7),(16,1),(16,2),(16,3),(16,4),(16,5),(16,7),(17,1),(17,2),(17,3),(17,4),(17,5),(17,7),(18,1),(18,2),(18,3),(18,4),(18,5),(18,7);