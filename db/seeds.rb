ca1 = Category.create(name: "Main Courses")
ca2 = Category.create(name: "Desserts")

co1 = Course.create(name: "Spaghetti", category_id: ca1.id)
co2 = Course.create(name: "Tiramisu", category_id: ca2.id)

pu1 = PricingUnit.create(course_id: co1.id, volume: 100.0, unit: 'g', price: 2.0)
pu2 = PricingUnit.create(course_id: co2.id, volume: 50.0, unit: 'g', price: 5.0)

pp1 = PricingPortion.create(course_id: co1.id, volume_per_unit: 100.0, unit: 'g', quantity: 3, price: 5.0)
pp2 = PricingPortion.create(course_id: co2.id, volume_per_unit: 50.0, unit: 'g', quantity: 3, price: 8.0)

d1 = DailyMenu.create(created: DateTime.parse("01/05/2021"))

di1 = DailyMenuItem.create(daily_menu_id: d1.id, course_id: co1.id, price: 5.0)
di2 = DailyMenuItem.create(daily_menu_id: d1.id, course_id: co2.id, price: 20.0)