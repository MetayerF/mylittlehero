puts "Cleaning database..."
User.destroy_all

#URSERS

puts "Création d'utilisateurs..."
pauline = User.create!(
  password: "123456",
  firstname: 'Pauline',
  lastname: 'Dupont',
  nickname: 'Polo',
  email: 'pauline.dupont@gmail.com',
  date_of_birth: '1982-01-20',
  place_of_birth: 'Nantes',
  gender: 'Feminin',
  car: 'Peugeot 308 grise',
  favorite_song: 'Outkast - Hey Ya',
  favorite_movie: 'Shot Caller',
  job: 'Journaliste',
  photo: File.open(Rails.root.join('db/fixtures/images/users/pauline.jpg'))
  )

constance = User.create!(
  password: "123456",
  firstname: 'Constance',
  lastname: 'Menard',
  nickname: 'Nanard',
  email: 'jolie1994@yahoo.com',
  date_of_birth: '1994-10-05',
  place_of_birth: 'Redon',
  gender: 'Feminin',
  car: 'Honda Civic Bordeau',
  favorite_song: 'Laurent Garnier - Crispy Bacon',
  favorite_movie: 'La cité de la peur',
  job: 'Etudiante',
  photo: File.open(Rails.root.join('db/fixtures/images/users/constance.jpg'))
  )

amelie = User.create!(
  password: "123456",
  firstname: 'Amelie',
  lastname: 'Boulanger',
  nickname: 'mèl',
  email: 'a.boulanger@gmail.com',
  date_of_birth: '1979-04-09',
  place_of_birth: 'Bézier',
  gender: 'Feminin',
  car: 'Toyota Auris 2',
  favorite_song: 'The Weekend - Starboy',
  favorite_movie: 'Les trois frères',
  job: 'Infirmière',
  photo: File.open(Rails.root.join('db/fixtures/images/users/amelie.jpg'))
  )

baptiste = User.create!(
  password: "123456",
  firstname: 'Baptiste',
  lastname: 'Ordureau',
  nickname: 'Bapt',
  email: 'baptiste_ordureau@gmail.com',
  date_of_birth: '1978-01-20',
  place_of_birth: 'Parce sur Sarthe',
  gender: 'Masculin',
  car: 'Peugeot 206 sw grise',
  favorite_song: 'Johnny Halliday - Allumer le feu',
  favorite_movie: 'Les trois mousquetaires',
  job: 'Informaticien',
  photo: File.open(Rails.root.join('db/fixtures/images/users/baptiste.jpg'))
  )

kevin = User.create!(
  password: "123456",
  firstname: 'Kevin',
  lastname: 'Buffard',
  nickname: 'Alex',
  email: 'k.buffard@gmail.com',
  date_of_birth: '1992-01-20',
  place_of_birth: 'Saint Nazaire',
  gender: 'Masculin',
  car: 'Renault Scénic gris',
  favorite_song: 'Francky Vincent - Tu veux mon zizi',
  favorite_movie: 'Rubber',
  job: 'Commercial chez Belin',
  photo: File.open(Rails.root.join('db/fixtures/images/users/kevin.jpg'))
  )

#HEROS
puts "Création de heroes..."
fanny = Hero.create!(
  user: pauline,
  firstname: 'Fanny',
  lastname: 'Dupont',
  nickname: 'Mon Berlingot',
  gender: 'petite fille',
  weight: '3,54 kg',
  size: '49 cm',
  astro_sign: 'Capricorne',
  eyes_color: 'Bleu',
  hair_color: 'Brun',
  favorite_toy: 'Sophie la girafe',
  date_of_birth: '2017-01-20',
  place_of_birth: 'Nantes',
  photo: File.open(Rails.root.join('db/fixtures/images/heros/fanny.jpg'))
  )

# AVENTURES
puts "Création d'une aventure..."
fanny_a_saint_jean = Adventure.create!(
  user: pauline,
  hero: fanny,
  title: "Fanny à Saint Jean de Luz",
  description: "Premier bain salé pour notre Fanny Chérie.. !",
  location: "Saint Jean de Luz",
  date: "2017-07-27"
  )

fanny_aime_leau = Adventure.create!(
  user: pauline,
  hero: fanny,
  title: "Fanny adore l'eau !!",
  description: "Eté 2017 à Parcé sur Sarthe, il faisait tellement chaud...",
  location: "Parcé sur Sarthe",
  date: "2017-08-30"
  )

fanny_sophie = Adventure.create!(
  user: pauline,
  hero: fanny,
  title: "Notre Fanny avec notre bonne amie Sophie ! ",
  description: "Belle photo lors d'une balade en septembre dernier",
  location: "Melun",
  date: "2017-09-14"
  )

fanny_shooting = Adventure.create!(
  user: pauline,
  hero: fanny,
  title: "Proposition de shooting photo pour Fanny pour la marque de nos amis",
  description: "Notre petite Fanny comme mannequin photo pour une marque d'habits pour enfants",
  location: "Nantes",
  date: "2017-11-20"
  )

#PHOTOS
Photo.create!(
  adventure: fanny_a_saint_jean,
  picture: File.open(Rails.root.join('db/fixtures/images/adventures/fanny_saint_jean.jpg'))
  )

Photo.create!(
  adventure: fanny_aime_leau,
  picture: File.open(Rails.root.join('db/fixtures/images/adventures/fanny_aime_leau.jpg'))
  )

Photo.create!(
  adventure: fanny_sophie,
  picture: File.open(Rails.root.join('db/fixtures/images/adventures/fanny_et_sophie.jpg'))
  )

Photo.create!(
  adventure: fanny_shooting,
  picture: File.open(Rails.root.join('db/fixtures/images/adventures/fanny_shooting.jpg'))
  )

#RELATIVES
puts "Création de relatives..."
  pauline_fanny = Relative.create!(
  user: pauline,
  hero: fanny,
  family_link: 'parent',
  mother_side: true,
  role: 'admin',
  invitation_status: 'accepted',
    )

  baptiste_fanny = Relative.create!(
  user: baptiste,
  hero: fanny,
  family_link: 'parent',
  mother_side: false,
  role: 'admin',
  invitation_status: 'accepted',
    )

  constance_fanny = Relative.create!(
  user: constance,
  hero: fanny,
  family_link: 'soeur',
  mother_side: true,
  role: 'viewer',
  invitation_status: 'pending',
    )


  kevin_fanny = Relative.create!(
  user: kevin,
  hero: fanny,
  family_link: 'frere',
  mother_side: true,
  role: 'editor',
  invitation_status: 'pending',
    )

  amelie_fanny = Relative.create!(
  user: amelie,
  hero: fanny,
  family_link: 'cousine',
  mother_side: true,
  role: 'viewer',
  invitation_status: 'accepted',
    )


