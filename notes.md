### Models
- Recipe
    - name
    - ingredients
    - instructions
    - image_url
    - category_id

- Category
    - name

### Associations

```ruby
Recipe

belongs_to :category

Category

has_many :recipes

```

### Seed Data

american = Category.create(name: "American")
french = Category.create(name: "French")
italian = Category.create(name: "Italian")

# source: https://en.wikipedia.org/wiki/African_art

