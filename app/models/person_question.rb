class PersonQuestion < ActiveRecord::Base
	has_and_belongs_to_many :person_answers
end
