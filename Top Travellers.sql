select u.name as name,sum(case when r.distance is null then 0 else r.distance end) as travelled_distance from users as u left join rides as r on 
u.id=r.user_id group by r.user_id order by sum(r.distance) desc,u.name;
