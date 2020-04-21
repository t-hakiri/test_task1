require "csv"
order_list = CSV.read("order.csv")

choco_orders = order_list.select { |n| n[1] == "チョコレート" && n[0].match(/^2019\/10/)}

all_choco_order_count = 0
choco_orders.each do |choco_order|
  all_choco_order_count += choco_order[3].to_i
end

puts all_choco_order_count