CREATE OR REPLACE PROCEDURE DELETECOUNTRYLISTALL
(vCountryCode IN Country.CountryCode%TYPE,
 cur_OUT OUT PKGENTLIB_ARCHITECTURE.CURENTLIB_ARCHITECTURE
)
AS
BEGIN
    DELETE FROM Country where CountryCode=vCountryCode;   
	OPEN cur_OUT for
	SELECT * FROM Country;
END;
/

