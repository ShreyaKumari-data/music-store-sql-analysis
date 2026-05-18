## Music Store SQL Analysis

### Business Question
- Which genre generates the most sales revenue?
- Which track appears in the most playlists?
- Which sales agent has handled the most transactions?

### Dataset
Source: https://github.com/lerocha/chinook-database/blob/master/ChinookDatabase/DataSources/Chinook_MySql.sql
Tables: album, artist, customer, employee, genre, invoice, invoiceline, mediatype, playlist, playlisttrack, track

### Method
Firstly checked for all the table columns and identified primary keys and foreign keys in each table then joined the tables accpording to the business question to get the desired result.

### Key Findings
- Rock Genre generates highest revenue followed by Latin.
- Drama, Classical, R&B/Soul genres are least selling.
- Other than music customers are also interested in TV shows, maybe they like to binge watch. 
- Customers add classical tracks to the playlist and don't buy them separately that's why it's revenue is less but it is included in most of the playlist.
- Across 412 total transactions, three sales agents show similar but distinct performance patterns. The transaction counts and revenue are really close but Jane peacock leads it  but when we calculated revenue per transaction we found that steve has the highest revenue per transaction despite the lowest transaction count.

### Recommendation
- The store manager should keep more media in stock for high selling genres- Rock & Latin.
- The least selling genres- Drama, Classical, R&B/Soul- can be kept on discount or promote it so the customer takes a look on them and then also if the sales does not increase, we can discontinue them and focus on the genres with high sales
- Customers are interested in TV shows too. Unit Price is higher as compared to other genres so if focus on it more we can generate more revenue.
- Create an album of most played classical songs to attract customers or offer some discounts on them so they pick it.
- From the above finding, we can conclude from this observation that Steve focuses on quality of purchase and Jane is fast-paced so she focuses on quantity of sale.So manager should assign Steve for costlier albums and playlists and Jane for quick and bulk purchases

### Tools Used
MySQL — Multi-table JOINs, Aggregations, GROUP BY, WHERE filtering, subquery for genre identification
