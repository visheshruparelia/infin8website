class CreateRegs < ActiveRecord::Migration[5.1]
  def change
    create_table :regs do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.string :team_name

      t.timestamps
    end
  end
end
