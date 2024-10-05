opening
* `with open("[filename]", "[option]") as var` (opens and automatically closes the file)
	* treat as function 
	  ![[Pasted image 20240202144622.png]]
- OR use `var = open('[filename]', '[option]')`
	- `w`:
		- Opens a file for writing and creates a new file if it doesn't yet exist. In the case that the file does exist, it overwrites it.
	- `w+`:
		- Opens a file for writing but also for reading and creating it if it doesn't exist. If a file already exists, it overwrites it.
	- `r` (default): 
		- Opens a file for reading only.
	- `rb`:
		- Opens a file for reading in Binary format.
	- `wb`:
		- Opens a file for writing in Binary format.
	- `wb+`:
		- Opens a file for writing and reading in Binary format.
	- `a`:
		- Opens a file for appending at the end of the file.
	- `+`: 
		- In general, this character is used along side `r`, `w`, or `a` and means both writing and reading.
- always end with .close()
deleting
- ```import os 
  os.remove('filename')```
