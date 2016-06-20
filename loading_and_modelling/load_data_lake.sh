mv "Hospital General Information.csv" hospital_general_info.csv
mv "Readmissions and Deaths - Hospital.csv" hospital_readmissions_deaths.csv
mv "Timely and Effective Care - Hospital.csv" hospital_timely_effective_care.csv
mv hvbp_hcahps_05_28_2015.csv patient_survey.csv
tail -n +2 hospital_general_info.csv > hospital_gi.csv
tail -n +2 hospital_timely_effective_care.csv > hospital_tec.csv
tail -n +2 hospital_readmissions_deaths.csv > hospital_rd.csv
tail -n +2 patient_survey.csv > hospital_survey.csv

hdfs dfs -mkdir /user/w205/hospital_compare/hospital_gi
hdfs dfs -put  hospital_gi.csv /user/w205/hospital_compare/hospital_gi
hdfs dfs -mkdir /user/w205/hospital_compare/hospital_tec
hdfs dfs -put  hospital_tec.csv /user/w205/hospital_compare/hospital_tec
hdfs dfs -mkdir /user/w205/hospital_compare/hospital_rd
hdfs dfs -put  hospital_rd.csv /user/w205/hospital_compare/hospital_rd
hdfs dfs -mkdir /user/w205/hospital_compare/hospital_survey
hdfs dfs -put  hospital_survey.csv /user/w205/hospital_compare/hospital_survey
