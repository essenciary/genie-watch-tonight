module MoviesController

using Genie, Genie.Renderer, Genie.Renderer.Html, SearchLight, Movies, Genie.Renderer.Json

function index()
  html(:movies, :index, movies = rand(Movie))
end

function search()
  movies = find(Movie,
              SQLWhereExpression("title LIKE ? OR categories LIKE ? OR description LIKE ? OR actors LIKE ?",
                                  repeat(['%' * @params(:search_movies) * '%'], 4)))

  html(:movies, :index, movies = movies)
end

function search_api()
  movies = find(Movie,
              SQLWhereExpression("title LIKE ? OR categories LIKE ? OR description LIKE ? OR actors LIKE ?",
                                  repeat(['%' * @params(:search_movies) * '%'], 4)))

  json(Dict("movies" => movies))
end

end