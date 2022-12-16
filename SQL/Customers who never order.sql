

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| name        | varchar |
+-------------+---------+
id is the primary key column for this table.
Each row of this table indicates the ID and name of a customer.



+-------------+------+
| Column Name | Type |
+-------------+------+
| id          | int  |
| customerId  | int  |
+-------------+------+
id is the primary key column for this table.
customerId is a foreign key of the ID from the Customers table.
Each row of this table indicates the ID of an order and the ID of the customer who ordered it.










Input:                                                                                                        
Customers table:                                                                                                                                            
+----+-------+
| id | name  |                                                                                               
+----+-------+
| 1  | Joe   |
| 2  | Henry |                                                                                                                         
| 3  | Sam   |                 
| 4  | Max   |                                                                                                                  
+----+-------+
Orders table:          
+----+------------+
| id | customerId |
+----+------------+
| 1  | 3          |
| 2  | 1          |
+----+------------+
Output: 
+-----------+
| Customers |
+-----------+
| Henry     |
| Max       |
+-----------+


SOLUTION
SELECT name as customers FROM Customers WHERE id not in (SELECT customerId FROM Orders);
