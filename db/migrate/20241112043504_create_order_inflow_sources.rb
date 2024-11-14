class CreateOrderInflowSources < ActiveRecord::Migration[7.0]
  def change
    create_table :order_inflow_sources, comment: '注文情報 ユーザーが選択した流入元' do |t|
      t.references :order, null: false, foreign_key: { on_update: :cascade, on_delete: :cascade }
      t.references :inflow_source, null: false, foreign_key: { on_update: :restrict, on_delete: :restrict }

      t.timestamps
    end
  end
end
