ALTER TABLE mageschenk
ADD CONSTRAINT check_jahrzugehörigkeit
CHECK (jahrzugehörigkeit IN (5, 10, 15, 20));
