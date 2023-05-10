USE adlister_db;
TRUNCATE ads;
INSERT INTO ads( title, description)
VALUES('Pokemon Soul Silver','return players to the scenic Johto region first introduced in
        the beloved original Pokémon Gold and Pokémon Silver games nearly a decade ago. The richly detailed adventure of
        Pokémon Gold and Pokémon Silver is now enhanced for the Nintendo DS and Nintendo DSi systems with updated graphics and sound,
       as well as new touch-screen features and a host of surprises. Pokémon HeartGold Version and Pokémon SoulSilver Version bring
       dozens of Pokémon characters back into the limelight for a new Pokémon generation - and longtime fans - to catch, train and battle'),
      ('Cyberpunk 2077','is an open-world, action-adventure story set in Night City,
        a megalopolis obsessed with power, glamour and body modification.
        You play as V, a mercenary outlaw going after a one-of-a-kind implant that is the key to immortality.'),
      ('Elder Scrolls IV Oblivion', 'is a single-player role-playing video game developed by Bethesda Game Studios
        and published by Bethesda Softworks. It is the fourth installment of The Elder Scrolls series and
        is set in the province of Cyrodiil, the heart of the Septim Empire, during the Oblivion Crisis'),
      ('007 Golden Eye','is a first-person shooter where the player takes the role of Secret Intelligence
        Service agent James Bond through a series of levels. In each level, the player must complete a set of
        objectives while computer-controlled opponents try to hinder the player''s progress'),
      ('Mario Kart 64','is a kart racing game in which the player controls one of eight selectable
        Mario characters in several racetracks that vary in shape and theme');

TRUNCATE categories;
INSERT INTO categories(name)
VALUES ('RPG'),
       ('First Person'),
       ('Action'),
       ('Fantasy'),
       ('Adventure'),
       ('Racing');

TRUNCATE users;
INSERT INTO users(username, email)
VALUES ('Tamica', 'TamEyekaa@yahoo.com'),
       ('Paul','PaulyShore@Yahoo.com'),
       ('Davis','HotMale@Hotmail.com'),
       ('Travis','BobRossDaBoss@gmail.com');