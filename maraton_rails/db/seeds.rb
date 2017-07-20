
#user
User.create(name: "xochitl", email: "xoch@", password: "xo")
User.create(name: "adrian", email: "ad@", password: "ad")
User.create(name: "victor", email: "vic@", password: "vi")
User.create(name: "angela", email: "angi@", password: "an")


#deck
Deck.create(subject: "Infantil")
Deck.create(subject: "General")
Deck.create(subject: "Capitales")

#Preguntas Deck1: Infantil
Card.create(deck_id: 1, text: "¿Cómo se llama el más chiquito de los enanos de Blanca Nieves?")
Card.create(deck_id: 1, text: "Nombre de la niña que visitó 'El País de las Maravillas'" )
Card.create(deck_id: 1, text: "¿Qué animal se tragó a Gepetto y a Pinocho?")
Card.create(deck_id: 1, text: "¿Cómo se llama la novia del fortachón 'Popeye el Marino'?")
Card.create(deck_id: 1, text: "¿A quién le crecía la nariz siempre que decía mentiras?")

Answer.create(card_id: 1, option: "Tontín", status: true)
Answer.create(card_id: 1, option: "Gruñon", status: false)
Answer.create(card_id: 1, option: "Cariñoso", status: false)
Answer.create(card_id: 2, option: "Alicia", status: true)
Answer.create(card_id: 2, option: "Rapunzel", status: false)
Answer.create(card_id: 2, option: "Mulan", status: false)
Answer.create(card_id: 3, option: "Bella", status: true)
Answer.create(card_id: 3, option: "Mamut", status: false)
Answer.create(card_id: 3, option: "Tiburon", status: false)
Answer.create(card_id: 4, option: "Olivia", status: true)
Answer.create(card_id: 4, option: "Alicia", status: false)
Answer.create(card_id: 4, option: "Vilma", status: false)
Answer.create(card_id: 5, option: "Pinocho", status: true)
Answer.create(card_id: 5, option: "Grillito", status: false)
Answer.create(card_id: 5, option: "otro", status: false)

#Preguntas Deck2: General
Card.create(deck_id: 2, text: "¿En qué país se baila y canta la samba?")
Card.create(deck_id: 2, text: "¿Quién anotó con la mano un gol, en el Mundial de México 86?")
Card.create(deck_id: 2, text: "'A lo maduro, a lo maduro, que se voltee....' ¿Cómo se llama la canción?")
Card.create(deck_id: 2, text: "¿Cómo se llama toda colección de animales acuáticos vivos?")
Card.create(deck_id: 2, text: "¿Cuál es el animal más parlanchín?")

Answer.create(card_id: 6, option: "Brazil", status: true)
Answer.create(card_id: 6, option: "Chile", status: false)
Answer.create(card_id: 6, option: "España", status: false)
Answer.create(card_id: 7, option: "Maradona", status: true)
Answer.create(card_id: 7, option: "Pelé", status: false)
Answer.create(card_id: 7, option: "Ronaldo", status: false)
Answer.create(card_id: 8, option: "Rueda de San Miguel", status: true)
Answer.create(card_id: 8, option: "Doña Blanca", status: false)
Answer.create(card_id: 8, option: "Pim-pom", status: false)
Answer.create(card_id: 9, option: "Acuario", status: true)
Answer.create(card_id: 9, option: "Pecera", status: false)
Answer.create(card_id: 9, option: "Laguna", status: false)
Answer.create(card_id: 10, option: "Perico", status: true)
Answer.create(card_id: 10, option: "Cotorro", status: false)
Answer.create(card_id: 10, option: "Pájaro", status: false)


#Preguntas Deck3: Capitales
Card.create(deck_id: 3, text: "Capital de Baja California")
Card.create(deck_id: 3, text: "Capital de Coahuila")
Card.create(deck_id: 3, text: "Capital de Guerrero")
Card.create(deck_id: 3, text: "Capital de México")
Card.create(deck_id: 3, text: "Capital de Nayarit")

Answer.create(card_id: 11, option: "Mexicali", status: true)
Answer.create(card_id: 11, option: "Baja California", status: false)
Answer.create(card_id: 11, option: "La Paz", status: false)
Answer.create(card_id: 12, option: "Saltillo", status: true)
Answer.create(card_id: 12, option: "Coahuila", status: false)
Answer.create(card_id: 12, option: "Durango", status: false)
Answer.create(card_id: 13, option: "Chilpancingo", status: true)
Answer.create(card_id: 13, option: "Guerrero", status: false)
Answer.create(card_id: 13, option: "Cd. Guerrero", status: false)
Answer.create(card_id: 14, option: "Toluca", status: true)
Answer.create(card_id: 14, option: "México", status: false)
Answer.create(card_id: 14, option: "Cd. México", status: false)
Answer.create(card_id: 15, option: "Tepic", status: true)
Answer.create(card_id: 15, option: "Nayarit", status: false)
Answer.create(card_id: 15, option: "Colima", status: false)



