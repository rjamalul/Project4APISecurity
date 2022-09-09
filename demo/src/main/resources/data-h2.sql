INSERT INTO users VALUES ('username', '$2a$10$A52OuPv.29gdU6EKA6Vt8.StaNI4bf4V6mfBa0x3bI9S8HsoABMf2', true);
INSERT INTO users VALUES ('john', '$2a$10$uzvSV6sULh7qhOZFcX3JX.0z.HcXtOkWWncu7Za2iZzNupa1X5bvG', true);
INSERT INTO users VALUES ('root', '$2a$10$dz5HBGn7f4WLGyQVkbsYy.JAMlZnEDnTPe6XeV4xb1XcNiYSF2XnW', true);

INSERT INTO authorities VALUES('john', 'ROLE_ADMIN');
INSERT INTO authorities VALUES('john', 'ROLE_USER');
INSERT INTO authorities VALUES('username', 'ROLE_USER');
INSERT INTO authorities VALUES('root', 'ROLE_USER');

INSERT INTO goal VALUES(74, 'Rent', 100, 200, 'Rent payment', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVDIrlWs0XlPWb4RcML2fnGUeZPAJsMPSlYnBDkDccNw&s', 'DEC 15', 0); 