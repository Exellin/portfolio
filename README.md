# MY PORTFOLIO

This portfolio is hosted on a vps I set up from scratch and use capistrano to deploy.
Its main purpose will be a place to show off my projects and as a place to set up a blog.

Features

* Custom navigation bar that collapses and expands when viewing on mobile

* Markdown and syntax highlighting for blog posts

* Sweet background image of me in Nepal

* Projects listing with production link, github link, picture, and keywords

## Get started using docker
1. `cp config/environment_variables.example config/environment_variables.rb` and fill in what you want to use for your database credentials
2. `cp env.example .env` and use same credentials as in the ruby file
3. Run `docker compose run web rake db:create`
4. Run `docker compose run web rake db:migrate`
