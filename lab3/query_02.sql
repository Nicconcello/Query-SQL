--E2

select p.stagione, s1.nome, s2.nome, p.golCasa + p.golTrasferta golComplessivi
from partita p JOIN squadra s1 ON p.squadraCasa = s1.nome JOIN squadra s2 ON p.squadraTrasferta = s2.nome
	JOIN partita p2 ON p.stagione = p2.stagione AND p.codice <> p2.codice AND p2.squadraCasa = p.squadraTrasferta
	AND p2.squadraTrasferta = p.squadraCasa
where p.golCasa = p.golTrasferta and p2.golCasa = p2.golTrasferta and p.girone = 'andata'
