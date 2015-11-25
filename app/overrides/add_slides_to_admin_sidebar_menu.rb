Deface::Override.new(
  virtual_path: 'spree/layouts/admin',
  name: 'slides_admin_sidebar_menu',
  insert_bottom: '#main-sidebar',
  partial: 'spree/admin/shared/slides_sidebar_menu'
)
