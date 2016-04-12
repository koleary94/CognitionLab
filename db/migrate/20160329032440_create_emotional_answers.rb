class CreateEmotionalAnswers < ActiveRecord::Migration
  def change
    create_table :emotional_answers do |t|
    	t.belongs_to :user

      t.timestamps null: false
    end
  end
end
