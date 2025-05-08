
	USE S09_Labo
    GO
-- Nouvelle vue
	
	CREATE VIEW Musique.VW_ChanteurNbChansons 
	AS
		SELECT Chant.ChanteurID, Chant.Nom, Chant.DateNaissance as [Date de naissance], COUNT (Chans.ChanteurID) as [Nombre de chansons]
		FROM Musique.Chanteur Chant
		LEFT JOIN Musique.Chanson Chans
		ON Chant.ChanteurID = Chans.ChanteurID
		GROUP BY Chant.ChanteurID, Chant.Nom, Chant.DateNaissance
	GO
	
	---- ?
	
	--GO
	
	-- Résultat souhaité : id du chanteur, nom du chanteur, date de naissance et son nombre de chansons
	
	-- ChanteurID |Nom  | Date de naissance |Nombre de chansons
	-- -----------|-----|-------------------|-------------------