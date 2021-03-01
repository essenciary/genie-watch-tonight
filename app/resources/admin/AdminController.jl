module AdminController

using GenieAuthentication, Genie.Renderer, Genie.Exceptions, Genie.Renderer.Html

before() = authenticated() || throw(ExceptionalResponse(redirect(:show_login)))

function index()
  h1("Welcome Admin") |> html
end

end
