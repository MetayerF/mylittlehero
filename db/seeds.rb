puts "Cleaning database..."
User.destroy_all

################### FAMILY BONNET ####################
etienne = User.create!(
  password: "123456",
  firstname: 'Etienne',
  lastname: 'Bonnet',
  nickname: 'Papa',
  email: 'etienne.bonnet@gmail.com',
  date_of_birth: '1985-10-05',
  place_of_birth: 'St Nazaire',
  gender: 'Homme',
  car: 'Citroën Cactus',
  favorite_song: 'Laurent Garnier - Crispy Bacon',
  favorite_movie: 'La cité de la peur',
  job: 'Ingénieur',
  photo: File.open(Rails.root.join('db/fixtures/images/users/etienne.jpg'))
  )

elisabeth = User.create!(
  password: "123456",
  firstname: 'Elisabeth',
  lastname: 'Bonnet',
  nickname: 'Mami',
  email: 'elisabeth.bonnet@gmail.com',
  date_of_birth: '1953-01-20',
  place_of_birth: 'St Nazaire',
  gender: 'Femme',
  car: 'Mini Cooper',
  favorite_song: "Edith Piaf - L'hymne à l'amour",
  favorite_movie: 'La Vie est belle',
  job: 'Retraité',
  photo: File.open(Rails.root.join('db/fixtures/images/users/elisabeth.jpg'))
  )

cecile = User.create!(
  password: "123456",
  firstname: 'Cecile',
  lastname: 'Bonnet',
  nickname: 'Tata',
  email: 'cecile.bonnet@gmail.com',
  date_of_birth: '1988-02-12',
  place_of_birth: 'St Nazaire',
  gender: 'Femme',
  car: 'Renault Mégane',
  favorite_song: "Céline Dion - Sous le vent ",
  favorite_movie: 'Tout ce qui brille',
  job: 'Bloggeuse',
  photo: File.open(Rails.root.join('db/fixtures/images/users/cecile.jpg'))
  )

sophie = User.create!(
  password: "123456",
  firstname: 'Sophie',
  lastname: 'Bonnet',
  nickname: 'Tata',
  email: 'sophie.bonnet@gmail.com',
  date_of_birth: '1990-02-12',
  place_of_birth: 'St Nazaire',
  gender: 'Femme',
  car: 'Renault Clio',
  favorite_song: "Son Lux- Easy",
  favorite_movie: 'Wall-E',
  job: 'Bloggeuse',
  photo: File.open(Rails.root.join('db/fixtures/images/users/sophie.jpg'))
  )

################### FAMILY LE GALL ####################
puts "Création d'utilisateurs..."
pauline = User.create!(
  password: "123456",
  firstname: 'Pauline',
  lastname: 'Bonnet',
  nickname: 'Maman',
  email: 'pauline.bonnet@gmail.com',
  date_of_birth: '1986-01-20',
  place_of_birth: 'Nantes',
  gender: 'Femme',
  car: 'Renault Clio',
  favorite_song: 'Patrick Bruel - Place des grands Homme',
  favorite_movie: 'Dirty Dancing',
  job: 'Journaliste',
 photo: File.open(Rails.root.join('db/fixtures/images/users/pauline.jpg'))
  )

jacques = User.create!(
  password: "123456",
  firstname: 'Jacques',
  lastname: 'Le Gall',
  nickname: 'Papi',
  email: 'jacques.legall@gmail.com',
  date_of_birth: '1948-04-09',
  place_of_birth: 'Nantes',
  gender: 'Homme',
  car: 'Volkswagen Passat',
  favorite_song: 'George Brassens - Le Gorille',
  favorite_movie: 'Le pont de la rivière Kwai',
  job: 'retraité',
  photo: File.open(Rails.root.join('db/fixtures/images/users/jacques.jpg'))
  )

francoise = User.create!(
  password: "123456",
  firstname: 'Françoise',
  lastname: 'Le Gall',
  nickname: 'Mami',
  email: 'francoise.legall@gmail.com',
  date_of_birth: '1952-01-20',
  place_of_birth: 'Angers',
  gender: 'Femme',
  car: 'Volkswagen Passat',
  favorite_song: "Barbara - L'Aigle noir",
  favorite_movie: 'Mama Mia',
  job: 'retraité',
  photo: File.open(Rails.root.join('db/fixtures/images/users/francoise.jpg'))
  )

marc = User.create!(
  password: "123456",
  firstname: 'Marc',
  lastname: 'Le Gall',
  nickname: 'Tonton',
  email: 'marc.legall@gmail.com',
  date_of_birth: '1982-05-12',
  place_of_birth: 'Nantes',
  gender: 'Homme',
  car: 'Scooter MP3',
  favorite_song: "Daft Punk - Around the world",
  favorite_movie: 'Inception',
  job: 'étudiant',
  photo: File.open(Rails.root.join('db/fixtures/images/users/marc.jpg'))
  )

florian = User.create!(
  password: "123456",
  firstname: 'florian',
  lastname: 'Le Gall',
  nickname: 'Parrain',
  email: 'florian.legall@gmail.com',
  date_of_birth: '1986-09-19',
  place_of_birth: 'Nantes',
  gender: 'Homme',
  car: 'Volkswagen - Polo',
  favorite_song: "Eminen - The real slim shady",
  favorite_movie: 'Requiem for a dream',
  job: 'auditeur',
  photo: File.open(Rails.root.join('db/fixtures/images/users/florian.jpg'))
  )

################### FAMILY FRIEND ####################
guillaume = User.create!(
  password: "123456",
  firstname: 'Guillaume',
  lastname: 'Vasseur',
  nickname: 'Guigui',
  email: 'guillaume.vasseur@gmail.com',
  date_of_birth: '1982-09-12',
  place_of_birth: 'Rennes',
  gender: 'Homme',
  car: 'Porsche Cayenne',
  favorite_song: "Alain Souchon - Le parachute doré",
  favorite_movie: 'Mad Max',
  job: 'Entrepreneur',
  photo: File.open(Rails.root.join('db/fixtures/images/users/guillaume.jpg'))
  )

flore = User.create!(
  password: "123456",
  firstname: 'flore',
  lastname: 'Garcia',
  nickname: 'florette',
  email: 'flore.garcia@gmail.com',
  date_of_birth: '1982-03-27',
  place_of_birth: 'Nantes',
  gender: 'Femme',
  car: 'Fiat 500',
  favorite_song: "Polo&Pan - Canopée",
  favorite_movie: 'Le premier jour du reste de ta vie',
  job: 'directrice marketing',
  photo: File.open(Rails.root.join('db/fixtures/images/users/flore.jpg'))
  )
################ HEROS #######################
puts "Création de heroes..."
camille = Hero.create!(
  user: pauline,
  firstname: 'Camille',
  lastname: 'Bonnet',
  nickname: 'Mon Berlingot',
  gender: 'petite fille',
  weight: '6.2 kg',
  size: '66 cm',
  astro_sign: 'Capricorne',
  eyes_color: 'bleu',
  hair_color: 'brun',
  favorite_toy: 'Sophie la girafe',
  favorite_food: 'Les haricotes verts, les carottes',
  date_of_birth: '2017-05-16',
  hour_of_birth: '10 heures',
  first_word: 'Papa',
  first_teeth: '2017-09-16',
  number_of_tooth: '4',
  first_steps: '2017-11-16',
  first_friend: "Gabrielle, Maximilien, Erwan",
  place_of_birth: "nantes",
  photo: File.open(Rails.root.join('db/fixtures/images/heros/camille.jpg'))
  )

####################### RELATIVES #############################

puts "Création de relatives..."

  pauline_camille = Relative.create!(
  user: pauline,
  hero: camille,
  family_link: 'parents',
  mother_side: true,
  role: 'admin',
  invitation_status: 'accepted',
    )

  etienne_camille = Relative.create!(
  user: etienne,
  hero: camille,
  family_link: 'parents',
  mother_side: false,
  role: 'admin',
  invitation_status: 'accepted',
    )

  elisabeth_camille = Relative.create!(
  user: elisabeth,
  hero: camille,
  family_link: 'grand-parents',
  mother_side: false,
  role: 'editor',
  invitation_status: 'accepted',
    )

  cecile_camille = Relative.create!(
  user: cecile,
  hero: camille,
  family_link: 'cousins et cousines',
  mother_side: false,
  role: 'editor',
  invitation_status: 'accepted',
    )

  sophie_camille = Relative.create!(
  user: sophie,
  hero: camille,
  family_link: 'oncles et tantes',
  mother_side: false,
  role: 'editor',
  invitation_status: 'accepted',
    )

  jacques_camille = Relative.create!(
  user: jacques,
  hero: camille,
  family_link: 'grand-parents',
  mother_side: true,
  role: 'editor',
  invitation_status: 'accepted',
    )

  francoise_camille = Relative.create!(
  user: francoise,
  hero: camille,
  family_link: 'grand-parents',
  mother_side: true,
  role: 'editor',
  invitation_status: 'accepted',
    )

  marc_camille = Relative.create!(
  user: marc,
  hero: camille,
  family_link: 'oncles et tantes',
  mother_side: true,
  role: 'viewer',
  invitation_status: 'accepted',
    )

  florian_camille = Relative.create!(
  user: florian,
  hero: camille,
  family_link: 'oncles et tantes',
  mother_side: true,
  role: 'viewer',
  invitation_status: 'accepted',
    )

  flore_camille = Relative.create!(
  user: flore,
  hero: camille,
  family_link: 'amis de la famille',
  mother_side: true,
  role: 'viewer',
  invitation_status: 'accepted',
    )

  guillaume_camille = Relative.create!(
  user: guillaume,
  hero: camille,
  family_link: 'amis de la famille',
  mother_side: true,
  role: 'viewer',
  invitation_status: 'pending',
    )


###################### AVENTURES #############################

puts "Création d'une aventure..."

camille_pregnant = Adventure.create!(
  user: pauline,
  hero: camille,
  title: "Camille arrive",
  description: "8ième mois, on est prêt",
  location: "nantes",
  date: "2017-04-20"
  )

camille_newborn = Adventure.create!(
  user: pauline,
  hero: camille,
  title: "Welcome Camille",
  description: "Je vous présente la petite Camille",
  location: "nantes",
  date: "2017-05-16"
  )

camille_wakeup = Adventure.create!(
  user: pauline,
  hero: camille,
  title: "Reveil en douceur",
  description: "Il faut dormir pour grandier",
  location: "nantes",
  date: "2017-06-20"
  )

camille_grandparent = Adventure.create!(
  user: pauline,
  hero: camille,
  title: "Weekend avec Papi, Mami",
  description: "Super week-end d'été avec papi et mami à St Nazaire",
  location: "St Nazaire",
  date: "2017-07-27"
  )

camille_spring = Adventure.create!(
  user: pauline,
  hero: camille,
  title: "Mon premier printemps",
  description: "C'est bien le printemps mais il fait encore beaucoup trop froid pour moi",
  location: "Parcé sur Sarthe",
  date: "2017-08-30"
  )

camille_familymeeting = Adventure.create!(
  user: pauline,
  hero: camille,
  title: " Réunion de famille ",
  description: "Toute la famille réunie autour des nouveaux arrivés.",
  location: "Nantes",
  date: "2017-09-14"
  )


camille_christmas = Adventure.create!(
  user: pauline,
  hero: camille,
  title: "Christmas is coming",
  description: "On met les bonnets de noël et préparation du sapin",
  location: "Nantes",
  date: "2017-12-10"
  )

camille_walking = Adventure.create!(
  user: pauline,
  hero: camille,
  title: "Ma première randonnée",
  description: "Journée sportive aujourd'hui avec une petite promenade dans le vignoble nantais",
  location: "Nantes",
  date: "2017-09-18"
  )

camille_growing = Adventure.create!(
  user: pauline,
  hero: camille,
  title: "Silence, je pousse",
  description: "Grande découverte pour moi aujourd'hui, j'ai des pieds!",
  location: "Nantes",
  date: "2017-10-18",
  )

camille_pyjama = Adventure.create!(
  user: pauline,
  hero: camille,
  title: "Mon nouveau pyjama",
  description: "Trop bien dans mon nouveau pyjama tout doux",
  location: "Nantes",
  date: "2017-10-18",
  )
camille_godmother = Adventure.create!(
  user: pauline,
  hero: camille,
  title: "Avec ma marraine",
  description: "Trop gentil ma marraine! Elle m'a offert un nouveau jouet",
  location: "Nantes",
  date: "2017-05-18",
  )

camille_mundad = Adventure.create!(
  user: pauline,
  hero: camille,
  title: "Avec Papa et Maman",
  description: "Un petit dodo bien entouré",
  location: "Nantes",
  date: "2017-05-18",
  )


###################### PHOTOS ##############################
Photo.create!(
  adventure: camille_pregnant,
  picture: File.open(Rails.root.join('db/fixtures/images/adventures/camille_pregnant.jpg'))
  )

Photo.create!(
  adventure: camille_newborn,
  picture: File.open(Rails.root.join('db/fixtures/images/adventures/camille_newborn.jpg'))
  )

Photo.create!(
  adventure: camille_wakeup,
  picture: File.open(Rails.root.join('db/fixtures/images/adventures/camille_wakeup.jpg'))
  )

Photo.create!(
  adventure: camille_grandparent,
  picture: File.open(Rails.root.join('db/fixtures/images/adventures/camille_grandparent.jpg'))
  )
Photo.create!(
  adventure: camille_spring,
  picture: File.open(Rails.root.join('db/fixtures/images/adventures/camille_spring.jpg'))
  )

Photo.create!(
  adventure: camille_familymeeting,
  picture: File.open(Rails.root.join('db/fixtures/images/adventures/camille_familymeeting.jpg'))
  )

Photo.create!(
  adventure: camille_christmas,
  picture: File.open(Rails.root.join('db/fixtures/images/adventures/camille_christmas.jpg'))
  )

Photo.create!(
  adventure: camille_walking,
  picture: File.open(Rails.root.join('db/fixtures/images/adventures/camille_walking.jpg'))
  )

Photo.create!(
  adventure: camille_growing,
  picture: File.open(Rails.root.join('db/fixtures/images/adventures/camille_growing.jpg'))
  )

Photo.create!(
  adventure: camille_pyjama,
  picture: File.open(Rails.root.join('db/fixtures/images/adventures/camille_pyjama.jpg'))
  )

Photo.create!(
  adventure: camille_godmother,
  picture: File.open(Rails.root.join('db/fixtures/images/adventures/camille_godmother.jpg'))
  )

Photo.create!(
  adventure: camille_mundad,
  picture: File.open(Rails.root.join('db/fixtures/images/adventures/camille_mundad.jpg'))
  )
