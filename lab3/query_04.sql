--E4

select s.nome, sum(p.golTrasferta)
from squadra s JOIN partita p ON s.nome = p.squadraCasa
group by s.nome, p.stagione
having sum(p.golTrasferta) <= all( 	select sum(p2.golTrasferta)
									from squadra s2 JOIN partita p2 ON s2.nome = p2.squadraCasa
									where p2.stagione = p.stagione
									group by s2.nome
																																
)
