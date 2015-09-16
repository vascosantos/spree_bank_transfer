Deface::Override.new(
  :virtual_path => 'spree/admin/shared/sub_menu/_configuration',
  :name => 'add_banks_to_admin_configuration_sidebar',
  :insert_bottom => "[data-hook='admin_configurations_sidebar_menu']",
  :text => %q{
    <%= configurations_sidebar_menu_item(Spree.t(:banks), spree.admin_banks_path) if can? :manage, Spree::PaymentMethod %>
    },
  :original => '5a3198a5d42be047154e101c69588274d1125af6'
)