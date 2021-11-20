class RecipeSerializer # creates a data object which holds id recipe id and type(recipe) and the attributes associated with that recipe in an array
  include FastJsonapi::ObjectSerializer
  attributes :name, :ingredients, :instructions, :image_url, :category_id, :category
end
