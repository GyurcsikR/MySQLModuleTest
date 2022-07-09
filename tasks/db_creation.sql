/*
Adatbázis létrehozása feladat

Készíts adatbázis-táblákat a feladat leírása alapján!
(Magát az adatbázist nem kell létrehoznod.)

Amit be kell adnod:
    - a táblák létrehozásának MySQL utasítása
    - a táblák mezőinek létrehozásához és beállításához szükséges MySQL utasítások

Az utasításokat jelen fájl tartalmazza!

A bónusz feladat megoldása nem kötelező.

Nem futtatható (azaz szintaktikai hibás) SQL utasításokért nem jár pont.
A feladatot részben teljesítő megoldásokért részpontszám jár.
A bónusz feladatnál csak a teljesen helyes megoldásért jár pont.

A feladat leírása törölhető.

Jó munkát!
*/

/*
Adatbázis-táblák létrehozása (20 pont)

Az általad létrehozott adatbázist egy üzenetküldő alkalmazáshoz szeretnénk használni.
Az alkalmazásban a felhasználók regisztrálás után tudnak üzenetet küldeni szintén regisztrált felhasználóknak,
valamint a kapott üzenetekre válaszolhatnak.
Nincs lehetőség több címzett megadására - azaz egy üzenetet csak egy felhasználó részére lehet küldeni.

Az adatbázisnak képesnek kell lennie a következő adatok tárolására:
    1. regisztrált felhasználók adatai
        - kötelező adatok: név, email-cím, jelszó, aktív felhasználó-e, a regisztrálás időpontja
    2. a regisztrált felhasználók által egymásnak küldött üzenetek adatai
        - kötelező adatok: küldő, címzett, üzenet szövege, az üzenet küldésének időpontja,
          továbbá ha az üzenet egy korábban kapottra válasz, akkor hivatkozás a megválaszolt üzenetre

Kritériumok az adatbázissal kapcsolatban:
    - legalább kettő, legfeljebb négy táblát tartalmazzon
    - legyen legalább egy kapcsolat a létrehozott táblák között (idegen kulccsal)
      (egy tábla saját magával is kapcsolódhat)
    - a fent leírt adatokon kívül más adatokat is tárolhat, de egy táblán legfeljebb 8 mező lehet
    - az adatbázis, a táblák és a mezők elnevezése rajtad áll, azonban használj angol megnevezéseket, méghozzá következetesen
      (ha az egyik táblában camel-case szerinti mező-neveket adtál, akkor a másik táblában is tégy úgy)

	CREATE TABLE `senderprogram`.`user`
	(`id` INT NOT NULL AUTO_INCREMENT ,
	`name` VARCHAR(100) NOT NULL ,
	`email_address` VARCHAR(100) NOT NULL ,
	`password` INT NOT NULL , `isaktiv` BOOLEAN NOT NULL ,
	`registration_date` DATE NOT NULL ,
	PRIMARY KEY (`id`)) ENGINE = InnoDB;

	CREATE TABLE `senderprogram`.`user_email`
	(`user_id` INT NOT NULL ,
	`email_id` INT NOT NULL ,
	`last_update` DATE NOT NULL , PRIMARY KEY (`user_id`, `email_id`)) ENGINE = InnoDB;

	CREATE TABLE `senderprogram`.`email`
	(`id` INT NOT NULL AUTO_INCREMENT ,
	`email_text` TEXT NOT NULL , `date` DATE NOT NULL ,
	`sender_name` VARCHAR(100) NOT NULL ,
	`receiver_name` VARCHAR(100) NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;

*/


-- ---------------------------------------------------------------------------------------------------------------------

/*
Bónusz feladat (5 pont)

Adj hozzá adatokat mindegyik táblához!
(Az adatoknak nem kell valósnak lenniük. Egy felhasználói email-cím lehet például: 'valami@valami.va')

INSERT INTO `user` (`id`, `name`, `email_address`, `password`, `isaktiv`, `registration_date`)
VALUES (NULL, 'Nagy Bogyó', 'bogyo@gmail.com', PASSWORD('12345'), '1', CURRENT_DATE()),
(NULL, 'Kis Babóca', 'baboca@gmail.com', PASSWORD('66666'), '0', CURRENT_DATE())

INSERT INTO `email` (`id`, `email_text`, `date`, `sender_name`, `receiver_name`)
VALUES (NULL, 'Egyszer volt, hol nem volt...', CURRENT_DATE(), 'Nagy Bogyó', 'Kis Babóca'),
(NULL, 'Azt a mesét nem is ismerem...', CURRENT_DATE(), 'Kis Babóca', 'Nagy Bogyó')


*/

