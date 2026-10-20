--E5

select a1.codice, a2.codice, coalesce(count(s2.titolo),0) libriInComune
from autore a1 join autore a2 on a1.codice > a2.codice 
                left join scritto s1 on a1.codice = s1.codice left join scritto s2 on a2.codice = s2.codice and s1.titolo = s2.titolo
group by a1.codice, a2.codice
