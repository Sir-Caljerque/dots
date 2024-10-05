```bash
#!/bin/bash
if ["$1" == ""]; then
	echo "u forgor"
else
	for ip in seq 1 254; do
		ping -c1 $1.$ip | grep "64 bytes" | cut -d "" -f 4 | tr -d ":" &
done
fi
```
