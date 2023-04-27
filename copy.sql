-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: application
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `blogid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `title` tinytext,
  `description` longtext,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `Categories` enum('Python','Java','Html','CSS','Artificial Intelligence') DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`blogid`),
  KEY `name` (`name`),
  CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`name`) REFERENCES `details` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,'Mounika','Python','Python is a high-level, general-purpose programming language. Its design philosophy emphasizes code readability with the use of significant indentation via the off-side rule.\r\nPython is dynamically typed and garbage-collected. It supports multiple programming paradigms, including structured (particularly procedural), object-oriented and functional programming. It is often described as a \"batteries included\" language due to its comprehensive standard library.\r\nGuido van Rossum began working on Python in the late 1980s as a successor to the ABC programming language and first released it in 1991 as Python 0.9.0.[36] Python 2.0 was released in 2000. Python 3.0, released in 2008, was a major revision not completely backward-compatible with earlier versions. Python 2.7.18, released in 2020, was the last release of Python 2.\r\nPython consistently ranks as one of the most popular programming languages','2023-04-26 15:55:15','Python',NULL),(2,'Mounika','Java','Java is a high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible. It is a general-purpose programming language intended to let programmers write once, run anywhere (WORA),[17] meaning that compiled Java code can run on all platforms that support Java without the need to recompile.[18] Java applications are typically compiled to bytecode that can run on any Java virtual machine (JVM) regardless of the underlying computer architecture. The syntax of Java is similar to C and C++, but has fewer low-level facilities than either of them. The Java runtime provides dynamic capabilities (such as reflection and runtime code modification) that are typically not available in traditional compiled languages. As of 2019, Java was one of the most popular programming languages in use according to GitHub,[citation not found][19][20] particularly for client–server web applications, with a reported 9 million developers','2023-04-26 15:56:14','Java',NULL),(3,'Jyothi','Html','The HyperText Markup Language or HTML is the standard markup language for documents designed to be displayed in a web browser. It is often assisted by technologies such as Cascading Style Sheets (CSS) and scripting languages such as JavaScript.\r\nWeb browsers receive HTML documents from a web server or from local storage and render the documents into multimedia web pages. HTML describes the structure of a web page semantically and originally included cues for its appearance.','2023-04-26 16:04:23','Html',NULL),(4,'Jyothi','Artifical Intelligence','Artificial intelligence (AI) is intelligence—perceiving, synthesizing, and inferring information—demonstrated by machines, as opposed to intelligence displayed by non-human animals or by humans. Example tasks in which this is done include speech recognition, computer vision, translation between (natural) languages, as well as other mappings of inputs.\r\nAI applications include advanced web search engines (e.g., Google Search), recommendation systems (used by YouTube, Amazon, and Netflix), understanding human speech (such as Siri and Alexa), self-driving cars (e.g., Waymo), generative or creative tools (ChatGPT and AI art), automated decision-making, and competing at the highest level in strategic game systems (such as chess and Go).','2023-04-26 17:20:01','Html',NULL),(5,'Karuna','Python','Python is an open source programming language. It was made to be easy-to-read-and-understand and powerful. A Dutch programmer named Guido van Rossum made Python in 1991. He named it after the television program Monty Python\'s Flying Circus. Many Python examples and tutorials include jokes from the show.\r\nPython is an interpreted language. Interpreted languages do not need to be compiled to run. A program called an interpreter runs Python code on almost any kind of computer. This means that a programmer can change the code and quickly see the results. This also means Python is slower than a compiled language like C, because it is not turned into machine code ahead of time. Instead, this happens as the program is running.\r\nPython has become one of the most famous programming languages on the world as of late. It\'s utilized in all that from AI to building sites and programming testing. It tends to be utilized by engineers and non-designers the same.\r\nPython drew inspiration from other programming languages like C, C++, Java, Perl, and Lisp.','2023-04-27 10:31:21','Python',NULL),(8,'Karuna','Java','Java is a very popular programming language you can use to create a variety of software applications. It\'s an object-oriented language that was made to be simple to read, write, and learn. Millions of developers use Java to create everything from desktop programs to sophisticated web apps.','2023-04-27 15:04:14','Java',NULL),(9,'Karuna','CSS','Cascading Style Sheets (CSS) is a style sheet language used for describing the presentation of a document written in a markup language such as HTML or XML (including XML dialects such as SVG, MathML or XHTML). CSS is a cornerstone technology of the World Wide Web, alongside HTML and JavaScript.\r\nCSS is designed to enable the separation of content and presentation, including layout, colors, and fonts.This separation can improve content accessibility; provide more flexibility and control in the specification of presentation characteristics; enable multiple web pages to share formatting by specifying the relevant CSS in a separate .css file, which reduces complexity and repetition in the structural content; and enable the .css file to be cached to improve the page load speed between the pages that share the file and its formatting.\r\nSeparation of formatting and content also makes it feasible to present the same markup page in different styles for different rendering methods, such as on-screen, in print, by voice (via speech-based browser or screen reader), and on Braille-based tactile devices. CSS also has rules for alternate formatting if the content is accessed on a mobile device.','2023-04-27 15:06:44','CSS',NULL),(10,'Karuna','CSS','The name cascading comes from the specified priority scheme to determine which style rule applies if more than one rule matches a particular element. This cascading priority scheme is predictable.\r\n\r\nThe CSS specifications are maintained by the World Wide Web Consortium (W3C). Internet media type (MIME type) text/css is registered for use with CSS by RFC 2318 (March 1998). The W3C operates a free CSS validation service for CSS documents.[5]\r\n\r\nIn addition to HTML, other markup languages support the use of CSS including XHTML, plain XML, SVG, and XUL. CSS is also used in GTK widget toolkit.\r\n\r\nSyntax\r\nCSS has a simple syntax and uses a number of English keywords to specify the names of various style properties.\r\n\r\nA style sheet consists of a list of rules. Each rule or rule-set consists of one or more selectors, and a declaration block.','2023-04-27 15:08:20','CSS',NULL),(11,'Karuna','HTML','An HTML element is defined by a start tag, some content, and an end tag:\r\n<tagname> Content goes here... </tagname>\r\n\r\nThe HTML element is everything from the start tag to the end tag:\r\n<h1>My First Heading</h1>\r\n<p>My first paragraph.</p>\r\n\r\nThe purpose of a web browser (Chrome, Edge, Firefox, Safari) is to read HTML documents and display them correctly.\r\nA browser does not display the HTML tags, but uses them to determine how to display the document\r\nAll HTML documents must start with a document type declaration: <!DOCTYPE html>.\r\n\r\nThe HTML document itself begins with <html> and ends with </html>.\r\nThe visible part of the HTML document is between <body> and </body>','2023-04-27 15:11:37','Html',NULL);
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `details`
--

DROP TABLE IF EXISTS `details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `details` (
  `name` varchar(30) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `gender` char(10) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details`
--

LOCK TABLES `details` WRITE;
/*!40000 ALTER TABLE `details` DISABLE KEYS */;
INSERT INTO `details` VALUES ('Jyothi','206736@siddharthamahila.ac.in','456','female'),('Karuna','jyothikaruna5@gmail.com','456','female'),('Mounika','mounikaabburi135@gmail.com','123','female');
/*!40000 ALTER TABLE `details` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-27 16:55:32
