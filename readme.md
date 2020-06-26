# How to use this project?
<span style="color:green">In the current project folder and run in terminal</span>

### Step 1:
`composer install`

<br />

### Step 2:
`npm install`

<br />

### Step 3 :
Configure the database connection in the file **.env**

<br />

### Step 4 :
##### In your database management system create a database called "blog_laravel"

Creating tables and generating data  for them in Laravel


Factories

`php artisan make:factory UserFactory --model=User`

`php artisan make:factory PostFactory --model=Post`


Seed

`php artisan db:seed --class=DatabaseSeeder`

****
Or import the finished dump database **blog_laravel.sql**

UNIX

`shell> mysql blog_laravel < blog_laravel.sql`


The same in Windows command prompt:

`mysql -p -u [username] blog_laravel < blog_laravel.sql`


MySQL command line

```
mysql> use blog_laravel;
mysql> source blog_laravel.sql;
```


<br />

### Step 5 :
`php artisan serve`
