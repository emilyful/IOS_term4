//
//  RecipeModel.swift
//  Pantry
//
//  Created by Emily Fulford on 2023/11/05.
//

import Foundation

enum Category: String, CaseIterable, Identifiable{
    var id: String {self.rawValue}
    
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
    
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue //read string and not case
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe (
            name:"Buttermilk Pumpkin Pancakes",
            image:"https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F7544835.jpg&q=60&c=sc&orient=true&poi=auto&h=512",
            description: "These buttermilk pumpkin pancakes are especially great for cold fall/winter mornings! Serve with syrup.",
            ingredients:"1 cup all-purpose flour, 2 tablespoons white sugar,1 tablespoon pumpkin pie spice,1 teaspoon baking powder,1 teaspoon baking soda, ½ teaspoon salt, 1 cup buttermilk, ½ cup canned pumpkin, ¼ cup canola oil, 2 large eggs, 1 teaspoon vanilla extract, 1 serving nonstick cooking spray",
            directions:"Whisk flour, sugar, pumpkin pie spice, baking powder, baking soda, and salt together in a large bowl. Whisk in buttermilk, pumpkin, oil, eggs, and vanilla extract until well blended, Spray a large nonstick griddle or skillet with cooking spray. Heat over medium heat., Pour batter by scant 1/3 cupfuls into the hot skillet, working in batches. Cook until bubbles form on the surface of pancakes and bottoms are lightly browned, about 1 1/2 minutes per side. Repeat with remaining batter, spraying the skillet with cooking spray between batches as needed. Serve warm.",
            category:"Breakfast",
            datePublished:"11-02-2022",
            url:"https://www.allrecipe .com/recipe/277720/buttermilk-pumpkin-pancakes/"
    ),
    
    Recipe (
        name:"Absolutely Ultimate Potato Soup",
        image:"https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fpublic-assets.meredithcorp.io%2Fca48154ff0d34a832eafa34bb53c08e5%2F169811852977920231023_223509.jpg&q=60&c=sc&orient=true&poi=auto&h=512",
        description: "I have made this potato soup for many whom have given it this title. It takes a bit of effort but is well worth it. Please note: for those who do not wish to use bacon, substitute 1/4 cup melted butter for the bacon grease and continue with the recipe. (I generally serve this soup as a special treat as it is not recommended for people counting calories.)",
        ingredients:"1 pound bacon chopped, 2 stalks celery diced, 1 onion chopped, 3 cloves garlic minced,8 potatoes peeled and cubed",
        directions:"Cook bacon in a Dutch oven over medium-high heat until brown and crispy. Drain bacon on paper towels and drain most (but not all!) of the bacon grease.Cook the celery, onion, and garlic in the remaining bacon grease. Add cubed potatoes and toss with veggies. Return the bacon to the pan and cover all the ingredients with chicken stock. Cover and simmer until the potatoes are tender.In a separate skillet, whisk butter into melted flour until slightly thickened. Whisk in heavy cream, tarragon, and cilantro. Bring the mixture to a boil and cook until thick and creamy.Transfer half of the soup to a blender and puree, then return to the Dutch oven. Season to taste and serve with your favorite toppings, such as crumbled bacon or shredded Cheddar cheese.",
        category:"Soup",
        datePublished:"12-04-2022",
        url:"https://www.allrecipes.com/recipe/13218/absolutely-ultimate-potato-soup/"),
        
    Recipe (
        name:"Greek Couscous Salad",
        image:"https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F1389405.jpg&q=60&c=sc&orient=true&poi=auto&h=512",
        description: "This hearty Greek couscous salad uses Israeli couscous. So delicious!",
        ingredients:"½ cup water, ¼ cup chicken broth, 1 teaspoon minced garlic, ½ cup pearl (Israeli) couscous, 1 cup canned chickpeas (garbanzo beans rinsed and drained, ¼ cup chopped sun-dried tomatoes",
        directions:"Pour water and chicken broth into a saucepan; stir in the garlic and bring to a boil. Stir in pearl couscous, cover the pan, and remove from heat. Allow couscous to stand until water has been absorbed, about 5 minutes; fluff with a fork. Allow couscous to cool to warm temperature. Lightly toss couscous, chickpeas, sun-dried tomatoes, olives, and feta cheese in a large serving bowl. To make the dressing: Mix white wine vinegar, lemon juice, oregano, and black pepper in a small bowl until well combined. Pour over couscous mixture; toss again to serve.",
        category:"Salad",
        datePublished:"12-06-2023",
        url:"https://www.allrecipes.com/recipe/218225/greek-couscous/"),
        
    Recipe (
        name:"Buttered Noodles",
        image:"https://www.allrecipes.com/thmb/6vQ5bQUdEQlBel_wTJCN79Wocks=/282x188/filters:no_upscale():max_bytes(150000):strip_icc():focal(1999x0:2001x2):format(webp)/244458-buttered-noodles-DDMFS-4x3-b9931662efa64b37883c0f73b296b124.jpg",
        description: "Buttered noodles are simple to make with your favorite pasta, butter, Parmesan cheese, salt, and pepper for a quick and easy, kid-friendly dish. Fresh herbs and a little lemon juice could be added to amp up the flavor. Perfect to serve either as-is or alongside steak, chicken, or meatballs. It's such a delicious recipe, yet I get many questions on how to make it.",
        ingredients:"1 (16 ounce) package fettuccine noodles, 6 tablespoons butter, cut into pieces, ⅓ cup grated Parmesan cheese, salt and ground black pepper to taste",
        directions:"Fill a large pot with lightly salted water and bring to a rolling boil.Stir in fettuccine, bring back to a boil, and cook pasta over medium heat until tender yet firm to the bite, 8 to 10 minutes. Drain and return pasta to pot. Mix butter, Parmesan cheese, salt, and pepper into pasta until evenly combined.",
        category:"Side",
        datePublished:"24-10-2023",
        url:"https://www.allrecipes.com/recipe/244458/buttered-noodles/"),
        
    Recipe (
        name:"Baked Buffalo Chicken Thighs",
        image:"https://www.allrecipes.com/thmb/Z_GvgcY6L1stDwWwlOwp9stgGOQ=/364x242/filters:no_upscale():max_bytes(150000):strip_icc():focal(1999x0:2001x2):format(webp)/8384547_Baked-Buffalo-Chicken-Thighs_Brenda-Venable_4x3-baa2a2d8804d4d0a86f38ba5d28e650a.jpg",
        description:"Chicken wings are delightful, but these baked Buffalo chicken thighs improve the meat to bone ratio dramatically. If you want a meal, try using bone-in, skin-on chicken thighs for a hearty, spicy main dish. If you serve them with carrot and celery strips on Romaine leaves, you'll sneak in a salad, before your family will know it.",
        ingredients:"4 skin-on, bone-in chicken thighs, 3/4 teaspoon salt, 1/2 teaspoon freshly ground black pepper, 1 1/2 teaspoons baking powder, olive oil spray, 2 tablespoons unsalted butter",
        directions:"Preheat the oven to 425 degrees F (220 degrees C). Line a sheet pan with parchment paper or foil.Trim excess skin and fat from thighs and pat dry with paper towels. Place chicken thighs in a 1-gallon resealable plastic bag.Stir together salt, pepper, and baking powder in a small bowl until well blended. Add seasonings to the bag. Seal the bag; shake and move chicken around to evenly coat with seasonings.Place seasoned chicken thighs on the prepared pan, skin side up, and spray with olive oil spray.Bake in the preheated oven until chicken skin is brown and crispy, chicken is no longer pink at the center and juices run clear, 40 to 45 minutes. An instant-read thermometer inserted near the center of chicken should read at least 165 degrees F (74 degrees C).",
        category:"Main",
        datePublished:"02-11-2023",
        url:"https://www.allrecipes.com/baked-buffalo-chicken-thighs-recipe-8384547"),
        
    Recipe (
        name:"Mongolian Meatloaf",
        image:"https://www.allrecipes.com/thmb/z0oTfhbHlQhqchU9-fm5FoYxjmU=/282x188/filters:no_upscale():max_bytes(150000):strip_icc():focal(1999x0:2001x2):format(webp)/8362702_Chef-Johns-Mongolian-Meatloaf_Chef-John_4x3-672dca11460b40beb3d6d3251b71a562.jpg",
        description:"I could not be more pleased with how this Mongolian Meatloaf experiment turned out. Since I couldn’t decide whether to make meatloaf or Mongolian beef, I decided to try both things at once. The result is a tender meatloaf, sliced and crisped in a skillet and served with a sweet, salty, savory sauce, which, like the American Chinese restaurant favorite, Mongolian Beef, is not remotely Mongolian. But it sure is delicious, especially served over steamed rice with bok choy.",
        ingredients:"1 tablespoon vegetable oil, 1 cup diced yellow onion, 3 cloves garlic, crushed, 2 teaspoons finely grated fresh ginger,2 pounds ground beef, 1 cup cooked rice, cold or at room temperature",
        directions:"Heat 1 tablespoon vegetable oil in a nonstick skillet over medium-high heat and sauté yellow onions with a pinch of salt until they start to turn golden, 3 to 5 minutes. Stir in 3 cloves crushed garlic and 2 teaspoons ginger, and cook for 1 minute more. Remove from heat and let cool to room temperature, about 15 minutes.Add cooled onion mixture to ground beef along with egg, green onions, 1 tablespoon soy sauce, salt, and black pepper. Use a fork, spatula, or your hands to mix together until evenly combined. Transfer to the prepared loaf pan, press in firmly, and smooth the top. Bake in the preheated oven until an instant read thermometer inserted in the center reads 145 to 150 degrees F (63 to 65 degrees C). Meatloaf can be served hot, or let cool, wrap and refrigerate until chilled, about 45 minutes.Turn heat on to medium-high. Once ginger and garlic start to sizzle, cook, stirring, for about 30 seconds, then whisk in brown sugar, 1/2 cup soy sauce, 1/4 cup water, ketchup, and red pepper flakes. Bring to a simmer, then reduce heat to low.Whisk 1 teaspoon cornstarch with 2 teaspoons water togehter in a small bowl to make a slurry; stir into the sauce. Raise heat to medium-high and return to a simmer. Cook, whisking occasionally, until sauce thickens slightly, about 2 minutes. Reduce heat to low and keep warm until needed (Sauce may be made ahead and reheated on medium-low heat).Remove cold meatloaf from the refrigerator and slice into 8 portions. Dust each side with cornstarch, and reheat over medium high heat in a nonstick skillet in a little bit of vegetable oil until browned and heated through. If surface browns before meatloaf is heated through, reduce heat to medium, and cover until done.",
        category:"Main",
        datePublished:"23-10-2023",
        url:"https://www.allrecipes.com/mongolian-meatloaf-recipe-8362702"),
    
    Recipe (
        name:"Pumpkin Spice Rice Krispie Treats",
        image:"https://www.allrecipes.com/thmb/ChnFKoaWZ6ivyUMiPUxaofrUllw=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/8387013_Pumpkin-Spice-Rice-Krispie-Treats_Diana-Moutsopoulos_4x3-0553c163f25b4cc59060c4cf56214468.jpg",
        description:"I made these pumpkin spice Rice Krispie treats for a fall bake sale and they were a total hit with kids and adults alike. If you're someone who can't get enough pumpkin each fall, be sure to try these!",
        ingredients:"6 tablespoons butter softened, 1/2 cup pumpkin puree, 2 (10 ounce) bags mini marshmallows, 1 teaspoon vanilla extract, 1 teaspoon ground cinnamon,1 teaspoon ground ginger, 1/4 teaspoon ground cloves, 1/4 teaspoon salt, 12 cups crispy rice cereal, such as Rice Krispies®",
        directions:"Add butter and pumpkin puree to a large pot set over medium heat. Stir well and add vanilla, cinnamon, ginger, cloves, and salt. Once the mixture is heated through and homogenous, add marshmallows. Stir constantly, still over medium heat, until marshmallows have melted, about 5 minutes. Remove from heat; cool for 15 to 20 minutes. Pour in cereal and mix well. This will require some elbow grease to get all of the cereal evenly coated in the pumpkin-marshmallow mixture! Pour mixture into the prepared pan and use a spatula to flatten and spread out evenly. Place in the freezer until cool to the touch, 15 to 30 minutes. To slice and serve, run a knife along the sides of the pan and invert onto a cutting board. Using a large chef's knife, cut treats into bars.",
        category:"Dessert",
        datePublished:"03-11-2023",
        url:"https://www.allrecipes.com/pumpkin-spice-rice-krispie-treats-recipe-8387013")
    
]
    
    
}
