select procedureID, max(procedureScore) - avg(procedureScore) as variability
from hosp_proc_measure group by procedureID order by variability desc limit 10;
