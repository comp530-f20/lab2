all: th_alloc test

th_alloc: th_alloc.c
	gcc -fPIC -Wall -Wextra -g -shared th_alloc.c -o th_alloc.so

test: test.c
	gcc -Wall -Wextra -g test.c -o test

update:
	git pull https://github.com/comp530-f20/lab2.git master


clean:
	rm -f test th_alloc.so
