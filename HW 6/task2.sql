-- 1

SELECT restBill.cust_name
    FROM restBill
    JOIN restRoom_management ON restBill.table_no = restRoom_management.room_name
    JOIN restStaff ON restRoom_management.headwaiter = restStaff.staff_no
    WHERE restStaff.first_name = 'Charles'
    AND restBill.bill_total > 450.00;

-- 2

 SELECT restStaff.first_name, restStaff.surname
     FROM restStaff
     JOIN restRoom_management ON restStaff.staff_no = restRoom_management.headwaiter
     JOIN restBill ON restRoom_management.room_name = restBill.table_no
     WHERE restBill.cust_name = 'Nerida'
     AND restBill.bill_date = 160111;

-- 3

SELECT restBill.cust_name
    FROM restBill
    WHERE restBill.bill_total = (
    SELECT MIN(bill_total)
    FROM restBill);

-- 4

 SELECT restStaff.first_name, restStaff.surname
     FROM restStaff
     WHERE restStaff.staff_no NOT IN (
     SELECT restBill.waiter_no
     FROM restBill);

-- 5

 SELECT restBill.cust_name, restStaff.first_name AS headwaiter_first_name, restStaff.surname AS headwaiter_surname, restRoom_management.room_name
     FROM restBill
     JOIN restRoom_management ON restBill.table_no = restRoom_management.room_name
     JOIN restStaff ON restRoom_management.headwaiter = restStaff.staff_no
     WHERE restBill.bill_total = (
     SELECT MAX(bill_total)
     FROM restBill);