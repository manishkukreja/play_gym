class AddColumnPartnerTypeToPartners < ActiveRecord::Migration
  def change
    add_column :partners, :partner_type, :string
    remove_column :partners, :type 
  end
end
