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
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
Rails.application.config.assets.precompile += %w( css/style.css js/jquery-1.7.2.min.js js/html5.js js/html5.js js/main.js js/jquery.carouFredSel-6.2.0-packed.js js/jquery.touchSwipe.min.js js/checkbox.js js/radio.js js/selectBox.js js/jquery.jqzoom-core.js)