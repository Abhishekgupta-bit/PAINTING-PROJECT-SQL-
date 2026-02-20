use paintings;
select * from artist ;
select * from canvas_size ;
select * from image_link ;
select * from museum ;
select * from museum_hours ;
select * from product_size;
select * from subject;
select * from work ;
--  how many artist are there, 
select count(artist_id) 
from artist ;
--  how many arts are there,
select count(*)
from image_link ; 
-- how many different nationality and how many artist from there ,
select distinct nationality,
count(nationality) total_artist from artist 
group by nationality
order by total_artist desc ;
-- how many different type of art style ,
select 
count(distinct style)
              from artist ;
-- how many artist where there between 1800 - 1900 ;
select count(death),count(birth) 
from artist 
where death between  1800 and 1900 ;

 -- 120;

--  Find the most common art style and how many paintings belong to it

select distinct style styles,
count(style) total_style  from artist 
group by styles
order by total_style desc 
limit 1 ;

-- Show each artist and the number of paintings they created?
select a.artist_id id ,
concat(a.first_name, " " ,a.middle_names, " " ,a.last_name ) fullname ,
count(w.artist_id) created_painting 
from artist a
join work w on a.artist_id=w.artist_id 
group by id,fullname 
order by created_painting desc;

-- Show each artist id and fullname along with the museum ID where their paintings are displayed;
select a.artist_id id ,
a.full_name fullname , w.museum_id m_id from artist a
join work w on a.artist_id=w.artist_id 

group by id ,fullname , m_id ;

-- find ID, Price and name of the artist  who sold the most expensive painting 
select a.artist_id , a.full_name,ps.sale_price from artist a
join work w on a.artist_id=w.artist_id 
join product_size ps on w.work_id=ps.work_id 
order by ps.sale_price desc limit 1 ;

-- Count how many paintings each nationality sold 
select a.nationality,count(ps.sale_price) total_painting from artist a
join work w on a.artist_id=w.artist_id 
join product_size ps on w.work_id=ps.work_id 
group by a.nationality 
order by total_painting desc;

-- advanced level query 
-- Find the top 3 most expensive paintings with artist and museum details ;
select m.museum_id m_id ,a.artist_id id , a.full_name fullname ,m.name m_name,
w.work_id w_id ,ps.sale_price sales_price from artist a
join work w on a.artist_id=w.artist_id 
join museum m on w.museum_id=m.museum_id
join product_size ps on w.work_id=ps.work_id
group by m_id , id , fullname, m_name ,w_id ,sales_price 
order by sales_price desc limit 3 ;

-- Rank all artists by the total value of their paintings ;
SELECT a.full_name AS artist_name,
       SUM(ps.sale_price) AS total_value,
       RANK() OVER (ORDER BY SUM(ps.sale_price) DESC) AS artist_rank
FROM artist a
JOIN  work w on a.artist_id=w.artist_id 
join product_size ps on w.work_id=ps.work_id
GROUP BY artist_name;

-- Find the museum with the highest total painting value
SELECT m.name AS museum_name,
       SUM(ps.sale_price) AS total_value
FROM museum m
join work w on m.museum_id=w.museum_id 
join product_size ps on w.work_id =ps.work_id 
GROUP BY museum_name
ORDER BY total_value DESC
LIMIT 1;
-- List top 5 artists by average painting price
SELECT a.full_name AS artist_name,
       ROUND(AVG(ps.sale_price), 2) AS avg_price
FROM artist a
JOIN  work w on a.artist_id=w.artist_id 
join product_size ps on w.work_id=ps.work_id 
GROUP BY artist_name
ORDER BY avg_price DESC
LIMIT 5;


