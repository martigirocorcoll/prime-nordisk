class AddInvestmentToDocument < ActiveRecord::Migration[6.1]
  def change
    add_reference :documents, :investment, index: true
  end
end
