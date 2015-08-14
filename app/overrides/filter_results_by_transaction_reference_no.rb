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
              <%= f.check_box :payments_transaction_reference_no_not_null %>
              <%= Spree.t(:only_show_orders_with_bank_transfer_payment_reference_number) %>
            <% end %>
          </div>
        </div>

        <div class="form-group">
          <%= label_tag :q_payment_state, Spree.t(:payment_state) %>
          <%= f.select :payments_state_eq, Spree::Payment.state_machines[:state].states.collect {|s| [s.name, s.value]}, {:include_blank => true}, :class => 'select2' %>
        </div>
      </div>
    </div>
  }
)       








