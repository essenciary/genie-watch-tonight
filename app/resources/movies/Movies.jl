module Movies

import SearchLight: AbstractModel, DbId
import Base: @kwdef

export Movie

@kwdef mutable struct Movie <: AbstractModel
  id::DbId = DbId()
  type::String = "Movie"
  title::String = ""
  directors::String = ""
  actors::String = ""
  country::String = ""
  year::Int = 0
  rating::String = ""
  categories::String = ""
  description::String = ""
end

end