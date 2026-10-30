--E7

select stagioni_valide.squadraTrasferta nome, s.regione
from squadra s JOIN(
	select p.squadraTrasferta, p.stagione
	from partita p JOIN squadra s_t ON s_t.nome = p.squadraTrasferta JOIN squadra s_c ON s_c.nome = p.squadraCasa
	where p.golTrasferta > 0 and s_t.regione = s_c.regione and s_t.nome <> s_c.nome
	group by p.squadraTrasferta, p.stagione, s_t.regione
	having count(distinct p.squadraCasa) = (select count(distinct s1.nome)
											from squadra s1 RIGHT JOIN partita p1 ON s1.nome = p1.squadraCasa
											where s1.regione = s_t.regione and p1.stagione = p.stagione and s1.nome <> p.squadraTrasferta)
	) stagioni_valide ON s.nome = stagioni_valide.squadraTrasferta
group by stagioni_valide.squadraTrasferta, s.regione
having count(distinct stagioni_valide.stagione) = (select count(distinct stagione) from partita)
