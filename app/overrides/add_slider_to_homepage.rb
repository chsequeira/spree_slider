Deface::Override.new(
  virtual_path: 'spree/shared/_banner',
  name: 'add_slider_to_homepage',
  replace_contents: '#spree-banner',
  partial: 'spree/shared/homepage_slider',
  original: '92c159ac9d2aec631cbdbd556c82b361923d63c5' 
)
