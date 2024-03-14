CREATE DATABASE  IF NOT EXISTS `books` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `books`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: localhost    Database: books
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `author_id` int NOT NULL,
  `author_name` varchar(50) NOT NULL,
  `born` varchar(10) DEFAULT NULL,
  `died` varchar(10) DEFAULT NULL,
  `author_description` text,
  PRIMARY KEY (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (0,'Mark P.O. Morford','1929','2019','He is best remembered for his widely used textbook on Classical Mythology (with Robert Lenardon and Michael Sham).'),(1,'Robert J. Lenardon','1928','','A Canadian classics educator'),(2,'Richard B. Wright','1837','2017','He was a Canadian novelist, and was known for his break-through 2001 novel Clara Callan, which won three major literary awards in Canada'),(3,'Carlo D\'Este','1936','2020','He was an American military historian and biographer, author of several books, especially on World War II.'),(4,'Gina Kolata','1948','','She is an American science journalist, writing for The New York Times.'),(5,'Elizabeth Wayland Barber','1940','','She is an American scholar and expert on archaeology, linguistics, textiles, and folk dance as well as professor emerita of archaeology and linguistics at Occidental College.'),(6,'Amy Tan','1952','','She is an American author of Chinese heritage, best known for the novel The Joy Luck Club (1989), which was adapted into a 1993 film.'),(7,'Robert Cowley','1934','','He is an American military historian, who writes on topics in American and European military history ranging from the Civil War through World War II.'),(8,'Paul Genney','','',''),(9,'David Cordingly','1938','','He is an English naval historian with a special interest in pirates.'),(10,'Ann Beattie','1947','','She is an American novelist and short story writer.'),(11,'David Adams Richards','1950','','He is a Canadian writer and member of the Canadian Senate.'),(12,'Adam Lebor','1961','','He is a British author, journalist, writing coach and editorial trainer.'),(13,'Sheila Heti','1976','','She is a Canadian writer.'),(14,'R.J. Kaiser','','','The marriage writing-team formed by Ronn Kaiser and Janice Kaiser have been writing full-time for 18 years as R.J. Kaiser, sharing their personal and professional lives. They wrote more than a dozen mystery-thriller and general-interest-fiction titles.'),(15,'Marci Shimoff','','','She is a no.1 NY Times bestselling author, a world-renowned transformational teacher, and an expert on happiness, success and unconditional love.'),(16,'Mark Victor Hansen','1948','','He is an American inspirational and motivational speaker, trainer and author.'),(17,'Jennifer Read Hawthorne','','','She is an international speaker and award-winning author specializing in inspirational presentations for women.'),(18,'Jack Canfield','1944','','He is an American author and motivational speaker'),(19,'Loren D. Estleman','1952','','He is an American writer of detective and Western fiction.'),(20,'Robert Hendrickson','1933','',''),(21,'Julia Oliver','1929','2014','She is an independent writer living in Montgomery, Alabama.'),(22,'John Grisham','1955','','He is an American novelist, lawyer, and former member of the Mississippi House of Representatives, known for his best selling legal thrillers.'),(23,'Toni Morrison','1931','2019','The first African-American woman to win the Nobel Prize in Literature, in 1993, Ms. Morrison was the author of 11 novels as well as children\'s books and essay collections. '),(24,'The Onion','','','The Onion is an American digital media company and newspaper organization that publishes satirical articles on international, national, and local news.'),(25,'Celia Brooks Brown','1969','','She is a vegetarian chef, author and television host from the United States who lives in London.'),(26,'J.R. Parrish','','','He went from being a milkman to a multimillionaire. In 1974, he founded J. R. Parrish Inc., a commercial real estate company in Silicon Valley.'),(27,'Lisa Fiedler','','','She is the author of a number of popular young adult novels.'),(28,'Robynn Clairday','','','Published author of several young adult books'),(29,'Kathleen Duey','1950','2020','She has written over 80 books for children and young adults.'),(30,'Rich Shapero','1948','','He is an American venture capitalist, self-published novelist, and musician.'),(31,'Michael Crichton','1942','2008','He was an American writer and filmmaker. His books have sold over 200 million copies worldwide, and over a dozen have been adapted into films.'),(32,'C.S. Lewis','1898','1963','He was a British writer, literary scholar, and Anglican lay theologian. '),(33,'Arthur Phillips','1969','','He is an American novelist'),(34,'Stephan Jaramillo','','',''),(35,'Mordecai Richler','1931','2001','He was a Canadian write'),(36,'Eleanor Cooney','','','She is daughter of Mary Durant (a writer)and the coauthor (with Daniel Altieri) of three novels set in 7th-century China.'),(37,'Daniel Altieri','1946','','He is a US Orientalist and author.'),(38,'Charlotte Link','1963','','She is among the most successful contemporary authors writing in German.'),(39,'Richard North Patterson','1947','','He is an American fiction writer, attorney and political commentator.'),(40,'Mark Salzman','1959','','He is an American writer.'),(41,'Harper Lee','1926','2016','She was an American novelist who wrote the 1960 novel To Kill a Mockingbird that won the 1961 Pulitzer Prize and became a classic of modern American literature.'),(42,'Laura Hillenbrand','1967','','She is an American author of books and magazine articles.'),(43,'Barbara Kingsolver','1955','','She is a Pulitzer Prize winning American novelist, essayist and poet.'),(44,'Jo Dereske','1947','','She is an American author whose most popular books are the Miss Zukas\' series.'),(45,'Jane Austen','1775','1817','She was an English novelist known primarily for her six novels, which implicitly interpret, critique, and comment upon the British landed gentry at the end of the 18th century.'),(46,'Dolores Krieger','1921','','She is a professor of nursing at New York University.'),(47,'Anne Rivers Siddons','1938','2019','She was an American novelist who wrote stories set in the southern United States.'),(48,'Dean R. Koontz','1945','','He has published over 105 novels and a number of novellas and collections of short stories, and has sold over 450 million copies of his work.'),(49,'Mary Higgins Clark','1927','2020','She was an American author of suspense novels. Each of her 51 books was a bestseller in the United States and various European countries,'),(50,'Patricia Cornwell','1956','','She is an American crime writer.'),(51,'J.D. Robb','1950','','She is an American author of over 225 romance novels.'),(52,'Maeve Binchy','1939','2012','She was an Irish novelist, playwright, short story writer, columnist, and speaker. '),(53,'Laura J. Mixon','1957','','She is an American science fiction writer and a chemical and environmental engineer.'),(54,'Tim Lahaye','1926','2016','He was an American Baptist evangelical Christian minister who wrote more than 85 books, both fiction and non-fiction.'),(55,'Bernie S. Siegel','1932','','He is an American writer and retired pediatric surgeon, who writes on the relationship between the patient and the healing process.'),(56,'Robert Penn Warren','1905','1989','He was an American poet, novelist, and literary critic and was one of the founders of New Criticism.'),(57,'Hans Johannes Hoefer','','','He was born in Stuttgart, Germany. An artist, he wrote a travel guide to Bali and produced a whole series of travel guide books.'),(58,'Mark Helprin','1947','','He is an American novelist, journalist, conservative commentator'),(59,'O. Carl Simonton','1942','2009','He was a specialist in radiology and oncology most notable for his unproven cancer treatment methods.'),(60,'Chuck Hill','','',''),(61,'David Iglehart','','',''),(62,'Larry McMurtry','1936','2021','He was an American novelist, essayist, prominent book collector, bookseller and screenwriter whose work was predominantly set in either the Old West or contemporary Texas.'),(63,'Suzanne Fisher Staples','1945','','She is an American writer of children\'s books.'),(64,'Michel Tournier','1924','2016','He was a French writer.'),(65,'Carl Sagan','1934','1996','He was an American astronomer and science communicator'),(66,'Aleksandr Zinoviev','1922','2006','He was a Soviet philosopher, writer, sociologist, and journalist.'),(67,'Anne Tyler','1941','','She is an American novelist, short story writer, and literary critic.'),(68,'Conrad Joseph','1857','1924','He was a Polish-British novelist and short story writer.'),(69,'Deepak Chopra','1946','','He is an Indian-American author and alternative medicine advocate.'),(70,'Thomas Hardy','1840','1928','He was an English novelist and poet'),(71,'Charles Noland','1949','',''),(72,'Valerie Frankel','1965','','She is a seasoned ghostwriter who has collaborated with iconic celebrities and VIPs on bestselling novels and non-fiction projects.'),(73,'Benjamin Hoff','1946','','He is an American author'),(74,'Niccolo Machiavelli','1469','1527','He was an Italian diplomat, author, philosopher and historian who lived during the Renaissance.'),(75,'H. Jackson Brown Jr.','1940','2021','He was an American author who was best known for his inspirational book, Life\'s Little Instruction Book, which was a New York Times Best Seller (1991 to 1994).'),(76,'Robert A. Heinlein','1907','1988','He was an American science fiction author, aeronautical engineer, and naval officer.'),(77,'Philip Pullman','1946','','He is an English writer.'),(78,'Anna Sewell','1820','1878','She was an English novelist. She is known as the author of the 1877 novel Black Beauty, her only published work.'),(79,'Michael Ondaatje','1943','','He is a Sri Lankan-born Canadian poet, fiction writer, essayist, novelist, editor, and filmmaker.'),(80,'Sandra Levy Ceren','','','She is a practicing clinical psychologist for over forty years.'),(81,'P.J. O\'Rourke','1947','2022','He was an American political satirist and journalist.'),(82,'Mike Gayle','1970','','He is an English journalist and novelist.'),(83,'Stel Pavlou','1970','','He is a British screenwriter and speculative fiction novelist.'),(84,'Sarah Payne Stuart','','','She has written for The New Yorker and The New York Times Book Review.'),(85,'Dan Quayle','1947','','He is an American retired politician who served as the 44th vice president of the United States from 1989 to 1993 under President George H. W. Bush.'),(86,'Donald F. Kettl','1952','','He is a professor emeritus and the former dean of the School of Public Policy at the University of Maryland, College Park.'),(87,'David Frum','1960','','He is a Canadian-American political commentator and a former speechwriter for President George W. Bush.'),(88,'Louis L\'Amour','1908','1988','He was an American novelist and short story writer.'),(89,'J.D. Salinger','1919','2010','He was an American author best known for his 1951 novel The Catcher in the Rye.'),(90,'J. R. R. Tolkien','1892','1973','He was an English writer and philologist.'),(91,'John Berendt','1939','','He is an American author.'),(92,'Jennifer Crusie','1949','','She is an author of contemporary romance novels. She has written more than twenty novels, which have been published in 20 countries.'),(93,'Jane Heller','','','She is a New York Times and USA Today bestselling author.'),(94,'Michael Rips','1954','','He is a writer and lawyer. Has worked as a criminal litigator, law clerk to a U.S. Supreme Court justice, and an adviser to museums and foundations.'),(95,'Simon Mawer','1948','','He is a British author who lives in Italy'),(96,'William Miller Abrahams','1919','1998','He was a poet and a novelist and became one of the leading literary editors in the American publishing scene.'),(97,'Robert T. Kiyosaki','1947','','He is a Japanese-American entrepreneur, businessman and author.'),(98,'Sharon L. Lechter','1954','','She is an American accountant, author, and businesswoman. '),(99,'Ken Follett','1949','','He is a Welsh author of thrillers and historical novels who has sold more than 160 million copies of his works.'),(100,'John F. Love','','',''),(101,'Robert G. Allen','1948','','He is an author and mentor beloved for his down-to-earth style and highly effective systems.'),(102,'Louis de Bernieres','1954','','He is an English novelist'),(103,'Pam Proctor','','','She is a former senior editor of Parade magazine and writer of 10 nonfiction books.'),(104,'Allen M. Schoen','','','He is one of the pioneers in veterinary acupuncture and natural therapies, developing and practicing them since 1981.'),(105,'Mitch Albom','1958','','He is an American author, journalist, and musician.'),(106,'Irene Gonzalez Frei','','',''),(107,'Michael Jan Friedman','1955','','He is a New York City born American author of nearly sixty books of fiction and nonfiction'),(108,'Glendon Swarthout','1918','1992','He was an American writer and novelist. Several of his novels were made into films.'),(109,'Neal Barrett Jr.','1929','2014','He was an American writer of fantasy, science fiction, mystery/suspense, and historical fiction.'),(110,'David Morrell','1943','','He is a Canadian-American author.'),(111,'Sandra Brown','1948','','She is an American bestselling author of romantic novels and thriller suspense novels.'),(112,'James Patterson','1947','','He is an American author.'),(113,'Stuart Woods','1938','2022','He was an American novelist, known best for his first novel Chiefs and his series of novels featuring the Stone Barrington character.'),(114,'Iris Johansen','1938','','She is an American writer of crime fiction, suspense fiction, and romance novels.'),(115,'Dan Brown','1964','','He is an American author best known for his thriller novels.'),(116,'Joe Hutsko','1963','','He worked at Apple from 1984 to 1988, and has been writing about technology products and subjects ever since.'),(117,'Anita Shreve','1946','2018','She was an American writer, chiefly known for her novels. One of her first published stories, Past the Island, Drifting (published 1975), was awarded an O. Henry Prize in 1976'),(118,'Ann Rule','1931','2015','She was an American author of true crime books and articles.'),(119,'Lewis Grizzard','1946','1994','He was an American writer and humorist, known for his Southern demeanor and commentary on the American South. '),(120,'Paul Theroux','1941','','He is an American novelist and travel writer who has written numerous books.'),(121,'Charles Hickey','','',''),(122,'Stephen King','1947','','He is an American author of horror, supernatural fiction, suspense, crime, science-fiction, and fantasy novels. Called the King of Horror\"'),(123,'Ben Mezrich','1967','','He is an American author.'),(124,'Bill Hand','','','He is a writer of fantasy and history.'),(125,'Tom Clancy','1947','2013','He was an American novelist.'),(126,'Dana Reeve','1961','2006','She was an American actress, singer, and disability activist. She was the wife of actor Christopher Reeve '),(127,'Arundhati Roy','1961','','She is an Indian author best known for her novel The God of Small Things (1997), which won the Booker Prize for Fiction in 1997 and became the best-selling book by a non-expatriate Indian author.'),(128,'Barbara Metzger','1944','','She is the author of over three dozen books and a dozen novellas.'),(129,'Gabriel Garcia Marquez','1927','2014','He was a Colombian novelist, short-story writer, screenwriter, and journalist.'),(130,'Rebecca Wells','1953','','She is an American author, actor, and playwright'),(131,'Tony Hillerman','1925','2008','He was an American author of detective novels and nonfiction works.'),(132,'Robert James Waller','1939','2017','He was an American author, professor, photographer, and musician.'),(133,'Rachel Harris','','','She is a psychologist with both a research and a clinical background.'),(134,'Ian McEwan','1948','','He is a British novelist and screenwriter.'),(135,'Michael Lewis','1960','','He is an American author and financial journalist.'),(136,'Richard Zimler','1956','','He is a best-selling author.'),(137,'Norman Jetmundsen','','','He is an attorney with Vulcan Materials Company in Birmingham, Alabama.'),(138,'Lorenzo Carcaterra','1954','','He is an American writer of Italian descent.'),(139,'Anne Frasier','1954','','She is an American author of numerous genres.'),(140,'Kay Hooper','1957','','She is a New York Times bestselling American author of more than 60 books.'),(141,'Soren Kierkegaard','1813','1855','He was a Danish theologian, philosopher, poet, social critic, and religious author who is widely considered to be the first existentialist philosopher.'),(142,'Jose Ortega y Gasset','1883','1955','He was a Spanish philosopher and essayist.'),(143,'Daphne Du Maurier','1907','1989','She was an English novelist, biographer and playwright.'),(144,'Nathaniel Hawthorne','1804','1864','He was an American novelist and short story writer.'),(145,'Nick Page','','','He is a writer, information designer, and creative consultant'),(146,'Laura Wolf','1967','','She is an American writer for sweet romance books.'),(147,'Lois Duncan','1934','2016','She was an American writer, novelist, poet, and journalist. '),(148,'Susan Grant','','','She is a United States Air Force veteran, pilot, and bestselling American writer who has won numerous awards, including the Romance Writers of America RITA Award.'),(149,'Barbara Vine','1930','2015','She was an English author of thrillers and psychological murder mysteries.'),(150,'Shirley Rousseau Murphy','1928','','She is an author of nearly 50 books, including among others the popular Joe Grey cat mystery novels, the Dragonbards Trilogy for young adults, and many books for children.'),(151,'Jane Lindskold','1962','','She is an American writer of fantasy and science fiction short stories and novels.'),(152,'Betty Smith','1896','1972','She was an American playwright and novelist, who wrote the 1943 bestseller A Tree Grows in Brooklyn.'),(153,'Cybill Shepherd','1950','','She is an American actress and former model.'),(154,'Aimee Lee Ball','','','She is an author and journalist writing about health, business, politics, food, travel, and the arts.'),(155,'Stewart O\'Nan','1961','','He is an American novelist.'),(156,'David Baldacci','1960','','He is an American novelist. An attorney by education, Baldacci writes mainly suspense novels and legal thrillers.'),(157,'Douglas Adams','1952','2001','He was an English author, humorist, and screenwriter'),(158,'Mary Lawson','1946','','She is a Canadian novelist.'),(159,'Willa Cather','1873','1947','She was an American writer known for her novels of life on the Great Plains.'),(160,'Olivia Goldsmith','1949','2004','She was an American author, known for her first novel The First Wives Club (1992), which was adapted into the 1996 film of the same name.'),(161,'Helen Fielding','1958','','She is an English novelist and screenwriter.'),(162,'Franklin W. Dixon','','','The pen name used by a variety of different authors who were part of a team that wrote The Hardy Boys novels for the Stratemeyer Syndicate.'),(163,'Lilian Jackson Braun','1913','2011','She was an American writer known for her light-hearted series of The Cat Who... mystery novels.'),(164,'Holly Virden','','',''),(165,'Michelle McKinney Hammond','1957','','She is the president of MMH Ministries. She is the Best-selling Author of over 40 books, selling over 2 million copies worldwide.'),(166,'H. Norman Wright','1937','','He is a licensed marriage, family and child therapist who had a private practice for over 30 years'),(167,'Piers Anthony','1934','','He is an American author in the science fiction and fantasy genres'),(168,'Ray Bradbury','1920','2012','He was an American author and screenwriter.'),(169,'Friedrich Schiller','1759','1805','He was a German poet, playwright, historian, philosopher, and physician.'),(170,'Raymond Chandler','1888','1959','He was an American-British novelist and screenwriter.'),(171,'Paolo Coelho','1947','','He is a Brazilian lyricist and novelist and a member of the Brazilian Academy of Letters since 2002.'),(172,'Fay Weldon','1931','2023','She was an English author, essayist and playwright.'),(173,'Arabella Weir','1957','','She is a Scottish comedian, actress and writer.'),(174,'Kiana Davenport','1940','','She is an American author of part-Hawaiian ancestry'),(175,'Sue Townsend','1946','2014','She was an English writer and humorist whose work encompasses novels, plays and works of journalism. '),(176,'Renan Demirkan','1955','','She is a German writer and actress'),(177,'Michael Moore','1954','','He is an American film director, producer, screenwriter and author.'),(178,'Jonathan Franzen','1959','','He is an American novelist and essayist.'),(179,'James Joyce','1882','1941','He was an Irish novelist, poet, and literary critic'),(180,'Joanna Trollope','1943','','She is an English writer.'),(181,'Milan Kundera','1929','2023','He was a Czech and French novelist. His best-known work is The Unbearable Lightness of Being.'),(182,'Robert S. Levinson','','','He is the best-selling author of the Neil Gulliver and Stevie Marriner series of mystery-thriller novels'),(183,'Lorna Landvik','1954','','She is the author of twelve novels'),(184,'Arthur Golden','1956','','He is an American writer.'),(185,'Kent Haruf','1943','2014','He was an American novelist.'),(186,'Carol Farley','','',''),(187,'Kathleen E. Woodiwiss','1939','2007','She was an American novelist.'),(188,'Belva Plain','1915','2010','She was a best-selling American author of mainstream fiction.'),(189,'Mark Haddon','1962','','He is an English novelist, best known for The Curious Incident of the Dog in the Night-Time (2003). '),(190,'Ann Brashares','1967','','She is an American young adult novelist.'),(191,'Erich Segal','1937','2010','He was an American author, screenwriter, educator, and classicist who wrote the bestselling novel Love Story (1970) and its hit film adaptation.'),(192,'Elizabeth Adler','1950','','She is a British author who has written over 20 novels. She writes romance, suspense and historical fiction novels.'),(193,'Nicholas Sparks','1965','','He is an American romance novelist, screenwriter, and film producer.'),(194,'John Saul','1942','','He is an American author of suspense and horror novels. Most of his books have appeared on the New York Times Best Seller List.'),(195,'Steve Thayer','1953','','He is a New York Times best-selling author of suspense novels.'),(196,'Tracy Chevalier','1962','','She is an American-British novelist. She is best known for her second novel, Girl with a Pearl Earring, which was adapted as a 2003 film starring Scarlett Johansson and Colin Firth.'),(197,'Judith Kelman','1945','','She is an American novelist.'),(198,'Michael Palmer','1943','2013','He was an American physician and author. His novels are often referred to as medical thrillers.'),(199,'Francine Hughes','','',''),(200,'Norman Bridwell','1928','2014','He was an American author and cartoonist best known for the Clifford the Big Red Dog book series.'),(201,'Frank McCourt','1930','2009','He was an Irish-American teacher and writer.'),(202,'Malachy McCourt','1931','','He is an Irish-American actor and writer. He is the younger brother of author Frank McCourt.'),(203,'Mari Sandoz','1896','1966','She was a Nebraska novelist, biographer, lecturer, and teacher.'),(204,'Anne Perry','1938','2023','She was a British writer best known as the author of the Thomas and Charlotte Pitt and William Monk series of historical detective fiction.'),(205,'Alexander McCall Smith','1948','','He is a British legal scholar and author of fiction.'),(206,'Gregory Maguire','1954','','He is an American novelist.'),(207,'Yann Martel','1963','','He is a Canadian author who wrote the Man Booker Prize, winning novel Life of Pi, an international bestseller published in more than 50 territories.'),(208,'Ruth Rendell','1930','2015','She was an English author of thrillers and psychological murder mysteries.'),(209,'Al Franken','1951','','He is an American politician, comedian, writer, actor, and media personality who served as a United States senator from Minnesota from 2009 to 2018. '),(210,'Donna Tartt','1963','','She is an American novelist and essayist.'),(211,'Charles Dickens','1812','1870','He was an English novelist and social critic who created some of the world\'s best-known fictional characters, and is regarded by many as the greatest novelist of the Victorian era.'),(212,'Terry Pratchett','1948','2015','He was an English author, humorist, and satirist, best known for his 41 comic fantasy novels set on the Discworld.'),(213,'E. B. White','1899','1985','He was an American writer.'),(214,'J. M. Barrie','1860','1937','He was a Scottish novelist and playwright, best remembered as the creator of Peter Pan. '),(215,'Mary O\'Hara','1885','1980','She was an American author, screenwriter, pianist, and composer. '),(216,'Louise Rennison','1951','2016','She was an English author and comedian.'),(217,'Kenneth Grahame','1859','1932','He was a British writer.'),(218,'Bernard Cornwell','1944','','He is an English-American author of historical novels and a history of the Waterloo Campaign.'),(219,'Charles de Lint','1951','','He is a Canadian writer of Dutch, Spanish, and Japanese ancestry. '),(220,'Lord Dunsany','1878','1957','He was an Anglo-Irish writer and dramatist. He published more than 90 books during his lifetime'),(221,'Georgette Heyer','1902','1974','She was an English novelist and short-story writer, in both the Regency romance and detective fiction genres.'),(222,'Oscar Wilde','1854','1900','He was an Irish poet and playwright. After writing in different forms throughout the 1880s, he became one of the most popular playwrights in London in the early 1890s.'),(223,'Ted Hughes','1930','1998','He was an English poet, translator, and children\'s writer.'),(224,'Roald Dahl','1916','1990','He was a British author of popular children\'s literature and short stories, a poet, screenwriter and a wartime fighter ace.'),(225,'Donna Jo Napoli','1948','','she is an American writer of children\'s and young adult fiction, as well as a linguist.'),(226,'A. S. Byatt','1936','2023','She was an English critic, novelist, poet and short story writer. Her books have been widely translated, into more than thirty languages.'),(227,'Tanuja Desai Hidier','','','She is an Indian-American author and singer/songwriter.'),(228,'Sophie Kinsella','1995','','She is an English author.'),(229,'Isabel Wolff','','','She is a British novelist in the Chick Lit genre.'),(230,'Louisa May Alcott','1832','1888','She was an American novelist, short story writer, and poet who wrote the novel Little Women (1868).'),(231,'George Orwell','1903','1950','He was an English novelist, essayist, journalist, and critic.'),(232,'Isabel Allende','1942','','She is a Chilean writer.'),(233,'Ellen Datlow','1949','','She is an American science fiction, fantasy, and horror editor and anthologist. '),(234,'Joseph Heller','1923','1999','He was an American author of novels, short stories, plays, and screenplays.'),(235,'John Galsworthy','1867','1933','He was an English novelist and playwright.'),(236,'Enid Blyton','1897','1968','She was an English children\'s writer, whose books have been worldwide bestsellers since the 1930s, selling more than 600 million copies. '),(237,'Neil Gaiman','1960','','He is an English author of short fiction, novels, comic books, graphic novels, audio theatre, and a screenwriter. '),(238,'Alan Moore','1953','','He is an English author'),(239,'Kevin O\'Neill','1953','2022','He was an English comic book illustrator');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author_nationality`
--

DROP TABLE IF EXISTS `author_nationality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author_nationality` (
  `author_id` int NOT NULL,
  `nationality` varchar(30) NOT NULL,
  PRIMARY KEY (`author_id`,`nationality`),
  KEY `nationality` (`nationality`),
  CONSTRAINT `author_nationality_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `author_nationality_ibfk_2` FOREIGN KEY (`nationality`) REFERENCES `nationality` (`nationality_name`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author_nationality`
--

LOCK TABLES `author_nationality` WRITE;
/*!40000 ALTER TABLE `author_nationality` DISABLE KEYS */;
INSERT INTO `author_nationality` VALUES (3,'American'),(4,'American'),(5,'American'),(6,'American'),(7,'American'),(10,'American'),(14,'American'),(15,'American'),(16,'American'),(17,'American'),(18,'American'),(19,'American'),(20,'American'),(21,'American'),(22,'American'),(23,'American'),(24,'American'),(25,'American'),(26,'American'),(27,'American'),(28,'American'),(29,'American'),(30,'American'),(31,'American'),(33,'American'),(34,'American'),(36,'American'),(37,'American'),(39,'American'),(40,'American'),(41,'American'),(42,'American'),(43,'American'),(44,'American'),(46,'American'),(47,'American'),(48,'American'),(49,'American'),(50,'American'),(51,'American'),(53,'American'),(54,'American'),(55,'American'),(56,'American'),(58,'American'),(59,'American'),(60,'American'),(61,'American'),(62,'American'),(63,'American'),(65,'American'),(67,'American'),(69,'American'),(71,'American'),(72,'American'),(73,'American'),(75,'American'),(76,'American'),(80,'American'),(81,'American'),(84,'American'),(85,'American'),(86,'American'),(87,'American'),(88,'American'),(89,'American'),(91,'American'),(92,'American'),(93,'American'),(94,'American'),(96,'American'),(97,'American'),(98,'American'),(100,'American'),(101,'American'),(103,'American'),(104,'American'),(105,'American'),(107,'American'),(108,'American'),(109,'American'),(110,'American'),(111,'American'),(112,'American'),(113,'American'),(114,'American'),(115,'American'),(116,'American'),(117,'American'),(118,'American'),(119,'American'),(120,'American'),(121,'American'),(122,'American'),(123,'American'),(124,'American'),(125,'American'),(126,'American'),(128,'American'),(130,'American'),(131,'American'),(132,'American'),(133,'American'),(135,'American'),(136,'American'),(137,'American'),(138,'American'),(139,'American'),(140,'American'),(144,'American'),(145,'American'),(146,'American'),(147,'American'),(148,'American'),(150,'American'),(151,'American'),(152,'American'),(153,'American'),(154,'American'),(155,'American'),(156,'American'),(159,'American'),(160,'American'),(162,'American'),(163,'American'),(164,'American'),(166,'American'),(167,'American'),(168,'American'),(170,'American'),(174,'American'),(177,'American'),(178,'American'),(182,'American'),(183,'American'),(184,'American'),(185,'American'),(186,'American'),(187,'American'),(188,'American'),(190,'American'),(191,'American'),(193,'American'),(194,'American'),(195,'American'),(196,'American'),(197,'American'),(198,'American'),(199,'American'),(200,'American'),(201,'American'),(202,'American'),(203,'American'),(206,'American'),(209,'American'),(210,'American'),(213,'American'),(215,'American'),(218,'American'),(225,'American'),(227,'American'),(230,'American'),(233,'American'),(234,'American'),(171,'Brazilian'),(12,'British'),(32,'British'),(83,'British'),(95,'British'),(134,'British'),(170,'British'),(192,'British'),(196,'British'),(204,'British'),(205,'British'),(217,'British'),(220,'British'),(224,'British'),(229,'British'),(1,'Canadian'),(2,'Canadian'),(11,'Canadian'),(13,'Canadian'),(35,'Canadian'),(79,'Canadian'),(87,'Canadian'),(110,'Canadian'),(158,'Canadian'),(207,'Canadian'),(219,'Canadian'),(232,'Chilean'),(129,'Colombian'),(141,'Danish'),(8,'English'),(9,'English'),(45,'English'),(70,'English'),(77,'English'),(78,'English'),(82,'English'),(90,'English'),(102,'English'),(143,'English'),(149,'English'),(157,'English'),(161,'English'),(165,'English'),(172,'English'),(175,'English'),(180,'English'),(189,'English'),(208,'English'),(211,'English'),(212,'English'),(216,'English'),(218,'English'),(221,'English'),(223,'English'),(226,'English'),(228,'English'),(231,'English'),(235,'English'),(236,'English'),(237,'English'),(238,'English'),(239,'English'),(64,'French'),(181,'French'),(38,'German'),(57,'German'),(169,'German'),(176,'German'),(127,'Indian'),(52,'Irish'),(179,'Irish'),(201,'Irish'),(202,'Irish'),(220,'Irish'),(222,'Irish'),(74,'Italian'),(106,'Latino'),(68,'Polish'),(66,'Russian'),(173,'Scottish'),(214,'Scottish'),(142,'Spanish'),(0,'Sri Lankan'),(99,'Welsh');
/*!40000 ALTER TABLE `author_nationality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author_write_book`
--

DROP TABLE IF EXISTS `author_write_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author_write_book` (
  `book_id` int DEFAULT NULL,
  `author_id` int DEFAULT NULL,
  KEY `book_id` (`book_id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `author_write_book_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `author_write_book_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `author` (`author_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author_write_book`
--

LOCK TABLES `author_write_book` WRITE;
/*!40000 ALTER TABLE `author_write_book` DISABLE KEYS */;
INSERT INTO `author_write_book` VALUES (0,0),(0,1),(1,2),(2,3),(3,4),(4,5),(5,6),(67,6),(6,7),(7,8),(8,9),(9,10),(10,11),(11,12),(12,13),(14,15),(250,15),(14,16),(244,16),(250,16),(14,17),(250,17),(14,18),(244,18),(250,18),(16,20),(17,21),(18,22),(52,22),(218,22),(219,22),(221,22),(19,23),(20,24),(22,26),(23,27),(24,28),(25,29),(26,30),(27,31),(28,31),(207,31),(29,32),(30,33),(31,34),(32,35),(34,38),(35,39),(206,39),(208,39),(36,40),(37,41),(38,42),(74,42),(39,43),(288,43),(40,44),(41,45),(167,45),(264,45),(284,45),(42,46),(43,47),(44,48),(46,48),(45,49),(95,49),(136,49),(47,50),(212,50),(213,50),(236,50),(48,51),(49,52),(50,53),(51,54),(53,55),(54,56),(56,58),(57,59),(58,60),(59,61),(60,62),(61,63),(62,63),(64,65),(65,66),(66,67),(68,68),(69,69),(70,70),(71,71),(72,72),(73,73),(75,74),(76,75),(77,76),(78,77),(273,77),(274,77),(275,77),(79,78),(80,79),(81,80),(82,81),(84,83),(85,84),(86,85),(87,86),(88,87),(90,89),(196,89),(197,89),(91,90),(92,90),(93,90),(94,91),(96,92),(97,93),(98,94),(99,95),(100,96),(101,97),(101,98),(102,99),(103,100),(104,101),(105,102),(107,105),(108,106),(109,107),(110,108),(111,109),(112,110),(113,111),(115,111),(114,112),(204,112),(205,112),(225,112),(116,113),(117,114),(118,115),(237,115),(239,115),(119,116),(120,117),(252,117),(121,118),(124,119),(123,120),(125,121),(126,122),(229,122),(127,123),(128,124),(129,125),(130,126),(131,127),(202,127),(132,128),(133,129),(188,129),(134,130),(135,131),(137,132),(157,132),(139,134),(140,135),(141,136),(142,137),(143,138),(144,139),(145,140),(147,142),(148,143),(149,144),(150,145),(151,146),(152,147),(153,148),(154,149),(155,150),(156,151),(158,152),(159,153),(159,154),(160,155),(161,156),(162,157),(163,158),(164,159),(165,160),(166,161),(168,162),(169,162),(170,162),(171,163),(172,164),(172,165),(174,167),(175,168),(177,168),(179,168),(180,168),(181,168),(182,168),(183,168),(184,168),(185,168),(186,168),(277,168),(176,169),(187,171),(189,172),(190,173),(191,174),(192,175),(200,175),(276,175),(193,176),(194,177),(195,178),(198,179),(201,181),(203,182),(209,183),(228,183),(210,184),(211,185),(214,186),(215,187),(216,187),(217,188),(220,189),(222,190),(223,191),(224,192),(226,193),(227,194),(230,195),(231,196),(232,197),(233,198),(234,199),(235,200),(238,201),(240,202),(242,204),(243,205),(245,206),(246,207),(247,208),(248,209),(249,210),(286,211),(290,211),(253,212),(254,212),(255,212),(259,212),(260,212),(261,212),(262,212),(256,213),(257,214),(258,215),(263,216),(265,217),(266,218),(267,219),(268,220),(269,221),(270,222),(271,223),(272,224),(278,225),(279,226),(291,226),(280,227),(281,228),(282,229),(283,230),(285,231),(287,232),(289,233),(292,234),(293,235),(294,236),(295,236),(296,237),(298,237),(297,238),(297,239);
/*!40000 ALTER TABLE `author_write_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `book_id` int NOT NULL,
  `ISBN_10` varchar(10) NOT NULL,
  `title` varchar(500) NOT NULL,
  `edition` varchar(40) DEFAULT NULL,
  `page_count` int NOT NULL DEFAULT '100',
  `publisher` varchar(100) NOT NULL,
  `language` varchar(30) NOT NULL,
  `format` varchar(50) NOT NULL,
  `genre` varchar(30) NOT NULL,
  `first_published` date NOT NULL,
  `avg_rating` decimal(2,1) NOT NULL DEFAULT '0.0',
  PRIMARY KEY (`book_id`),
  KEY `publisher` (`publisher`),
  KEY `language` (`language`),
  KEY `format` (`format`),
  KEY `genre` (`genre`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`publisher`) REFERENCES `publisher` (`publisher_name`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `book_ibfk_2` FOREIGN KEY (`language`) REFERENCES `language` (`language_name`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `book_ibfk_3` FOREIGN KEY (`format`) REFERENCES `format` (`format_name`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `book_ibfk_4` FOREIGN KEY (`genre`) REFERENCES `genre` (`genre_type`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (0,'0195153448','Classical Mythology','7',844,'Oxford University Press','English','Paperback','History','1977-01-01',5.0),(1,'0060506075','Clara Callan: A Novel','Reprint',432,'Harper Perennial','English','Paperback','Fiction','2001-01-01',4.0),(2,'0141017619','Decision in Normandy : The Real Story of Montgomery and the Allied Campaign','',558,'Penguin Books','English','Paperback','History','1983-01-01',4.0),(3,'0743203984','Flu: The Story of the Great Influenza Pandemic of 1918 and the Search for the Virus That Caused It','Illustrated',352,'Atria Books','English','Paperback','History','1999-01-01',0.0),(4,'0393045218','The Mummies of Urumchi','1',240,'W W Norton & Co Inc','English','Hardcover','History','1999-01-01',4.0),(5,'0143038109','The Kitchen God\'s Wife','8/22/06',416,'Penguin Books','English','Paperback','Fiction','1991-01-01',3.0),(6,'0425176428','What If?: The World\'s Foremost Military Historians Imagine What Might Have Been','F First Edition',395,'Berkley','English','Paperback','History','1999-01-01',4.0),(7,'1903517575','Pleading Guilty','First Edition',242,'Dedalus Limited','English','Paperback','Fiction','2007-10-20',0.0),(8,'0679425608','Under the Black Flag: The Romance and the Reality of Life Among the Pirates','First Edition',317,'Random House','English','Hardcover','History','1995-01-01',0.0),(9,'074322678X','Where You\'ll Find Me: And Other Stories','',208,'Scribner','English','Paperback','Fiction','1986-01-01',0.0),(10,'0771074670','Nights Below Station Street','',225,'Emblem Editions','English','Paperback','Fiction','1988-01-01',0.0),(11,'080652121X','Hitler\'s Secret Bankers: The Myth of Swiss Neutrality During the Holocaust','Revised, Updated',293,'Citadel','English','Paperback','History','2000-01-01',0.0),(12,'887841740','The Middle Stories','First Edition',160,'House of Anansi Press','English','Hardcover','Fiction','2001-04-01',0.0),(14,'1558746218','A Second Chicken Soup for the Woman\'s Soul (Chicken Soup for the Soul Series)','Book Club (BCE/BOMC)',328,'HCI','English','Hardcover','Nonfiction','1996-01-01',0.0),(16,'1575663937','More Cunning Than Man: A Social History of Rats and Man','',288,'Kensington Pub Corp','English','Paperback','Nonfiction','1983-01-01',5.0),(17,'1881320189','Goodbye to the Buttermilk Sky','First Edition',191,'Black Belt Press','English','Paperback','Fiction','1994-01-01',0.0),(18,'0440234743','The Testament','',544,'Dell','English','Mass Market Paperback','Fiction','1999-02-02',0.0),(19,'0452264464','Beloved (Plume Contemporary Fiction)','Reissue',275,'Longman','English','Paperback','Fiction','1987-09-06',0.0),(20,'0609804618','Our Dumb Century: The Onion Presents 100 Years of Headlines from America\'s Finest News Source','1',164,'Three Rivers Press','English','Paperback','Humor','1998-03-23',0.0),(22,'1879384493','If I\'d Known Then What I Know Now: Why Not Learn from the Mistakes of Others? : You Can\'t Afford to Make Them All Yourself','1',136,'Cypress House','English','Paperback','Fiction','2003-03-01',0.0),(23,'0061076031','Mary-Kate & Ashley Starring in Switching Goals','',128,'HarperEntertainment','English','Paperback','Childrens','1999-01-01',0.0),(24,'0439095026','Tell Me This Isn\'t Happening','',170,'Scholastic Paperbacks','English','Paperback','Childrens','1999-01-01',0.0),(25,'0689821166','Flood : Mississippi 1927','1',176,'Aladdin','English','Paperback','Childrens','1998-07-01',0.0),(26,'1800788312','Wild Animus: A Novel','First Edition',315,'Too Far Pub','English','Paperback','Fiction','2004-01-01',0.0),(27,'0345402871','Airframe','1',431,'Ballantine Books','English','Paperback','Fiction','1996-01-02',0.0),(28,'0345417623','Timeline','',496,'Ballantine Books','English','Mass Market Paperback','Science Fiction','1999-11-16',0.0),(29,'0684823802','Out of the Silent Planet (Space Trilogy, Book 1)','Reprint',160,'Scribner','English','Paperback','Science Fiction','1938-01-01',0.0),(30,'0375759778','Prague : A Novel','Reprint',400,'Random House Trade Paperbacks','English','Paperback','Fiction','2002-01-01',0.0),(31,'0425163091','Chocolate Jesus','First Edition',249,'Berkley Trade','English','Mass Market Paperback','Fiction','1998-01-01',0.0),(32,'3404921038','Wie Barney es sieht.','',574,'Lubbe','German','Paperback','Fiction','1997-01-01',0.0),(34,'3442410665','Sturmzeit. Roman. (German Edition)','',531,'Goldmann','German','Paperback','Historical Fiction','1990-01-01',0.0),(35,'3442446937','Tage der Unschuld.','',575,'Goldmann','German','Paperback','Mystery','1976-05-01',0.0),(36,'0375406328','Lying Awake','1st',181,'Alfred A. Knopf','English','Hardcover','Fiction','2000-01-01',0.0),(37,'0446310786','To Kill a Mockingbird','Warner Books Ed.',376,'Grand Central Publishing','English','Mass Market Paperback','Classics','1960-07-11',0.0),(38,'0449005615','Seabiscuit: An American Legend','1',401,'Ballantine Books','English','Paperback','Nonfiction','1999-07-30',0.0),(39,'0060168013','Pigs in Heaven','First Edition',343,'HarperCollins','English','Hardcover','Fiction','1993-01-01',0.0),(40,'038078243X','Miss Zukas and the Raven\'s Dance','First Paperback Edition',256,'Avon Books','English','Paperback','Mystery','1996-01-01',0.0),(41,'055321215X','Pride and Prejudice','First Edition',295,'Bantam Classics','English','Mass Market Paperback','Classics','1813-01-28',0.0),(42,'067176537X','The Therapeutic Touch: How to Use Your Hands to Help or to Heal','',168,'Atria Books','English','Paperback','Fiction','1979-01-01',0.0),(43,'0061099686','Downtown','Reprint',512,'HarperTorch','English','Mass Market Paperback','Fiction','1994-05-01',0.0),(44,'0553582909','Icebound','BANTAM MAS',408,'Bantam','English','Mass Market Paperback','Horror','1976-01-01',0.0),(45,'0671888587','I\'ll Be Seeing You: A Novel','Reprint',307,'Pocket Books','English','Mass Market Paperback','Mystery','1993-05-05',0.0),(46,'0553582747','From the Corner of His Eye','',746,'Bantam','English','Mass Market Paperback','Horror','2000-01-01',0.0),(47,'0425182908','Isle of Dogs (Andy Brazil)','',413,'Berkley','English','Mass Market Paperback','Mystery','2001-10-08',0.0),(48,'042518630X','Purity in Death','Berkley Ed.',355,'Berkley','English','Mass Market Paperback','Mystery','2002-08-27',0.0),(49,'0440223571','This Year It Will Be Different: And Other Stories','Reprint',259,'Dell','English','Mass Market Paperback','Fiction','1995-01-01',0.0),(50,'0812523873','Proxies','',468,'Tom Doherty Assoc Llc','English','Paperback','Science Fiction','1998-09-01',0.0),(51,'0842342702','Left Behind: A Novel of the Earth\'s Last Days (Left Behind #1)','',470,'Living Books','English','Paperback','Fiction','1995-09-29',0.0),(52,'0440225701','The Street Lawyer','36th ptg.',449,'Dell','English','Mass Market Paperback','Fiction','1998-02-16',0.0),(53,'0060914068','Love, Medicine and Miracles','1rst prennial Library Edit',242,'Harper & Row Publishers','English','Paperback','Health','1986-01-01',0.0),(54,'0156047624','All the King\'s Men','1st Harves',438,'Harcourt','English','Paperback','Fiction','1946-01-01',0.0),(56,'0380715899','A Soldier of the Great War','First Printing',723,'Harcourt Brace Jovanovich Publishers','English','Paperback','Fiction','1991-01-01',0.0),(57,'0553280333','Getting Well Again: A Step-by-Step, Self-Help Guide to Overcoming Cancer for Patients and Their Families','Reissue',304,'Bantam Books','English','Paperback','Health','1978-01-01',0.0),(58,'0961769947','Northwest Wines and Wineries','',236,'Speed Graphics','English','Paperback','Fiction','1993-01-01',0.0),(59,'0964778319','An Atmosphere of Eternity: Stories of India','First Edition',157,'Sunflower Pub Co','English','Paperback','Short Stories','2002-11-14',0.0),(60,'0671623249','Lonesome Dove','',961,'Pocket Books','English','Mass Market Paperback','Fiction','1986-08-01',0.0),(61,'0679810307','Shabanu: Daughter of the Wind (Border Trilogy)','Reprint',256,'Laurel Leaf','English','Mass Market Paperback','Fiction','1989-09-23',0.0),(62,'0679865691','Haveli','Reprinted Edition',336,'Laurel Leaf','English','Mass Market Paperback','Fiction','1993-01-01',0.0),(64,'0345260317','The Dragons of Eden: Speculations on the Evolution of Human Intelligence','',271,'Ballantine Books','English','Mass Market Paperback','Science','1977-04-12',0.0),(65,'0394743741','The yawning heights','1st Vintage Books ed',828,'Random House','English','Loose Leaf','Fiction','1976-01-01',0.0),(66,'042511774X','Breathing Lessons','Reissue',338,'Berkley','English','Paperback','Fiction','1988-08-12',0.0),(67,'0804106304','The Joy Luck Club','1',332,'Ivy Books','English','Mass Market Paperback','Fiction','1989-01-01',0.0),(68,'1853262404','Heart Of Darkness And Other Stories','Revised ed.',224,'Wordsworth Books','English','Flexibound','Classics','2002-01-01',0.0),(69,'0312970242','Deepak Chopra\'s The Angel is Near','First Edition',340,'St. Martin\'s Paperbacks','English','Mass Market Paperback','Fiction','2000-01-01',4.0),(70,'1853260053','Tess of the D\'Urbervilles','Complete & Unabridged',360,'Wordsworth Editions','English','Paperback','Classics','1891-01-01',0.0),(71,'1414035004','The Adventures of Drew and Ellie: The Magical Dress','',76,'Authorhouse','English','Hardcover','Childrens','2003-01-01',0.0),(72,'0060938412','The Accidental Virgin: A Novel','1',277,'William Morrow Paperbacks','English','Paperback','Fiction','2003-01-01',0.0),(73,'0140067477','The Tao of Pooh','First Edition',158,'Penguin Books','English','Paperback','Philosophy','1982-04-28',0.0),(74,'0345465083','Seabiscuit: An American Legend','First Edition',457,'Ballantine Books','English','Mass Market Paperback','Nonfiction','1999-07-30',0.0),(75,'0451625889','The Prince','5th or later Edition',127,'Signet','English','Mass Market Paperback','Classics','1513-01-01',0.0),(76,'1558531025','Life\'s Little Instruction Book','',224,'Rutledge Hill Press','English','Paperback','Nonfiction','1991-01-01',0.0),(77,'0441783589','Starship Troopers','Reissue',337,'Ace Books','English','Mass Market Paperback','Science Fiction','1959-12-01',4.0),(78,'0394895894','The Ruby in the Smoke','First Edition',230,'Laurel Leaf','English','Mass Market Paperback','Mystery','1985-01-01',3.0),(79,'1569871213','Black Beauty (Illustrated Classics)','',248,'Ashland, OH, U.S.A. : Landoll, 1995','English','Hardcover','Classics','1877-11-24',0.0),(80,'0375410538','Anil\'s Ghost','First Edition',311,'Knopf','English','Hardcover','Fiction','2000-03-30',0.0),(81,'0966986105','Prescription for Terror','First Edition',240,'Andrew Scott Pub','English','Paperback','Fiction','1999-05-01',0.0),(82,'087113375X','Modern Manners: An Etiquette Book for Rude People','Reprint',280,'Atlantic Monthly Press','English','Paperback','Humor','1983-01-01',0.0),(84,'0743403843','Decipher','',806,'Gardners Books','English','Paperback','Thriller','2001-01-01',0.0),(85,'0060930365','My First Cousin Once Removed: Money, Madness, and the Family of Robert Lowell','First Edition',256,'Harper Perennial','English','Paperback','Memoir','1998-09-23',0.0),(86,'0060177586','Standing Firm: A Vice-Presidential Memoir','First Edition',402,'HarperCollins','English','Hardcover','Biography','1994-05-01',0.0),(87,'0071416331','Team Bush : Leadership Lessons from the Bush White House','1',224,'McGraw-Hill','English','Hardcover','Fiction','1899-12-30',0.0),(88,'0375509038','The Right Man : The Surprise Presidency of George W. Bush','1',320,'Random House','English','Hardcover','Politics','2003-01-01',3.0),(90,'0316769487','The Catcher in the Rye','School & Library ed.',214,'Little, Brown and Company','English','Paperback','Classics','1951-06-16',0.0),(91,'8445071408','El Senor De Los Anillos: La Comunidad Del Anillo (Lord of the Rings) (Spanish Edition)','',559,'Minotauro Ediciones Avd','Spanish','Paperback','Fantasy','1954-07-29',0.0),(92,'8445071769','El Senor De Los Anillos II: Las dos Torres (Spanish Edition)','Poc',463,'Minotauro Ediciones Avd','Spanish','Paperback','Fantasy','1954-11-11',0.0),(93,'8445071777','El Senor De Los Anillos, Vol. 3: El Retorno Del Rey (Spanish Edition)','',416,'Distribooks Inc','Spanish','Paperback','Fantasy','1955-10-20',0.0),(94,'0679429220','Midnight in the Garden of Good and Evil: A Savannah Story','First Edition',388,'Random House','English','Hardcover','Nonfiction','1994-01-30',0.0),(95,'0671867156','Pretend You Don\'t See Her','Reprint',336,'Pocket Books','English','Mass Market Paperback','Mystery','1997-04-28',0.0),(96,'0312252617','Fast Women','1',352,'St. Martin\'s Press','English','Hardcover','Romance','2001-05-01',0.0),(97,'0312261594','Female Intelligence','First Edition',336,'St. Martin\'s Press','English','Hardcover','Romance','2001-04-14',0.0),(98,'0316748641','Pasquale\'s Nose: Idle Days in an Italian Town','',224,'Back Bay Books','English','Paperback','Italy','2001-01-01',2.0),(99,'0316973742','The Gospel of Judas: A Novel','',352,'Back Bay Books','English','Paperback','Fiction','2001-01-01',0.0),(100,'0385235941','Prize Stories, 1987: The O\'Henry Awards','First Edition',320,'Doubleday','English','Hardcover','Short Stories','1987-01-01',0.0),(101,'0446677450','Rich Dad, Poor Dad: What the Rich Teach Their Kids About Money--That the Poor and Middle Class Do Not!','1',207,'Business Plus','English','Paperback','Business','1997-04-08',0.0),(102,'0451166892','The Pillars of the Earth','First Edition',1006,'Signet','English','Mass Market Paperback','Historical Fiction','1989-10-01',0.0),(103,'0553347594','McDonald\'s: Behind the Arches','Revised',486,'Bantam','English','Paperback','Business','1986-10-01',0.0),(104,'0671621009','Creating Wealth : Retire in Ten Years Using Allen\'s Seven Principles of Wealth!','Revised, Updated',304,'Fireside','English','Paperback','Business','1983-06-01',0.0),(105,'067976397X','Corelli\'s Mandolin : A Novel','',437,'Vintage','English','Paperback','Fiction','1994-01-01',0.0),(107,'0786868716','The Five People You Meet in Heaven','1',196,'Hachette Books','English','Hardcover','Fiction','2003-09-23',0.0),(108,'8472238822','Tu nombre escrito en el agua (Premio La Sonrisa Vertical) (Spanish Edition))','First Edition',296,'Tusquets Editores S.A.','Spanish','Paperback','Fiction','1995-01-01',0.0),(109,'0671864769','Relics: Star Trek The Next Generation','First Paperback Edition',239,'Star Trek','English','Paperback','Science Fiction','1992-11-01',0.0),(110,'0671521519','Bless The Beasts And Children : Bless The Beasts And Children','Reissue',189,'Pocket Books','English','Paperback','Fiction','1970-01-01',0.0),(111,'0440222303','The Touch of Your Shadow, the Whisper of Your Name (Babylon 5, Book 5)','First Edition',256,'Dell','English','Paperback','Science Fiction','1996-03-10',2.0),(112,'0312953453','Blood Oath','',296,'St. Martin\'s Paperbacks','English','Mass Market Paperback','Thriller','1982-01-01',0.0),(113,'0446608653','The Alibi','Reprint',564,'Grand Central Publishing','English','Mass Market Paperback','Romance','1999-01-01',0.0),(114,'0446612545','The Beach House','Later Printing',356,'Grand Central Publishing','English','Paperback','Mystery','2002-06-10',0.0),(115,'0446612618','A Kiss Remembered','First Edition',224,'Grand Central Publishing','English','Mass Market Paperback','Romance','1983-01-01',0.0),(116,'0451208080','The Short Forever','Reprint',432,'G.P. Putnam\'s Sons','English','Paperback','Mystery','2002-04-15',0.0),(117,'0553584383','Dead Aim','Reprint',368,'Bantam','English','Paperback','Mystery','2002-12-20',0.0),(118,'0671027360','Angels & Demons','Reissue',572,'Pocket Star Books','English','Mass Market Paperback','Fiction','2000-05-01',0.0),(119,'0812575954','The Deal','First Edition',320,'Forge','English','Paperback','Fiction','2000-01-01',0.0),(120,'0316735736','All He Ever Wanted: A Novel','Reprint',352,'Back Bay Books','English','Paperback','Fiction','2003-04-01',0.0),(121,'0743439740','Every Breath You Take : A True Story of Obsession, Revenge, and Murder','Reprint',681,'Pocket Books','English','Mass Market Paperback','True Crime','2000-12-01',0.0),(123,'0380619458','The Mosquito Coast','Media Tie In, Reissue',374,'Avon Books','English','Mass Market Paperback','Fiction','1981-01-01',0.0),(124,'0446325805','If Love Were Oil, I\'d Be About a Quart Low','Reprint',279,'Grand Central Pub','English','Paperback','Humor','1983-01-01',0.0),(125,'0451406923','Goodbye, My Little Ones: The True Story of a Murderous Mother and Five Innocent Victims','',384,'Onyx','English','Paperback','True Crime','1996-03-01',0.0),(126,'0671042858','The Girl Who Loved Tom Gordon','First Thus',264,'Pocket Books','English','Mass Market Paperback','Horror','1999-04-06',0.0),(127,'0743249992','Bringing Down the House: The Inside Story of Six M.I.T. Students Who Took Vegas for Millions','Reprint',257,'Free Press','English','Paperback','Nonfiction','2002-09-17',0.0),(128,'0840734530','The Oneprince (The Redaemian Chronicles, Book 1)','First Edition',300,'Thomas Nelson Inc','English','Paperback','Fantasy','1992-01-01',0.0),(129,'0425184226','The Sum of All Fears','',914,'Berkley','English','Mass Market Paperback','Fiction','1991-08-14',0.0),(130,'0375500766','Care Packages : Letters to Christopher Reeve from Strangers and Other Friends','1',192,'Random House','English','Hardcover','Nonfiction','1999-10-26',0.0),(131,'9724119378','O Deus Das Pequenas Coisas','',304,'Edicoes Asa','Portuguese','Paperback','Fiction','1997-04-01',0.0),(132,'0451205197','Lady in Green and Minor Indiscretions','',480,'Signet','English','Paperback','Regency','2002-02-01',0.0),(133,'0060929790','One Hundred Years of Solitude','Reprint',458,'Perennial','English','Paperback','Fiction','1967-05-01',0.0),(134,'0060976845','Little Altars Everywhere: A Novel','Reprint',224,'Harper Paperbacks','English','Paperback','Fiction','1992-01-01',0.0),(135,'0061099325','Coyote Waits','Reprint',352,'HarperTorch','English','Paperback','Mystery','1990-01-01',0.0),(136,'0671004573','Before I Say Good-Bye','',416,'Pocket Books','English','Mass Market Paperback','Mystery','2000-01-01',0.0),(137,'0446601640','Slow Waltz in Cedar Bend','First Edition',227,'Warner Books, Inc.','English','Mass Market Paperback','Fiction','1994-12-01',0.0),(139,'038572179X','Atonement : A Novel','First Edition',351,'Anchor Books','English','Paperback','Fiction','2003-03-01',0.0),(140,'0393020371','Next: The Future Just Happened','First Edition',240,'W. W. Norton & Company','English','Hardcover','Nonfiction','2001-07-17',0.0),(141,'1900850303','The Angelic Darkness','',247,'Arcadia Books','English','Paperback','Fiction','1998-06-01',0.0),(142,'1903019699','The Soulbane Stratagem','',240,'John Hunt Publishing (GB)','English','Paperback','Fiction','2004-03-10',0.0),(143,'0345425294','Gangster','Reprint',406,'Fawcett','English','Mass Market Paperback','Fiction','2001-02-01',0.0),(144,'0451410319','Hush','Reissue',384,'Onyx','English','Mass Market Paperback','Mystery','2002-05-01',0.0),(145,'0553583468','Whisper of Evil (Hooper, Kay. Evil Trilogy.)','Reissue',392,'Bantam','English','Mass Market Paperback','Mystery','2002-06-25',0.0),(147,'8476409419','Estudios sobre el amor','1',184,'Editorial Edaf, S.L.','Spanish','Paperback','Philosophy','1939-01-01',0.0),(148,'0380778556','Rebecca','Reprint',380,'Avon Books','English','Mass Market Paperback','Classics','1938-08-01',0.0),(149,'0451525221','Scarlet Letter','',256,'Signet','English','Mass Market Paperback','Classics','1850-03-16',0.0),(150,'0002740230','Keep It Simple: And Get More Out of Life','',96,'HarperCollins UK','English','Paperback','Nonfiction','1999-04-01',0.0),(151,'0385336772','Diary of a Mad Mom-To-Be','',321,'Delta','English','Paperback','Chick Lit','2003-04-29',0.0),(152,'0440949424','Locked in Time','',210,'Laurel Leaf','English','Mass Market Paperback','Mystery','1985-04-01',0.0),(153,'0505524996','Contact','First Edition',384,'Love Spell','English','Paperback','Romance','2002-05-03',0.0),(154,'0140252800','The Brimstone Wedding','',312,'Penguin Canada','English','Paperback','Mystery','1995-03-28',0.0),(155,'0451452755','The Catswold Portal','',418,'Roc','English','Paperback','Fantasy','1992-04-01',0.0),(156,'0812575482','Through Wolf\'s Eyes (Wolf)','',579,'Tor Fantasy','English','Mass Market Paperback','Fantasy','2001-08-18',0.0),(157,'044651747X','Puerto Vallarta Squeeze','First Edition',224,'Grand Central Publishing','English','Hardcover','Fiction','1995-10-26',0.0),(158,'0060801263','A Tree Grows In Brooklyn','',430,'Perennial Classic','English','Paperback','Classics','1943-08-18',0.0),(159,'0061030147','Cybill Disobedience','',352,'Avon Books','English','Mass Market Paperback','Nonfiction','2000-04-01',0.0),(160,'0140250964','Snow Angels','',320,'Penguin Books','English','Paperback','Fiction','1994-01-01',0.0),(161,'0446527165','Wish You Well','',400,'Warner Books','English','Hardcover','Fiction','2000-10-24',0.0),(162,'0671461494','The Hitchhiker\'s Guide to the Galaxy','',215,'Pocket Books','English','Mass Market Paperback','Science Fiction','1979-10-12',0.0),(163,'0385337639','Crow Lake (Today Show Book Club #7)','Today Show Book Club',320,'Dial Press Trade Paperback','English','Paperback','Fiction','2002-01-01',0.0),(164,'039575514X','My Antonia','Reissue',244,'Mariner Books Classics','English','Paperback','Fiction','1918-01-01',0.0),(165,'0451206673','Pen Pals','First Edition',432,'Signet','English','Paperback','Chick Lit','2002-09-03',4.0),(166,'0330332775','Bridget Jones\'s Diary','',310,'Picador','English','Paperback','Fiction','1996-01-01',0.0),(167,'0486284735','Pride and Prejudice (Dover Thrift Editions)','New edition',262,'Dover Publications','English','Paperback','Classics','1813-01-28',0.0),(168,'0671021745','Eye on Crime','',160,'Aladdin','English','Paperback','Mystery','1998-11-01',0.0),(169,'0671047612','Skin And Bones','',160,'Aladdin','English','Paperback','Mystery','2000-11-01',0.0),(170,'0671504282','Law of the Jungle','',160,'Simon Pulse','English','Paperback','Mystery','1995-11-01',0.0),(171,'0399138684','The Cat Who Came to Breakfast (Cat Who... (Hardcover))','1st',254,'Putnam','English','Hardcover','Mystery','1994-02-09',0.0),(172,'0785263292','If Singleness Is a Gift, What\'s the Return Policy?','',228,'Thomas Nelson','English','Paperback','Nonfiction','2003-07-01',5.0),(174,'0345354931','Night Mare','',320,'Del Rey','English','Mass Market Paperback','Fantasy','1982-01-01',0.0),(175,'0553278223','The Martian Chronicles','Reprint',182,'Spectra','English','Mass Market Paperback','Science Fiction','1950-05-04',0.0),(176,'3150000335','Kabale Und Liebe','',141,'Reclam','English','Paperback','Classics','1784-01-01',0.0),(177,'3257203659','Der illustrierte Mann.','',317,'Diogenes Verlag','German','Paperback','Science Fiction','1951-02-01',0.0),(179,'3257208626','Fahrenheit 451','German language edition',240,'Diogenes Verlag','German','Paperback','Classics','1953-10-19',0.0),(180,'3257208634','Die Mars- Chroniken. Roman in Erzahlungen.','',272,'Diogenes Verlag','German','Paperback','Science Fiction','1950-05-04',0.0),(181,'3257208669','Das Bose kommt auf leisen Sohlen.','',272,'Diogenes Verlag','German','Paperback','Horror','1962-07-17',0.0),(182,'3257210450','Lowenzahnwein. Roman.','',279,'Diogenes Verlag','German','Paperback','Fiction','1957-07-01',0.0),(183,'3257212054','Das Kind von morgen. Erzahlungen.','',367,'Diogenes Verlag','German','Paperback','Science Fiction','1967-08-01',0.0),(184,'3257212429','Die Mechanismen der Freude. Erzahlungen.','',317,'Diogenes Verlag','German','Paperback','Science Fiction','1964-01-01',0.0),(185,'3257214154','Familientreffen. Erzahlungen.','',225,'Diogenes Verlag','German','Paperback','Horror','1955-01-01',0.0),(186,'3257216416','Der Tod kommt schnell in Mexico. Erzahlungen.','',308,'Diogenes Verlag','German','Paperback','Horror','1984-01-01',0.0),(187,'3257233051','Veronika beschliebt zu sterben','',224,'Diogenes Verlag','German','Paperback','Fiction','1998-01-01',0.0),(188,'342311360X','Die Liebe in Den Zelten','',503,'Deutscher Taschenbuch Verlag (DTV)','German','Paperback','Fiction','1985-01-01',0.0),(189,'3423116714','Die Klone der Joanna May. Roman.','',324,'Deutscher Taschenbuch Verlag (DTV)','German','Paperback','Fiction','1989-01-01',0.0),(190,'3423241489','Ist mein Hintern wirklich so dick? Tagebuch einer empfindsamen Frau.','',239,'Deutscher Taschenbuch Verlag (DTV)','German','Paperback','Chick Lit','1997-07-01',0.0),(191,'3426605686','Haifischfrauen.','',657,'Knaur','German','Paperback','Historical Fiction','1994-01-01',0.0),(192,'3453212150','Die Cappuccino- Jahre. Aus dem Tagebuch des Adrian Mole.','',413,'Heyne','German','Paperback','Fiction','1999-01-01',0.0),(193,'3462021095','Schwarzer Tee mit drei Stuck Zucker','',139,'Kiepenheuer & Witsch','German','Hardcover','Contemporary','1991-01-01',0.0),(194,'3492045642','Querschusse. Downsize This!','',314,'Piper','German','Paperback','Nonfiction','1996-01-01',0.0),(195,'3498020862','Die Korrekturen.','',784,'Rowohlt Taschenbuch Verlag','German','Hardcover','Fiction','2001-01-01',0.0),(196,'3499110695','Neun Erzahlungen.','',159,'Rowohlt Taschenbuch Verlag','German','Paperback','Short Stories','1953-04-06',0.0),(197,'3499151502','Hebt den Dachbalken hoch, Zimmerleute / Seymour wird vorgestellt.','',160,'Rowohlt Taschenbuch Verlag','German','Pocket Book','Fiction','1995-01-01',0.0),(198,'3518111000','Ulysses','',1014,'Suhrkamp','German','Paperback','Classics','1922-02-02',0.0),(200,'3570300099','Das Intimleben des Adrian Mole, 13 3/4 Jahre. cbt. ( Ab 14 J.).','',409,'Bertelsmann Jugendbuch Verlag','German','Paperback','Fiction','1982-01-01',0.0),(201,'3596292646','Das Buch der lacherlichen Liebe.','',280,'Fischer Verlag','German','Paperback','Fiction','1970-01-01',0.0),(202,'0060977493','The God of Small Things','',321,'Harper Perennial','English','Paperback','Fiction','1997-04-01',0.0),(203,'0312872682','The James Dean Affair: A Neil Gulliver &amp; Stevie Marriner Novel','',320,'Forge','English','Hardcover','Fiction','1957-08-13',0.0),(204,'0316602906','The Big Bad Wolf: A Novel','',390,'Little, Brown and Company','English','Hardcover','Mystery','2003-10-13',0.0),(205,'0316693006','Four Blind Mice','1st',387,'Little, Brown and Company','English','Hardcover','Mystery','2002-11-18',0.0),(206,'0345311396','Private Screening','First Edition',441,'Ballantine Books','English','Mass Market Paperback','Mystery','1986-07-12',0.0),(207,'0345378490','Congo','',316,'Ballantine Books','English','Mass Market Paperback','Fiction','1980-01-01',0.0),(208,'0345404793','Protect and Defend','',608,'Ballantine Books','English','Mass Market Paperback','Fiction','2000-12-12',0.0),(209,'0345433173','The Tall Pine Polka','First Edition',448,'Ballantine Books','English','Hardcover','Fiction','1999-08-31',0.0),(210,'0375400117','Memoirs of a Geisha','First Edition',428,'Knopf','English','Hardcover','Fiction','1997-09-23',0.0),(211,'0375705856','Plainsong','4th',301,'Vintage','English','Paperback','Fiction','1999-10-04',0.0),(212,'0380717018','Body of Evidence','First Edition',401,'Avon Books','English','Mass Market Paperback','Mystery','1992-04-01',0.0),(213,'0380718332','All That Remains ','',406,'Avon Books','English','Mass Market Paperback','Mystery','1992-06-11',0.0),(214,'0380754509','The Case of the Lost Look-Alike (An Avon Camelot Book)','',104,'Avon Books','English','Paperback','Fiction','1988-01-01',0.0),(215,'038076654X','Petals on the River','',554,'William Morrow Paperbacks','English','Paperback','Romance','1997-01-01',0.0),(216,'0380807866','The Elusive Flame','Reissue',488,'Avon Books','English','Mass Market Paperback','Romance','1998-11-01',0.0),(217,'0385316895','Legacy of Silence','',352,'Delacorte Press','English','Hardcover','Fiction','1998-04-13',0.0),(218,'0385497466','The Brethren','1st',366,'Doubleday','English','Hardcover','Fiction','2000-02-01',0.0),(219,'0385339658','The King of Torts','',276,'Anchor','English','Paperback','Fiction','2003-02-04',0.0),(220,'0385509456','The Curious Incident of the Dog in the Night-Time : A Novel','First Edition',226,'Doubleday','English','Hardcover','Fiction','2003-06-17',0.0),(221,'0385511612','Bleachers','1st',163,'Doubleday','English','Hardcover','Fiction','2003-09-09',0.0),(222,'0385730586','Sisterhood of the Traveling Pants','',294,'Ember','English','Paperback','Fiction','2001-09-11',1.5),(223,'0425164403','Only Love (Magical Love)','',335,'Berkley','English','Paperback','Romance','1997-01-01',0.0),(224,'0440234964','All or Nothing: A Novel','',368,'Island Books','English','Mass Market Paperback','Fiction','1999-01-01',0.0),(225,'0446605484','Roses Are Red (Alex Cross Novels)','1',416,'Grand Central Publishing','English','Mass Market Paperback','Mystery','2001-10-01',0.0),(226,'0446610399','The Rescue','',420,'Warner Books','English','Mass Market Paperback','Romance','2000-01-01',0.0),(227,'0449006522','The Manhattan Hunt Club: A Novel','Reprint',384,'Ballantine Books','English','Mass Market Paperback','Horror','2001-07-31',0.0),(228,'0449911004','Patty Jane\'s House of Curl (Ballantine Reader\'s Circle)','Reprint',320,'Ballantine Books','English','Paperback','Fiction','1995-01-01',0.0),(229,'0451162072','Pet Sematary','Reissue',410,'Signet','English','Mass Market Paperback','Horror','1983-11-14',0.0),(230,'0451186648','Silent Snow','',416,'Signet','English','Paperback','Mystery','1999-08-01',0.0),(231,'0452282152','Girl with a Pearl Earring','Reissue',233,'Penguin Books','English','Paperback','Historical Fiction','1999-01-01',0.0),(232,'051513290X','Summer of Storms','First Edition',400,'Jove','English','Mass Market Paperback','Mystery','2001-01-01',0.0),(233,'0553580388','The Patient','Reprint',448,'Bantam','English','Mass Market Paperback','Fiction','2000-01-01',0.0),(234,'0590598848','Demona\'s Revenge (Gargoyles, No. 2)','First Edition',59,'Scholastic Paperbacks','English','Paperback','Childrens','1995-01-01',0.0),(235,'5090629719','Clifford\'s Sports Day','',32,'Cartwheel','English','Paperback','Childrens','1996-03-01',0.0),(236,'0671023616','Postmortem','Reprint',342,'Pocket Books','English','Mass Market Paperback','Mystery','1990-01-09',0.0),(237,'0671027387','Deception Point','',556,'Pocket Books','English','Mass Market Paperback','Fiction','2001-01-01',0.0),(238,'0684848783','Tis: A Memoir','Scribner 1999',367,'Scribner','English','Hardcover','Nonfiction','1999-09-21',0.0),(239,'0743486226','Angels & Demons','Large Print',592,'Atria Books','English','Hardcover','Fiction','2000-05-01',0.0),(240,'0786863986','A Monk Swimming','Illustrated',290,'Hyperion','English','Hardcover','Nonfiction','1998-01-01',0.0),(242,'0804117934','The Silent Cry (William Monk Novels (Paperback))','',368,'Ivy Books','English','Mass Market Paperback','Mystery','1997-06-12',0.0),(243,'140003180X','The Kalahari Typing School for Men (No. 1 Ladies\' Detective Agency)','Reprint',191,'Anchor','English','Paperback','Mystery','2003-04-29',0.0),(244,'155874262X','Chicken Soup for the Soul','',308,'Health Communications, Inc.','English','Hardcover','Nonfiction','1993-01-01',0.0),(245,'0060987103','Wicked: The Life and Times of the Wicked Witch of the West','',406,'ReganBooks','English','Paperback','Fantasy','1995-09-29',0.0),(246,'0151008116','Life of Pi','First Edition',319,'Harcourt','English','Hardcover','Fiction','2002-06-04',0.0),(247,'0375704965','A Judgement in Stone','Reprint',188,'Vintage Crime/Black Lizard','English','Paperback','Mystery','1977-05-02',0.0),(248,'0452285216','Lies and the Lying Liars Who Tell Them: A Fair and Balanced Look at the Right','',421,'Plume','English','Paperback','Nonfiction','2003-01-01',0.0),(249,'0804111359','Secret History','1st US Ballantine Books Ed',503,'Ballantine Books','English','Mass Market Paperback','Fiction','1992-09-16',0.0),(250,'1558744150','Chicken Soup for the Woman\'s Soul: 101 Stories to Open the Hearts and Rekindle the Spirits of Women','First Edition',351,'Health Communications, Inc.','English','Paperback','Nonfiction','1996-10-01',0.0),(252,'0316782505','The Weight of Water','Reprint',279,'Little, Brown and Company','English','Paperback','Fiction','1997-01-01',0.0),(253,'006102063X','Moving Pictures (Discworld Novels (Paperback))','Reissue',337,'Harper','English','Mass Market Paperback','Fantasy','1990-01-01',3.0),(254,'0060013117','Night Watch','1st',338,'Harper','English','Hardcover','Fantasy','2002-11-05',0.0),(255,'0060199563','Thief of Time','First Edition',324,'Harper','English','Hardcover','Fantasy','2001-04-24',0.0),(256,'006052779X','Charlotte\'s Web','',184,'HarperCollins','English','Paperback','Classics','1952-10-15',0.0),(257,'0060563079','Peter Pan: The Original Story (Peter Pan)','',240,'HarperFestival','English','Paperback','Classics','1911-12-27',0.0),(258,'0060809027','My Friend Flicka','',300,'Harper Paperbacks','English','Paperback','Classics','1941-01-01',0.0),(259,'0061040967','he Last Hero: A Discworld Fable','First Edition',160,'Harper','English','Hardcover','Fantasy','2001-10-16',0.0),(260,'0061050474','Jingo','First American Edition',323,'Harper Voyager','English','Hardcover','Fantasy','1997-01-01',0.0),(261,'0061052515','Maskerade','',227,'Harper','English','Hardcover','Fantasy','1995-01-01',0.0),(262,'0061052523','Interesting Times: A Novel of Discworld','',295,'Harper Prism','English','Hardcover','Fantasy','1994-01-01',0.0),(263,'0064472264','On the Bright Side, I\'m Now the Girlfriend of a Sex God: Further Confessions of Georgia Nicolson','First Edition',243,'HarperTeen','English','Paperback','Young Adult','2000-06-29',0.0),(264,'0140620664','Mansfield Park','',479,'Penguin','English','Hardcover','Classics','1814-07-01',0.0),(265,'0312148267','The Wind in the Willows','1st St. Martin\'s Griffin Ed',272,'St. Martin\'s Griffin','English','Paperback','Classics','2008-10-08',0.0),(266,'0312156960','The Winter King: A Novel of Arthur (The Warlord Chronicles: I)','Reprint',431,'St. Martin\'s Griffin','English','Paperback','Historical Fiction','1995-01-01',0.0),(267,'0312890044','Moonheart (Newford)','REV',447,'Orb Books','English','Paperback','Fantasy','1984-10-01',0.0),(268,'034543191X','The King of Elfland\'s Daughter','Reprint',240,'Del Rey','English','Paperback','Fantasy','1924-01-01',0.0),(269,'0373836023','Powder and Patch','',282,'Harlequin','English','Paperback','Romance','1923-02-01',0.0),(270,'0375751513','The Picture of Dorian Gray','',266,'Random House: Modern Library','English','Paperback','Classics','1890-06-01',0.0),(271,'0375801677','The Iron Giant','Anniversary',79,'Knopf Books for Young Readers','English','Hardcover','Childrens','1968-01-01',0.0),(272,'0375814248','James and the Giant Peach','Revised',176,'Knopf Books for Young Readers','English','Hardcover','Childrens','1961-11-01',0.0),(273,'0375823352','The Amber Spyglass (His Dark Materials, Book 3)','Reprint',518,'Knopf Books for Young Readers','English','Paperback','Fantasy','2000-10-10',0.0),(274,'037582345X','The Golden Compass (His Dark Materials, Book 1)','Reissue',399,'Knopf Books for Young Readers','English','Paperback','Fantasy','1995-07-01',0.0),(275,'0375823468','The Subtle Knife (His Dark Materials, Book 2)','Reissue',326,'Knopf Books for Young Readers','English','Paperback','Fantasy','1997-07-22',0.0),(276,'0380730448','The Adrian Mole Diaries : The Secret Diary of Adrian Mole, Aged 13 3/4 : The Growing Pains of Adrian Mole','',293,'Harper Perennial','English','Paperback','Fiction','1985-08-02',0.0),(277,'0380973839','The Martian Chronicles','',288,'William Morrow','English','Hardcover','Science Fiction','1950-05-04',0.0),(278,'0385327773','The Great God Pan','',150,'Wendy Lamb Books','English','Hardcover','Fantasy','2003-05-13',0.0),(279,'0394586239','Possession: A Romance','First Edition',555,'Random House','English','Hardcover','Fiction','1990-09-17',0.0),(280,'0439510112','Born Confused','Reprint',512,'Scholastic Paperbacks','English','Paperback','Young Adult','2002-10-01',0.0),(281,'0440241413','Confessions of a Shopaholic','Reprint',368,'Dell','English','Mass Market Paperback','Chick Lit','2000-01-01',0.0),(282,'0451409256','Making Minty Malone','',144,'Berkley','English','Mass Market Paperback','Chick Lit','1999-01-01',0.0),(283,'0451523415','Little Women','',451,'New American Library','English','Mass Market Paperback','Classics','1868-01-01',0.0),(284,'0451526279','Emma (Signet Classics (Paperback))','Revised',414,'Signet Classics','English','Paperback','Classics','1815-12-23',0.0),(285,'0451526341','Animal Farm','50th Anniversary',128,'Signet Classics','English','Mass Market Paperback','Classics','1945-08-17',0.0),(286,'0486415864','Great Expectations (Dover Thrift Editions)','Unabridged',380,'Dover Publications','English','Paperback','Classics','1860-12-01',0.0),(287,'0553280589','Eva Luna','Reprint',307,'Bantam','English','Mass Market Paperback','Fiction','1987-01-01',0.0),(288,'0571197639','Poisonwood Bible Edition Uk','',546,'Faber & Faber','English','Paperback','Fiction','1998-09-24',0.0),(289,'0670035262','The Green Man : Tales from the Mythic Forest','1st',388,'Viking','English','Hardcover','Fantasy','2002-05-27',0.0),(290,'0679423079','Nicholas Nickleby (Everyman\'s Library)','Illustrated',834,'Everyman\'s Library','English','Hardcover','Classics','1839-01-01',0.0),(291,'0679751343','Angels and Insects','Reprint',352,'Vintage','English','Paperback','Fiction','1992-10-19',0.0),(292,'0684833395','Catch-22','',453,'Simon & Schuster','English','Paperback','Classics','1961-11-10',0.0),(293,'0743245024','The Forsyte Saga : The Man of Property and In Chancery','English Language',878,'Scribner Paperback Fiction','English','Paperback','Classics','2022-05-01',0.0),(294,'0749748001','The Enchanted Wood','',213,'Egmont Childrens Books','English','Paperback','Fantasy','1939-05-01',0.0),(295,'0749748028','The Folk of the Faraway Tree','',182,'Egmont Childrens Books','English','Paperback','Fantasy','1946-01-01',0.0),(296,'0963094424','Angels and Visitations: A Miscellany','First Edition',168,'Dreamhaven Books','English','Hardcover','Fantasy','1989-04-01',0.0),(297,'1401201172','The League of Extraordinary Gentlemen','First Edition',224,'WildStorm','English','Hardcover','Comics','2003-12-01',0.0),(298,'1563892278','The Sandman, Vol. 1: Preludes & Nocturnes','',240,'DC Comics: Vertigo','English','Hardcover','Comics','1988-01-01',0.0);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `format`
--

DROP TABLE IF EXISTS `format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `format` (
  `format_name` varchar(50) NOT NULL,
  `format_description` text,
  PRIMARY KEY (`format_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `format`
--

LOCK TABLES `format` WRITE;
/*!40000 ALTER TABLE `format` DISABLE KEYS */;
INSERT INTO `format` VALUES ('Audio Cassette','A type of cassette which can store music and sounds.'),('Flexibound','The cover is made with a flexible card stock, rather than a rigid binding board, meaning that the end result is a lightweight book with a flexible cover.'),('Hardcover','One bound with rigid protective covers (typically of binder\'s board or heavy paperboard covered with buckram or other cloth, heavy paper, or occasionally leather).'),('Limitation Leather','A cloth with different leather grains.'),('Loose Leaf','A piece of paper of any kind that is not bound in place, or available on a continuous roll, and may be punched and organized as ring-bound (in a ring binder) or disc-bound.'),('Mass Market Paperback','Can be defined as smaller, less durable paperback books with a thick paper or paperboard cover.'),('Paperback','A softcover board with a thick paper or paperboard cover. '),('Pocket Book','A small especially paperback book that can be carried in the pocket');
/*!40000 ALTER TABLE `format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `genre_type` varchar(30) NOT NULL,
  `genre_description` text,
  PRIMARY KEY (`genre_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES ('Animals','Animals are multicellular, eukaryotic organisms of the kingdom Animalia (also called Metazoa).'),('Audio Book','An audiobook is a recording of text. Audiobooks are available in a variety of lengths and formats, most popularly through digital download, which allows people to listen on any smart device.'),('Biography','Biography is a non-fictional account of a person\'s life. Biographies are written by an author who is not the subject/focus of the book.'),('Business','A business (also known as enterprise or firm) is an organization engaged in the trade of goods, services, or both to consumers. '),('Chick Lit','Chick lit is genre fiction which addresses issues of modern womanhood, often humorously and lightheartedly.'),('Childrens','Children\'s literature is for readers and listeners up to about age 12. It is often illustrated. '),('Classics','A classic stands the test of time. The work is usually considered to be a representation of the period in which it was written; and the work merits lasting recognition. In other words, if the book was published in the recent past, the work is not a classic.'),('Comics','A comic book or comicbook, also called comic magazine or simply comic, is a publication that consists of comic art in the form of sequential juxtaposed panels that represent individual scenes.'),('Contemporary','Literature that largely takes place in the present time.'),('Cookbooks','Cookbooks contain a collection of recipes, techniques, and tricks of the trade or else focus on the exploration of food, cooking, and culture of food. '),('Crime','The crime genre includes the broad selection of books on criminals and the court system, but the most common focus is investigations and sleuthing.'),('Cultural','Cultural refers to books that depict a place or time and its culture.'),('Fantasy','Fantasy is a genre that uses magic and other supernatural forms as a primary element of plot, theme, and/or setting. '),('Fiction','Fiction is the telling of stories which are not real. More specifically, fiction is an imaginative form of narrative, one of the four basic rhetorical modes. '),('Health','Health refers to a person\'s mental or physical condition.'),('Historical Fiction','Historical fiction presents a story set in the past, often during a significant time period. In historical fiction, the time period is an important part of the setting and often of the story itself.'),('History','History is the discovery, collection, organization, and presentation of information about past events. '),('Horror','Horror fiction is fiction in any medium intended to scare, unsettle, or horrify the audience.'),('Humor','A humor novel is usually a work of fiction in which the writer seeks to amuse the reader, sometimes with subtlety and as part of a carefully woven narrative, sometimes above all other considerations.'),('Italy','Books set in Italy'),('Memoir','Memoir is any nonfiction narrative writing based on the author\'s personal memories.'),('Mystery','The mystery genre is a genre of fiction that follows a crime (like a murder or a disappearance) from the moment it is committed to the moment it is solved. '),('Nonfiction','Nonfiction is an account or representation of a subject which is presented as fact. This presentation may be accurate or not; that is, it can give either a true or a false account of the subject in question. However, it is generally assumed that the authors of such accounts believe them to be truthful at the time of their composition. '),('Novels','A novel is a long prose narrative that usually describes fictional characters and events in the form of a sequential story'),('Philosophy','Philosophy is the study of general problems concerning matters such as existence, knowledge, truth, beauty, justice, validity, mind, and language.'),('Politics','Politics is a process by which groups of people make collective decisions. The term is generally applied to the art or science of running governmental or state affairs. '),('Regency','Regency literature is generally set during the period of the English Regency or early 19th century. Rather than simply being versions of contemporary stories transported to a historical setting, Regency novels are a distinct genre with their own plot and stylistic conventions that derive from the works of Jane Austen and Georgette Heyer, and from the fiction genre known as the novel of manners. '),('Religion','Religion is a cultural system that establishes symbols that relate humanity to spirituality and moral values.'),('Romance','Romance is a literary genre developed in Western culture which focuses on the romantic relationship between two or more people'),('Science','Science is the effort to discover, and increase human understanding of how the physical world works.'),('Science Fiction','Science fiction is a broad genre of fiction that often involves speculations based on current or future science or technology. '),('Short Stories','A short story is a short work of prose fiction. It may be in any genre of fiction, and the exact definition of \"short\"\" will often depend on the genre.\"'),('Spirituality','Spirituality may refer to almost any kind of meaningful activity, personal growth, or blissful experience.Traditionally, spirituality refers to a process of re-formation of the personality but there is no precise definition of spirituality.'),('Thriller','Thrillers are characterized by fast pacing, frequent action, and resourceful heroes who must thwart the plans of more-powerful and better-equipped villains.'),('Travel','Travel writing is often associated with tourism, and includes works of an ephemeral nature such as guide books and reviews, with the intent being to educate the reader about the destination, provide helpful advice for those visiting the destination, and inspire readers to travel to the destination. '),('True Crime','True crime is a non-fiction literary genre in which the author examines an actual crime and details the actions of real people. '),('Westerns','Westerns are devoted to telling stories set primarily in the latter half of the 19th century in the American Old West, but there are also a number of works about Western-type characters in contemporary settings.'),('Young Adult','Young-adult fiction (often abbreviated as YA) is fiction written for, published for, or marketed to adolescents and young adults, roughly ages 13 to 18.');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language` (
  `language_name` varchar(30) NOT NULL,
  `language_description` text,
  PRIMARY KEY (`language_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES ('Arabic','Arabic is a Semitic language spoken primarily across the Arab world'),('Chinese','Chineses is a group of languages spoken natively by the ethnic Han Chinese majority and many minority ethnic groups in Greater China.'),('Dutch','Dutch is a West Germanic language spoken by about 25 million people as a first language and 5 million as a second language. It is the third most widely spoken Germanic language, after its close relatives English and German.'),('English','English is a West Germanic language in the Indo-European language family, whose speakers, called Anglophones, originated in early medieval England.'),('French','French is a Romance language of the Indo-European family. It descended from the Vulgar Latin of the Roman Empire, as did all Romance languages.'),('German','German is a West Germanic language mainly spoken in Western Europe and Central Europe. It is the most widely spoken and official or co-official language in Germany, Austria, Switzerland, Liechtenstein, and the Italian province of South Tyrol.'),('Hindi','Hindi is an Indo-Aryan language spoken chiefly in North India, and serves as the lingua franca of the Hindi Belt region encompassing parts of northern, central, eastern, and western India.'),('Italian','Italian is an official language in Italy, San Marino, Switzerland (Ticino and the Grisons), and is the primary language of Vatican City. '),('Japanese','Japanese is the principal language of the Japonic language family spoken by the Japanese people.'),('Korean','Korean is the official and national language of both South Korea and North Korea'),('Portuguese','Portuguese is an official language of Portugal, Brazil, Cape Verde, Angola, Mozambique, Guinea-Bissau and Sao Tome and Principe, while having co-official language status in East Timor, Equatorial Guinea, and Macau.'),('Russian','Russian is the native language of the Russians and belongs to the Indo-European language family.'),('Spanish','Spanish, or Castilian, is a Romance language of the Indo-European language family that evolved from the Vulgar Latin spoken on the Iberian Peninsula of Europe. ');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nationality`
--

DROP TABLE IF EXISTS `nationality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nationality` (
  `nationality_name` varchar(30) NOT NULL,
  PRIMARY KEY (`nationality_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nationality`
--

LOCK TABLES `nationality` WRITE;
/*!40000 ALTER TABLE `nationality` DISABLE KEYS */;
INSERT INTO `nationality` VALUES ('American'),('Australian'),('Brazilian'),('British'),('Canadian'),('Chilean'),('Chinese'),('Colombian'),('Danish'),('Dutch'),('English'),('French'),('German'),('Indian'),('Irish'),('Italian'),('Japanese'),('Korean'),('Latino'),('Mexican'),('Polish'),('Russian'),('Scottish'),('Spanish'),('Sri Lankan'),('Welsh');
/*!40000 ALTER TABLE `nationality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publish`
--

DROP TABLE IF EXISTS `publish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publish` (
  `book_id` int NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `published_date` date NOT NULL,
  PRIMARY KEY (`book_id`,`publisher`),
  KEY `publisher` (`publisher`),
  CONSTRAINT `publish_ibfk_1` FOREIGN KEY (`publisher`) REFERENCES `publisher` (`publisher_name`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `publish_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publish`
--

LOCK TABLES `publish` WRITE;
/*!40000 ALTER TABLE `publish` DISABLE KEYS */;
INSERT INTO `publish` VALUES (0,'Oxford University Press','2002-07-25'),(1,'Harper Perennial','2003-12-02'),(2,'Penguin Books','2004-01-01'),(3,'Atria Books','2019-01-09'),(4,'W W Norton & Co Inc','1999-01-01'),(5,'Penguin Books','2006-09-21'),(6,'Berkley','2000-09-01'),(7,'Dedalus Limited','2008-10-20'),(8,'Random House','1996-08-20'),(9,'Scribner','2002-01-29'),(10,'Emblem Editions','1997-10-11'),(11,'Citadel','2000-08-01'),(12,'House of Anansi Press','2004-04-01'),(14,'HCI','1998-10-01'),(16,'Kensington Pub Corp','1999-02-01'),(17,'Black Belt Press','1994-01-01'),(18,'Dell','1999-12-28'),(19,'Longman','1988-09-01'),(20,'Three Rivers Press','1999-03-23'),(22,'Cypress House','2003-03-31'),(23,'HarperEntertainment','2000-04-05'),(24,'Scholastic Paperbacks','1999-01-01'),(25,'Aladdin','1998-07-01'),(26,'Too Far Pub','2004-01-01'),(27,'Ballantine Books','1997-09-28'),(28,'Ballantine Books','2000-10-24'),(29,'Scribner','1996-06-03'),(30,'Random House Trade Paperbacks','2003-06-10'),(31,'Berkley Trade','1998-05-01'),(32,'Lubbe','2002-06-01'),(34,'Goldmann','1991-08-01'),(35,'Goldmann','2000-07-01'),(36,'Alfred A. Knopf','2000-09-24'),(37,'Grand Central Publishing','1988-10-11'),(38,'Ballantine Books','2002-03-26'),(39,'HarperCollins','1993-01-01'),(40,'Avon Books','1996-01-01'),(41,'Bantam Classics','1983-12-01'),(42,'Atria Books','1979-05-01'),(43,'HarperTorch','1995-01-01'),(44,'Bantam','2000-09-05'),(45,'Pocket Books','1994-05-01'),(46,'Bantam','2001-11-20'),(47,'Berkley','2002-10-01'),(48,'Berkley','2002-08-27'),(49,'Dell','1997-10-06'),(50,'Tom Doherty Assoc Llc','1999-01-01'),(51,'Living Books','2000-01-01'),(52,'Dell','1999-01-05'),(53,'Harper & Row Publishers','1986-05-03'),(54,'Harcourt','1982-11-28'),(56,'Harcourt Brace Jovanovich Publishers','1991-01-01'),(57,'Bantam Books','1992-04-01'),(58,'Speed Graphics','1993-10-01'),(59,'Sunflower Pub Co','2002-11-14'),(60,'Pocket Books','1986-08-01'),(61,'Laurel Leaf','1991-08-13'),(62,'Laurel Leaf','1995-05-16'),(64,'Ballantine Books','1978-01-01'),(65,'Random House','1980-01-01'),(66,'Berkley','1989-10-01'),(67,'Ivy Books','1990-04-28'),(68,'Wordsworth Books','1999-01-01'),(69,'St. Martin\'s Paperbacks','2000-08-15'),(70,'Wordsworth Editions','1993-01-01'),(71,'Authorhouse','2003-01-01'),(72,'William Morrow Paperbacks','2003-03-04'),(73,'Penguin Books','1983-07-28'),(74,'Ballantine Books','2003-07-01'),(75,'Signet','1952-01-01'),(76,'Rutledge Hill Press','1991-01-01'),(77,'Ace Books','2010-02-01'),(78,'Laurel Leaf','1988-11-12'),(79,'Ashland, OH, U.S.A. : Landoll, 1995','1995-01-01'),(80,'Knopf','2000-04-01'),(81,'Andrew Scott Pub','1999-05-01'),(82,'Atlantic Monthly Press','1994-01-07'),(84,'Gardners Books','2001-04-30'),(85,'Harper Perennial','1999-10-20'),(86,'HarperCollins','1994-05-01'),(87,'McGraw-Hill','2003-02-19'),(88,'Random House','2003-01-07'),(90,'Little, Brown and Company','1991-05-01'),(91,'Minotauro Ediciones Avd','2001-05-01'),(92,'Minotauro Ediciones Avd','2001-12-01'),(93,'Distribooks Inc','2001-01-01'),(94,'Random House','1994-01-13'),(95,'Pocket Books','1998-05-01'),(96,'St. Martin\'s Press','2001-05-01'),(97,'St. Martin\'s Press','2001-04-21'),(98,'Back Bay Books','2002-04-09'),(99,'Back Bay Books','2002-05-08'),(100,'Doubleday','1987-03-17'),(101,'Business Plus','2000-04-01'),(102,'Signet','2001-01-01'),(103,'Bantam','1995-07-01'),(104,'Fireside','1986-04-22'),(105,'Vintage','1995-08-29'),(107,'Hachette Books','2003-09-23'),(108,'Tusquets Editores S.A.','1995-01-01'),(109,'Star Trek','1992-11-01'),(110,'Pocket Books','1995-04-01'),(111,'Dell','1996-03-10'),(112,'St. Martin\'s Paperbacks','1994-10-15'),(113,'Grand Central Publishing','2000-08-01'),(114,'Grand Central Publishing','2003-05-01'),(115,'Grand Central Publishing','2003-04-01'),(116,'G.P. Putnam\'s Sons','2003-01-28'),(117,'Bantam','2004-03-02'),(118,'Pocket Star Books','2001-01-01'),(119,'Forge','2000-01-01'),(120,'Back Bay Books','2004-01-01'),(121,'Pocket Books','2002-12-01'),(123,'Avon Books','1990-01-01'),(124,'Grand Central Pub','1994-01-01'),(125,'Onyx','1996-03-01'),(126,'Pocket Books','2000-02-01'),(127,'Free Press','2003-09-15'),(128,'Thomas Nelson Inc','1992-01-01'),(129,'Berkley','2002-05-07'),(130,'Random House','1999-10-26'),(131,'Edicoes Asa','1998-05-01'),(132,'Signet','2002-02-01'),(133,'Perennial','1998-01-01'),(134,'Harper Paperbacks','1996-05-22'),(135,'HarperTorch','1992-12-01'),(136,'Pocket Books','2001-04-01'),(137,'Warner Books, Inc.','1994-12-01'),(139,'Anchor Books','2003-03-01'),(140,'W. W. Norton & Company','2001-07-17'),(141,'Arcadia Books','2000-01-01'),(142,'John Hunt Publishing (GB)','2004-03-10'),(143,'Fawcett','2002-08-01'),(144,'Onyx','2002-05-01'),(145,'Bantam','2002-06-25'),(147,'Editorial Edaf, S.L.','2001-01-01'),(148,'Avon Books','2002-07-30'),(149,'Signet','1959-08-01'),(150,'HarperCollins UK','1999-04-01'),(151,'Delta','2003-04-29'),(152,'Laurel Leaf','1986-10-01'),(153,'Love Spell','2002-05-03'),(154,'Penguin Canada','2006-07-25'),(155,'Roc','1993-09-01'),(156,'Tor Fantasy','2002-07-17'),(157,'Grand Central Publishing','1995-10-26'),(158,'Perennial Classic','1968-01-01'),(159,'Avon Books','2001-05-01'),(160,'Penguin Books','1995-12-01'),(161,'Warner Books','2000-10-24'),(162,'Pocket Books','1981-10-01'),(163,'Dial Press Trade Paperback','2003-01-13'),(164,'Mariner Books Classics','1995-09-21'),(165,'Signet','2002-09-03'),(166,'Picador','1997-12-18'),(167,'Dover Publications','1995-04-12'),(168,'Aladdin','1998-11-01'),(169,'Aladdin','2000-11-01'),(170,'Simon Pulse','1995-11-01'),(171,'Putnam','1994-02-09'),(172,'Thomas Nelson','2003-07-01'),(174,'Del Rey','1982-01-01'),(175,'Spectra','1984-06-01'),(176,'Reclam','2018-08-01'),(177,'Diogenes Verlag','1977-01-01'),(179,'Diogenes Verlag','2008-05-27'),(180,'Diogenes Verlag','1981-01-01'),(181,'Diogenes Verlag','2003-04-01'),(182,'Diogenes Verlag','1999-05-01'),(183,'Diogenes Verlag','2000-07-01'),(184,'Diogenes Verlag','1985-01-01'),(185,'Diogenes Verlag','1986-01-01'),(186,'Diogenes Verlag','1988-01-01'),(187,'Diogenes Verlag','2002-01-01'),(188,'Deutscher Taschenbuch Verlag (DTV)','1996-01-01'),(189,'Deutscher Taschenbuch Verlag (DTV)','1993-04-01'),(190,'Deutscher Taschenbuch Verlag (DTV)','1998-11-01'),(191,'Knaur','1994-01-01'),(192,'Heyne','2002-07-01'),(193,'Kiepenheuer & Witsch','1991-01-01'),(194,'Piper','2003-07-01'),(195,'Rowohlt Taschenbuch Verlag','2002-07-01'),(196,'Rowohlt Taschenbuch Verlag','1968-08-01'),(197,'Rowohlt Taschenbuch Verlag','1998-01-01'),(198,'Suhrkamp','1981-01-01'),(200,'Bertelsmann Jugendbuch Verlag','2002-01-01'),(201,'Fischer Verlag','2018-12-01'),(202,'Harper Perennial','1999-01-01'),(203,'Forge','2000-08-19'),(204,'Little, Brown and Company','2003-10-13'),(205,'Little, Brown and Company','2002-11-18'),(206,'Ballantine Books','1986-07-12'),(207,'Ballantine Books','1999-01-01'),(208,'Ballantine Books','2001-10-30'),(209,'Ballantine Books','1999-08-31'),(210,'Knopf','1997-09-23'),(211,'Vintage','2000-08-22'),(212,'Avon Books','1992-04-01'),(213,'Avon Books','1993-07-01'),(214,'Avon Books','1988-01-01'),(215,'William Morrow Paperbacks','1997-12-01'),(216,'Avon Books','2007-09-25'),(217,'Delacorte Press','1998-04-13'),(218,'Doubleday','2000-02-01'),(219,'Anchor','2005-12-27'),(220,'Doubleday','2003-06-17'),(221,'Doubleday','2003-09-09'),(222,'Ember','2011-01-01'),(223,'Berkley','1998-06-01'),(224,'Island Books','2000-09-12'),(225,'Grand Central Publishing','2001-10-01'),(226,'Warner Books','2001-08-01'),(227,'Ballantine Books','2002-04-28'),(228,'Ballantine Books','1996-09-03'),(229,'Signet','1984-11-01'),(230,'Signet','2000-09-01'),(231,'Penguin Books','2001-01-01'),(232,'Jove','2002-06-25'),(233,'Bantam','2001-07-31'),(234,'Scholastic Paperbacks','1995-01-01'),(235,'Cartwheel','1996-03-01'),(236,'Pocket Books','1998-04-01'),(237,'Pocket Books','2002-12-01'),(238,'Scribner','1999-09-21'),(239,'Atria Books','2003-07-28'),(240,'Hyperion','1998-05-27'),(242,'Ivy Books','1998-07-29'),(243,'Anchor','2004-02-01'),(244,'Health Communications, Inc.','1993-05-01'),(245,'ReganBooks','2000-01-01'),(246,'Harcourt','2002-06-04'),(247,'Vintage Crime/Black Lizard','2000-01-01'),(248,'Plume','2004-07-27'),(249,'Ballantine Books','1993-09-01'),(250,'Health Communications, Inc.','1996-10-01'),(252,'Little, Brown and Company','2001-03-01'),(253,'Harper','2002-02-01'),(254,'Harper','2002-11-05'),(255,'Harper','2001-04-24'),(256,'HarperCollins','2003-06-03'),(257,'HarperFestival','2003-11-01'),(258,'Harper Paperbacks','1988-02-17'),(259,'Harper','2001-10-16'),(260,'Harper Voyager','1998-05-19'),(261,'Harper','1997-09-12'),(262,'Harper Prism','1997-01-01'),(263,'HarperTeen','2006-04-11'),(264,'Penguin','1994-05-26'),(265,'St. Martin\'s Griffin','1996-10-15'),(266,'St. Martin\'s Griffin','1997-05-01'),(267,'Orb Books','1994-02-15'),(268,'Del Rey','1999-07-06'),(269,'Harlequin','2004-02-01'),(270,'Random House: Modern Library','2004-04-01'),(271,'Knopf Books for Young Readers','1999-05-18'),(272,'Knopf Books for Young Readers','2002-09-10'),(273,'Knopf Books for Young Readers','2002-09-10'),(274,'Knopf Books for Young Readers','2002-09-10'),(275,'Knopf Books for Young Readers','2002-09-10'),(276,'Harper Perennial','1997-09-01'),(277,'William Morrow','2006-01-01'),(278,'Wendy Lamb Books','2003-05-13'),(279,'Random House','1990-10-17'),(280,'Scholastic Paperbacks','2003-07-01'),(281,'Dell','2003-11-04'),(282,'Berkley','2000-07-01'),(283,'New American Library','1983-12-01'),(284,'Signet Classics','1996-04-01'),(285,'Signet Classics','1996-04-01'),(286,'Dover Publications','2001-08-01'),(287,'Bantam','1989-06-01'),(288,'Faber & Faber','1999-01-09'),(289,'Viking','2002-05-27'),(290,'Everyman\'s Library','1993-10-26'),(291,'Vintage','1994-03-29'),(292,'Simon & Schuster','2004-09-04'),(293,'Scribner Paperback Fiction','2002-09-03'),(294,'Egmont Childrens Books','2002-01-01'),(295,'Egmont Childrens Books','2002-01-01'),(296,'Dreamhaven Books','1993-01-01'),(297,'WildStorm','2003-12-01'),(298,'DC Comics: Vertigo','1998-12-01');
/*!40000 ALTER TABLE `publish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publisher`
--

DROP TABLE IF EXISTS `publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publisher` (
  `publisher_name` varchar(100) NOT NULL,
  PRIMARY KEY (`publisher_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publisher`
--

LOCK TABLES `publisher` WRITE;
/*!40000 ALTER TABLE `publisher` DISABLE KEYS */;
INSERT INTO `publisher` VALUES ('Ace Books'),('Aladdin'),('Alfred A. Knopf'),('Alianza Editorial'),('Anchor'),('Anchor Books'),('Andrew Scott Pub'),('Arcadia Books'),('Ashland, OH, U.S.A. : Landoll, 1995'),('Atlantic Monthly Press'),('Atria Books'),('Authorhouse'),('Avon Books'),('Back Bay Books'),('Baker Pub Group'),('Ballantine Books'),('Bantam'),('Bantam Books'),('Bantam Classics'),('Berkley'),('Berkley Trade'),('Bertelsmann Jugendbuch Verlag'),('Black Belt Press'),('Business Plus'),('Cartwheel'),('Chambers Harrap Publishers Ltd'),('Citadel'),('Cypress House'),('DC Comics: Vertigo'),('Dedalus Limited'),('Del Rey'),('Delacorte Press'),('Dell'),('Delta'),('Delta Systems Co Inc'),('Deutscher Taschenbuch Verlag (DTV)'),('Dial Press Trade Paperback'),('Diogenes Verlag'),('Distribooks Inc'),('Doubleday'),('Dover Publications'),('Dreamhaven Books'),('Edicoes Asa'),('Editorial Edaf, S.L.'),('Egmont Childrens Books'),('Ember'),('Emblem Editions'),('Everyman\'s Library'),('Faber & Faber'),('Fawcett'),('Fireside'),('Fischer Verlag'),('Flame'),('FOLIO'),('Forge'),('Free Press'),('G.P. Putnam\'s Sons'),('Gardners Books'),('Goldmann'),('Grand Central Pub'),('Grand Central Publishing'),('Hachette Books'),('Harcourt'),('Harcourt Brace Jovanovich Publishers'),('Harlequin'),('Harper'),('Harper & Row Publishers'),('Harper Paperbacks'),('Harper Perennial'),('Harper Prism'),('Harper Voyager'),('HarperCollins'),('HarperCollins UK'),('HarperEntertainment'),('HarperFestival'),('HarperTeen'),('HarperTorch'),('HCI'),('Health Communications, Inc.'),('Heyne'),('House of Anansi Press'),('Hyperion'),('Island Books'),('Ivy Books'),('John Hunt Publishing (GB)'),('Jove'),('Kensington Pub Corp'),('Kiepenheuer & Witsch'),('Knaur'),('Knopf'),('Knopf Books for Young Readers'),('Laurel Leaf'),('Little, Brown and Company'),('Living Books'),('Longman'),('Love Spell'),('Lubbe'),('Mariner Books Classics'),('McGraw-Hill'),('Minotauro Ediciones Avd'),('Mira Books'),('New American Library'),('Nova Audio Books'),('Onyx'),('Orb Books'),('Oxford University Press'),('Pan Macmillan'),('Penguin'),('Penguin Books'),('Penguin Canada'),('Perennial'),('Perennial Classic'),('Picador'),('Piper'),('Plume'),('Pocket Books'),('Pocket Star Books'),('Putnam'),('Random House'),('Random House Trade Paperbacks'),('Random House: Modern Library'),('Reclam'),('ReganBooks'),('Roc'),('Rowohlt Taschenbuch Verlag'),('Rutledge Hill Press'),('Ryland Peters & Small'),('Scholastic Paperbacks'),('Scribner'),('Scribner Paperback Fiction'),('Signet'),('Signet Classics'),('Simon & Schuster'),('Simon Pulse'),('Spectra'),('Speed Graphics'),('St. Martin\'s Griffin'),('St. Martin\'s Paperbacks'),('St. Martin\'s Press'),('Star Trek'),('Suhrkamp'),('Sunflower Pub Co'),('Thomas Nelson'),('Thomas Nelson Inc'),('Three Rivers Press'),('Tom Doherty Assoc Llc'),('Too Far Pub'),('Tor Fantasy'),('Tusquets Editores S.A.'),('Ullstein Tb'),('University of Nebraska Press'),('Viking'),('Vintage'),('Vintage Crime/Black Lizard'),('W W Norton & Co Inc'),('W. W. Norton & Company'),('Warner Books'),('Warner Books, Inc.'),('Wendy Lamb Books'),('WildStorm'),('William Morrow'),('William Morrow Paperbacks'),('Wordsworth Books'),('Wordsworth Editions');
/*!40000 ALTER TABLE `publisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL,
  `user_name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (0,NULL),(1,'user1'),(2,'user2'),(3,'user3'),(4,'user4'),(5,'user5'),(6,'user6'),(7,'user7'),(8,'user8'),(9,'user9'),(10,'user10'),(11,NULL),(44,NULL),(316,NULL),(888,NULL),(9999,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_rate_book`
--

DROP TABLE IF EXISTS `user_rate_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_rate_book` (
  `user_id` int DEFAULT NULL,
  `book_id` int DEFAULT NULL,
  `rating_value` int DEFAULT NULL,
  KEY `book_id` (`book_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_rate_book_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `user_rate_book_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_rate_book`
--

LOCK TABLES `user_rate_book` WRITE;
/*!40000 ALTER TABLE `user_rate_book` DISABLE KEYS */;
INSERT INTO `user_rate_book` VALUES (1,2,3),(2,78,3),(3,98,2),(2,77,4),(6,165,4),(2,111,2),(3,222,1),(8,2,5),(4,88,3),(9,69,4),(6,172,5),(1,222,2),(3,4,4),(7,253,3),(1,5,3),(0,1,5),(1,1,3),(9999,0,5),(1,6,4),(316,16,5);
/*!40000 ALTER TABLE `user_rate_book` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `bookrating_update_after_insert_rate` AFTER INSERT ON `user_rate_book` FOR EACH ROW BEGIN
CALL update_avg_rating(new.book_id);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `bookrating_update_after_update_rate` AFTER UPDATE ON `user_rate_book` FOR EACH ROW BEGIN
CALL update_avg_rating(new.book_id);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `bookrating_update_after_delete_rate` AFTER DELETE ON `user_rate_book` FOR EACH ROW BEGIN
CALL update_avg_rating(old.book_id);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'books'
--

--
-- Dumping routines for database 'books'
--
/*!50003 DROP PROCEDURE IF EXISTS `add_new_rating` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_new_rating`(user_id_para INT, book_id_para INT, rate_para INT)
BEGIN
IF rate_para > 5 OR rate_para < 0 THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Provided rating value should be an integer between 0 and 5';
END IF;
IF book_id_para NOT IN (SELECT book_id FROM book) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Provided book id is not valid';
END IF;
IF (user_id_para, book_id_para) IN (SELECT user_id, book_id FROM user_rate_book) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'User already rated this book';
END IF;
INSERT INTO user_rate_book VALUE(user_id_para, book_id_para, rate_para);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `add_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `add_user`(user_id_para INT)
BEGIN
DECLARE user_name_var VARCHAR(40) DEFAULT NULL;
INSERT INTO user VALUE(user_id_para, user_name_var);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `check_user_login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `check_user_login`(user_id_para INT)
BEGIN
SELECT user_id FROM user WHERE user_id = user_id_para;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `delete_exist_rating` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_exist_rating`(user_id_para INT, book_id_para INT)
BEGIN
-- check valid input 
IF user_id_para NOT IN (SELECT user_id FROM user_rate_book) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'There is no rating record for this user';
END IF;
IF (user_id_para, book_id_para) NOT IN (SELECT user_id, book_id FROM user_rate_book) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'There is no matched rating record';
END IF;

-- delete the rating value of the provided user and book
DELETE FROM user_rate_book WHERE user_id = user_id_para AND book_id = book_id_para;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `read_author_all` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `read_author_all`()
BEGIN
SELECT a.author_id, a.author_name, an.nationality, a.born, a.died, a.author_description 
FROM author a JOIN author_nationality an ON a.author_id = an.author_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `read_author_book` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `read_author_book`(author_name_para VARCHAR(50))
BEGIN

-- check valid input
IF author_name_para NOT IN (SELECT author_name FROM author) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Provided author name is not valid';
END IF;
SELECT b.book_id, b.ISBN_10, b.title AS book_title, a.author_name AS author, b.edition, b.page_count, 
b.publisher, b.language, b.format, b.genre, p.published_date, b.avg_rating 
FROM publish p JOIN book b JOIN author a JOIN author_write_book awb 
ON b.book_id = awb.book_id AND a.author_id = awb.author_id AND b.book_id = p.book_id AND b.publisher = p.publisher
WHERE author_name_para = a.author_name ORDER BY b.book_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `read_author_one` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `read_author_one`(author_id_para INT)
BEGIN

-- check valid input
IF author_id_para NOT IN (SELECT author_id FROM author) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Provided author id is not valid';
END IF;
SELECT a.author_id, a.author_name, an.nationality, a.born, a.died, a.author_description 
FROM author a JOIN author_nationality an ON a.author_id = an.author_id
WHERE author_id_para = a.author_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `read_books_rating` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `read_books_rating`()
SELECT b.book_id, b.ISBN_10, b.title AS book_title,   
b.publisher, b.language, b.genre, b.format, b.avg_rating
FROM book b; ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `read_book_all` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `read_book_all`()
BEGIN
SELECT b.book_id, b.ISBN_10, b.title AS book_title, a.author_name AS author, b.edition, b.page_count, 
b.publisher, b.language, b.format, b.genre, p.published_date, b.avg_rating 
FROM publish p JOIN book b JOIN author a JOIN author_write_book awb 
ON b.book_id = awb.book_id AND a.author_id = awb.author_id AND b.book_id = p.book_id AND b.publisher = p.publisher;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `read_book_one` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `read_book_one`(book_id_para INT)
BEGIN

-- check valid input
IF book_id_para NOT IN (SELECT book_id FROM book) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Provided book id is not valid';
END IF;
SELECT b.book_id, b.ISBN_10, b.title AS book_title, a.author_name AS author, b.edition, b.page_count, 
b.publisher, b.language, b.format, b.genre, p.published_date, b.avg_rating 
FROM publish p JOIN book b JOIN author a JOIN author_write_book awb 
ON b.book_id = awb.book_id AND a.author_id = awb.author_id AND b.book_id = p.book_id AND b.publisher = p.publisher
WHERE book_id_para = b.book_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `read_format_all` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `read_format_all`()
BEGIN
SELECT * FROM format;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `read_format_book` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `read_format_book`(format_para VARCHAR(50))
BEGIN
-- check valid input
IF format_para NOT IN (SELECT format_name FROM format) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Provided format is not valid';
END IF;
SELECT b.book_id, b.ISBN_10, b.title AS book_title, a.author_name AS author, b.edition, b.page_count, 
b.publisher, b.language, b.format, b.genre, p.published_date, b.avg_rating 
FROM publish p JOIN book b JOIN author a JOIN author_write_book awb 
ON b.book_id = awb.book_id AND a.author_id = awb.author_id AND b.book_id = p.book_id AND b.publisher = p.publisher
WHERE format_para = b.format ORDER BY b.book_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `read_genre_all` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `read_genre_all`()
BEGIN
SELECT * FROM genre;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `read_genre_book` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `read_genre_book`(genre_para VARCHAR(30))
BEGIN
-- check valid input
IF genre_para NOT IN (SELECT genre_type FROM genre) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Provided genre is not valid';
END IF;
SELECT b.book_id, b.ISBN_10, b.title AS book_title, a.author_name AS author, b.edition, b.page_count, 
b.publisher, b.language, b.format, b.genre, p.published_date, b.avg_rating 
FROM publish p JOIN book b JOIN author a JOIN author_write_book awb 
ON b.book_id = awb.book_id AND a.author_id = awb.author_id AND b.book_id = p.book_id AND b.publisher = p.publisher
WHERE genre_para = b.genre ORDER BY b.book_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `read_language_all` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `read_language_all`()
BEGIN
SELECT * FROM language;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `read_language_book` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `read_language_book`(lan_para VARCHAR(30))
BEGIN
-- check valid input
IF lan_para NOT IN (SELECT language_name FROM language) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Provided language is not valid';
END IF;
SELECT b.book_id, b.ISBN_10, b.title AS book_title, a.author_name AS author, b.edition, b.page_count, 
b.publisher, b.language, b.format, b.genre, p.published_date, b.avg_rating 
FROM publish p JOIN book b JOIN author a JOIN author_write_book awb 
ON b.book_id = awb.book_id AND a.author_id = awb.author_id AND b.book_id = p.book_id AND b.publisher = p.publisher
WHERE lan_para = b.language ORDER BY b.book_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `read_language_one` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `read_language_one`(lan_para VARCHAR(30))
BEGIN
-- check valid input
IF lan_para NOT IN (SELECT language_name FROM language) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Provided language is not valid';
END IF;

SELECT b.book_id, b.ISBN_10, b.title AS book_title, GROUP_CONCAT(a.author_name) AS author, b.publisher, b.page_count, 
 b.language, b.format, b.genre, b.avg_rating 
FROM book b JOIN author a JOIN author_write_book awb ON b.book_id = awb.book_id AND a.author_id = awb.author_id
WHERE b.language = lan_para
GROUP BY b.book_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `read_nationality_all` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `read_nationality_all`()
BEGIN
SELECT * FROM nationality;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `read_nat_author` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `read_nat_author`(nat_para VARCHAR(30))
BEGIN
-- check valid input
IF nat_para NOT IN (SELECT nationality_name FROM nationality) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Provided nationality is not valid';
END IF;
SELECT a.author_id, a.author_name, an.nationality, a.born, a.died, a.author_description 
FROM author a JOIN author_nationality an ON a.author_id = an.author_id
WHERE nat_para = an.nationality;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `read_nat_count` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `read_nat_count`(nat_count_para INT)
BEGIN
# check valid input
IF nat_count_para < 0 THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Please provide a positive number';
END IF;
SELECT a.author_name, a. born, a.died, a.author_description FROM author a JOIN author_nationality an 
ON a.author_id = an.author_id
GROUP BY a.author_id HAVING COUNT(an.nationality) = nat_count_para ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `read_publisher_all` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `read_publisher_all`()
BEGIN
SELECT * FROM publisher;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `read_publisher_one` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `read_publisher_one`(pub_para VARCHAR(100))
BEGIN
-- check valid input
IF pub_para NOT IN (SELECT * FROM publisher) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Provided publisher is not valid';
END IF;

SELECT b.publisher, b.book_id, b.ISBN_10, b.title AS book_title, GROUP_CONCAT(a.author_name) AS author, b.edition, b.page_count, 
 b.language, b.format, b.genre, pd.published_date, b.avg_rating 
FROM publish pd JOIN book b JOIN author a JOIN author_write_book awb ON b.book_id = awb.book_id AND a.author_id = awb.author_id
AND pd.publisher = b.publisher AND pd.book_id = b.book_id
WHERE b.publisher = pub_para
GROUP BY b.book_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `read_user_rating` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `read_user_rating`(user_id_para INT)
BEGIN
SELECT b.book_id, b.ISBN_10, b.title AS book_title,   
b.publisher, b.language, b.genre, b.avg_rating, ur.rating_value AS your_rating
FROM user_rate_book ur JOIN book b 
ON  ur.book_id = b.book_id
WHERE ur.user_id = user_id_para
ORDER BY b.book_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_avg_rating` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_avg_rating`(book_id_para INT)
BEGIN
DECLARE new_avg_rate DECIMAL(2,1) DEFAULT 0.0;

-- count the new average 
SELECT ROUND(AVG(urb.rating_value), 1) INTO new_avg_rate FROM user_rate_book urb 
WHERE urb.book_id = book_id_para GROUP BY book_id; 
-- Update book table
UPDATE book SET avg_rating = new_avg_rate WHERE book_id = book_id_para;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `update_exist_rating` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `update_exist_rating`(user_id_para INT, book_id_para INT, new_rate INT)
BEGIN
-- check valid input 
IF user_id_para NOT IN (SELECT user_id FROM user_rate_book) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'There is no rating record for this user';
END IF;
IF (user_id_para, book_id_para) NOT IN (SELECT user_id, book_id FROM user_rate_book) THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'There is no matched rating record';
END IF;
IF new_rate > 5 OR new_rate < 0 THEN
SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Provided rating value should be an integer between 0 and 5';
END IF;

-- update the user_rate_book table using the new rate value
UPDATE user_rate_book SET rating_value = new_rate WHERE user_id = user_id_para AND book_id = book_id_para;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-05 14:24:00
