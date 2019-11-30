Rails.application.config.assets.version = "1.0"
Rails.application.config.assets.precompile += %w( signin_signup.css )
Rails.application.config.assets.precompile += %w( ckeditor/* )
Rails.application.config.assets.precompile += %w[ckeditor/config.js]
