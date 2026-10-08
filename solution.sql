CREATE DATABASE RECOD;
USE RECOD;
CREATE TABLE Employee (
    EmployeeID NUMBER PRIMARY KEY,
    EmployeeName VARCHAR2(50),
    Salary NUMBER
);

CREATE OR REPLACE TRIGGER Employee_Insert_Trigger
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE(
        'New employee record inserted successfully.'
    );

    DBMS_OUTPUT.PUT_LINE(
        'Employee ID: ' || :NEW.EmployeeID
    );

    DBMS_OUTPUT.PUT_LINE(
        'Employee Name: ' || :NEW.EmployeeName
    );
END;
/

SET SERVEROUTPUT ON;

INSERT INTO Employee (EmployeeID, EmployeeName, Salary)
VALUES (101, 'Kumar', 30000);

COMMIT;
