
	USE S09_Labo
	GO
	-- Nouvelle procédure
	
	CREATE PROCEDURE Musique.USP_ChanteurChansons
	@ChanteurID int
	AS
	BEGIN
		SELECT * FROM Musique.Chanson
		WHERE Musique.Chanson.ChanteurID = @ChanteurID
	END
	GO