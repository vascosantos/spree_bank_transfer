Deface::Override.new(
  :virtual_path => 'spree/admin/orders/index',
  :name => 'filter_results_by_transaction_reference_no',
  :insert_before => "[data-hook='admin_orders_index_search_buttons']",
  :text => %q{
    <div class="row">
      <div class="col-md-4">
        <div class="form-group">
          <div class="checkbox">
            <%= label_tag 'q_transref_not_null' do %>
              <%= f.check_box :payments_transaction_reference_no_not_null, {:checked => (params[:q][:payments_transaction_reference_no_not_null] == '1')}, '1', '' %>
              <%= Spree.t(:only_show_orders_with_bank_transfer_payment_reference_number) %>
            <% end %>
          </div>
        </div>
      </div>
    </div>
  }
)       








