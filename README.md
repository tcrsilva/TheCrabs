# The Crabs

Gerenciador de condomínios / Perfil do Síndico

## Getting Started
Desenvolvido para a segunda avaliação da disciplina de Desenvolvimento para Servidores I pelos alunos da Fatec Santos.
Ambiente de produção em máquina virtual, c9.

### Prerequisites
É necessário ter instalado a linguagem Ruby e a framework On Rails. Portanto:

```
install ruby
```

```
gem install rails
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
