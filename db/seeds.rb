# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(username: "monkey123")

u2 = User.create(username: "thatGuy345")

p1 = Post.create([{
    user_id: 1,
    title: "cookies", 
    description: "bake this!", 
    imgs: ["img1", "img2"], 
    steps: ["step1", "step2"], 
    items: ["item1", "item2"]}])

p2 = Post.create(
    user_id: 2,
    title: "brownie", 
    description: "Awsome!", 
    imgs: ["img1", "img2"], 
    steps: ["step1", "step2"], 
    items: ["item1", "item2"])



r1 = Reference.create(
post_id: 1,   
href: ["gfhcgvjhbkjln", "dfgukhl"])

r2 = Reference.create(
    post_id: 2,
    href: ["trdyufyiuoihughv", "gh", "trdyuyiugf"])