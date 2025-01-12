# Lyngsat WebScraper

This project is a comprehensive web scraper designed to gather, process, and display information from the Lyngsat website. The data is extracted, stored in a MySQL database, and presented through a user-friendly local website built with Django. The website enables users to preview and filter the information efficiently.

## Features

- **Data Scraping**: Extracts structured data from the Lyngsat website, ensuring accurate and comprehensive information capture.
- **Data Storage**: Stores the scraped data in a MySQL database for efficient retrieval and management.
- **Data Manipulation**: Cleans and processes the data to enhance its usability and integrity.
- **Django Web Application**: Hosts a local website where users can browse, search, and filter the stored data.

## Database Design

The database design follows an entity-relationship model to ensure clarity and scalability. The Database has multiple tables such as:
- **channels table**
- networks table
-satellite_channels table
-satellite_networks table
-satellites table
-user_channel table
-user_network table
-users table


## Technologies Used

- **Python**: For building the scraper and backend logic.
- **BeautifulSoup / Scrapy**: For parsing and extracting HTML data.
- **MySQL**: Database to store and manage the scraped data.
- **Django**: Framework for creating the local website to display the data.
