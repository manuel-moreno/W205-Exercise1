create table hospital_procedure as select hospital_procedureID, h.providerID, p.procedureID from hospital h Cross Join procedure p;
