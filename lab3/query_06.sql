--E6

select a.nome, p.stagione
from arbitro a JOIN partita p ON a.codice = p.arbitro JOIN squadra s ON s.nome = p.squadraCasa OR s.nome = p.squadraTrasferta
where s.regione = 'Lazio'
group by a.nome, p.stagione
having count(distinct s.nome) =(select count(distinct s1.nome)
								from partita p1 JOIN squadra s1 ON s1.nome = p1.squadraCasa OR s1.nome = p1.squadraTrasferta
								where s1.regione = 'Lazio' and p1.stagione = p.stagione)
