select sum(revenue_realized) total_revenue
from fact_bookings;



select count(booking_id) total_booking
from fact_bookings;


select sum(capacity) total_capacity
from fact_aggregated_bookings;





select ((select  count(booking_status) from fact_bookings
where booking_status="cancelled"
group by booking_status)/ count(booking_status) )*100 as cancellation_rate
from fact_bookings;

select booking_status, count(booking_status) from fact_bookings
group by booking_status;

select d.room_class,sum(fb.revenue_realized)
from fact_bookings fb
left join dim_rooms d

on fb.room_category=d.room_id
group by d.room_class;






