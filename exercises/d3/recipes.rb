recipes = {
	hashbrowns: {
		description: 'Cripsy fried potatoes!',
		ingredients: ["Potatoes", "Butter", "Eggs", "Salt", "Pepper"],
		steps: ["1. Shred potatoes", "2. Add butter and eggs", "3. Fry"]
	},
	pancakes: {
		description: 'Warm, fluffy buttermilk pancakes!',
		ingredients: ["Flour", 'Salt', 'Egg', 'Milk', 'Butter'],
		steps: ["1. Mix ingredients until smooth", "2. Pour mix on pan", "3. Flip when ready"]
	},
	ice_cream: {
		description: 'Homemade vanilla ice cream!',
		ingredients: ['Milk', "Vanilla", 'Salt', "Cream"],
		steps: ["1. Stir milk, vanilla, and salt", "2. Beat cream and add milk mix", "3. Pour and let freeze, stirring occasionally"]
	}
}

# 1. The hash in ingredients.rb has signature Hash<Symbol, Array<String>>
# 2. Hash<Hash, Array<Integer>>
# 3. Array< Hash< Array<String>, Symbol> >
# 4. The hash in the yellow box doesn't have a signature because the symbols
#    map to different data types
