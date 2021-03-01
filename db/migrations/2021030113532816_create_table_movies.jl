module CreateTableMovies

import SearchLight.Migrations: create_table, column, primary_key, add_index, drop_table

function up()
  create_table(:movies) do
    [
      primary_key()
      column(:type, :string, limit = 10)
      column(:title, :string, limit = 100)
      column(:directors, :string, limit = 100)
      column(:actors, :string, limit = 250)
      column(:country, :string, limit = 100)
      column(:year, :integer, limit = 4)
      column(:rating, :string, limit = 10)
      column(:categories, :string, limit = 100)
      column(:description, :string, limit = 1_000)
    ]
  end

  add_index(:movies, :title)
  add_index(:movies, :actors)
  add_index(:movies, :categories)
  add_index(:movies, :description)
end

function down()
  drop_table(:movies)
end

end
