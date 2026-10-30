--E8

select andata.nome, andata.stagione, andata.golTOT + ritorno.golTOT golStagionali
from
	(select s_c.nome nome, p.stagione stagione, sum( CASE WHEN p.golCasa > p.golTrasferta then 3 WHEN p.golCasa = p.golTrasferta then 1 ELSE 0 END) golTOT
	from squadra s_c JOIN partita p ON s_c.nome = p.squadraCasa
	group by s_c.nome, p.stagione) andata
	

	JOIN

	(select s_t.nome nome, p.stagione stagione, sum( CASE WHEN p.golTrasferta > p.golCasa then 3 WHEN p.golTrasferta = p.golCasa then 1 ELSE 0 END) golTOT
	from squadra s_t JOIN partita p ON s_t.nome = p.squadraTrasferta
	group by s_t.nome, p.stagione) ritorno

	ON andata.nome = ritorno.nome and andata.stagione = ritorno.stagione

order by andata.stagione, golStagionali desc
