--E5

select distinct s.codice
from servizio s
except
select distinct s.codice
from servizio s JOIN impiego i on s.codice = i.codices JOIN evento e on e.codice = i.codicee
where e.tema is null
