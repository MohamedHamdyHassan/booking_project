select *
from actor;

select first_name,month(last_update) as month_actorbookings_data
from actor;

select * from bookings_data;

select busline_name, (date_booking)
from bookings_data;

select distinct(year(date_booking))
from bookings_data;

select min(date_booking)
from bookings_data;

select busline_name,date_booking
from bookings_data
where date_booking=(select min(date_booking)
					from bookings_data);

select distinct busline_name , min(date_booking) date_booking , dayname(STR_TO_DATE(date_booking, '%Y-%m-%d')) AS dayname ,
       case when dayname(STR_TO_DATE(date_booking, '%Y-%m-%d')) between 'Monday' and 'Saturday' then 0 else 1 end tt

from bookings_data
group by busline_name , dayname(STR_TO_DATE(date_booking, '%Y-%m-%d')) , case when dayname(STR_TO_DATE(date_booking, '%Y-%m-%d')) between 'Monday' and 'Saturday' then 0 else 1 end
order by 2;


select MONTHNAME(STR_TO_DATE(date_booking, '%Y-%m-%d')) AS month_name
from bookings_data;

SELECT weekday(STR_TO_DATE(date_booking, '%Y-%m-%d'), 1) AS week_number
FROM bookings_data;


SELECT busline_name,
       MIN(date_booking) AS launch_date,
       FLOOR(DATEDIFF(MIN(date_booking), '2024-01-01') / 7) AS launch_week
FROM bookings_data
GROUP BY busline_name;


SELECT busline_name,
       MIN(date_booking) AS launch_date,
       (select max(0) + 1 from bookings_data d where date_booking = date_booking) tt
FROM bookings_data 
GROUP BY busline_name ;


select distinct date_booking , weekday(STR_TO_DATE(date_booking, '%Y-%m-%d'), 1) AS week_number
FROM bookings_data
group by date_booking
order by 1;

SELECT
    busline_name,
    MIN(date_booking) AS launch_date,
    FLOOR(DATEDIFF(MIN(date_booking), '2023-09-04') / 7) AS launch_week
FROM
    bookings_data
GROUP BY
    busline_name
order by 2;




SELECT
    busline_name,
    MIN(date_booking) AS launch_date,
    FLOOR(DATEDIFF(date_booking, '2023-09-04') / 7) AS week_number,sum(number_passengers) as sum_passengers,
    concat('%' , round((sum(number_passengers) / 20.0) * 100)) AS average_fill_rate_percentage
FROM
    bookings_data
GROUP BY
    busline_name,
    week_number
    order by 2;
    

