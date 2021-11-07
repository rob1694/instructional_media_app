# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(username: "monkey123")

u2 = User.create(username: "thatGuy345")

p1 = Post.create(
    user_id: 1,
    title: "Chocolate Chip Cookies", 
    description: "Awsome Chocolate Chip Cookies to try the next time your craving!", 
    imgs: ["img1", "img2"], 
    steps: ["Heat oven to 375°F. In small bowl, mix flour, baking soda and salt; set aside.",
            "step2",
            "In large bowl, beat softened butter and sugars with electric mixer on medium speed, or mix with spoon about 1 minute or until fluffy, scraping side of bowl occasionally.",
            "Beat in egg and vanilla until smooth. Stir in flour mixture just until blended (dough will be stiff). Stir in chocolate chips and nuts.",
            "Onto ungreased cookie sheets, drop dough by rounded tablespoonfuls 2 inches apart.",
            "Bake 8 to 10 minutes or until light brown (centers will be soft). Cool 2 minutes; remove from cookie sheet to cooling rack. Cool completely, about 30 minutes. Store covered in airtight container."
        ], 
    items: ["2 1/4 cups Gold Medal™ all-purpose flour",
            "1 teaspoon baking soda",
            "1/2 teaspoon salt",
            "1 cup butter, softened",
            "3/4 cup granulated sugar",
            "3/4 cup packed brown sugar",
            "1 egg",
            "1 teaspoon vanilla",
            "2 cups semisweet chocolate chips",
            "1 cup coarsely chopped nuts (optional)"
        ]
    )

p2 = Post.create(
    user_id: 2,
    title: "Paper Airplane", 
    description: "Fast Glider!, A fun looking plane that flies and glides perfectly. (Difficulty: Medium", 
    imgs: ["img1", "img2"], 
    steps: ["Fold the sheet in half, unfold and then fold the top two corners to the center.",
     "Fold the top peak down.",
     "Again, fold the top two edges to the center.",
     "Fold the top peak to the bottom edge.",
     "Next, fold the peak back up as shown.",
     "Fold the plane in half and grab a pair of scissors.",
     "Now, cut along the grey lines.",
     "Fold the wings out.",
     "Finally, fold up the wing tips on the back set of wings."
    ], 
    items: ["item1", "item2"])

