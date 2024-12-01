-- 1

 SELECT s.first_name, s.surname, b.bill_date, COUNT(b.bill_no) AS number_of_bills
     FROM restBill b
     JOIN restStaff s ON b.waiter_no = s.staff_no
     GROUP BY s.first_name, s.surname, b.bill_date
     HAVING COUNT(b.bill_no) >= 2;

-- 2

SELECT r.room_name, COUNT(*) AS number_of_large_tables
    FROM restRest_table r
    WHERE r.no_of_seats > 6
    GROUP BY r.room_name;

-- 3

SELECT rm.room_name, SUM(b.bill_total) AS total_bills
    FROM restBill b
    JOIN restRest_table t ON b.table_no = t.table_no
    JOIN restRoom_management rm ON t.room_name = rm.room_name
    GROUP BY rm.room_name;

-- 4

 SELECT hs.first_name, hs.surname, SUM(b.bill_total) AS total_bill_amount
     FROM restStaff hs
     JOIN restStaff ws ON hs.staff_no = ws.headwaiter
     JOIN restBill b ON ws.staff_no = b.waiter_no
     GROUP BY hs.first_name, hs.surname
     ORDER BY total_bill_amount DESC;

-- 5

SELECT b.cust_name, AVG(b.bill_total) AS average_spent
    FROM restBill b
    GROUP BY b.cust_name
    HAVING AVG(b.bill_total) > 400;

-- 6

SELECT s.first_name, s.surname, b.bill_date, COUNT(b.bill_no) AS number_of_bills
    FROM restBill b
    JOIN restStaff s ON b.waiter_no = s.staff_no
    GROUP BY s.first_name, s.surname, b.bill_date
    HAVING COUNT(b.bill_no) >= 3;
