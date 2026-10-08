DELIMITER $$




CREATE PROCEDURE Abbuchen(
    IN pKontoNummer INT,
    IN pBetrag DECIMAL(10,2),
    IN pEmpfaengerNummer int,
    OUT pErgebnis VARCHAR(100) 
)
BEGIN
    DECLARE vKontostand DECIMAL(10,2);

    START TRANSACTION;

    SELECT kontostand INTO vKontostand
    FROM accounts
    WHERE kontonummer = pKontoNummer
    FOR UPDATE;

    IF vKontostand >= pBetrag THEN
        UPDATE accounts
        SET kontostand = kontostand - pBetrag
        WHERE kontonummer = pKontoNummer;
		UPDATE accounts
        SET kontostand = kontostand + pBetrag
        WHERE kontonummer = pEmpfaengerNummer;
        COMMIT;
        SET pErgebnis = 'Betrag erfolgreich abgebucht.';
    ELSE
        ROLLBACK;
        SET pErgebnis = 'Nicht genügend Guthaben – Transaktion abgebrochen.';
    END IF;
END$$

DELIMITER ;

CALL Abbuchen(3, 500.00, 1, @nachricht);
SELECT @nachricht;



