USE cdg_hyd_jfs_058;

CREATE TABLE students (
    student_id INT NOT NULL,
    admission_number VARCHAR(15) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(120) NOT NULL,
    phone VARCHAR(15),
    date_of_birth DATE NOT NULL,
    program_name VARCHAR(100) NOT NULL,
    admission_date DATE NOT NULL,
    cgpa DECIMAL(4, 2) NOT NULL,
    student_status VARCHAR(15) NOT NULL DEFAULT 'Active',
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT `uq_admission_number` UNIQUE (admission_number),
    CONSTRAINT `uq_email` UNIQUE (email),
    CONSTRAINT `chk_cgpa` CHECK (cgpa BETWEEN 0.00 AND 10.00)
);
ALTER TABLE students;

INSERT INTO students (student_id,admission_number,first_name,last_name,email,phone,date_of_birth,program_name,admission_date,cgpa)
VALUES(101,'123','shaik','siddiq','12345','8247','2026-12-12','12','2026-11-11','2026-9-9',7.00);
DROP TABLE students;

SELECT * FROM students;


