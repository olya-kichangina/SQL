select category_name, avg(cost) as average_cost from (select distinct a.*, b.cost from adverts a, costs b where a.id = b.id) as advert_new group by category_name having avg(cost)<500;