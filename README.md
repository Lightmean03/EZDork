# EZDork - Google Dorking Shell Script

## Overview
EZDork is a simple yet powerful shell script designed to facilitate Google Dorking, allowing users to construct advanced search queries to find specific information on the web. With EZDork, you can easily customize your Google search queries using various operators, such as page title, URL requirements, file types, in-text requirements, location, date options, language, and more.

## Usage
1. Run the script in your terminal by executing the following command:
   ```bash
   ./EZDork.sh
   ```

2. Follow the on-screen prompts to build your custom Google search query.

3. Select from a variety of options to refine your search criteria, including adding page titles, specifying URL requirements, setting file types, including in-text requirements, defining location, and choosing date options and language.

4. The script will generate and display the corresponding Google search query based on your selected options.

5. Use the generated URL to perform a Google search and obtain tailored search results.

## Features
- **Page Title:** Add specific page titles to your search query.
- **URL Requirement:** Include or exclude specific URLs in your search.
- **Filetype:** Search for specific file types.
- **In Text Requirement:** Find pages with specific text content.
- **Location:** Narrow down results based on geographic location.
- **Date Options:** Specify dates, date ranges, or search for results before or after a given date.
- **Language:** Select a language for the search results.

## Examples
Here are some example queries you can construct using EZDork:
- Search for pages with the title "security" in the URL and containing PDF files:
  ```bash
  google.com/search?q="intitle:security allinurl:pdf"
  ```
- Find pages with the text "vulnerability" in the URL, excluding results from example.com, and published after 2022-01-01:
  ```bash
  google.com/search?q="allinurl:vulnerability -site:example.com after:2022-01-01"
  ```

## Notes
- Use responsibly and respect ethical and legal considerations.
- Keep in mind that Google may impose limitations on automated searches.

Feel free to customize and enhance EZDork based on your specific needs!
