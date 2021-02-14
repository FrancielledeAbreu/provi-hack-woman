# HACKAWORK API DOCUMENTATION

## Ruby version:
3.0.0

## Database:
PostgreSQL

## The application:
- The goal is to arrange users (job candidates) and challenges created by companies, inr order to feed the front-end application;
- Heroku was used for deployment;
- Postman was used for checking and testing the jasons content and API working.

## Before all:
Please, run:
```
rails db:migrate (for the database)
rails db:seed (for the database)
bundle install (to instal the gems)
```


## URL base:
```
https://provi-hack-api.herokuapp.com/
```

## Local URL used for tests in Postman:
```
localhost:3000/api/v1/<keyword>
```
The keyword is "challenge" when working on the challenges in the db, or "users" when working on users in the db.

# ENDPOINTS

##  GET users
Returns an array of hashes with the registered users in the database. 
An example of the body:
```
[{
        "id": 1,
        "name": "John Smith",
        "email": "johns@gmail.com",
        "password": "123456",
        "birthdate": null,
        "password_confirmation": null,
        "job": "Front-end developer",
        "experience": null,
        "created_at": "2021-02-06T23:28:48.346Z",
        "updated_at": "2021-02-06T23:28:48.346Z"
    },
    {
        "id": 2,
        "name": "Ana Carolina",
        "email": "ana@gmail.com",
        "password": "123456",
        "birthdate": null,
        "password_confirmation": null,
        "job": "Business Analyst",
        "experience": null,
        "created_at": "2021-02-06T23:23:42.376Z",
        "updated_at": "2021-02-06T23:29:42.376Z"
    }]
```
## GET users/id
Returns a hash with the user who has the specified id pointed in the url. 
Example, returning the user with id 4:
```
{
    "id": 4,
    "name": "Amanda Bento",
    "email": "mands@gmail.com",
    "password": "123456",
    "birthdate": null,
    "password_confirmation": null,
    "job": "Business Analyst",
    "experience": null,
    "created_at": "2021-02-06T23:28:48.376Z",
    "updated_at": "2021-02-06T23:28:48.376Z"
}
```

## POST user
Creates a user in the database which name, password and email are mandatory fields.

## PUT user/id
Enables to edit the user´s information. The id points to a specific user.

## GET challenges
Returns an array of hashes with the registered challenges in the database. The column 'level' shows if the challenge is 'hard', 'medium' or 'easy'; 'Challenges_type' shows if it is supposed to be solved by one person ('single'), or by a team ('team'); Status 'active' sets that a challenge is available in the application, while status 'inactive' disables it, and register for this specific challenge is no long possible.
An example of the body:
```
[
  {
    "id": 9,
    "name": "Front-end",
    "description": "Queremos montar uma versão do blog da Apiki apenas para Devs, e queremos que\nessa seja uma solução headless, esta nova versão terá as seguintes páginas: Página inicial: Listará as últimas postagens do blog com a \ncategoria Desenvolvimento; Interna: Exibirá o conteúdo da postagem.",
    "level": "medium",
    "challenges_type": "single",
    "status": "active",
    "created_at": "2021-02-06T23:28:48.422Z",
    "updated_at": "2021-02-06T23:28:48.422Z",
    "image": "https://image.freepik.com/fotos-gratis/ilustracao-da-palavra-da-imagem_93826-815.jpg"
  },
  {
    "id": 10,
    "name": "Back-end",
    "description": "O teste consiste em criar uma mini API Rest utilizando Laravel como framework PHP, JWT \ncomo autenticação e um simples CRUD. Aqui na DIN DIGITAL nós costumamos trabalhar o desenvolvimento utilizando Docker como ambiente local \n(Laradock), então este repositório já está preparado para configurar a instância, basta possuir os requisitos de software e executar o comando \nde configuração automática do ambiente",
    "level": "easy",
    "challenges_type": "single",
    "status": "active",
    "created_at": "2021-02-06T23:28:48.433Z",
    "updated_at": "2021-02-06T23:28:48.433Z",
    "image": "https://image.freepik.com/vetores-gratis/logotipo-da-aguia_7207-16.jpg"
  },
]
```
## GET challenges/id
Returns a hash with the challenge which has the specified id pointed in the url. 
Example, returning the challenge with id 11:
```
{
  "id": 11,
  "name": "React & Redux",
  "description": "Você não terá data de entrega limite para essa prova, mas fique atento pois vamos \navaliar mais rigorosamente seu código quanto mais demorar para entregar a partir da data em que foi feito o fork desse repositório.\nA ideia é simples, você terá que desenvolver um CRUD com dados falsos seguindo o protótipo abaixo.",
  "level": "hard",
  "challenges_type": "team",
  "status": "active",
  "created_at": "2021-02-06T23:28:48.449Z",
  "updated_at": "2021-02-06T23:28:48.449Z",
  "image": "https://image.freepik.com/vetores-gratis/o-casino-corta-o-projeto-dos-desenhos-animados-do-dinheiro-da-moeda-dobro_24908-29868.jpg"
  "2021-02-06T23:28:48.376Z"
}
```
## POST challenges
Creates a challenge in the database which name and description are mandatory fields.

## PUT challenges/id
Enables to edit the challenges´s information. The id points to a specific challenge.

## DELETE challenges/id
It is possible to delete a challenge when it has the status = "inactive". Otherwise it will return an error and wont be deleted.

## POST user_challenges
When a user applies for a challenge, the application verifies if the id of that challenge and that user exist in the db. If both of them is true, it creates an association in the database, with the corresponding ids.

# FILTERS
It is possible to filter the challenges by 'type' (single or team), and by existing words in the name (Ex: search for 'Back-end', will return all the challenges that contains the word 'back-end' in the name).

# GEMS
This application requires the gems:
- rails;
- rack-cors;
- puma;
- pg;
- pry-byebug (for testing while the program was developed).

Please, run **bundle install** in you terminal to install these gems.

# TESTING and DEBUGGING
To test the endpoints **POSTMAN** was used. You can donwload it here: https://www.postman.com/downloads/
To debug and find errors in the code, the gem **pry-byebug** was installed and used.

# OBSERVATIONS
This API is the back-end part of the HackaWork app. It allows the front-end to use and access the data, using HTTP requests.

