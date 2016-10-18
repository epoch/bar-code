# Array and Hash access

### A. Given the following data structure:

```ruby
a = ["Anil", "Erik", "Jonathan"]
```

1. How would you return the string `"Erik"`?
a[1]

1. How would you add your name to the array?
a << 'DT' << 'TD' << 'HTML'

### B. Given the following data structure:

```ruby
h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}
```

1. How would you return the string `"One"`? h[1]
1. How would you return the string `"Two"`? h[:two]
1. How would you return the number `2`? h['two']
1. How would you add `{3 => "Three"}` to the hash? h[3] = 'Three'
1. How would you add `{:four => 4}` to the hash? h[:four] = 4

### C. Given the following data structure:

```ruby
is = {true => "It's true!", false => "It's false"}
```

1. What is the return value of `is[2 + 2 == 4]`? "It's true!"
1. What is the return value of `is["Erik" == "Jonathan"]`? "It's false"
1. What is the return value of `is[9 > 10]`? "It's false"
1. What is the return value of `is[0]`? nil
1. What is the return value of `is["Erik"]`? nil

### D. Given the following data structure:

```ruby
users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}
```

1. How would you access Jonathan's Twitter handle (i.e. the string `"tronathan"`)?
1. How would you add the number `7` to Erik's favorite numbers?
1. How would you add yourself to the users hash?
1. How would you return the array of Erik's favorite numbers?
1. How would you return the smallest of Erik's favorite numbers?
1. How would you return an array of Anil's favorite numbers that are also even?
1. How would you return an array of the favorite numbers common to all users?
1. How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?


even_numbers = []

users['Anil'][:favorite_numbers].each do |num|
  if num.even?
    even_numbers.push(num)
  end
end

even_numbers = users['Anil'][:favorite_numbers].select do |num| 
  num % 3 == 0
end


all_nums = []

users.each do |key, val| 
  all_nums.concat(val[:favorite_numbers])
end

all_nums.uniq.sort

#=============

all_nums = users['Anil'][:favorite_numbers] + users['Erik'][:favorite_numbers] + users['Jonathan'][:favorite_numbers]
all_nums.uniq.sort

[60] pry(main)> all_nums = []
=> []
[61] pry(main)> users.each do |key, val| 
[61] pry(main)*   all_nums.push(val[:favorite_numbers])  
[61] pry(main)* end  
=> {"Jonathan"=>
  {:twitter=>"tronathan", :favorite_numbers=>[12, 42, 75]},
 "Erik"=>{:twitter=>"sferik", :favorite_numbers=>[8, 12, 24, 7]},
 "Anil"=>{:twitter=>"bridgpal", :favorite_numbers=>[12, 14, 85]},
 "DT"=>{:twitter=>"svperuser"}}
[62] pry(main)> all_nums
=> [[12, 42, 75], [8, 12, 24, 7], [12, 14, 85], nil]
[63] pry(main)> all_nums.flatten
=> [12, 42, 75, 8, 12, 24, 7, 12, 14, 85, nil]
[64] pry(main)> all_nums.flatten.compact
=> [12, 42, 75, 8, 12, 24, 7, 12, 14, 85]
[65] pry(main)> all_nums.flatten.compact.uniq
=> [12, 42, 75, 8, 24, 7, 14, 85]
[66] pry(main)> all_nums.flatten.compact.uniq.sort
=> [7, 8, 12, 14, 24, 42, 75, 85]
