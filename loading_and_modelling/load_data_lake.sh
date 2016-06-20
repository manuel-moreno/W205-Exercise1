mv "Hospital General Information.csv" hospital_general_info.csv
mv "Readmissions and Deaths - Hospital.csv" hospital_readmissions_deaths.csv
mv "Timely and Effective Care - Hospital.csv" hospital_timely_effective_care.csv
mv hvbp_hcahps_05_28_2015.csv patient_survey.csv
tail -n +2 hospital_general_info.csv > header_gi.csv
tail -n +2 hospital_timely_effective_care.csv > header_tec.csv
tail -n +2 hospital_readmissions_deaths.csv > header_rd.csv
tail -n +2 patient_survey.csv > header_survey.csv

hdfs dfs -mkdir /user/w205/hospital_compare
hdfs dfs -put *.* /user/w205/hospital_compare