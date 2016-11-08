Dish.destroy_all

u = User.first

food = ['cake','pudding', 'candy', 'nuts', 'muffin']

15.times do |num|
  Dish.create(title: "#{food.sample} #{food.sample}", image_url: 'http://resepyummy.com/media/fruit%20cake%20pudding.jpeg', user_id: u.id)
end