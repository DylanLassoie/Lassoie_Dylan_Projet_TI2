--Table admin

insert into admin(nom, prenom, email, mdp) values('Lassoie','Dylan','dylan@hotmail.be','azer');
insert into admin(nom, prenom, email, mdp) values('Lapoire','Bertrand','bertrand@hotmail.be','qsdf');
insert into admin(nom, prenom, email, mdp) values('Lapomme','Jack','jack@hotmail.be','wxcv');
insert into admin(nom, prenom, email, mdp) values('Lacerise','Sophie','sophie@hotmail.be','uiop');
insert into admin(nom, prenom, email, mdp) values('Labanane','Martine','martine@hotmail.be','hjkl');
insert into admin(nom, prenom, email, mdp) values('Lamur','Daniel','daniel@hotmail.be','bngh');

--Table client

insert into client(nom, prenom, adresse, numTel, email, mdp) values('Lassoie','Alban','rue du grand passage 60',023330,'alban@hotmail.com','azer');
insert into client(nom, prenom, adresse, numTel, email, mdp) values('Lassoie','Ophelie','rue Albert Libiez 10',04638549,'ophelie@hotmail.com','qsdf');
insert into client(nom, prenom, adresse, numTel, email, mdp) values('Lassoie','Dylan','rue Neuve 62',04776754,'dylan@hotmail.com','wxcv');

--Table reservation

insert into reservation(dateReservation, idClient, nbPersonne) values('12/04/99', 2, 4);