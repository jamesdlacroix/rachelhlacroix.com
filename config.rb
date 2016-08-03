###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration
activate :directory_indexes

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

activate :autoprefixer do |config|
  config.browsers = ['last 7 versions', 'Explorer >= 9']
  config.ignore   = ['/stylesheets/hacks.css']
end

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :fonts_dir, 'fonts'

set :markdown_engine, :redcarpet
set :markdown,
  :layout_engine => :erb,
  :autolink => true,
  :fenced_code_blocks => true,
  :strikethrough => true,
  :tables => true,
  :smartypants => true

# Build-specific configuration
configure :build do
  # Minify CSS on build
  activate :minify_css
  activate :gzip

  # Minify Javascript on build
  activate :minify_javascript
end
