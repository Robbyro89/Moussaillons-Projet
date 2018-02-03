Rails.application.routes.draw do

root to: 'moussaillons#home'

get '/Welcome(/:name)', to: 'moussaillons#welcome', as:'welcome'

end
