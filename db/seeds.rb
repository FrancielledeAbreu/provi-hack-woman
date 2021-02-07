# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Users:
francielle = User.new(name:"Francielle de Abreu", job:"Front-end developer", email:"fran@gmail.com", password:"123456")
francielle.save!
amanda = User.new(name:"Amanda Bento", job:"Business Analyst", email:"mands@gmail.com", password:"123456")
amanda.save!

# Challenges:
ai = Challenge.new(name:"Inteligência Artificial", description:"Um dos maiores desafios é entender como as empresas estão 
se comportando neste cenário de pandemia. é preciso levantar, mapear e organizar o máximo de informações possíveis, 
criando soluções tecnológicas que possam ser associadas ao conceito de Inteligência Artificial e 
gerar dashboards dinâmicas, relatórios previsíveis ou ainda, projeções e simulações do futuro de empresas e do próprio mercado.",
  level:"hard", challenges_type:"team", status:"active", image: "https://thumbs.dreamstime.com/z/rounded-facebook-logo-web-print-transparent-white-background-use-printing-purpose-165757365.jpg")
ai.save!

frontend  = Challenge.new(name:"Front-end", description:"Queremos montar uma versão do blog da Apiki apenas para Devs, e queremos que
essa seja uma solução headless, esta nova versão terá as seguintes páginas: Página inicial: Listará as últimas postagens do blog com a 
categoria Desenvolvimento; Interna: Exibirá o conteúdo da postagem.",
level:"medium", challenges_type:"single", status:"active", image:"https://thumbs.dreamstime.com/z/simple-vector-filled-flat-amazon-icon-logo-solid-black-pictogram-isolated-white-background-amazon-logo-159029074.jpg")
frontend.save!

backend  = Challenge.new(name:"Back-end", description:"O teste consiste em criar uma mini API Rest utilizando Laravel como framework PHP, JWT 
como autenticação e um simples CRUD. Aqui na DIN DIGITAL nós costumamos trabalhar o desenvolvimento utilizando Docker como ambiente local 
(Laradock), então este repositório já está preparado para configurar a instância, basta possuir os requisitos de software e executar o comando 
de configuração automática do ambiente",
level:"easy", challenges_type:"single", status:"active", image:"https://thumbs.dreamstime.com/z/google-logo-white-background-vector-format-available-google-logo-124289805.jpg")
backend.save!

react = Challenge.new(name:"React & Redux", description:"Você não terá data de entrega limite para essa prova, mas fique atento pois vamos 
avaliar mais rigorosamente seu código quanto mais demorar para entregar a partir da data em que foi feito o fork desse repositório.
A ideia é simples, você terá que desenvolver um CRUD com dados falsos seguindo o protótipo abaixo.",
level: "hard", challenges_type: "team", status:"active", image:"https://thumbs.dreamstime.com/z/microsoft-logo-vector-format-available-illustrator-ai-microsoft-logo-122264907.jpg")
react.save!