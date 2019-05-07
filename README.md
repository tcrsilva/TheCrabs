# The Crabs

Gerenciador de condomínios / Perfil do Síndico

## Getting Started
Desenvolvido para a segunda avaliação da disciplina de Desenvolvimento para Servidores I pelos alunos da Fatec Santos.
Ambiente de produção em máquina virtual, c9.

### Prerequisites
É necessário ter instalado a linguagem Ruby e a framework On Rails. Portanto:

```
Install ruby
```

```
Install rails
```

## Running the tests
Os testes foram feitos com a gem RSpec. No terminal, usar o comando: 

```
rake spec
```

## Deployment

* Github (https://github.com/tcrsilva/projetop2)
* Heroku (https://secret-ocean-92133.herokuapp.com)

```
heroku info -s | grep https://secret-ocean-92133.herokuapp.com | cut -d = -f2
```

## Built With

- Ruby
- On Rails
- Postgre SQL
- HTML (Embedded Ruby)
- Bootstrap
- CoffeeScript
- JavaScript

## Authors
* **Francielle Zanella**
https://github.com/Franzanella
* **Juan Bertoluzzi**
https://github.com/juanbg10
* **Tais Silva**
https://github.com/tcrsilva

git pull



git status <br>
git add . <br>
git status<br>
git commit -m "teste"<br>
git push<br>

    <br> 1  ruby
    <br> 2  ruby --version
    <br> 3  gem install rails
<br>    4  mkdir app
<br>    5  cd app
    <br>6  git init
   <br>  7  rails new hello_app
 <br>    8  git add .
<br>     9  git commit -m "first"
 <br>   10  heroku login
 <br>   11  heroku add:key
<br>    12  heroku keys:add
<br>   13  bundle install --without production
<br>   14  cd hello_app/
<br>   15  c
<br>   16  bundle install --without production
<br>   17  git init
<br>   18  git add .
<br>   19  git commit -m "primeiro"
<br>   20  git push heroku master
<br>   21  heroku create
<br>   22  git push heroku master
<br>   23  git add .
<br>   24  git commit -m "primeiro2"
 <br>  25  git push heroku master
<br>   26  cd app/hello_app/
<br>   27  bundle install --without production
<br>   28  git add .
<br>   29  git commit -m "primeiro9"
 <br>  30  git push heroku master
 <br>  31  bundle exec rake -P
 <br>  32  git add .
<br>   33  git commit -m "primeiro9"
 <br>  34  git push heroku master
 <br>  35  bundle install --without production
 <br>  36  git add .
 <br>  37  git commit -m "primeiro9"
<br>   38  git push heroku master
<br>   39  bundle install --without production
 <br>  40  git add .
 <br>  41  git commit -m "primeiro9"
 <br>  42  git push heroku master
<br>   43  bundle install --without production
<br>   44  git add .
<br>   45  git commit -m "primeiro9"
<br>   46  git push heroku master
<br>   47  history
<br>   48  history > ../../cmmd
<br>   49  cd ..
<br>   50  rails new crud
<br>   51  cd crud/
<br>   52  bundle install --without production
<br>   53  git 
 <br>  54  git init
  <br> 55  git add .
 <br>  56  git commit -m "First"
<br>   57  git status
<br>   58  bundle install --without production
<br>   59  rails generate scaffold nome:string, idade:int
<br>   60  rails generate scaffold nome:string idade:int
 <br>  61  bundle install --without production
  <br> 62  rails generate scaffold nome:string idade:int
 <br>  63  rails generate scaffold Cliente nome:string idade:int
  <br> 64  rake db:migrate
<br>   65  rails generate scaffold Cliente nome:string idade:number
 <br>  66  rails generate scaffold Cliente nome:string idade:number --force
<br>   67  rake db:migrate
<br>   68  rails generate scaffold Cliente nome:string idade:integer --force
<br>   69  rake db:migrate
 <br>  70  rails server -b $IP -p $PORT
 <br>  71  cd apps/hello
 <br>  72  heroku login
 <br>  73  heroku open
<br>   74  git add .
<br>   75  git commit -m "procfile"
 <br>  76  git push heroku master
<br>   77  history > ../../cmmds1
<br>   78  rails generate controller teste page
<br>   79  rails server -b $IP -p $PORT
<br>   80  cd ..
 <br>  81  rails new cadastro
 <br>  82  cd cadastro/
 <br>  83  rails generate scaffold Cliente nome:string idade:int
  <br> 84  bundle install --without production
 <br>  85  rails generate scaffold Cliente nome:string idade:int
 <br>  86  rake db:migrate
 <br>  87  rails server -b $IP -p $PORT
 <br>  88  history > ../../cmmds1
 <br>  89  rails server -b $IP -p $PORT
  <br> 90  heroku login
<br>   91  git add .
<br>   92  git commit -m "primeiro commit"
 <br>  93  git push heroku master
  <br>  94  heroku create
 <br>   95  git push heroku master
  <br> 96  heroku run rails db:migrate
 <br>  97  history > ../../cmmds2

* ...
