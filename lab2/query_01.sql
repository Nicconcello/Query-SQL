--E1

select distinct s.codice, s.tariffa
from servizio s JOIN impiego i on s.codice = i.codices JOIN evento e on e.codice = i.codicee
where e.tema = 'musica' or e.tema = 'sport'
