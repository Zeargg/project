use test;

DROP TABLE IF EXISTS book;
CREATE TABLE book(
	id INT(11) NOT NULL AUTO_INCREMENT,
    title VARCHAR(100),
    description VARCHAR(455),
    author VARCHAR(100),
    isbn VARCHAR(20),
    printYear INT,
    readAlready BOOLEAN,
    PRIMARY KEY (id))

ENGINE InnoDB
DEFAULT CHARACTER SET = utf8mb4;

INSERT INTO book VALUES (1,
						"Война и мир. Том I-II", 
						"«Война и мир», самый известный роман Л.Н.Толстого, как никакое другое произведение писателя, отражает глубину его мироощущения и философии.",
                        "Лев Толстой",
                        "978-5-699-31158-3",
                        2018,
                        false);
                        
INSERT INTO book VALUES (2,
						"Улисс",
						"Роман «Улисс» (1922) великого ирландского писателя Джеймса Джойса (1882-1941) – главное литературное произведение ХХ века.",
                        "Джеймс Джойс",
                        "978-5-699-43288-2",
                        2013,
                        false);
				
INSERT INTO book VALUES (3,
						"Миссис Дэллоуэй. На маяк. Орландо. Романы",
                        "Вирджиния Вулф (1882-1941) - британская писательница, яркая представительница модернистского направления в литературе, входившая в знаменитый кружок Блумсбери, автор романов, ставших классикой \"потока сознания\".",
                        "Вирджиния Вулф",
                        "978-5-699-71886-3",
                        2018,
                        false);
		
INSERT INTO book VALUES (4,
						"Одиссея",
						"Поэмы Гомера оказали огромное воздействие на мировую литературу, обогатили поэзию каноническим размером - гекзаметром, дали пищу историкам быта и нравов той эпохи.",
                        "Гомер",
                        "978-5-699-92345-8",
                        2018,
                        false);
                        
INSERT INTO book VALUES (5,
						"Божественная комедия",
                        "\"Божественная Комедия\" - выдающееся художественное произведение, в эпоху Средневековья ставшее предвестником Возрождения, труд, который стоит в ряду величайших достижений человеческой мысли, и который сам Данте Алигьери назвал просто \"Комедией\", а потомки - \"Божественной\".",
                        "Данте Алигьери",
                        "978-5-699-88544-2",
                        2018, 
                        false);

INSERT INTO book VALUES (6,
						"Над пропастью во ржи",
                        "Единственный роман Сэлинджера – \"Над пропастью во ржи\" – стал переломной вехой в истории мировой литературы. Название книги и имя главного героя Холдена Колфилда сделались кодовыми для многих поколений молодых бунтарей от битников и хиппи до представителей современных радикальных молодежных движений.",
                        "Дж. Д. Сэлинджер",
                        "978-5-699-68146-4",
                        2018,
                        false);
                        
INSERT INTO book VALUES (7,
						"Унесенные ветром. Том 1",
                        "Великая сага о Гражданской войне в США и о судьбе своенравной и готовой идти по головам Скарлетт О’Хара была опубликована более 70 лет назад и не устаревает по сей день. «Унесенные ветром» — единственный роман Маргарет Митчелл (1900—1949), за который она — писательница, эмансипе и защитница прав женщин — получила Пулитцеровскую премию.",
                        "Маргарет Митчелл",
                        "978-5-699-39729-7",
                        2018,
						false);
                        
INSERT INTO book VALUES (8,
						"Великий Гэтсби. Рассказы",
                        "Ликующая, искрометная жажда жизни, стремление к любви, манящей и ускользающей, волнующая погоня за богатством – но вот мечта разбивается под звуки джаза, а вечный праздник оборачивается трагедией. ",
                        "Фрэнсис Скотт Фицджеральд",
                        "978-5-699-87864-2",
                        2016,
                        false);                       

INSERT INTO book VALUES (9,
						"Возлюбленная",
                        "Роман «Возлюбленная» принес американской писательнице Тони Моррисон Пулитцеровскую премию 1988 года и Нобелевскую премию в 1993 году. Книга, вдохновленная реальной историей рабыни Маргарет Гарнер, рассказывает о событиях, происходивших во второй половине XIX столетия.",
                        "Тони Моррисон",
                        "978-5-699-87495-8",
                        2018,
						false);
                        
INSERT INTO book VALUES (10,
						"Миссис Дэллоуэй. На маяк. Орландо. Романы",
                        "Вирджиния Вулф (1882-1941) - британская писательница, яркая представительница модернистского направления в литературе, входившая в знаменитый кружок Блумсбери, автор романов, ставших классикой \"потока сознания\".",
                        "Вирджиния Вулф",
                        "978-5-699-71886-3",
                        2018,
						false);                       
                        
INSERT INTO book VALUES (11,
						"Происхождение видов",
                        "\"Происхождение видов\" - основополагающий труд английского натуралиста и путешественника Чарльза Дарвина. Одним из первых он выдвинул идею об эволюции видов и обосновал ее, главным же механизмом эволюции он признал естественный отбор. ",
                        "Чарлз Дарвин",
                        "978-5-699-81059-8",
                        2015,
						false);                       
                        
INSERT INTO book VALUES (12,
						"Государь. История Флоренции",
                        "Сочинение итальянского писателя и дипломата, учебник и руководство к действию для правителей всех времен и народо.",
                        "Никколо Макиавелли",
                        "978-5-699-76550-8",
                        2018,
						false);	
                        
INSERT INTO book VALUES (13,
						"Хроники Нарнии: начало истории. Четыре повести",
                        "Приключения детей в удивительной стране Нарнии, где правит чудесный лев Аслан, грозный и в то же время бесконечно добрый.",
                        "Клайв С. Льюис",
                        "978-5-699-95129-1",
                        2018,
						false);                        
                        
INSERT INTO book VALUES (14,
						"Госпожа Бовари. Воспитание чувств",
                        "Гюстав Флобер вошел в мировую литературу как создатель объективного романа, когда автор остается бесстрастным наблюдателем и не навязывает читателю своих оценок.",
                        "Гюстав Флобер",
                        "978-5-699-28060-5",
                        2014,
						false);                        
                        
INSERT INTO book VALUES (15,
						"Франкенштейн, или Современный Прометей. Новеллы. Эссе",
                        "Замысел и первые эпизоды романа \"Франкенштейн, или Современный Прометей\" (1818) возникли как импровизация на заданную тему – сочинение страшных историй, инициированное лордом Байроном на швейцарской вилле Диодати летом 1816 года, а образ чудовища, сотворенного главным героем, явился автору – восемнадцатилетней англичанке Мэри Шелли – в ночном кошмаре.",
                        "Мэри Шелли",
                        "978-5-699-83977-3",
                        2015,
						false);                        
                        
INSERT INTO book VALUES (16,
						"Над кукушкиным гнездом",
                        "Подобно многочисленным громким событиям, связанным с именем \"веселого проказника\" Кена Кизи, его первая книга \"Над кукушкиным гнездом\" (1962) произвела много шума в литературной жизни Америки. Кизи был признан талантливейшим писателем, а роман стал одним из главных произведений для битников и хиппи.",
                        "Кен Кизи",
                        "978-5-699-72665-3",
                        2018,
						false);                        
                        
INSERT INTO book VALUES (17,
						"В поисках утраченного времени",
                        "Французский писатель Марсель Пруст, один из родоначальников литературного модернизма, соединял в своем творчестве настоящие и минувшие события в единую цельную картину. Изысканный и причудливый мир прустовской прозы воссоздает удивительный и непредсказуемый путь человека в глубины своей внутренней вселенной.",
                        "Марсель Пруст",
                        "978-5-699-93632-8",
                        2017,
						false);
                        
INSERT INTO book VALUES (18,
						"Американская трагедия",
                        "Роман \"Американская трагедия\" - вершина творчества выдающегося американского писателя Теодора Драйзера. Он говорил: \"Никто не создает трагедий - их создает жизнь. Писатели лишь изображают их\".",
                        "Теодор Драйзер",
                        "978-5-699-89098-9",
                        2018,
						false);                        
                        
INSERT INTO book VALUES (19,
						"Толкование сновидений",
                        "\"Толкование сновидений\" Фрейд считал рубежом в своем творчестве, поскольку теория снов позволила психоанализу выйти на новый уровень. Он считал: \"кто не умеет объяснить себе возникновение сновидений, тот напрасно будет стараться понять различного рода фобии, навязчивые мысли, бредовые идеи...\"",
                        "Зигмунд Фрейд",
                        "978-5-699-95546-6",
                        2018,
						false);                        
                        
INSERT INTO book VALUES (20,
						"Зеленая миля",
                        "Стивен Кинг приглашает читателей в жуткий мир тюремного блока смертников, откуда уходят, чтобы не вернуться, приоткрывает дверь последнего пристанища тех, кто преступил закон и теперь отсчитывает последние часы...",
                        "Стивен Кинг",
                        "978-5-17-103631-7 ",
                        2017,
						false);
                        
INSERT INTO book VALUES (21,
						"Приключения Шерлока Холмса (сборник)",
                        "Третья книга о Шерлоке Холмсе и докторе Ватсоне и первый сборник рассказов о них в серии \"БИСС Артура Конан Дойла\".",
                        "Артур Конан Дойл",
                        "978-5-00108-124-1",
                        2017,
						false);                        
                                             
                        