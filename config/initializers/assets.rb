# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.

Rails.application.config.assets.precompile += %w( cable.js
                                                  predios.js
                                                  application.js
                                                  welcome.js 
                                                  start.js
                                                  login.js 
                                                  devise/sessions.js
                                                  devise/registrations.js
                                                  devise/passwords.js
                                                  visitors.js
                                                  information.js
                                                  eventos.js
                                                  devise/passwords.js
                                                  finances.js
                                                  users_backoffice.js
                                                  finances.js 
                                                  aviso.js
                                                  arquivos.js)


Rails.application.config.assets.precompile += %w( predios.css
                                                  application.css
                                                  scaffolds.css
                                                  welcome.css 
                                                  start.css                                                  
                                                  login.css
                                                  devise/registrations.css
                                                  devise/sessions.css
                                                  events.css
                                                  visitors.css
                                                  information.css
                                                  eventos.css
                                                  devise/passwords.css
                                                  finances.css
                                                  users_backoffice.css
                                                  aviso.css
                                                  arquivos.css)



