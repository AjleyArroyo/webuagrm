module API
  module V1
    class Root < Grape::API
      mount V1::Establecimientos
      mount V1::Categoria
    end
  end
end
