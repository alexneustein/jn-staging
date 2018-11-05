# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all

Category.create(name: 'Drawings', catnum: 1)
Category.create(name: 'Installations', catnum: 2)
Category.create(name: 'Paintings', catnum: 3)
Category.create(name: 'Photography', catnum: 4)
Category.create(name: 'Video', catnum: 5)

Category.create(name: 'Early Works', parent: 1)
Category.create(name: 'Torn Folded', parent: 1)
Category.create(name: 'Carbon Series', parent: 1)
Category.create(name: 'Magnetic Fields Polish Forests', parent: 1)
Category.create(name: 'Taped Erased', parent: 1)

Category.create(name: '1968-1979', parent: 2)
Category.create(name: '1980-1989', parent: 2)
Category.create(name: '1990-1999', parent: 2)
Category.create(name: '2000-2009', parent: 2)
Category.create(name: '2010-present', parent: 2)

Category.create(name: 'Canvases', parent: 3)
Category.create(name: 'Folded Works', parent: 3)
Category.create(name: 'Maps', parent: 3)
Category.create(name: 'Strip Works', parent: 3)
Category.create(name: 'Aquarelles', parent: 3)
