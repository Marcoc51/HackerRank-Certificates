select st.roll_number, st.name from student_information st inner join examination_marks ex on st.roll_number = ex.roll_number 
where (subject_one + subject_two + subject_three) < 100;
