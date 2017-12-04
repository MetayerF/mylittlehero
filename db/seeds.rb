#URSERS

puts "Création d'utilisateurs..."
pauline = User.create!(
  hero: fanny,
  firstname: 'Pauline',
  lastname: 'Dufourcq',
  nickname: 'Polo',
  email: 'pauline.dufourcq@gmail.com',
  date_of_birth: '20/01/1982',
  place_of_birth: 'Nantes',
  gender: 'Feminin',
  my_car: 'Peugeot 308 grise',
  favorite_song: 'Outkast - Hey Ya',
  favorite_movie: 'Shot Caller',
  my_job: 'Journaliste',
  photo: File.open(Rails.root.join('db/fixtures/images/pauline.jpg'))
  )

constance = User.create!(
  user: pauline,
  firstname: 'Constance',
  lastname: 'Menard',
  nickname: 'Nanard',
  email: 'jolie1994@yahoo.com',
  date_of_birth: '05/10/1994',
  place_of_birth: 'Redon',
  gender: 'Feminin',
  my_car: 'Honda Civic Bordeau',
  favorite_song: 'Laurent Garnier - Crispy Bacon',
  favorite_movie: 'La cité de la peur',
  my_job: 'Etudiante',
  photo: File.open(Rails.root.join('db/fixtures/images/constance.jpg'))
  )

amelie = User.create!(
  user: pauline,
  firstname: 'Amelie',
  lastname: 'Boulanger',
  nickname: 'mèl',
  email: 'a.boulanger@gmail.com',
  date_of_birth: '09/04/1979',
  place_of_birth: 'Bézier',
  gender: 'Feminin',
  my_car: 'Toyota Auris 2',
  favorite_song: 'The Weekend - Starboy',
  favorite_movie: 'Les trois frères',
  my_job: 'Infirmière',
  photo: File.open(Rails.root.join('db/fixtures/images/amelie.jpg'))
  )

baptiste = User.create!(
  user: pauline,
  firstname: 'Baptiste',
  lastname: 'Ordureau',
  nickname: 'Bapt',
  email: 'baptiste_ordureau@gmail.com',
  date_of_birth: '20/01/1978',
  place_of_birth: 'Parce sur Sarthe',
  gender: 'Masculin',
  my_car: 'Peugeot 206 sw grise',
  favorite_song: 'Johnny Halliday - Allumer le feu',
  favorite_movie: 'Les trois mousquetaires',
  my_job: 'Informaticien',
  photo: File.open(Rails.root.join('db/fixtures/images/baptiste.jpg'))
  )

kevin = User.create!(
  user: pauline,
  firstname: 'Kevin',
  lastname: 'Buffard',
  nickname: 'Alex',
  email: 'k.buffard@gmail.com',
  date_of_birth: '20/01/1992',
  place_of_birth: 'Saint Nazaire',
  gender: 'Masculin',
  my_car: 'Renault Scénic gris',
  favorite_song: 'Francky Vincent - Tu veux mon zizi',
  favorite_movie: 'Rubber',
  my_job: 'Commercial chez Belin',
  photo: File.open(Rails.root.join('db/fixtures/images/kevin.jpg'))
  )

#HEROS
puts "Création de heroes..."
fanny = Hero.create!(
  user: pauline,
  firstname: 'Fanny',
  lastname: 'Jordan',
  nickname: 'Fafa',
  gender: 'Féminin',
  weight: '3,54 kg',
  size: '49 cm',
  astro_sign: 'Capricorne',
  eyes_colors: 'Bleu',
  hair_colors: 'Brun',
  favorite_toy: 'Sophie la girafe',
  date_of_birth: '20/01/2017',
  place_of_birth: 'Nantes',
  photo: File.open(Rails.root.join('db/fixtures/images/fanny.jpg'))
  )

# AVENTURES
puts "Création d'une aventure..."
fanny_a_saint_jean = Adventure.create!(
  user: pauline,
  hero: fanny,
  title: "Fanny à Saint Jean de Luz",
  description: "Premier bain salé pour notre Fanny Chérie.. !",
  location: "Saint Jean de Luz",
  date: "27/07/2017"
  )

#RELATIVES
puts "Création de relatives..."
  constance_fanny = Relative.create!(
  user: pauline,
  hero: fanny,
  family_link: 'soeur',
  mother_side: true,
  role: 'viewer',
  invitation_status: 'en attente',
    )
