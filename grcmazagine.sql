-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2023 at 09:59 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grcmazagine`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertpayments`
--

CREATE TABLE `advertpayments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `adname` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adprice` mediumint(9) DEFAULT NULL,
  `addays` mediumint(9) DEFAULT NULL,
  `advestments_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `code` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertpayments`
--

INSERT INTO `advertpayments` (`id`, `adname`, `adprice`, `addays`, `advestments_id`, `user_id`, `code`, `message`, `status`, `created_at`, `updated_at`) VALUES
(3, 'normal', 2500, 30, 5, 6, 'T350764404365713', 'Verification successful', 'Active', '2023-04-24 12:08:41', '2023-04-24 13:12:03'),
(4, 'super', 4000, 45, 6, 6, 'T720149164217612', 'Verification successful', 'Active', '2023-04-25 12:22:50', '2023-04-25 12:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `advestments`
--

CREATE TABLE `advestments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` bigint(20) UNSIGNED DEFAULT NULL,
  `image` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `companyname` tinytext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advestments`
--

INSERT INTO `advestments` (`id`, `name`, `email`, `price`, `image`, `message`, `created_at`, `updated_at`, `companyname`) VALUES
(1, 'okpeku stephen', 'okpekuighodaro@gmail.com', 47784, 'https://res.cloudinary.com/the-morgans-consortium/image/upload/v1679063830/GRC_Magine_upload/wdwopnyuixk6amcsowt5.jpg', 'njqhehgeghw ewjghwejhew', '2023-03-17 13:37:10', '2023-03-17 13:37:10', 'Okpeku'),
(5, 'Stephen Lukeman', 'stephenjason41@gmail.com', NULL, 'https://res.cloudinary.com/the-morgans-consortium/image/upload/v1682341130/GRC_Magine_upload/pfgnxrnzb2vo8ydm5j35.png', 'ejhhjhehjre erjreiuuyhe nefoiuier fefioiouefuife fiooifhjfe', '2023-04-24 11:58:50', '2023-04-24 11:58:50', 'Lukeman'),
(6, 'Okpeku Ighodaro', 'okpekuighodaro@gmail.com', NULL, 'https://res.cloudinary.com/the-morgans-consortium/image/upload/v1682428322/GRC_Magine_upload/cynts2kprrwpihalsyfb.png', 'kdbrhthjbtr tkjbtrjbkjtrbk  trkbrkbkbtrjkntkr rtknlktbkr trkktrbbtrb  kjbkjbjhvhef deljlene ekhrbkbre', '2023-04-25 12:12:03', '2023-04-25 12:12:03', 'SquareSpace');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `articlename` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `articlebodyone` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `articlebodytwo` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `articlebodythree` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `articlebodyfour` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `articlebodyfive` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `articlecoatbody` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authors_id` bigint(20) UNSIGNED DEFAULT NULL,
  `dataup` date NOT NULL,
  `yearup` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `articlename`, `articlebodyone`, `articlebodytwo`, `articlebodythree`, `articlebodyfour`, `articlebodyfive`, `articlecoatbody`, `picture`, `authors_id`, `dataup`, `yearup`, `categories`, `created_at`, `updated_at`, `status`) VALUES
(1, '<strong>Introduction</strong>', '<div>\r\nI welcome everyone to the maiden edition of GRC and Financial \r\nCrime today- your number one magazine on Governance, Risk, Compliance and Financial Crime information in the financial services industry and other sectors published 3 times a year. \r\nFinancial crime has been a \r\npertinent issue in the global arena for a long time now. It does not matter what kind of economy you are operating in, authorities are constantly looking for new ways to track down and prevent financial crime, and criminals are always developing innovative tactics and developing new systems and controls in order to stay ahead of the authorities. \r\nWhen we talk of Governance, Risk and Compliance, or GRC for short, this refers to a company\'s coordinated strategy for managing the broad issues of corporate governance, enterprise risk management (ERM) and corporate compliance with regard to regulatory requirements. \r\nGovernance: Ensuring that organizational activities, like managing IT operations, are aligned in a way that supports the organization\'s business goals. \r\nRisk: Making sure that any risk (or opportunity) associated with organizational activities is identified and addressed in a way that supports the organization\'s business goals. \r\nCompliance: Making sure that organizational activities are operated in a way that meets the laws and regulations impacting those systems. \r\nIf you are involved in the finance or business sectors, it is critical that you understand what financial crime is and how it works and how it is linked with Governance, Risk and Compliance, or GRC \r\nThese crimes are almost always committed for the personal benefit of the criminal, and they involve an illegal conversion of ownership of the property that is involved. Financial crimes can occur in many different forms, and they happen all over the world. \r\nIt is very important for companies or firms to not only consider the regulations and rules, but also the risks pertinent to the business in the development of effective but proportionate compliance controls which are applied sensibly to the business rather than with a heavy hand. A good risk based documented compliance monitoring programme, supported by investment\r\n</div>', '<div>\r\n<strong>GRC & Financial Crime</strong>\r\nin training, will provide for a more resilient management of risk and our magazine will aim to explore the link between the two. \r\n<strong>Types of Financial Crime</strong>\r\nSome of the most common crimes facing the financial sector are money laundering, terrorist financing, fraud, tax evasion, embezzlement, forgery, counterfeiting, and identity theft. These crimes are committed every single day, and governments across the globe are constantly prosecuting financial criminals while searching for new ones. Most financial \r\ncrimes come about because companies were simply not able to assess their risks and to know the level of exposure their business has to financial crimes. \r\n</div>', '<div>\r\nIn an environment characterised by growing regulatory complexity and increased reputational risk, financial services firms are focusing like never before on implementing effective Governance, Risk and Compliance (GRC) programmes. GRC is essential to eliminating organisational weaknesses that can lead to significant operational risk, financial losses, regulatory censure or fines. Many financial institutions, however, face a shared challenge - bridging specific areas of risk or compliance into an enterprise-wide approach. \r\nI have a passion for transparency in the financial services institutions and our magazine will focus on GRC & Financial Crime prevention by exploring the different aspects of it. This magazine\'s aim is to unmask the hidden secrets that lie behind these financial crimes I know will help many readers prevent and or reduce financial crimes where ever you are. \r\nFinancial crimes are a serious threat to the security and integrity of the global financial system and our magazines aim is to provide clear and concise information based on complex analytical findings as well as educating our readers on how they can fight this war against financial crimes. \r\n</div>', '', '', '<div> \r\nThis magazine will explore the \r\ndifferent types of financial crimes, how they occur and give readers a complete picture of how these perpetrators think and how to detect and avoid these \r\ndifferent types of financial crimes. \r\n</div>', 'https://res.cloudinary.com/the-morgans-consortium/image/upload/v1670943471/Grc%20magazine/pexels-christina-morillo-1181605_h6xkxj.jpg', 1, '2022-12-05', '2022', 'Introduction', NULL, '2023-01-26 12:40:53', 1),
(2, '<strong>\n2020\'s Biggest Banking Challenges - & it\'s not just Covid-19\n</strong>\n', '<div> \r\n<p>\r\n2020, so far, is already turning out to be one of the most challenging years for the banking sector since the 2008 financial crisis. The recent Covid-19 outbreak is an ideal example of showing how challenges can pose vulnerabilities to the global banking system. While surely not at the same crisis level as a global pandemic, the banks must be aware of the crucial market challenges, which are not limited to the recent Coronavirus outbreak. \r\n</p>\r\n<br/>\r\n<br/>\r\n<strong>BigTech Rising as a Key Threat </strong>\r\n<p>\r\nBig tech\'s rising influence on the customer experience is one of the biggest risks to banks in 2020. When the customers purchase a table or a snow shovel on Amazon, their journey is the same. Banks conventionally use a product- focused approach to their customer journey, and this now outdated. To match the customer\'s expectation of true digital experience, the banks would need to adopt the Amazon model, or else they are going to be left behind. \r\nSaying that majority of the giant tech enterprises are seeking partnerships with financial institutions that will offer their regulatory knowledge and account and payment backbone in banking. This will enable the likes of Apple or Google to emphasize on the technology side of the things and customer experience. We cannot overlook the cross-jurisdictional regulatory requirements; hence experts recommend banks follow a regulatory rules engine to make sure compliance by design. \r\nrecommended to focus on compliance and regulations and pay immense attention to the integration of a sophisticated compliance rules engine. This takes customer data and validates it against the pertinent regulatory-specific queries that should be answered to ensure compliance with the prescribed regulations. Banks must recognize that account and customer journey needs compliance by design. \r\n\r\n</p>\r\n</div>', '<div>\r\n<strong>Digitalization of the banks</strong>\r\nToday\'s customers want an easy, quick, easy and uninterrupted digital journey. Hence the shift we are observing in the banking industry is the shift from pure manual, product-centric workflow processes to truly digital client \r\nexperience. The banking industry is adopting automated human-less workflows characterized by straight-through processing front and center. The only time a human can interact with this customer journey is by exclusion only. For regulatory purposes, banks must have that workflow line to demonstrate the audit trail that is implemented within a policy, this is where the \r\nworld is shifting. \r\nA customer-oriented technology ecosystem can offer that true digital client experience where each participant in the workflow can access a 360-degree view of the data, files and what\'s required to run that process while always ensuring compliance by design. \r\n\r\n</div>', '<div> \r\n<strong>Final Thoughts </strong>\r\nWhen the global crisis like Covid-19 hits the banking system, it exposes major cracks in the system, so banks must ensure that they are proactive enough and well- prepared to meet abrupt and coming market challenges. Banks must understand the marketplace so that they remain well-positioned to take on anything that is thrown into their way.\r\n</div>', '', '', '<div>\r\nFor digital challenger banks rising, it is recommended \r\nto focus on compliance and regulations and pay immense attention to the integration of a sophisticated compliance rules engine.\r\n</div>', 'https://res.cloudinary.com/the-morgans-consortium/image/upload/v1670938225/Grc%20magazine/2020_s_Biggest_Banking_Challenges_-_it_s_not_just_Covid-19_ucfe8w.jpg', 1, '2022-12-05', '2022', 'Banking', NULL, NULL, 1),
(3, '<strong>Key Cyber Threats \nfor Financial Accounting Firms</strong>\n\n', '<div>\r\nmany businesses in the accountancy sector overlook the risk of cyber-attacks, thinking that high-end or mainstream financial institutions are the hottest targets. However, the cyber risks that are most likely to hit bigger firms, also tend to affect the firms that seem least vulnerable or have the most power to avoid cyber- attacks. As per the CPA Mutual report, the public accounting firms are faced with an increased risk of cybercrimes. \r\nIn the Light of Stats \r\nBill Thompson, the CPA, RPLU, the president of CPA Mutual states that incidents due to careless and negligent contractors or employees are increasing fast, and are taken as the top threat to accounting firms\' security. Since their inception, CPA Mutual members experienced 26 cyber losses, which on average, cost around $30,000/- As per Ponemon Institute and ObservelT 2018 Report, the incidents arising due to negligent contractors or employees cost the companies $283,281, on average. The report took into consideration the responses of over 700 IT practitioners globally. Since 2016, the average number of cyber incidents, per business, has escalated from 10.5 to 13.4 percent, the report says. \r\n</div>', '<div> \r\n<strong>The Key Cyber Threats Factors & Solutions to Avoid Them</strong>\r\n<ul>\r\n<li> \r\n<strong>1. Human Error </strong>\r\n<p>\r\nHuman error, a leading cause of accounting mistakes, is also ranked as the top cybersecurity threat. As per Kaspersky\'s study, 90 percent of data breach cases are attributed to this factor. Having sensitive data on personal devices (due to BYOD- Bring your own device culture) puts financial firms at higher risk. \r\n</p>\r\n<strong>What is the Solution?</strong>\r\n<p>Form strict guidelines for limiting the use of personal devices while handling accounts and client\'s sensitive data</p>\r\n</li>\r\n\r\n<li>\r\n<strong> Phishing </strong>\r\n<p>\r\nPhishing emails manipulate the user to click on the attachment or link attached with malware or a virus. It takes only one successful attempt by hackers to access your firm\'s data. In other words, they only trick one of your employees and have access instantly. Phishing attacks may come in the form \r\nof a notice from a non-profit, a credit card alert, a shipment delay, and others. Cybercriminals use modern ways to legitimize their email. They might make references to places, things, and people in your life. For example, if you receive an email from the store you\'ve recently shopped at, mentioning promotional deals on the items you are likely to buy, you would likely open the email. \r\n</p>\r\n\r\n<strong>What is the Solution?</strong>\r\n<p>\r\nHave proper securities against phishing emails and train your personnel to form a security-first culture. Use anti- phishing tools that notify the personnel for any email that seems potentially infected. \r\n</p>\r\n</li>\r\n\r\n\r\n<li>\r\n<strong>3. Malware </strong>\r\n<p>\r\nMalware is injected by a phishing email link or attachment to an infected web page. You will be surprised to know that malware can stay dormant for several weeks or even months before it\'s stimulated to take over the system or steal information or take over systems. \r\n</p>\r\n<strong>What is the Solution? \r\n</strong>\r\n<p>\r\nHave malware specific security protocols in place to alert your IT personnel when any request comes via email. Managed Service providers have an alert system in place that notifies the systems engineers about any potentially fraudulent email. \r\nConclusion & Recommendations \r\nAs per October 13 story published in CNBC, cyber- attacks cost small-scale accounting firms $200,000, on average, while 60 percent of the businesses becoming the victim of cyber-attack, go out of the market within the next 6 months. To lessen the risk of cyberattacks, accounting firms must determine when cybercrime is happening by raising their awareness and understanding of the cybercrime mechanisms and tech tools to prevent those.\r\nTraining and education is the starting point towards the cyberattack-free environment in accounting firms.  \r\n</p>\r\n<li>\r\n\r\n\r\n</ul>\r\n\r\n\r\n</div>\r\n\r\n\r\n', '', '', '', '', 'https://res.cloudinary.com/the-morgans-consortium/image/upload/v1670938227/Grc%20magazine/Key-Cyber-Threats-for-Financial-Accounting-Firms_tedz3h.jpg', 1, '2022-12-05', '2022', 'cybersecurity', NULL, NULL, 1),
(4, 'Al (Artificial Intelligence) \nin Financial Services Industries \n', '<div> \r\n<p> \r\nOne of the recent studies, supported by Invesco and EY, affirms that Al is rapidly changing the way financial institutions are geniting and using the valuable data insights, which in turn, accelerates new kinds of business model innovation, reforms workforces, and competitive environments, engenders the new risk dimensions and brings novel challenges to the financial policymakers and firms alike. The increasing adoption of Al in the financial services industry shows how fast it is transforming the business landscapes, especially in traditionally conservative areas. The following are some of the ways Al has been playing its role in financial services. \r\n</p>\r\n</div>', '<div> \r\n<strong>1. Al and Credit Decisions</strong>\r\n<p> \r\nAl-backed credit scoring is based on a sophisticated and more complex rule, helping financial institutions or lenders in distinguishing the high default risk holders from creditworthy people lacking only an extensive credit history. Another benefit of this mechanism is objectivity as there is no biasness. Digital banks and lending apps utilize machine learning algorithms to use alternative data such as smartphone data, to assess the loan qualification and offer personalized solutions. \r\n</p>\r\n</div>', '\r\n<div>\r\n<ul> \r\n<li>\r\n<strong>2. Al and Risk Management </strong>\r\n<p>\r\nAl\'s huge processing power enables the financial institution to handle the huge volume of data in a short period, and its cognitive computing greatly helps manage structured and unstructured data. Algorithms examine the cases\' risk history and determine potential \r\nissues. Al in finance is highly productive when it comes to assessing real-time activities in any environment or market as it provides detailed forecasts and near to accurate predictions based on various variables that are critical for business contingency planning.\r\n</p>\r\n </li>\r\n<li> \r\n<strong>3. Al and Personalized Banking </strong>\r\n<p>Artificial intelligence has brought novel ways to offer traditional benefits and services to individual users. Al has empowered the banking sector with smart chatbots that offer customers comprehensive self-service solutions and reduces the cell center burden. Voice-led virtual \r\nassistants backed by smart technology, are also being adopted fast. Both these tools can schedule payments, check balances, monitor account activity, etc. \r\nA lot of apps provide personalized financial consultation and help individuals accomplish their financial goals. These intelligent systems monitor income, indispensable recurring expenses, as well as spending habits to come up with the optimized plan and helpful financial tips. \r\n</p>\r\n</li>\r\n\r\n<li> \r\n<strong>Final Thoughts </strong>\r\n<p>The benefits brought to financial services by Al are multiple and evident. As per Forbes, 65 percent of the financial management executives expect radical improvements in their financial services using Al. Al is the trend in the financial services industry that is only going to expand in the next few years. \r\n </p>\r\n</li>\r\n<ul>\r\n </div>', '', '', 'since Artificial Intelligence (AI) came into existence, the worlds most fast-paced and demanding industries have embraced it being an integral part of their operations and services. Visionary entrepreneurs and executive managers have actively been exploring the new Al application in financial services to gain a competitive edge in the market. As proposed in the global survey, collaboratively conducted by the World Economic Forum and the Cambridge Centre for Alternative Finance (CCAF) at the University of Cambridge Judge Business School, Al is evolving fast to transform a range of models in the global financial services industry today. This article talks about how Al has been beneficial for the financial services sector and the opportunities it brings for the financial services providers', 'https://res.cloudinary.com/the-morgans-consortium/image/upload/v1670938225/Grc%20magazine/Artificial-Intelligence-in-Financial-Services-Industries_xtpf8i.jpg', 1, '2022-12-05', '2022', 'A.I', NULL, NULL, 1),
(5, 'Blending Security & Performance \nin the Financial Institutions Landscape \n', '<div>\r\nfinancial services by nature is a high-stake industry as it is highly competitive. Whether it is a small consumer- oriented bank branch providing current financial data to consumers on the spot, or a specialized high-frequency trading business that needs to maintain an increasing number of flows with the single-digit microsecond latency, performance and network speed are important for success. The financial data and other personally identifiable information stored by financial organizations may have disastrous impacts if not handled properly. Security is of extreme importance. Financial businesses must ensure strict governance to regulations, the breach of results in heavy penalties and fines. \r\n</div>', '<ul> \r\n<li>\r\n<strong>How to manage dual priorities? Security & Performance</strong>\r\n<p>\r\nThese dual priorities are often at odds with each other. Performance needs fluid, open networks leveraged on a range of technologies like SaaS applications, multi-cloud environments, connected devices, etc. Simultaneously, these tools also augment the attack space, enabling a breach that can be only damaging to the bottom-line. Security must be ensured against those problems without letting go of performance standards of critical services.\r\n</p>\r\n</li>\r\n <li>\r\n<strong>Financial Services - The Threat Landscape </strong>\r\n<p>\r\nBecause of the monetary reward achieved by stealing financial data and trading it on the dark web, financial organizations are the key target for cybercriminals. In 2018, 819 cases were reported to the United Kingdom Financial Conduct Authority, revealing that cybercriminals are using digital tools to exploit the financial sector. \r\n</p>\r\n\r\n</li>\r\n\r\n</ul>', '\r\n<ul>\r\n<li>\r\n<strong>Areas to Focus for Blending Security & Performance </strong>\r\n<p>\r\nSecurity and performance are important equally for financial services businesses and neither can be taken at the cost of others. To get the balance, financial organizations must blend security and performance by applying tools and policies emphasizing flexibility, operational efficiency, \r\ncompliance, and visibility. \r\nThe competitive landscape necessitates the organizations to quicken cloud adoption as well as digitization. The key is to develop a security infrastructure and corresponding security policies that can adapt to the new environments while emphasizing flexibility and agility. This enables secure, submissive access to cloud services as well as traditional data centers. \r\nIn a highly regulated space, financial teams must have access to reporting that validates compliance across numerous regulations, along with recommendations when requirements are not met. If compliance reporting and the application of suggested changes can all be automatic, IT and governance teams can save huge on time by not having to be unfocussed from more \r\nstrategic initiatives to talk about the issues resulting due to compliance audits. They also must make policies that confirm visibility into every digital tool and device working within the network. Without this rich visibility, financial organizations are exposed to data-leakage, non- compliance, and insider threats. This necessitates breaking down siloes existing between the point security solutions.\r\n</p>\r\n</li>\r\n<li>\r\n<strong>Final Thoughts </strong>\r\n<p> \r\nSince financial services networks are expanding through digitization, and cybercriminals are accelerating attacks against the increasing attack surface, financial organizations need to focus on prioritizing performance and security simultaneously. Focusing on simplified compliance reporting, flexibility, visibility, and efficiency are important for staying competitive and evading security incidents in high-stakes and high-paced digital marketplace. \r\n</p>\r\n</li>\r\n</ul>\r\n', '', '', '', 'https://res.cloudinary.com/the-morgans-consortium/image/upload/v1670938225/Grc%20magazine/Blending-Security_euz4if.jpg', 1, '2022-12-05', '2022', 'cybersecurity', NULL, NULL, 1),
(6, '<strong>\r\nLimitations of Artificial Intelligence In Banking Industry  \r\n</strong>', '<ul><li>arificial Intelligence (AI), a fast-evolving technology, is gaining popularity globally. The banking sector is one of the leading adopters of Al. Most banks and financial institutions are adopting Al to increase efficiency to their back-office and minimize security risks. In a report published by the Bank of England (BOE), two-thirds of U.K. banks are already using artificial intelligence to run their business. As the BOE further explains, machine learning is not always substantially different from the statistical models; banks have been using, like the credit scores they develop to predict the possibility that a customer may default on a loan, or the models banks use to project if a particular debit or credit card transaction was fraudulent. The fact is that the impact of Al will be most profound in specific banking applications. Artificial intelligence will massively disrupt banks and traditional financial services. Some of its disadvantages are:</li><li><strong>Requires Supervision </strong>Tech systems are like engines: they run, but someone has to ignite them. Banking IT is still very much needed to run the Al system. They are the ones feeding the Al system with all the new information required for them to learn in the first place. This form of supervised learning does not mimic the way a human learns naturally, and this is one of the most significant limitations when it comes to creating a more human-like Al.</li><li><strong> Cost and Maintenance </strong>Production and maintenance of artificial intelligence are highly cost demanding since they are very complex machines. Your Al software will also require regular upgrades to adapt to the needs of the continually changing business. In case of future critical failures, the process of reinstating the system and recovery of lost codes may require a lot of time and cost. Banks should put into consideration the return on investment before the implementation of any Al system.</li><li><strong>Lack of Creativity </strong>Creativity remains a vital component of a successful financial institution. Machines cannot be creative. Unlike computers, humans think and feel, which often guides their decision making when it comes to creativity. Affirmatively, Al assists in determining what sort of imagery, for example, a consumer is likely to click on - from color preferences to style and price. However, when it comes to originality and creative thinking, a machine simply cannot compete with the human brain. Both must work together Al will only do what it is programmed to do. Granted, it usually does this exceptionally well, but unlike a real person, it is unable to make split-second judgments. For instance, a bank may change or cancel any scheduled communication in the event of any tragic occurrence or system failure because we, as humans, are emphatic and reasonable. A machine, however, cannot think beyond the programming, so it could get a bank in an ugly situation in times of crisis if it is not carefully managed or controlled.</li><li><strong>Data </strong>The main limitation of implementing Al is data availability. For Al to work correctly, models need instructions on the information. The larger the architecture, the more data is required to produce viable results. Therefore, If you feed a model poorly, any Inaccuracles in the data will be reflected in the outcome. If the data is inconsistent and of shallow quality, it presents challenges for the businesses looking to create value from the Al. Another data-related con concerns data standards and regulations. Banks have to determine whether the data has the right parameters. Organizations need to ensure that their data can be shared across different financial service providers based on federal, state, and internal requirements.</li></ul>', '<ul><li><strong>Hidden Bias </strong>Both humans and data have some form of hidden bias. Often bias is transferred to data because of people. \"We can\'t do these jobs without getting data. The most important thing that banks must bear in mind when adopting Al is why they want it. Don\'t implement Al for the sake of Al. Begin with a business case grounded in customer insights from behavioral analytics and market research. Companies will spend a lot of time and money trying to implement Al for no good reason. Ensure your bank has the data and reasoning first, then execute.</li><li><strong>Distribution of Power </strong>Al may supersede or take over humans soon. Given that Al gives excessive power to the few individuals who are in control, Al bears the risks and takes control away from humans while dehumanizing actions in various ways.</li></ul>', '<ul><li><strong>Loss of employment </strong>Replacing the workforce with machines leads to massive unemployment rates. Furthermore, with the increasing use of Al, people will be highly reliant on computers and may lose their creativity. Unemployment is a socially undesirable concern. Artificial Intelligence dispensed to wrong hands can turn out to be disastrous Individuals with nothing to do can start thinking destructively and can create havoc with this ultra-modern technology. By offering automation, intelligence, learning, and accuracy surpassing human ability, Al enhances the value of data beyond what humans can achieve. Therefore, fewer humans are needed.</li><li><br></li><li><strong>Vulnerability </strong>Considering that Al is software, they are vulnerable to attack just like any other computer program. Machines are easily destructive if they land in the wrong hands. Cybercriminals will find creative ways to fool Al systems and access sensitive data, particularly as Al systems become more powerful and widespread. Customers should be keen on the increasing sophistication of banks\' Artificial Intelligence strategies because there is a close relationship between predicting and manipulating human behavior. For instance, if a bank wants to influence you to take a higher-priced loan than you\'d otherwise qualify for, the first thing should be predicting your response to different marketing strategies and combinations of product terms presented to you at different times of day, across various channels.</li><li><br></li></ul>', '', NULL, NULL, 'https://res.cloudinary.com/the-morgans-consortium/image/upload/v1670939894/Grc%20magazine/Limitations-of-Artificial-Intelligence-In-Banking-Industry_x4n6gq.jpg', 1, '2022-12-05', '2022', 'A.I', NULL, '2023-02-27 11:08:46', 1),
(7, 'Covid-19 Emergence to Affect \nFinancial Reporting & Auditing \n', '<ul>\r\n<li>\r\n<p> \r\nhe Covid-19 pandemic has led to significant changes across all industries. Financial reporting and auditing, however, may not be at the forefront of many accountants\' and CPAs\' minds. They must be aware of where the Covid-19 may have an impact. Because of the disruptions caused by Coronavirus, the SEC and the PCAOB has issued guidelines for public companies and auditors to manage their measures against this pandemic. \r\n</p>\r\n<strong>The Impact Areas</strong> \r\n<p>\r\nMost of the business entities are not resistant to the impacts of the coronavirus outbreak and thus getting affected, either directly or indirectly. Possible adverse impacts of pandemic include: \r\n</p>\r\n </li>\r\n<li>● Global supply chains\' disruptions</li>\r\n<li>● Staff shortages </li>\r\n<li>● Decreased productivity</li>\r\n<li>● Reduction or closure of manufacturing activities Problems in raising financing </li>\r\n<li>● Closure of retail stores</li>\r\n<li>● Volatile and declining financial markets Going concerned </li>\r\n<li>\r\n<p>\r\nAs per accounting standards, the financial statements must be made on a going concern basis unless the management either wants to liquidate the business or stops trading or has no accurate alternative but to do so. The going concern valuation considers events both before and after the reporting date. \r\nEntities having 31 December 2019 and following reporting period ends, must know if the coronavirus- related incidents (like those mentioned above) that occurred after the balance date, led to a momentous deterioration in their financial position or operating results, or resulted in material uncertainties. \r\nWhere material complexities exist that cast substantial doubt on the going concern statement, suitable disclosure in the financial statements are required to be included about the material uncertainties. \r\n</p>\r\n</li>\r\n</ul>', '<ul> \r\n<strong>Damage to non-financial assets </strong>\r\n<p>\r\nNon-financial assets must be tested for damage at the end of each reporting period when this is a pointer of impairment. Intangible assets having unlimited useful lives and goodwill are exempted from this regulation and must be tested for damage at least annually. \r\nCoronavirus-related events can adversely impact non- financial assets\' performance. For instance, a manufacturing facility may be closed temporarily because of the pandemic, changing the extent to which, and/or perhaps the way, the facility is used. This would require an impairment test to be done whereby the recoverable asset amount is compared with and determined by its carrying value. If the carrying value exceeds the asset\'s recoverable amount, the damage must reflect in profit or loss. \r\n</p>\r\n\r\n\r\n</ul>', '<ul>\r\n\r\n<li> \r\n<strong>Deferred tax assets \r\n</strong>\r\n<p> \r\nDeferred tax assets are just recognized to the degree that future taxable profits may be available against which idle tax losses can be utilized. Businesses must evaluate the possibility of future taxable profits being available to utilize these unused tax losses. Where the covid-19 outbreak has endangered the future earnings of entities, management might need to revisit their valuation of deferred tax asset recognition to make sure it remains appropriate. \r\nDisclosure of evidence indicating the recognition of a deferred tax asset is also to be considered, as necessitated in AASB 112 Income Taxes.\r\n</p> \r\n</li>\r\n\r\n\r\n<li> \r\n<strong>Final Thoughts: Anticipate and resolve problems ahead \r\n</strong>\r\n<p>\r\nThe Financial Reporting Council has guided the auditors regarding the issues they may encounter with the Coronavirus pandemic. Accountants and auditors, involved in the preparation of financial statements at the time, or later in 2020, must prudently consider the impacts that coronavirus has on the financial statements, as well as additional disclosure requirements. \r\n </p>\r\n</li>\r\n\r\n</ul>', '', '', '', 'https://res.cloudinary.com/the-morgans-consortium/image/upload/v1670940129/Grc%20magazine/Covid-19-Emergence-to-Affect_-Financial-Reporting-Auditing_ubrdnj.jpg', 1, '2022-12-05', '2022', 'Covid-19', NULL, NULL, 1),
(8, 'Blockchain Regulations in the US & the \r\nworld.', '<div> \r\nAmongst the world governments and economies, the cryptocurrency has been a hot topic of debate. Many governments think that accepting the cryptocurrency for legal use and transactions would eventually cause the loss of economic power and a shift towards decentralized economies across the world. Though many countries so far have permitted cryptocurrencies, many others have still put these under high scrutiny and analysis. Some countries though have banned crypto, its use, possession as well as trade. This article identifies and highlights the blockchain regulations in the U.S. and some key regions in the world. \r\nAs per The Columbia Science and Technology Law Review, the regulatory responses to the rising technologies like blockchain, range from eagerness to suspicion to complete indifference. \r\nIn the U.S. \r\nThe new legislation is being put in place that proposes the exclusion of crypto from the securities laws. Congress introduced 22 bills in 2019, that address the blockchain and cryptocurrency policy to be implemented in 2020. It mentions three key policy areas:\r\n</div>', '<ul> \r\n<li>\r\nHow may cryptocurrency be used in dangerous activities? \r\n</li>\r\n<li>\r\nHow can businesses integrate blockchain and cryptocurrency in their business model presence of an existing \r\nin the regulatory framework? \r\n</li>\r\n<li> \r\nHow can distributed ledger technology be used by\r\n</li>\r\n</ul>', '<ul>\r\n<li> \r\n<p>Another key step is based on re-introducing the token taxonomy act for excluding crypto from securities law, which pursues the placement of regulatory certainty for the regulators and investors.\r\n</p>\r\n</li>\r\n\r\n<li> \r\n<strong>In the U.K.</strong>\r\n<p> \r\nThe U. K\'s Financial Conduct Authority (FCA) has announced some restrictions on crypto assets as a part of the compliance strategy with 5AMLD. In November 2019, FCA issues clear instructions for crypto-related companies, just before the introduction of the European Union\'s Fifth Money Laundering Directive (5AMLD). FCA declared itself as anti-money laundering and anti- terrorist financing regulator of UK crypto-related businesses or entities that were required to register themselves with FCA till January 10, 2020. These businesses include creators and issuers of crypto assets, businesses marketing crypto-asset services and products, businesses trading crypto, firms holding and saving crypto assets, investment exchanges.\r\n</p>\r\n</li>\r\n</ul>\r\n', '', '', 'The service providers who want to provide crypto assets custody solutions to any third party or trade digital assets in the exchange for legal tender must register with the Autorité des marchés financiers (AMF). \r\nthe U.S. Government? ', 'https://res.cloudinary.com/the-morgans-consortium/image/upload/v1670940462/Grc%20magazine/Blockchain-Regulations-in-the-US-the-world._emghpo.jpg', 1, '2022-12-05', '2022', 'Blockchain ', NULL, NULL, 1),
(9, '<strong>What\'s behind Real-time Analytics \nfor Financial Services?</strong>\n', '<ul>\r\n<li>\r\nTraditionally, accounting has been about historical \r\nreporting, assessing a company\'s performance, \r\nover the past quarter, the past month or the past year. In today\'s fast-changing and ever-moving digital economy; however, this approach in financial reporting is no longer a fit. Rather than analyzing past events, the financial services providers require real-time analytics. That\'s how they gain a better view of business trends and can respond smarter and faster to what\'s happening around to gain a competitive edge. This article highlights what real-time analytics brings for financial services. \r\n\r\n</li>\r\n</ul>\r\n', '<ul>\r\n<li>\r\n<strong>Impactful decisions driven by real-time analytics</strong> \r\n<p> \r\nReal-time information delivers greater insight into different variables such as the number of contracts about to close or the new deals present in the pipeline. Without real-time analytics, businesses must wait until the end of the period to analyze financial reports revealing how they\'re performing, what are their failure points, and which deals are going to close. But by then it\'s too late to have significant changes. \r\nOn the other hand, with real-time analytics, businesses don\'t need to wait for months to arrive, rather, they can see what\'s happening and take real-time immediate action.\r\n</p>\r\n</li>\r\n</ul>', '<ul>\r\n<li>\r\n<strong>AR and AP Integrated with real-time analytics</strong>\r\n<p> \r\nTwo areas affected by real-time analytics are accounts payables and receivables. Both functions usually work monthly, which poses the threat of revealing unforeseen and unwanted shocks at the end of the month. \r\nReal-time analytics helps avoid this risk by enabling financial accountants to see which of their clients are paying on time and which are not. This brings the possibility of developing a profile of customers having a tendency not to pay. Another advantage is that they could receive warning signs at a go, instead of waiting until the end of the period. \r\nIn the case of accounts payable side, real-time analytics helps accountants optimize the cash flow by offering \r\n</p>\r\n</li>\r\n </ul>\r\n\r\n\r\n', '', '', '<div> \r\nReal-time analytics helps avoid this risk by enabling financial accountants to see which of their clients are paying on time and which are not. \r\n</div>', 'https://res.cloudinary.com/the-morgans-consortium/image/upload/v1670940631/Grc%20magazine/What_s-behind-Real-time-Analytics-for-Financial-Services_n2d50c.jpg', 1, '2022-12-06', '2022', 'Finance', NULL, NULL, 1);
INSERT INTO `articles` (`id`, `articlename`, `articlebodyone`, `articlebodytwo`, `articlebodythree`, `articlebodyfour`, `articlebodyfive`, `articlecoatbody`, `picture`, `authors_id`, `dataup`, `yearup`, `categories`, `created_at`, `updated_at`, `status`) VALUES
(10, 'Important Applications of Artificial Intelligence in the Financial Service Industry', '<ul> \r\n<li>\r\nartificial intelligence, a technology that enables near-human levels of cognition, shows great promise for the financial services industry. Within capital markets, Al can be a means to produce better, faster, and more accurate predictions. \r\nArtificial intelligence is spreading fiercely across industries that rely heavily on data which includes virtually all industries. The financial services sector is no exception. According to a PricewaterhouseCooper study, 52% of financial services industry executives are currently investing in artificial intelligence (AI), and a significantly large number of business decision-makers believe Al will be the edge of the business \r\nfuture. \r\nThe financial services industry has had a notable transformation through the integration of Al. Al technologies are making banking processes swifter, money transfers secure, and back-end operations more efficient. \r\n</li>\r\n</ul>', '<ul> \r\n<strong>How is Al strengthening the competitiveness of the financial Service Industry? </strong>\r\n<p>\r\nArtificial intelligence in finance is a powerful tool that comes in handy when analyzing real-time activities in any given market or environment.\r\n</p>\r\n<strong>Enhanced Customer Experience </strong> \r\n<p>\r\nCustomer service is a fundamental part of the financial service industry. Based on past interactions, Al develops a better understanding of customers and their behavior. Banks can, therefore, customize financial products and services by personalizing features and intuitive interactions to achieve meaningful customer engagement and strengthen their customer relationships. The Bank of America employs Al in two forms: natural language processing to comprehend speech, text, and intent. The second form is in machine learning to get insights from customer data that can be used as advice and recommendations.\r\n</p>\r\n<strong>Detecting Fraud </strong>\r\n<p> \r\nThe finance industry is highly vulnerable to hacks and scams. Fraud detection and mitigation is the foremost priority of the banking industry. Al technology plays an essential role in decreasing rates of false positives, averting fraudulent attempts, and reducing payment frauds. \r\nAl is extremely efficient in detecting fraud. A significant number of financial institutions acknowledge that Al is capable of preventing fraud before it happens. Through supervised machine learning, Al can interpret trend-based insights which joined by entirely new knowledge gained through unsupervised machine learning, enables Al to determine if a transaction is fraudulent or not. \r\n</p> \r\n</ul>', '<ul>\r\n<li> \r\n<strong>Enhanced Regulatory Compliance</strong>\r\n<p> \r\nDue to the increase in cases of fraud and scams, banks are being coerced by regulatory bodies to have strict regulations. To be appropriately compliant with these regulations, Al comes to play. Relying on cognitive fraud data, Al observes customer behaviors, track transactions, identify dubious activity, and keep up with suspicious accounts. \r\nAl also helps businesses remain up to date with compliance rules and regulations by going through the compliance requirements and identify any changes through deep learning and natural language processing. Banks can, therefore, remain updated on ever-evolving regulatory requirements and align their regulations according to them.\r\nRegulations governing the privacy and portability of information will determine the relative ability of financial and non-financial institutions to adopt Al, thus becoming as important as traditional regulations to the competitive positioning of firms.\r\n</p>\r\n </li>\r\n<li> \r\n<strong>Prediction of Future Outcomes and Trends</strong>\r\n<p> \r\nWith its ability to predict future scenarios through analysis of past behaviors, Al helps banks predict future outcomes and trends. Banks can identify fraud, detect anti-money laundering patterns, and make customer recommendations. Money launderers, through a series of actions, portray that the source of their illegal money is legal. With its power of Machine Learning and Cognition, Al identifies these hidden actions and helps save millions for banks. Similarly, Al can detect suspicious data patterns among humungous volumes of data to carry out fraud management. Further, with its vital recommendation engines, Al studies past to predict the future behavior of data points, which helps banks to up-sell and cross-sell successfully.\r\n</p>\r\n</li>\r\n<li>\r\n<strong>Cognitive Process Automation</strong>\r\n<p>\r\nThis feature enables automation of a variety of information- intensive, costly, and error-prone banking services like claims management. Furthermore, it secures ROI, cuts costs, and ensures accurate and quick processing of services at each step. Cognitive process automation fundamentally automates a set of tasks that improvises upon their previous iterations through constant machine learning. \r\nRealistic interactive interfaces: Chatbots identify the context and emotions in the text chat and respond to it most appropriately. These cognitive machines enable banks to save not only time and improve efficiency but also help banks to save millions of dollars as a result of cumulative cost savings. Bank of America\'s chatbot Erica is currently available in 10 \r\nstates. \r\n</p>\r\n</li>\r\n<li>\r\n<strong>Effective Decision-making</strong>\r\n<p>Cognitive systems using Al technology think and respond like human experts, provide optimal solutions based on available data in real-time. These systems keep an inventory of expert information in its database called the knowledge database. Bankers use these cognitive systems to make strategic decisions. \r\n</p>\r\n</li>\r\n<li>\r\n<strong>Cost Reduction \r\n</strong>\r\n<p>\r\nCost reduction is a significant benefit of the integration of Al in the financial service industry. In the next few years, banks will save billions of dollars due to the application of Al. Banks will further save on time and revenue spent to identify, digitize, and onboard document templates through the automation of the process by Al technology. \r\nHuman error is a leading cause of financial data breaches. Unfortunately, mistakes are costly and inevitable. Considering that Al is much better at managing unstructured data, there\'s a reduction in error rates and, subsequently, saving the cost to resolve the errors. \r\n</p>\r\n</li>\r\n<li> \r\n<strong> Artificial Intelligence and Risk Management </strong>\r\n<p>\r\nThe impact of Al in financial services cannot be readily estimated when it comes to risk management. Enormous processing power allows the handling of vast amounts of data within a short period. Cognitive computing supports the management of both structured and unstructured data, a task that would take far too much time if done by a human. Algorithms analyze the history of risk cases and identify early signs of potential future issues. \r\nIn an era of instant payments, the idea of waiting for a purchase to \"clear\" will soon seem as antiquated as an abacus. Increasingly, consumers expect their accounts to reflect when they buy something instantly. At the same time, cybercriminals are laboring to find the latest, most effective way of stealing someone\'s sensitive bank data. \r\nBanks are using Al to improve both speed and security to combat cybercrimes. \r\nArtificial Intelligence is changing the norm of financial services, weakening the bonds that have held the parts of incumbent financial institutions, and opening doors to entirely new operating models. Al will empower banks by automating its knowledge labor force and make the automation process intelligent enough to eliminate cyber risks. Al will enable banks to make use of human and machine efficiency optimally to drive operational and cost-effectiveness, and deliver personalized \r\nservices. \r\n</p>\r\n</li>\r\n\r\n</ul>', '<ul>\r\n<li>\r\n<p> \r\ngreater visibility into not just who you have to pay but also when it is the perfect time to pay them. \r\n</p>\r\n</li>\r\n<li>\r\n<strong>Greater Customer Renewals with real-time analytics</strong>\r\n<p>\r\n Nowadays, the increasing number of financial services providers are service businesses and thus, customer renewals are critical. Real-time analytics enables these businesses to understand the behavior of the customers that renew on a consistent basis-and the patterns of those who don\'t. Then you can use the same information to understand what causes those customers to leave and what they can do to address this issue.</p>\r\n</li>\r\n <li> \r\n<strong>Accurate Forecasts Via Real-Time Analytics</strong>\r\n<p> \r\n Again, outdated accounting systems tend to anticipate on a monthly or quarterly basis, but the truth is that the world is changing much faster. That\'s why they must receive and examine data in real-time. With real-time analytics, financial services providers can run their business with greater predictability and confidence by driving informed decision-making, more accurate forecasts and thus, targeted outcomes.\r\n</p>\r\n<strong>Final Thoughts</strong>\r\n<p>\r\nThe significance of real-time analytics is that it helps financial services providers discover new opportunities and harness them more effectively. It also helps them discover potential problems and devise solutions faster. Eventually, the business can avoid costly mistakes, increase revenue and acquire a true competitive edge.\r\n</p>\r\n</li>\r\n<li> \r\n<p> \r\nmanagers. 5AMLD has imposed reporting obligations by granting the Financial Intelligence Units (FIU) the power to get the addresses and identities of virtual currency owners and, in so doing, remove the anonymity related to the use of cryptocurrency.In France \r\nThe French regulators have recently clarified the digital asset status within PACTE Bill 2019, which examines the new mechanism for ICOs and Digital assets service providers. The service providers who want to provide crypto assets custody solutions to any third party or trade digital assets in the exchange for legal tender must register with the Autorité des marchés financiers (AMF). The bill aims to reinforce the AMF\'s power to regulate and protect the digital assets investors. \r\n</p>\r\n</li>\r\n</ul>', '\r\n\r\n\r\n<ul> \r\n<li>\r\n<strong>In Switzerland </strong>\r\n<p>\r\nFINMA, a Swiss Regulator, has announced that they are in the process of forming a new blockchain Legal Framework. In 2019, Switzerland presented a draft bill including three crypto-friendly initiatives. Since then, the Government has been exerting efforts to form a First, it founded a legal framework to grant ownership rights to active digital assets investors. Second, they are subject to the bankruptcy rules related to cryptocurrency. Third, Switzerland has two licensed \'bitcoin banks\'. Financial \r\nMarket Supervisory Authority (FINMA) issued banking and securities dealers\' licenses in August 2019 named SEBA and Sygnum AG. Before that, a lot of cryptocurrency and Bitcoin businesses had a hard time as the mainstream commerce didn\'t welcome them while working with the traditional banks was not an option either. \r\n</p>\r\n<strong>Conclusion & Recommendations \r\n</strong>\r\n<p> \r\nWhile a lot of countries seem to support the development of digital currencies, and thus, encourage novel ways of transacting, there are still some states boycotting the new technology, considering it as an illegal disruption that would bring global financial instability. None the less, the world is gradually and steadily realizing and experiencing the benefits of this new technology, which is why the regulatory story is constantly changing. With U.S.\'s Congressional resolution proposed in July 2016, which mentioned blockchain with proper protection, as the key source to change the way security and trust are formed in online transactions via many potential applications in most of the sectors like healthcare, financial services, intellectual property and energy, more countries are expected to be a part of the blockchain revolution in near future. \r\n</p>\r\n</li>\r\n</ul>', 'With its ability to predict future \r\nscenarios through analysis of past behaviors, Al helps banks predict \r\nfuture outcomes and trends. ', 'https://res.cloudinary.com/the-morgans-consortium/image/upload/v1670941429/Grc%20magazine/Important-Applications-of-Artificial-Intelligence-in-the-Financial-Service-Industry_de3iiu.jpg', 1, '2022-12-06', '2022', 'A.I', NULL, NULL, 1),
(11, 'Business Contingency Plan (BCP) \r\nAmidst COVID-19', '<ul>\r\n<li>\r\n<p> \r\nat the time that I am writing this there have been 559,351 confirmed cases of COVID-19 with more than 25,000 deaths with the elderly getting the worst hits with this deadly disease but what does this mean to a lot of businesses? \r\nPlanning for pandemic risk management should start early and be geared to the 4 phases of pandemic planning (the PPRR model). Prevention, preparedness, response and recovery. Every business if you ask me needs a business continuity plan. It sets out how you will prepare for a pandemic and continue to operate after the disaster. It will help to minimise recovery time and reduce your business losses. \r\n</p>\r\n</li>\r\n<li> \r\n<strong>Some of the benefits of having a BCP are:</strong>\r\n<p> \r\nHaving a business continuity plan in place will keep businesses trading when they would have otherwise have probably failed due to an incident. \r\n</p>\r\n<p>\r\nBusiness continuity plans can significantly reduce the cost of disruptions. \r\n</p>\r\n<p> \r\nCompanies with business continuity plans benefit from insurance premium discounts, reduced excesses and doors opening to new insurance markets.\r\n</p>\r\n<p>\r\n Having a business continuity plan allows what would otherwise be unacceptable risks to be insured. \r\n</p>\r\n</li>\r\n<li>\r\nThere are many enforceable circumstances that arise when businesses do not actually have a BCP. If we have a look at the COVID-19 pandemic, no one could have anticipated that the pandemic would turn into a global pandemic and affect a lot of economies, but it has and now that it is here, companies are having to use a lot of fire fighting tactics to make sure that they can survive after this pandemic. \r\nSome of the issues that companies are having face is to pay employees when they are not trading due to the fact that many countries have gone into a lock down. This has prevented a lot of companies from trading as only essential services are the ones that are supposed to remain open. \r\nMany businesses consider insuring companies against a fire, hurricane or a tornado as being the only type of insurance that is deemed to be quite necessary but may businesses now will have to struggle with trying to pay their employees when they are not making any money which will put a huge strain on some businesses.\r\n<li>\r\n</ul>', '<ul>\r\n<li> \r\n Some businesses may never actually recover from this pandemic because they did not have a proper BCP to guide them and they in turn did not plan for enforceable events. \r\nThe COVID-19 global pandemic can be looked at as both an opportunity for some businesses and a catastrophe for others. Take the company that is making the ventilators during this global pandemic, because covid- 19 attacks the lungs and most patients with aggressive symptoms have to breathe with the aid of these machines, production has increased for ventilators which means that thy are actually benefitting from this global pandemic. \r\n</li>\r\n</ul>', '<ul>\r\n<li>\r\nCompanies that are also making masks and protective clothing that is being transferred all over the world, these companies are also making money off this pandemic as most companies will not produce these for free. \r\nHow then can companies bounce back from this global pandemic and what are some of things that they can do now to make sure that they respond and recover quickly and get their business up and running amidst this global pandemic that is COVID-19. You don\'t want to be one of those businesses that failed simply because they didn\'t \r\n\r\n</li>\r\n</ul>', '', '', 'In a normal disaster people are certain of when it started and when it will end. With this latest global pandemic no one really seems to know when it will end, and a lot of business have had to be creative to stay afloat. ', 'https://res.cloudinary.com/the-morgans-consortium/image/upload/v1670941896/Grc%20magazine/Business-Contingency-Plan-_BCP_-Amidst-COVID-19_xftjav.jpg', 1, '2022-12-06', '2022', 'Covid-19', NULL, NULL, 1),
(12, '<strong>\nThe Importance of Cloud Computing in Banking \n</strong>', '<ul> \r\n<li> \r\nCloud computing is one of the most widely growing phenomena on the internet, a far-reaching concept that is being put into consideration by many banks and companies in the financial industry. The exciting idea of Cloud computing involves several computers that are connected to the internet or through any other real-time communication network. This concept allows a program to run on all connected computers simultaneously. With Cloud computing, large banks, and other companies in the financial industry, can expect significantly high benefits. \r\nThe Bank of England (BOE) will soon begin testing the resilience of banks in the event of a disruption to the cloud, on the other hand, the central bank\'s Prudential Regulation Authority (PRA) is likely to be conducting further research into the technology as a possible prototype to implement the regulation. Meanwhile, in the United States, the Office of the Controller of the Currency has been exploring the relationships involving banks and third- party traders, like cloud providers. \r\nThe European Banking Authority (EBA) and The British Bankers\' Association (BBA) points out the guidance on the adoption of public cloud-based services by banks across the world. The recommendations focus on risk management by identifying specific challenges to banks, among them \"data protection and location, security issues and concentration risk, not only from individual institutions but also at an industry level. \r\n</li>\r\n</ul>', '<ul>\r\n<li>\r\n<p>\r\nWhy cloud computing for the financial sector? \r\n</p>\r\n<strong>1. Enhance Data Security </strong>\r\n<p>\r\nFinancial institutions remain aware of the severe consequences of a data breach. A data breach occurring is likely to cost the bank millions of dollars in fines and lost revenue. However, financial institutions should know that majority of data leaks are within their internal systems. \r\nManaging your financial data, with any new software, is a serious endeavor that requires thoughtful consideration of all cloud security criteria to ensure that you\'re making the best decision. To do so, ensure that the solution you choose meets the following criteria: \r\nMulti-year business plan alignment \r\nCorporate Standards Policies and Procedures (Meets and surpasses yours) \r\nA firm ROI \r\nTrust and confidence in their ability to achieve The Cloud computing system provides a high level of data security, particularly for highly sensitive data that contains customer data. The information is kept in a centralized data storage whose access is through a stringent authentication procedure. The security of the data is paramount for Cloud computing, making it beneficial for banks and the financial industry. \r\ngive a little time and effort to planning. But it\'s so hard to carve out the time for something you might never need, right? \r\n</p>\r\n</li>\r\n</ul>', '<ul>\r\n<li>\r\nA solid business continuity plan would ensure that all normal business operations can resume during a disaster. This will normally include access to all necessary data and a secure place for where employees can continue to work. To be successful, a business continuity plan ensures unfettered operation of all network connections, online systems, phones, network drives, servers, and business applications with no downtime. \r\nCOVID-19 has sort of brought a new meaning to the term \"disaster management\'. In a normal disaster people are certain of when it started and when it will end. With this latest global pandemic no one really seems to know when it will end, and a lot of business have had to be creative to stay afloat. Other businesses may not entirely recover. \r\nClothing stores for example will lose billions of dollars\' worth of business everyday they are shut as many countries go on a lockdown. Not to mention with the global pandemic, fashion seems to be at the back of everyone\'s mind as we are all focusing on the number one priority which is to stay alive. While this may seem like the end, a lot of businesses can look at this as an opportunity to explore other times of businesses avenues which they would have otherwise never would have explored before had it not been for this pandemic. \r\nSteps in Creating a business Continuity Plan \r\nAt a time like this when most businesses have been confronted with unexpected business disruptions, investment firms must react swiftly, methodically and successfully or else risk significant financial loss. This level of response will require extensive business continuity planning to ensure all aspects of a firm\'s business are evaluated and protected. \r\nThere are a couple of steps that a company can take and to be able to do this effectively the secret is in understanding the impact the disacter situation has had and creating policies that will respond to this COVID 19 pandemic. \r\n</li>\r\n<li>\r\n<strong>Risk Assessment \r\n</strong>\r\n<p> \r\nEvaluate of the company\'s risks and exposures \r\nAssess of the potential impact of various business disruption scenarios within the business \r\nDetermine of the most likely threat scenarios \r\nAssess of telecommunication recovery options and communication plans \r\nPrioritize findings and development of a roadmap \r\nBusiness Impact Analysis (BIA) \r\nDuring this phase the company will now have to collect the following information which will prove to be very helpful in developing the BCP. \r\nRecovery assumptions, including Recovery Point Objectives (RPO) and Recovery Time Objectives (RTO) \r\nCritical business processes and workflows as well as the supporting production applications Interdependencies, both internal and external Critical staff including backups, skill sets, primary and secondary contacts \r\nFuture endeavours that may impact recovery Special circumstances \r\nStrategy and Plan Development \r\nValidate that the recovery times that you have stated in your plan are obtainable and meet the objectives that are stated in the BCP. They should easily be available and readily accessible to staff. \r\nDuring this development phase, it is very important to incorporate many perspectives from various staff and all departments to help map the overall company feel and organizational focus. Once the plan is developed, you can have an executive or management team review and sign off on the plan. \r\nPlan Testing & Maintenance \r\nThe final critical element of a business continuity plan is to ensure that it is tested and maintained on a regular basis. This includes: \r\nConducting periodic tabletop and simulation exercises to ensure key stakeholders are comfortable with the plan steps \r\nExecuting bi-annual plan reviews \r\nPerforming annual Business Impact Assessments \r\n</p>\r\n</li>\r\n</ul>', '', '', '', 'https://res.cloudinary.com/the-morgans-consortium/image/upload/v1670942064/Grc%20magazine/The-Importance-of-Cloud-Computing-in-Banking_lnqxlb.jpg', 1, '2022-12-06', '2022', 'Banking', NULL, NULL, 1),
(13, '<strong>Global GRC & Financial Crime Prevention Magazine</strong>', '<div>\r\nFinancial crimes have been a pertinent issue in the global arena for a long time now. Authorities, and it does not matter what kind of an economy you are operating in are constantly looking for new ways to track down and prevent financial crime, and criminals are always developing innovative tactics and developing appropriates systems and controls in order to stay ahead. \r\nGRC and Financial Crime Prevention Magazine (No. 1 Global GRC&FC magazine) in the world covering all issues on Governance, Risk, Compliance and Financial Crime prevention in the financial services industry and other sectors.\r\nWhen we talk of Governance, Risk and Compliance, or GRC for short, this refers to a company\'s coordinated strategy for managing the broad issues of corporate governance, enterprise risk management (ERM) and corporate compliance with regard to regulatory requirements.\r\nGovernance: Ensuring that organizational activities, like managing IT operations, are aligned in a way that supports the organization\'s business goals.\r\nRisk: Making sure that any risk (or opportunity) associated with organizational activities is identified and addressed in a way that supports the organization\'s business goals. \r\nCompliance: Making sure that organizational activities are operated in a way that meets the laws and regulations impacting those systems. \r\nIf you are involved in the finance or business sectors, it is critical that you understand what financial crime is and how it works and how it is linked with Governance, Risk and Compliance, or GRC\r\nThese crimes are almost always committed for the personal benefit of the criminal, and they involve an illegal conversion of ownership of the property that is involved. Financial crimes can occur in many different forms, and they happen all over the world. \r\nIt is very important for companies or firms to not only consider the regulations and rules, but also the risks pertinent to the business in the development of effective but proportionate compliance controls which are applied sensibly to the business rather than with a heavy hand. A good risk based documented compliance monitoring programme, supported by investment in training, will provide for a more resilient management of risk and our magazine will aim to explore the link between the two. \r\n</div>', '<div> \r\n<strong> Types of Financial Crime </strong>\r\n<p> \r\nSome of the most common crimes facing the financial sector are money laundering, terrorist financing, fraud, tax evasion, embezzlement, forgery, counterfeiting, and identity theft. These crimes are committed every single day, and governments across the globe are constantly prosecuting financial criminals while searching for new ones. Most financial crimes come about because companies were simply not able to assess their risks and to know the level of exposure their business has to financial crimes. \r\nIn an environment characterised by growing regulatory complexity and increased reputational risk, financial services firms are focusing like never before on implementing effective Governance, Risk and Compliance (GRC) programmes. GRC is essential to eliminating organisational weaknesses that can lead to significant operational risk, financial losses, regulatory censure or fines. Many financial institutions, however, face a shared challenge - bridging specific areas of risk or compliance into an enterprise-wide approach.\r\nI have a passion for transparency in the financial services institutions and our magazine will focus on GRC & Financial Crime prevention by exploring the different aspects of it. This magazine’s aim is to unmask the hidden secrets that lie behind these financial crimes I know will help many readers prevent and or reduce financial crimes where ever you are. \r\nFinancial crimes are a serious threat to the security and integrity of the global financial system and our magazines aim is to provide clear and concise information based on complex analytical findings as well as educating our readers on how they can fight this war against financial crimes. \r\nThis magazine will explore the different types of financial crimes, how they occur and give readers a complete picture of how these perpetrators think and how to detect and avoid these different types of financial crimes.  We hope you will enjoy our articles! \r\n\r\n</p>\r\n</div>', '<div> \r\n<strong>Governance, Risk, and Compliance</strong>\r\n<p> \r\nA code of governance is crucial for any emerging country as it endeavours to provide a sound management framework and principles. Corporate governance and risk management are fairly new management concepts but are becoming important management disciplines for the public and private sectors in the African region. \r\nFor many African countries, dictatorship by either military or civilian governments is still the order of the day. The traditions of rule of law, transparency, accountability and social justice, which underpin governance, both at the national and corporate levels were non-existent. Through the directors the government made decisions regarding investment, production, procurement and personnel matters. As a regulator, the government sets technical standards of products, product prices and sometimes gives directives on cross-subsidization (Otobo, 2000).\r\nThere are some African countries that have lost some of the countries treasured possessions in the name of privatisation.  Privatization has taken many forms in the different African countries, even within the same country. The most common approaches to privatization in African countries have tended to be liquidations of State-owned-Enterprises (SOEs). This has come about because a lot of the decisions are driven by these leaders and the problem is that some of these leaders do not understand the impact such kind of decisions have for the future economy of the country.\r\n</p>\r\n</div>', '<div> \r\n<p>\r\nAfrica’s fight against financial crime is gathering pace, driven by greater collaboration and the use of innovative tools to thwart corruption, money laundering or human trafficking. Financial crimes engender poverty as funds are misdirected, and the corrupt get richer while the vulnerable grow poorer. According to Frunza, most financial crime occurs at three main levels: within organisations, through financial instruments and through the misuse of technology – the central pillars of economic growth and development.\r\nThe lack of strategic and effective cooperation among African states indicates that financial crimes will continue to pose a growing threat in Africa. Current responses – which emphasise stringent legislation and regulation, but not their enforcement – are inadequate. Furthermore, the current capacity of law enforcement agencies does not appear commensurate with the challenge.\r\nFor Africa to reverse these trends, it would need to harmonise the normative framework among states through a continental convention or protocol; prioritise a rule of law-based approach; and step up international cooperation.\r\nLooking at a company as a whole, there are people at the top who are trusted with running the company in an ethical way, making sure that the company establishes appropriate objectives and shows measured achievements toward those objectives. This is governance. Up until the days of Enron, WorldCom, et. al., governance took place quietly in the background. Now it has been thrust into the spotlight, and it is much more closely tied to risk management and compliance.\r\n</p>\r\n<br/>\r\n<h2><strong>Four Pillars of Corporate Governance</strong></h2>\r\n<ul>\r\n<li>Fairness</li>\r\n<li>Accountability</li>\r\n<li>Independence</li>\r\n<li>Transparency</li>\r\n</ul>\r\n<br/>\r\n<h2><strong>Major elements of corporate governance</strong></h2>\r\n<ul>\r\n<li>Board Commitment</li>\r\n<li>Good board practices</li>\r\n<li>Functional and effective control environment</li>\r\n<li>Transparent disclosure</li>\r\n<li>Well defined shareholder rights</li>\r\n</ul>\r\n</div>', '<div> \r\n<p>\r\nGRC integration will increase the timeliness and quality of information used in strategic decision making (in relation to both the opportunity and the risk base of any decisions). There should be improved responsiveness to incidents, and the understanding of potential consequences, which in turn brings strategic clarity as to the processes required for the escalation of any incident and the necessary roles and processes required to support the decision. Moreover, an open culture is essential to the early identification of both risks and opportunities, as well as providing clarity as to the processes to effectively address them\r\n</p>\r\n<br/>\r\n<strong>Reference</strong>\r\n<div> \r\n<p>\r\n<a href=\"https://www.refinitiv.com/perspectives/regulation-risk-compliance/africas-fight-against-financial-crime/\">\r\nhttps://www.refinitiv.com/perspectives/regulation-risk-compliance/africas-fight-against-financial-crime/\r\n </a>\r\n</p>\r\n\r\n<p> \r\n<a href=\"https://enactafrica.org/enact-observer/is-africa-doing-enough-to-fight-financial-crime\"> \r\nhttps://enactafrica.org/enact-observer/is-africa-doing-enough-to-fight-financial-crime\r\n</a>\r\n</p>\r\n\r\n<p> \r\n<a href=\"https://www.researchgate.net/publication/242710708_Corporate_governance_and_risk_management_A_South_African_perspective\">\r\nhttps://www.researchgate.net/publication/242710708_Corporate_governance_and_risk_management_A_South_African_perspective  \r\n</a>\r\n</p>\r\n\r\n<p> \r\n<a href=\"https://www.researchgate.net/publication/237256378_A_Review_of_Corporate_Governance_in_Africa_Literature_Issues_and_Challenges\"> \r\nhttps://www.researchgate.net/publication/237256378_A_Review_of_Corporate_Governance_in_Africa_Literature_Issues_and_Challenges \r\n</a>\r\n</p>\r\n\r\n<p> \r\n<a href=\"https://www.networkworld.com/article/2298611/governance--risk-management-and-compliance-and-what-it-means-to-you.html\">\r\nhttps://www.networkworld.com/article/2298611/governance--risk-management-and-compliance-and-what-it-means-to-you.html \r\n</a>\r\n</p>\r\n\r\n<p> \r\n<a href=\"https://www.itweb.co.za/content/mQwkoq6KKXjv3r9A\">\r\nhttps://www.itweb.co.za/content/mQwkoq6KKXjv3r9A\r\n</a>\r\n</p>\r\n</div>\r\n</div>', '', 'https://res.cloudinary.com/the-morgans-consortium/image/upload/v1670938228/Grc%20magazine/financial_crime_kxwfgd.jpg', 1, '2022-12-13', '2020', 'Introduction', NULL, NULL, 1),
(14, 'Business Contingency Plan (BCP) Amidst COVID-19', '<div> \r\n<p>\r\nAt the time that I am writing this there have been 559,351 confirmed cases of COVID-19 with more than 25,000 deaths with the elderly getting the worst hits with this deadly disease but what does this mean to a lot of businesses? \r\nPlanning for pandemic risk management should start early and be geared to the 4 phases of pandemic planning (the PPRR model). Prevention, preparedness, response and recovery. Every business if you ask me needs a business continuity plan. It sets out how you will prepare for a pandemic and continue to operate after the disaster. It will help to minimise recovery time and reduce your business losses.  \r\n</p>\r\n<br/>\r\n<h2><strong>Some of the benefits of having a BCP are:</strong></h2>\r\n<ul>\r\n<li>\r\nHaving a business continuity plan in place will keep businesses trading when they would have otherwise have probably failed due to an incident.\r\n</li>\r\n<li>\r\nBusiness continuity plans can significantly reduce the cost of disruptions\r\n</li>\r\n<li>\r\nCompanies with business continuity plans benefit from insurance premium \r\ndiscounts, reduced excesses and doors opening to new insurance markets.\r\n</li>\r\n<li>\r\nHaving a business continuity plan allows what would otherwise be unacceptable risks to be insured. \r\n</li>\r\n</ul>\r\n</div>', '<div> \r\n<p> \r\nThere are many enforceable circumstances that arise when businesses do not actually have a BCP. If we have a look at the COVID-19 pandemic, no one could have anticipated that the pandemic would turn into a global pandemic and affect a lot of economies, but it has and now that it is here, companies are having to use a lot of fire fighting tactics to make sure that they can survive after this pandemic. \r\nSome of the issues that companies are having face is to pay employees when they are not trading due to the fact that many countries have gone into a lock down. This has prevented a lot of companies from trading as only essential services are the ones that are supposed to remain open. \r\nMany businesses consider insuring companies against a fire, hurricane or a tornado as being the only type of insurance that is deemed to be quite necessary but may businesses now will have to struggle with trying to pay their employees when they are not making any money which will put a huge strain on some businesses. Some businesses may never actually recover from this pandemic because they did not have a proper BCP to guide them and they in turn did not plan for enforceable events. \r\nThe COVID-19 global pandemic can be looked at as both an opportunity for some businesses and a catastrophe for others. Take the company that is making the ventilators during this global pandemic, because covid-19 attacks the lungs and most patients with aggressive symptoms have to breathe with the aid of these machines, production has increased for ventilators which means that thy are actually benefitting from this global pandemic. \r\nCompanies that are also making masks and protective clothing that is being transferred all over the world, these companies are also making money off this pandemic as most companies will not produce these for free.\r\n\r\nHow then can companies bounce back from this global pandemic and what are some of things that they can do now to make sure that they respond and recover quickly and get their business up and running amidst this global pandemic that is COVID-19. You don’t want to be one of those businesses that failed simply because they didn’t give a little time and effort to planning.  But it’s so hard to carve out the time for something you might never need, right? \r\n</p>\r\n</div>', '<div> \r\n<p> \r\nA solid business continuity plan would ensure that all normal business operations can resume during a disaster. This will normally include access to all necessary data and a secure place for where employees can continue to work. To be successful, a business continuity plan ensures unfettered operation of all network connections, online systems, phones, network drives, servers, and business applications with no downtime.\r\nCOVID-19 has sort of brought a new meaning to the term “disaster management’.  In a normal disaster people are certain of when it started and when it will end. With this latest global pandemic no one really seems to know when it will end, and\r\na lot of business have had to be creative to stay afloat. Other businesses may not entirely recover. \r\nClothing stores for example will lose billions of dollars’ worth of business everyday they are shut as many countries go on a lockdown. Not to mention with the global pandemic, fashion seems to be at the back of everyone’s mind as we are all focusing on the number one priority which is to stay alive. While this may seem like the end, a lot of businesses can look at this as an opportunity to explore other times of businesses avenues which they would have otherwise never would have explored before had it not been for this pandemic. \r\n\r\n</p>\r\n</div>', '<div> \r\n<h2><strong>Steps in Creating a business Continuity Plan</strong> </h2>\r\n<p>\r\nAt a time like this when most businesses have been confronted with unexpected business disruptions, investment firms must react swiftly, methodically and successfully or else risk significant financial loss. This level of response will require extensive business continuity planning to ensure all aspects of a firm’s business are evaluated and protected.\r\nThere are a couple of steps that a company can take and to be able to do this effectively the secret is in understanding the impact the disacter situation has had and creating policies that will respond to this COVID 19 pandemic. \r\n</p>\r\n<br/>\r\n<h2><strong>Risk Assessment </strong></h2>\r\n<ul>\r\n<li>Evaluate of the company’s risks and exposures</li>\r\n<li>Assess of the potential impact of various business disruption scenarios within the business\r\n</li>\r\n<li>Determine of the most likely threat scenarios</li>\r\n<li>Assess of telecommunication recovery options and communication plans</li>\r\n<li>Prioritize findings and development of a roadmap</li>\r\n</ul>\r\n<br/>\r\n<h2><strong>Business Impact Analysis (BIA)</strong></h2>\r\n<p>During this phase the company will now have to collect the following information which will prove to be very helpful in developing the BCP. </p>\r\n<ul>\r\n<li>Recovery assumptions, including Recovery Point Objectives (RPO) and Recovery Time Objectives (RTO)</li>\r\n<li>Critical business processes and workflows as well as the supporting production applications</li>\r\n<li>Interdependencies, both internal and external</li>\r\n<li>Critical staff including backups, skill sets, primary and secondary contacts</li>\r\n<li>Future endeavours that may impact recovery</li>\r\n<li>Special circumstances</li>\r\n</ul>\r\n<br/>\r\n<h2><strong>Strategy and Plan Development</strong></h2>\r\n<p>\r\nValidate that the recovery times that you have stated in your plan are obtainable and meet the objectives that are stated in the BCP. They should easily be available and readily accessible to staff. \r\nDuring this development phase, it is very important to incorporate many perspectives from various staff and all departments to help map the overall company feel and organizational focus. Once the plan is developed, you can have an executive or management team review and sign off on the plan.\r\n\r\n</p>\r\n</div> ', '<div> \r\n<h2><strong>Plan Testing & Maintenance</strong></h2>\r\n<p>The final critical element of a business continuity plan is to ensure that it is tested and maintained on a regular basis. This includes:</p>\r\n<br/>\r\n<ul>\r\n<li>Conducting periodic tabletop and simulation exercises to ensure key stakeholders are comfortable with the plan steps</li>\r\n<li>Executing bi-annual plan reviews</li>\r\n<li>Performing annual Business Impact Assessments</li>\r\n</ul>\r\n<br/>\r\n<h2><strong>Reference</strong></h2>\r\n<p><a href=\"https://www.eci.com/blog/135-five-steps-of-business-continuity-planning-for-investment-firms.html\">\r\nhttps://www.eci.com/blog/135-five-steps-of-business-continuity-planning-for-investment-firms.html \r\n</a></p>\r\n<p><a href=\"https://www.cio.com/article/2381021/best-practices-how-to-create-an-effective-business-continuity-plan.html\">\r\nhttps://www.cio.com/article/2381021/best-practices-how-to-create-an-effective-business-continuity-plan.html\r\n</a></p>\r\n\r\n<p><a href=\"https://www.business.qld.gov.au/running-business/protecting-business/risk-management/continuity-planning/plan\">\r\nhttps://www.business.qld.gov.au/running-business/protecting-business/risk-management/continuity-planning/plan\r\n</a></p>\r\n\r\n<p><a href=\"https://www.inc.com/guides/2010/05/business-continuity-plan.html\">\r\nhttps://www.inc.com/guides/2010/05/business-continuity-plan.html\r\n</a></p>\r\n<p><a href=\"https://www.ready.gov/business-continuity-plan\"> \r\nhttps://www.ready.gov/business-continuity-plan\r\n</a></p>\r\n<p><a href=\"https://searchdisasterrecovery.techtarget.com/definition/Business-Continuity-and-Disaster-Recovery-BCDR\"> \r\nhttps://searchdisasterrecovery.techtarget.com/definition/Business-Continuity-and-Disaster-Recovery-BCDR\r\n</a></p>\r\n<p><a href=\"https://www.forgov.qld.gov.au/business-continuity-and-disaster-management\"> \r\nhttps://www.forgov.qld.gov.au/business-continuity-and-disaster-management\r\n</a></p>\r\n<p><a href=\"https://reliefweb.int/training/2629519/natural-disaster-management-and-business-continuity\">https://reliefweb.int/training/2629519/natural-disaster-management-and-business-continuity</a></p>\r\n\r\n</div>', '', 'https://res.cloudinary.com/the-morgans-consortium/image/upload/v1670938223/Grc%20magazine/covid-19_pwqfam.jpg', 1, '2022-12-13', '2020', 'Covid-19', NULL, NULL, 1),
(16, 'hevjhvjge euvuuye egeuge egiugegue eiugeigvd didiug', '<p>dhghgkdhhd dhgdgiuduvjdhjbjd dhdhkjdh dggfdhdjgjdgjjvdbksgjhs syuuydvghvchdcvjsvjhs sjvdvudvhvdhvvdjbsjkbjsvhshs svsuvsu sbksjbksbks sbjsjkbskbsbjvdhchdjbsjvds sjbsjksbkjbsjvdhcgdhgcdgh svshjvsvsjvs sjsjbsjvs sjhsjhvjsbkdbjkdbjvd djhdjhvbdjvhdvgd djvdjvdbkjsbkvdj</p>', '<p>dhghgkdhhd dhgdgiuduvjdhjbjd dhdhkjdh dggfdhdjgjdgjjvdbksgjhs syuuydvghvchdcvjsvjhs sjvdvudvhvdhvvdjbsjkbjsvhshs svsuvsu sbksjbksbks sbjsjkbskbsbjvdhchdjbsjvds sjbsjksbkjbsjvdhcgdhgcdgh svshjvsvsjvs sjsjbsjvs sjhsjhvjsbkdbjkdbjvd djhdjhvbdjvhdvgd djvdjvdbkjsbkvdj</p>', '<p>dhghgkdhhd dhgdgiuduvjdhjbjd dhdhkjdh dggfdhdjgjdgjjvdbksgjhs syuuydvghvchdcvjsvjhs sjvdvudvhvdhvvdjbsjkbjsvhshs svsuvsu sbksjbksbks sbjsjkbskbsbjvdhchdjbsjvds sjbsjksbkjbsjvdhcgdhgcdgh svshjvsvsjvs sjsjbsjvs sjhsjhvjsbkdbjkdbjvd djhdjhvbdjvhdvgd djvdjvdbkjsbkvdj</p>', '<p>dhghgkdhhd dhgdgiuduvjdhjbjd dhdhkjdh dggfdhdjgjdgjjvdbksgjhs syuuydvghvchdcvjsvjhs sjvdvudvhvdhvvdjbsjkbjsvhshs svsuvsu sbksjbksbks sbjsjkbskbsbjvdhchdjbsjvds sjbsjksbkjbsjvdhcgdhgcdgh svshjvsvsjvs sjsjbsjvs sjhsjhvjsbkdbjkdbjvd djhdjhvbdjvhdvgd djvdjvdbkjsbkvdj</p>', '<p>dhghgkdhhd dhgdgiuduvjdhjbjd dhdhkjdh dggfdhdjgjdgjjvdbksgjhs syuuydvghvchdcvjsvjhs sjvdvudvhvdhvvdjbsjkbjsvhshs svsuvsu sbksjbksbks sbjsjkbskbsbjvdhchdjbsjvds sjbsjksbkjbsjvdhcgdhgcdgh svshjvsvsjvs sjsjbsjvs sjhsjhvjsbkdbjkdbjvd djhdjhvbdjvhdvgd djvdjvdbkjsbkvdj</p>', '<p>dhghgkdhhd dhgdgiuduvjdhjbjd dhdhkjdh dggfdhdjgjdgjjvdbksgjhs syuuydvghvchdcvjsvjhs sjvdvudvhvdhvvdjbsjkbjsvhshs svsuvsu sbksjbksbks sbjsjkbskbsbjvdhchdjbsjvds sjbsjksbkjbsjvdhcgdhgcdgh svshjvsvsjvs sjsjbsjvs sjhsjhvjsbkdbjkdbjvd djhdjhvbdjvhdvgd djvdjvdbkjsbkvdj</p>', 'https://res.cloudinary.com/the-morgans-consortium/image/upload/v1677477092/GRC_Magine_upload/hntcl4pbuin6vvcnyav3.jpg', 1, '2023-01-30', NULL, 'Banking', '2023-02-27 04:51:32', '2023-02-27 04:51:32', 0);

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `author` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `author`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Dr Foluso Amusa', 1, NULL, NULL),
(2, 'stepheen', 6, '2023-03-15 12:46:31', '2023-03-15 12:46:31');

-- --------------------------------------------------------

--
-- Table structure for table `chats`
--

CREATE TABLE `chats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `send_id` tinyint(4) DEFAULT NULL,
  `rec_id` tinyint(4) DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chats`
--

INSERT INTO `chats` (`id`, `send_id`, `rec_id`, `message`, `created_at`, `updated_at`) VALUES
(1, 5, 2, NULL, '2023-02-04 14:28:42', '2023-02-04 14:28:42'),
(2, 5, 2, NULL, '2023-02-04 14:29:08', '2023-02-04 14:29:08');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `articles_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `message`, `articles_id`, `created_at`, `updated_at`) VALUES
(1, 'stepheen', 'stephen@gmail.com', 'nenfejbehjhrjhjer rejerkjer erkjkrejenmmfkfoeoopef eooer', 14, '2023-03-21 07:45:16', '2023-03-21 07:45:16'),
(2, 'stepheen', 'stephen@gmail.com', 'dhrjhjerhjjkehjkhekjklhkjewirbhb', 2, '2023-03-31 11:49:59', '2023-03-31 11:49:59'),
(3, 'stepheen', 'stephen@gmail.com', 'khqhkjqhjehjqjeq we ewkjwejhew wekkjwejk', 2, '2023-03-31 12:01:55', '2023-03-31 12:01:55'),
(4, 'stepheen', 'stephen@gmail.com', 'jhevjhvghjvjhew wejvewhjbghjewbjwe ewkwegiuewgiew ewewhweuewhjjkew ewweuue', 2, '2023-03-31 12:09:09', '2023-03-31 12:09:09'),
(5, 'stepheen', 'stephen@gmail.com', 'nhjwdhjjhwqhjeqw ewkhkjwjwe', 2, '2023-03-31 12:16:58', '2023-03-31 12:16:58'),
(6, 'stepheen', 'stephen@gmail.com', 'cjhgjguygeuqvew jweigudibkkbqbkhdqvwj djq ihdguyduqhbdq', 2, '2023-03-31 12:21:38', '2023-03-31 12:21:38'),
(7, 'stepheen', 'stephen@gmail.com', 'nkwhejwnwe wekeiuyuewbq wqhgduyeq xqw', 2, '2023-03-31 12:22:57', '2023-03-31 12:22:57'),
(8, 'stepheen', 'stephen@gmail.com', 'dkkhjeejhr bigduigudefed qjhhewjjhew ewhhew', 2, '2023-03-31 12:24:57', '2023-03-31 12:24:57');

-- --------------------------------------------------------

--
-- Table structure for table `contactmodels`
--

CREATE TABLE `contactmodels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messagechats`
--

CREATE TABLE `messagechats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `send_id` tinyint(4) DEFAULT NULL,
  `rec_id` tinyint(4) DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `uniquecode` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messagechats`
--

INSERT INTO `messagechats` (`id`, `send_id`, `rec_id`, `message`, `status`, `uniquecode`, `created_at`, `updated_at`) VALUES
(1, 6, 5, 'vchgchgcgxxhchf', 1, 'bac874123476e3daed403f80d4877aecf63c05fc', '2023-02-08 09:44:55', '2023-02-08 13:45:57'),
(2, 5, 6, 'i am fine', 1, 'bac874123476e3daed403f80d4877aecf63c05fc', '2023-02-08 09:50:34', '2023-02-08 13:13:41'),
(3, 6, 5, 'dnkkw rkjhrjwe rwjuiow', 1, 'bac874123476e3daed403f80d4877aecf63c05fc', '2023-02-08 09:51:21', '2023-02-08 13:45:57'),
(4, 6, 5, 'hdiiud sisuiyiuus', 1, 'bac874123476e3daed403f80d4877aecf63c05fc', '2023-02-08 09:58:48', '2023-02-08 13:45:57'),
(5, 6, 5, 'i am here', 1, 'bac874123476e3daed403f80d4877aecf63c05fc', '2023-02-08 10:06:43', '2023-02-08 13:45:57'),
(6, 6, 5, 'hello', 1, 'bac874123476e3daed403f80d4877aecf63c05fc', '2023-02-08 10:08:08', '2023-02-08 13:45:57'),
(7, 6, 5, 'hello', 1, 'bac874123476e3daed403f80d4877aecf63c05fc', '2023-02-08 10:15:10', '2023-02-08 13:45:57'),
(8, 5, 6, 'i am here', 1, 'bac874123476e3daed403f80d4877aecf63c05fc', '2023-02-08 10:15:30', '2023-02-08 13:13:41'),
(9, 6, 5, 'cool', 1, 'bac874123476e3daed403f80d4877aecf63c05fc', '2023-02-08 10:18:35', '2023-02-08 13:45:57'),
(10, 5, 6, 'nice', 1, 'bac874123476e3daed403f80d4877aecf63c05fc', '2023-02-08 10:20:50', '2023-02-08 13:13:41'),
(11, 5, 6, 'how are you', 1, 'bac874123476e3daed403f80d4877aecf63c05fc', '2023-02-08 10:40:59', '2023-02-08 13:13:41'),
(12, 6, 5, 'i am fine and you', 1, 'bac874123476e3daed403f80d4877aecf63c05fc', '2023-02-08 10:45:14', '2023-02-08 13:45:57'),
(13, 6, 5, 'how are you', 1, 'bac874123476e3daed403f80d4877aecf63c05fc', '2023-04-20 08:07:26', '2023-04-20 08:08:15'),
(14, 5, 6, 'i am fine and you', 1, 'bac874123476e3daed403f80d4877aecf63c05fc', '2023-04-20 08:08:15', '2023-04-25 09:32:07'),
(15, 6, 5, 'hello', 1, 'bac874123476e3daed403f80d4877aecf63c05fc', '2023-05-02 05:50:58', '2023-05-02 05:51:20'),
(16, 5, 6, 'i am fine', 1, 'bac874123476e3daed403f80d4877aecf63c05fc', '2023-05-02 05:51:20', '2023-05-02 05:52:03'),
(17, 6, 5, 'how was your night rest', 0, 'bac874123476e3daed403f80d4877aecf63c05fc', '2023-05-02 05:52:03', '2023-05-02 05:52:03'),
(18, 6, 5, 'how was your night rest', 0, 'bac874123476e3daed403f80d4877aecf63c05fc', '2023-05-02 05:52:05', '2023-05-02 05:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_15_080629_create_contactmodels_table', 2),
(6, '2023_01_25_064049_create_authors_table', 3),
(7, '2023_01_25_124116_create_profiles_table', 4),
(8, '2023_02_04_093112_create_chats_table', 5),
(9, '2023_02_02_130952_create_messagechats_table', 6),
(10, '2023_02_07_105421_create_unqines_table', 7),
(11, '2023_02_17_103855_create_notifies_table', 8),
(12, '2023_03_08_074038_create_subcriptions_table', 9),
(13, '2023_03_15_093531_create_payments_table', 10),
(14, '2023_03_15_093540_create_payments_table', 11),
(15, '2023_03_17_133759_create_advestments_table', 12),
(16, '2022_12_10_115460_create_comments_table', 13),
(17, '2023_03_21_085002_create_replies_table', 14),
(18, '2023_04_03_142411_create_reports_table', 15),
(19, '2023_04_24_111151_create_advertpayments_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `notifies`
--

CREATE TABLE `notifies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifies`
--

INSERT INTO `notifies` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'stephen@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `plan_name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` bigint(20) UNSIGNED DEFAULT NULL,
  `code` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `days` bigint(20) UNSIGNED DEFAULT NULL,
  `number_of_article` bigint(20) UNSIGNED DEFAULT NULL,
  `remaining_days` mediumint(9) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `plan_name`, `price`, `code`, `message`, `user_id`, `status`, `days`, `number_of_article`, `remaining_days`, `created_at`, `updated_at`) VALUES
(1, 'Basic', 2000, 'T513510316134158', 'Verification successful', 1, 'Active', 25, 10, NULL, '2023-03-15 09:33:19', '2023-03-15 09:33:19'),
(3, 'Basic', 2000, 'T210182403736725', 'Verification successful', 6, 'Expired', 25, 10, NULL, '2023-03-31 08:45:36', '2023-04-25 08:30:22');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(12, 'App\\Models\\User', 5, 'my-app-token', '50792a9f417c97a1ca0377e2bcec177df70b7d55752562aeaeda94fbed1a739c', '[\"*\"]', '2023-02-04 14:29:08', NULL, '2023-01-26 16:47:56', '2023-02-04 14:29:08'),
(14, 'App\\Models\\User', 5, 'my-app-token', 'e472fab55ae9e7b9ccfa96aad5512a6b1bf44046298a92b42a2236ec755ff091', '[\"*\"]', '2023-02-08 14:40:01', NULL, '2023-02-08 09:32:51', '2023-02-08 14:40:01'),
(34, 'App\\Models\\User', 5, 'my-app-token', '492bc6e51d20b9c9dc5a4622ceb85a442ee0a5ca364a10b6ae22ff6892d90749', '[\"*\"]', '2023-04-20 10:07:42', NULL, '2023-04-20 07:59:36', '2023-04-20 10:07:42'),
(43, 'App\\Models\\User', 6, 'my-app-token', 'e093b975dadc901e9d6e4e1fa428f013e45d3c6f30999cf462d06c247cc2cfea', '[\"*\"]', '2023-05-02 06:51:52', NULL, '2023-04-25 12:07:06', '2023-05-02 06:51:52'),
(44, 'App\\Models\\User', 5, 'my-app-token', 'a8709990e8110aaf178740dabd439fab3c9daff00e26ce09117a3a513d6e2f93', '[\"*\"]', '2023-05-02 05:51:20', NULL, '2023-05-02 05:34:04', '2023-05-02 05:51:20');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `picture` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` mediumint(9) DEFAULT NULL,
  `state` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `name`, `email`, `picture`, `phone`, `state`, `country`, `city`, `zipcode`, `created_at`, `updated_at`) VALUES
(1, 'Stephen Okpeku', 'stephenjason41@gmail.com', '', 8388607, 'ANAMBRA', 'Nigeria', 'Lagos', '100001', '2023-01-25 12:08:21', '2023-01-25 12:08:21'),
(2, 'stepheen', 'stephen@gmail.com', 'https://res.cloudinary.com/the-morgans-consortium/image/upload/v1677181570/GRC_Magine_upload/swdbyiszzspyhftnfs83.jpg', NULL, NULL, NULL, NULL, NULL, '2023-02-23 18:46:09', '2023-02-23 18:46:09');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` mediumint(9) DEFAULT NULL,
  `article_id` mediumint(9) DEFAULT NULL,
  `name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `comment_id`, `article_id`, `name`, `email`, `message`, `created_at`, `updated_at`) VALUES
(4, 1, 14, 'stepheen', 'stephen@gmail.com', 'nbdsbjdbsd dskjhdigjsdgjd sdhodshids dskbdjkhdshdakjsdhds dsdshdsiugyiusd', '2023-03-21 09:33:40', '2023-03-21 09:33:40'),
(5, 1, 14, 'stepheen', 'stephen@gmail.com', 'nbdsbjdbsd dskjhdigjsdgjd sdhodshids dskbdjkhdshdakjsdhds dsdshdsiugyiusd', '2023-03-21 09:36:59', '2023-03-21 09:36:59'),
(6, 1, 14, 'stepheen', 'stephen@gmail.com', 'nbdsbjdbsd dskjhdigjsdgjd sdhodshids dskbdjkhdshdakjsdhds dsdshdsiugyiusd', '2023-03-21 09:37:27', '2023-03-21 09:37:27');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` mediumint(9) DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_id` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcriptions`
--

CREATE TABLE `subcriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` bigint(20) UNSIGNED DEFAULT NULL,
  `days` tinyint(3) UNSIGNED DEFAULT NULL,
  `number_of_article` mediumint(9) DEFAULT NULL,
  `bodys` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcriptions`
--

INSERT INTO `subcriptions` (`id`, `name`, `price`, `days`, `number_of_article`, `bodys`, `created_at`, `updated_at`) VALUES
(4, 'Extra', 3000, 30, 15, 'ugiugiujchgdhdgf huiuyuyvbhjjkuivgf', '2023-03-15 06:46:41', '2023-03-15 06:46:41'),
(5, 'Super', 4000, 40, 20, 'gfhghgfhgfhf uigyufuyfyudydytdudytdtrhggvjvh kjgggvhgch hjhgkgkhg iouiugifhgjhgguy', '2023-03-15 06:49:45', '2023-03-15 06:49:45'),
(6, 'Basic', 2000, 25, 10, 'hugfuyfuy ytuyuyguyguyyyuuyygyuguygu ygyuguyguygug uyguyguyguygu', '2023-03-15 06:51:38', '2023-03-15 06:51:38');

-- --------------------------------------------------------

--
-- Table structure for table `unqines`
--

CREATE TABLE `unqines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `send_id` tinyint(4) DEFAULT NULL,
  `rec_id` tinyint(4) DEFAULT NULL,
  `uniquecode` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `unqines`
--

INSERT INTO `unqines` (`id`, `send_id`, `rec_id`, `uniquecode`, `created_at`, `updated_at`) VALUES
(1, 6, 5, 'bac874123476e3daed403f80d4877aecf63c05fc', '2023-02-08 09:40:44', '2023-02-08 09:40:44'),
(2, 5, 2, 'f0afbe6ee2d467b8219d3a16e69e66debf002a1a', '2023-02-08 09:42:02', '2023-02-08 09:42:02'),
(3, 6, 2, '8bc2e4040736af97281a326606525b447cd8c7a7', '2023-02-08 10:59:18', '2023-02-08 10:59:18'),
(4, 6, 1, '6091004c09bf3b5280c8c9710d8041701a862933', '2023-02-08 10:59:24', '2023-02-08 10:59:24'),
(5, 5, 1, '50480f7402cc07855fb8c3a6a2fb41a08c841f79', '2023-02-08 11:19:56', '2023-02-08 11:19:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_email` tinyint(1) NOT NULL DEFAULT 0,
  `confirmed_code` tinytext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `picture` tinytext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `user_type`, `confirmed_email`, `confirmed_code`, `api_token`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `picture`) VALUES
(1, 'The Morgan\'s', 'thetmcinstitute@gmail.com', 'Admin', 0, NULL, '35|TUo0CdZ2IhQMnRLowjP9SOY1T2EwSJ1whBf3xNdi', NULL, '$2y$10$yeXqM1qnJbLncJNItOPCVe/LDy88k78kRit828szA0oEII6gQJ.8W', NULL, NULL, '2023-04-20 09:21:09', ''),
(2, 'stephen', 'thechideraajoke@gmail.com', 'Admin', 1, NULL, '', NULL, '$2y$10$sSEuTH6nI.NayEXBsBaSh.X0oM2I7nT5dvTAv5kOah.jdWbyq36Gy', NULL, '2023-01-20 12:34:43', '2023-01-20 12:34:43', ''),
(5, 'jason ryan', 'jasonblack@gmail.com', 'User', 1, 'db01e2eb061a50bbe4b1cf76bd49381dc08515ef', '44|qRyS33xbCbhharkI3Le9yHqLPmsrpvqxrTDwYT29', NULL, '$2y$10$Ewar8HX./AGev3bSf1VLOueYYaVeziKOsOoeiqwAfYQsk3MojTuFi', NULL, '2023-01-26 15:53:39', '2023-05-02 05:34:04', ''),
(6, 'stepheen', 'stephen@gmail.com', 'User', 1, '3e816ae959658525cd0c8fafabe1552e92e1da8fa', '43|rgP8At4GWADR6H6mQsVPk5GJLtFJHoNwU4xzA0he', NULL, '$2y$10$yeXqM1qnJbLncJNItOPCVe/LDy88k78kRit828szA0oEII6gQJ.8W', NULL, '2023-02-05 06:30:00', '2023-04-25 12:07:06', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertpayments`
--
ALTER TABLE `advertpayments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advertpayments_advestments_id_foreign` (`advestments_id`),
  ADD KEY `advertpayments_user_id_foreign` (`user_id`);

--
-- Indexes for table `advestments`
--
ALTER TABLE `advestments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authors_user_id_foreign` (`user_id`);

--
-- Indexes for table `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactmodels`
--
ALTER TABLE `contactmodels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `messagechats`
--
ALTER TABLE `messagechats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifies`
--
ALTER TABLE `notifies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcriptions`
--
ALTER TABLE `subcriptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unqines`
--
ALTER TABLE `unqines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertpayments`
--
ALTER TABLE `advertpayments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `advestments`
--
ALTER TABLE `advestments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `chats`
--
ALTER TABLE `chats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contactmodels`
--
ALTER TABLE `contactmodels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messagechats`
--
ALTER TABLE `messagechats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `notifies`
--
ALTER TABLE `notifies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcriptions`
--
ALTER TABLE `subcriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `unqines`
--
ALTER TABLE `unqines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `advertpayments`
--
ALTER TABLE `advertpayments`
  ADD CONSTRAINT `advertpayments_advestments_id_foreign` FOREIGN KEY (`advestments_id`) REFERENCES `advestments` (`id`),
  ADD CONSTRAINT `advertpayments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `authors`
--
ALTER TABLE `authors`
  ADD CONSTRAINT `authors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
