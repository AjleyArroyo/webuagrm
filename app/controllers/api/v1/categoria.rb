module API
  module V1
    class Categoria < Grape::API
      resources :categoria do

        desc "get establecimientos por categoria"
        get do
          est = Establecimiento.where("categorium_id=#{params[:id_category]}")
        end
      end
    end
  end
end