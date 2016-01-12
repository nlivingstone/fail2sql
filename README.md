
# Fail2db v1.1
## Introduction
Fail2db is called by Fail2Ban and logs information to a database including geographical location and total ban count.
This information can then be used in reports, graphs or by third party programs to take further action such as permanent blocking, reporting to ISP etc..

Fail2db is written in PHP and makes use of the MaxMind GeoIP PHP API.

The following information is logged to MySQL:
Name (from fail2ban)
Protocol
Port
IP
Count (total banned)
Longitude
Latitude
Country Code
Geo Data (city, country)
First Attempt
Last Attempt

Sample Output:
[root@server fail2sql]# ./fail2sql -l
TODO: Add sample output

## Installation

1. Create a MySQL database called fail2ban
2. Create fail2ban MySQL user to access fail2db database (needs INSERT, UPDATE, DELETE)
3. Create table by piping fail2db.sql into mysql (mysql -u fail2ban -p fail2ban < fail2db.sql)
4. Edit fail2db and change home path and sql login details at the top of the file.
5. Update Geo IP Database (./fail2db -u)
6. Tell fail2ban to call fail2db by appending to actionban in your action script.

Example for /etc/fail2ban/action.d/iptables.conf

```
actionban = iptables -I fail2ban-<name> 1 -s <ip> -j DROP
            /usr/local/fail2db/fail2db <name> <protocol> <port> <ip>
```

## Usage

```
fail2db [-h|-l|-c|-u]
	-h: The help page
	-l: List all entries in the database
	-c: Clear the database and start fresh
	-u: Update GeoIP database (downloads from maxmind)
```
