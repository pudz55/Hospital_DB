SQL> Create Table F21_S003_9_PATIENT(Patient_id NUMBER GENERATED ALWAYS as IDENTITY(START with 00001 INCREMENT by 1),
  2  PatientName varchar(30) NOT NULL,
  3  Birth_date date NOT NULL,
  4  Contact varchar(11) NOT NULL,
  5  PRIMARY KEY (Patient_id),
  6  gender char check (gender='m' or gender='f')
  7  ); --creating a table for patient with primary key Patient_ID

Table created.

SQL> Create Table F21_S003_9_APPOINTMENT(
  2  Appointment_id NUMBER GENERATED ALWAYS as IDENTITY(START with 101 INCREMENT by 1),
  3  bk_date timestamp NOT null,
  4  Patient_id number,
  5  FOREIGN KEY (Patient_id) REFERENCES F21_S003_9_PATIENT(Patient_id),
  6  PRIMARY KEY (Appointment_id)
  7  ); --creating a table for appointments with primary key appointment_ID and adding foreign key patient_iD

Table created.

SQL> Create Table F21_S003_9_DOCTOR(
  2  Doctor_id NUMBER GENERATED ALWAYS as IDENTITY(START with 201 INCREMENT by 1),
  3  Doc_name varchar(30) NOT NULL,
  4  Doc_Contact varchar(11) NOT NULL,
  5  PRIMARY KEY (Doctor_id)
  6  ); --creating a table for doctors with primary key doctor_ID

Table created.

SQL> spool off;

SQL> spool off
SQL> Create Table F21_S003_9_TREATMENT(
  2  Treatment_id NUMBER GENERATED ALWAYS as IDENTITY(START with 301 INCREMENT by 1),
  3  Diagnosis varchar(200) NOT NULL,
  4  PRIMARY KEY (Treatment_id)
  5  ); --creating a table for number of treatments with primary key Treatment_id

Table created.

SQL> spool off;
SQL> Create Table F21_S003_9_DOC_SPEC(
  2  Spec_name varchar(60) NOT NULL,
  3  spec_type varchar(60) NOT NULL,
  4  Doctor_id NUMBER,
  5  FOREIGN KEY (Doctor_id) REFERENCES F21_S003_9_DOCTOR(Doctor_id)
  6  ); --creating a table for doctor specialization and referencing doctor_id as foreign key

Table created.

SQL> spool off;
SQL> Create table F21_S003_9_PROVIDES(
  2  Doctor_id NUMBER,
  3  FOREIGN KEY (Doctor_id) REFERENCES F21_S003_9_DOCTOR(Doctor_id),
  4  Treatment_id NUMBER,
  5  FOREIGN KEY (Treatment_id) REFERENCES F21_S003_9_TREATMENT(Treatment_id)
  6  ); --creating a table for providing treatment with foreign keys doctor_id and treatment_id as doctor provides treatment

Table created.

SQL> spool off;
SQL> Create Table F21_S003_9_DISEASE(
  2  Disease_id NUMBER GENERATED ALWAYS as IDENTITY(START with 401 INCREMENT by 1),
  3  Disease_name varchar(40) NOT NULL,
  4  Disease_description varchar(300) NOT NULL,
  5  PRIMARY KEY (Disease_id)
  6  ); --creating a table for diseases with primary key as Disease_id

Table created.

SQL> spool off;
SQL> Create Table F21_S003_9_MEDICINE(
  2  Medicine_id NUMBER GENERATED ALWAYS as IDENTITY(START with 1000 INCREMENT by 1),
  3  MFG_DATE Date,
  4  M_NAME VARCHAR(50) NOT NULL,
  5  Quantity NUMBER(5) NOT NULL,
  6  calculated_expiry_date GENERATED ALWAYS as (add_months(to_date(MFG_DATE),4)),
  7  PRIMARY KEY (Medicine_id)
  8  ); --creating a table for medicines and calculating their expiry date using to_date function

Table created.

SQL> spool off;
SQL> Create Table F21_S003_9_MED_NAME(
  2  M_NAME VARCHAR(70) NOT NULL,
  3  Description VARCHAR(300) NOT NULL,
  4  Price_USD NUMBER(20) NOT NULL,
  5  PRIMARY KEY (M_NAME)
  6  ); --creating a table for med_name and because normalized here we had to include M-name as a primary key here

Table created.

SQL> Create table F21_S003_9_DECIDES(
  2  Treatment_id NUMBER,
  3  FOREIGN KEY (Treatment_id) REFERENCES F21_S003_9_TREATMENT(Treatment_id),
  4  Medicine_id NUMBER,
  5  FOREIGN KEY (Medicine_id) REFERENCES F21_S003_9_MEDICINE(Medicine_id),
  6  Disease_id NUMBER,
  7  FOREIGN KEY (Disease_id) REFERENCES F21_S003_9_DISEASE(Disease_id)
  8  ); --creating a table for decides holding foreign keys treatment_id,disease_id and medicine-id

Table created.

SQL> spool off;
SQL> Create Table F21_S003_9_PRESCRIPTION(
  2  PRESCRIPTION_ID number GENERATED ALWAYS as IDENTITY(START with 601 INCREMENT by 1),
  3  DIAGNOSIS_INFO Varchar(300),
  4  DOCTOR_INFO VARCHAR(150),
  5  PATIENT_INFO VARCHAR(150),
  6  Doctor_ID NUMBER,
  7  FOREIGN KEY (Doctor_ID) REFERENCES F21_S003_9_DOCTOR(Doctor_ID)
  8  ); --creating a table for prescription details which are provided by doctor_id

Table created.

SQL> Create Table F21_S003_9_EMR(
  2  Record_id number GENERATED ALWAYS as IDENTITY(START with 701 INCREMENT by 1),
  3  Medicine_info Varchar(150),
  4  Disease_info Varchar(150),
  5  Diagnosis Varchar(300),
  6  Patient_info VARCHAR(300),
  7  Doctor_id NUMBER,
  8  FOREIGN KEY (Doctor_id) REFERENCES F21_S003_9_DOCTOR(Doctor_id)
  9  ); --create a table for EMR to record all the details about the patient and the process

Table created.

SQL> SPOOL OFF;
SQL> Create table F21_S003_9_SENDS(
  2  Appointment_id NUMBER,
  3  FOREIGN KEY (Appointment_id) REFERENCES F21_S003_9_APPOINTMENT(Appointment_id),
  4  Treatment_id NUMBER,
  5  FOREIGN KEY (Treatment_id) REFERENCES F21_S003_9_TREATMENT(Treatment_id)
  6  ); --Here we are replacing “provides” relationship into sends where instead of connecting doctor and Patient

Table created.

SQL> spool off;
SQL> Select table_name from all_tables where owner='JXJ4536';

TABLE_NAME                                                                      
--------------------------------------------------------------------------------
F21_S003_9_APPOINTMENT                                                          
F21_S003_9_DECIDES                                                              
F21_S003_9_DISEASE                                                              
F21_S003_9_DOCTOR                                                               
F21_S003_9_DOC_SPEC                                                             
F21_S003_9_EMR                                                                  
F21_S003_9_MEDICINE                                                             
F21_S003_9_MED_NAME                                                             
F21_S003_9_PATIENT                                                              
F21_S003_9_PRESCRIPTION                                                         
F21_S003_9_SENDS                                                                

TABLE_NAME                                                                      
--------------------------------------------------------------------------------
F21_S003_9_TREATMENT                                                            

12 rows selected.

SQL> spool off;
SQL> CREATE OR REPLACE TRIGGER DIA_INS
  2  after INSERT ON F21_S003_9_DECIDES
  3  FOR EACH ROW
  4  DECLARE
  5  PRAGMA AUTONOMOUS_TRANSACTION;
  6  
  7  BEGIN
  8      UPDATE F21_S003_9_TREATMENT T
  9      SET T.DIAGNOSIS = (SELECT 'for this disease ' || D.DISEASE_ID || ' please use this medicine ' || D.MEDICINE_ID
 10                       FROM F21_S003_9_DECIDES D
 11                       WHERE T.Treatment_id = D.Treatment_id AND ROWNUM = 1)
 12      WHERE EXISTS (SELECT DISEASE_ID || MEDICINE_ID
 13                       FROM F21_S003_9_DECIDES D
 14                       WHERE T.Treatment_id = D.Treatment_id);
 15  COMMIT;
 16  END;
 17  /
 18    --Create trigger to get diagnosis information This trigger will give us the information of just id’s Like use so and so medicine for so and so disease
 19    --Here as we see trigger will update the diagnosis columnn/ in treatment table taking data from after inserting med id and disease _id from decides table
 

Trigger created.

SQL> spool off;
SQL> Create Table F21_S003_9_EMR(
  2  Record_id number GENERATED ALWAYS as IDENTITY(START with 701 INCREMENT by 1),
  3  Medicine_id number,
  4  M_name Varchar(50),
  5  Disease_id number,
  6  Disease_name Varchar(50),
  7  Diagnosis Varchar(300),
  8  Patient_ID NUmber,
  9  Appointment_ID number,
 10  Doctor_id NUMBER,
 11  FOREIGN KEY (Doctor_id) REFERENCES F21_S003_9_DOCTOR(Doctor_id)
 12  ); --added more values to the EMR table

Table created.

SQL> spool off;
SQL> CREATE OR REPLACE TRIGGER emr_sends
  2  after INSERT ON F21_S003_9_sends
  3  REFERENCING OLD AS old
  4  NEW AS new
  5  FOR EACH ROW
  6  DECLARE
  7  PRAGMA AUTONOMOUS_TRANSACTION;
  8  BEGIN
  9  INSERT INTO F21_S003_9_EMR(M_name,Medicine_id,Disease_id,Disease_name,DIAGNOSIS,PATIENT_ID,APPOINTMENT_ID,DOCTOR_ID)
 10  SELECT M.M_NAME,M.MEDICINE_ID,  DI.DISEASE_ID,DI.DISEASE_NAME ,T.DIAGNOSIS, P.patient_ID, A.APPOINTMENT_ID, D.Doctor_ID FROM F21_S003_9_TREATMENT T, F21_S003_9_sends s, F21_S003_9_APPOINTMENT A, F21_S003_9_PATIENT P, F21_S003_9_DOCTOR D, F21_S003_9_DECIDES DE, F21_S003_9_MEDICINE M, F21_S003_9_DISEASE DI
 11  WHERE T.Treatment_id = :new.Treat_id AND DE.Treatment_id=:new.Treat_id and T.Treatment_id = DE.Treatment_id  AND A.Appointment_id = :new.Appoint_id and P.patient_ID = A.patient_ID AND A.DOCTOR_ID = D.DOCTOR_ID AND M.MEDICINE_ID=DE.MEDICINE_ID AND DI.DISEASE_ID = DE.DISEASE_ID;
 12  COMMIT;
 13  END;
 14  /  --replaced the trigger as we modified the EMR table

Trigger created.

SQL> CREATE OR REPLACE TRIGGER sends_prescription
  2  after INSERT ON F21_S003_9_sends
  3  REFERENCING OLD AS old
  4  NEW AS new
  5  FOR EACH ROW
  6  DECLARE
  7  PRAGMA AUTONOMOUS_TRANSACTION;
  8  BEGIN
  9  INSERT INTO F21_S003_9_PRESCRIPTION(DIAGNOSIS_INFO,DOCTOR_INFO,PATIENT_INFO,Doctor_id,Patient_ID)
 10  SELECT T.DIAGNOSIS, D.DOCTOR_ID || ' ' || D.DOC_NAME, P.Patient_ID  || ' ' || P.PATIENTNAME, D.Doctor_iD, P.Patient_ID FROM F21_S003_9_TREATMENT T, F21_S003_9_SENDS S, F21_S003_9_APPOINTMENT A, F21_S003_9_PATIENT P, F21_S003_9_DOCTOR D
 11  WHERE T.Treatment_id=:new.Treat_id AND A.Appointment_id = :new.Appoint_id and P.patient_ID = A.patient_ID AND A.DOCTOR_ID = D.DOCTOR_ID and ROWNUM=1;
 12  COMMIT;
 13  END;
 14  /  --replaced the trigger as we modified the prescription table

Trigger created.

SQL> spool off;
