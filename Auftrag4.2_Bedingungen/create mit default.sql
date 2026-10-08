CREATE TABLE mageschenk (
    geschenkID smallint PRIMARY KEY,
    artikel varchar(200) not null,
    preis decimal(5,2) default 0.00 not null,
    jahrzugehörigkeit smallint not null
);
