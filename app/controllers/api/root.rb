module API
  class Root < Grape::API
    prefix 'api'
    format    :json
    rescue_from :all, :backtrace => true

    mount V1::Root
  end
end