module API
  module V1
    class Establecimientos < Grape::API
      resources :establecimientos do
        desc "Lista de establecimientos"
        get do
          Establecimiento.all
        end
        desc "get establecimientos por categoria"
        get do
          est = Establecimiento.where("categorium_id=#{params[:id_category]}")
        end

      end
    end
  end
end