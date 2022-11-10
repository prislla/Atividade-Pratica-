
DROP DATABASE IF EXISTS costuracriativa;


CREATE DATABASE costuracriativa CHARACTER SET utf8 COLLATE utf8_general_ci;

USE costuracriativa;


CREATE TABLE users (

    
    uid INT PRIMARY KEY AUTO_INCREMENT,

    
    udate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    photo VARCHAR(255),

    birth DATE,

    bio TEXT,

    type ENUM('admin', 'author', 'moderator', 'user') DEFAULT 'user',

    last_login DATETIME,
    ustatus ENUM('online', 'deleted', 'banned') DEFAULT 'online'
);

INSERT INTO users (
    uid,
    name,
    email,
    password,
    photo,
    birth,
    bio,
    type
) VALUES (
    
    '1',
    'Maria Joana de Souza',
    'mariajoana@sou.com',
    SHA1('Senha123'),
    'https://randomuser.me/api/portraits/women/56.jpg',
    '1985-06-27',
    'Escritora, costureira e cantora.',
    'author'
);
    
CREATE TABLE articles (
    aid INT PRIMARY KEY AUTO_INCREMENT,
    adate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    author INT NOT NULL,
    title VARCHAR(255) NOT NULL,
    content LONGTEXT NOT NULL,
    thumbnail VARCHAR(255) NOT NULL,
    resume VARCHAR(255) NOT NULL,
    astatus ENUM('online', 'offline', 'deleted') DEFAULT 'online',
    views INT DEFAULT 0
);

INSERT INTO articles (
    adate,
    author,
    title,
    content,
    thumbnail,
    resume

) VALUES (
    '2022-11-10 13:51:45',
    '1',
    'Costura Personalizada',
    '<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Nemo quia provident reiciendis earum, tenetur reprehenderit iure ipsum fugit praesentium alias deserunt sed maiores id rerum odio delectus perferendis voluptatum totam!</p><p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero hic, modi pariatur culpa animi cum! Consequatur, odit! Repudiandae, dolorem temporibus, quaerat, unde enim error eum minus praesentium libero quibusdam consequuntur.</p><img src="https://picsum.photos/200/200" alt="Imagem aleatória." /><p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia recusandae illum aliquam aperiam, laborum fugiat quos sunt expedita culpa! Minima harum mollitia aperiam nihil dolorem animi accusantium quia maxime expedita.<p> Lorem, ipsum dolor sit amet consectetur adipisicing elit. Aliquam commodi inventore nemo doloribus asperiores provident, recusandae maxime quam molestiae sapiente autem, suscipit perspiciatis. Numquam labore minima, accusamus vitae exercitationem quod!</p>',
    'https://picsum.photos/200',
    'Saiba mais sobre este tema!'
), (
    '2022-11-01 18:51:45',
    '1',
    'Costura Criativa',
    '<p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Nemo quia provident reiciendis earum, tenetur reprehenderit iure ipsum fugit praesentium alias deserunt sed maiores id rerum odio delectus perferendis voluptatum totam!</p><p> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero hic, modi pariatur culpa animi cum! Consequatur, odit! Repudiandae, dolorem temporibus, quaerat, unde enim error eum minus praesentium libero quibusdam consequuntur.</p><img src="https://picsum.photos/200/200" alt="Imagem aleatória." /><p> Lorem ipsum dolor sit amet consectetur adipisicing elit. Quia recusandae illum aliquam aperiam, laborum fugiat quos sunt expedita culpa! Minima harum mollitia aperiam nihil dolorem animi accusantium quia maxime expedita.<p> Lorem, ipsum dolor sit amet consectetur adipisicing elit. Aliquam commodi inventore nemo doloribus asperiores provident, recusandae maxime quam molestiae sapiente autem, suscipit perspiciatis. Numquam labore minima, accusamus vitae exercitationem quod!</p>',
    'https://picsum.photos/200',
    'Como ingressar neste mundo!'
);

CREATE TABLE comments (
    cid INT PRIMARY KEY AUTO_INCREMENT,
    cdate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    cautor INT NOT NULL,
    article INT NOT NULL,
    comment TEXT NOT NULL,
    cstatus ENUM('online', 'offline', 'deleted') DEFAULT 'online'
    
);

CREATE TABLE contacts (
    id INT PRIMARY KEY AUTO_INCREMENT,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    subject VARCHAR(255) NOT NULL,
    message TEXT NOt NULL,
    status ENUM('sended', 'readed', 'responded', 'deleted') DEFAULT 'sended'
);
