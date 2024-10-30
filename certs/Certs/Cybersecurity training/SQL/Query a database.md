* Syntax (not case-sensitive), end the query with semicolon ( ; )
	* SELECT [column] FROM [database]
		* ex. 
			* `SELECT customerid, city, country FROM customers;`
			* `SELECT * FROM [db] - selects all from database db`
	* Filters
		*  ORDER BY
			* `SELECT * FROM [db]`
				`ORDER BY [filter];`
			* use DESC to order in descending order
				* `*** ORDER BY [filter] DESC;`
			* can have multiple args in ORDER BY
		* WHERE  and LIKE clause
			* `WHERE` clause instructs SQL to return only those that contain the string in the given column
			* ex. 
				* `SELECT firstname, lastname, title, email`
					  `FROM employees`
					  `WHERE title = 'IT Staff';`
				* returns columns [firstname, lastname, title, email] from [employees] db that have the title [IT Staff]
			* `LIKE`
				* You can also filter based on a pattern. For example, you can identify entries that start or end with a certain character or characters. Filtering for a pattern requires incorporating two more elements into your WHERE clause:
					* a wildcard
					* a `LIKE` operator
				* A **wildcard** is a special character that can be substituted with any other character. Two of the most useful wildcards are the percentage sign (%) and the underscore (_):
					- The percentage sign substitutes for any number of other characters. 
					- The underscore symbol only substitutes for one other character.
				- These wildcards can be placed after a string, before a string, or in both locations depending on the pattern you’re filtering for.
				- The following table includes these wildcards applied to the string 'a' and examples of what each pattern would return.
                - [!SEE BELOW]
				- ex.
					- `*** WHERE` [column] `LIKE `[w] `string` [w];
					- [ w ] is a wildcard
				- Logical operators still apply [>, <, =, >=, <=, (<>, !=)]
					- [<>] is the same as !=
				- `BETWEEN` 
					- `BETWEEN` filters for numbers or dates within a range
					- `*** WHERE` [column] `BETWEEN `[value] `AND` [value]`;`
				- `AND`, `OR`, and `NOT`
					- self- explanatory
					- `*** WHERE` [condition] `{AND, OR, NOT}` [condition]`;`
	- Joins
		- `SELECT *`
			`FROM` [left table]
			[type]`JOIN` [right table] `ON` [right table].[column] `=` [left table].[column]
			- `INNER JOIN`
				- `INNER JOIN` returns rows matching on a specified column that exists in more than one table.
				- ![[inner_join.png]]
			- `LEFT JOIN`
				- `LEFT JOIN` returns all the records of the first table, but only returns rows of the second table that match on a specified column
				- ![[left_join.png]]
			- `RIGHT JOIN`
				- `RIGHT JOIN` returns all of the records of the second table, but only returns rows from the first table that match on a specified column
				- ![[right_join.png]]
			- `FULL OUTER JOIN`
				- `FULL OUTER JOIN` returns all records from both tables. You can think of it as a way of completely merging two tables
				- ![[full_outer_join.png]]
	* Extras
		* **aggregate functions** are functions that perform a calculation over multiple data points and return the result of the calculation. The actual data is not returned
			* `COUNT` returns a single number that represents the number of rows returned from your query
				* ![[Pasted image 20240209193012.png]]
				* ![[Pasted image 20240209193053.png]]
				- See below for non-image code
			* `AVG` returns a single number that represents the average of the numerical data in a column
			* `SUM` returns a single number that represents the sum of the numerical data in a column


| Pattern | Results that could be returned |
| ------- | ------------------------------ |
| 'a%'    | apple123, art, a               |
| 'a_'    | as, an, a7                     |
| 'a__'   | ant, add, a1c                  |
| '_a'    | ma, la, Ha                     |
| '%a'    | pizza, Z6ra, a                 |
| '%a%'   | Again, back, a                 |
| '__a__' | Car, ban, ea7                  |

```sql
SELECT COUNT(firstname)
FROM customers
```
outputs
```
+------------------+
| COUNT(firstname) |
+------------------+
|                59|
+------------------+
```

```sql
SELECT COUNT(firstname)
FROM customers
WHERE country = 'USA';
```
outputs
```
+------------------+
| COUNT(firstname) |
+------------------+
|                13|
+------------------+
```