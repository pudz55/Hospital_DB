SQL> ALTER TABLE  F21_S003_9_APPOINTMENT
  2  ADD (
  3  Doctor_id Number,
  4  FOREIGN KEY (Doctor_id) REFERENCES F21_S003_9_DOCTOR(Doctor_id)
  5  ); --altering the table to add doctor_id as foreign key
	
Table altered.

SQL> Alter table F21_S003_9_MEDICINE add (FOREIGN KEY (M_NAME) REFERENCES F21_S003_9_MED_NAME(M_NAME));

Table altered.

SQL> spool off;
SQL> Alter table F21_S003_9_PATIENT
  2  Add (EMAIL VARCHAR(50));

Table altered.

SQL> spool off;
SQL> Alter table F21_S003_9_APPOINTMENT
  2  Add (SYMPTOMS VARCHAR(200));

Table altered.

SQL> spool off;
SQL> Alter table F21_S003_9_EMR drop column Patient_info;

Table altered.

SQL> Alter table F21_S003_9_EMR add (Patient_ID Number, Appointment_ID number);

Table altered.

SQL> spool off;
SQL> Alter table F21_S003_9_PRESCRIPTION add (Patient_ID Number);

Table altered.

SQL> spool off;
