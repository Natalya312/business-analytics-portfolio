# Logistics Event Analytics

## Project Overview

Analysis of 5 million logistics events using SQL Server.

## Tools
- SQL Server
- SQL
- Power BI

## Business Questions

- Which events occur most frequently?
- Which ports have the highest activity?
- Which locations have the highest delays?
- What causes shipment delays?
- How are IoT sensors used?

## Key Findings

- Arrival and departure are the most common events.
- Hamburg_HHLA has one of the highest average delays.
- Reroute and mechanical_stop generate the largest delays.
- IoT sensors are widely used across shipments.
## SQL Results

### Most Frequent Events
![Most Frequent Events](event_type_frequency.png)

### Most Active Ports
![Most Active Ports](top_locations.png)

### Average Delay by Location
![Average Delay by Location](delay_by_location.png)
## Analysis Files

- [Most Active Ports](top_locations.md)
- [Average Delay by Location](average_delay_by_location.md)
- [Event Type Frequency](event_type_frequency.md)
- [SQL Queries](sql_analysis.sql)
