#URSERS

puts "Création d'utilisateurs..."
pauline = User.create!(
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
  photo: File.open(Rails.root.join('db/fixtures/images/users/pauline.jpg'))
  )

constance = User.create!(
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
  photo: File.open(Rails.root.join('db/fixtures/images/users/constance.jpg'))
  )

amelie = User.create!(
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
  photo: File.open(Rails.root.join('db/fixtures/images/users/amelie.jpg'))
  )

baptiste = User.create!(
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
  photo: File.open(Rails.root.join('db/fixtures/images/users/baptiste.jpg'))
  )

kevin = User.create!(
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
  photo: File.open(Rails.root.join('db/fixtures/images/users/kevin.jpg'))
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

#PHOTOS
Photo.create!(
  adventure: fanny_a_saint_jean,
  photo: File.open(Rails.root.join('db/fixtures/images/adventures/fanny_saint_jean.jpg'))
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
  user: pauline,
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


