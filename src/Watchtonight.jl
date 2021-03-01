module Watchtonight

using Genie, Logging, LoggingExtras

function main()
  Base.eval(Main, :(const UserApp = Watchtonight))

  Genie.genie(; context = @__MODULE__)

  Base.eval(Main, :(const Genie = Watchtonight.Genie))
  Base.eval(Main, :(using Genie))
end

end
