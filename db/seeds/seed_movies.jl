using SearchLight, Movies
using CSV

Base.convert(::Type{String}, _::Missing) = ""
Base.convert(::Type{Int}, _::Missing) = 0
Base.convert(::Type{Int}, s::String) = parse(Int, s)

function seed()
  for row in CSV.Rows(joinpath(@__DIR__, "netflix_titles.csv"), limit = 1_000)
    m = Movie()

    m.type = row.type
    m.title = row.title
    m.directors = row.director
    m.actors = row.cast
    m.country = row.country
    m.year = row.release_year
    m.rating = row.rating
    m.categories = row.listed_in
    m.description = row.description

    save(m)
  end
end