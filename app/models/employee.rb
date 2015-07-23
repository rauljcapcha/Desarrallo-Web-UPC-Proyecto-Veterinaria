class Employee < ActiveRecord::Base
  belongs_to :document_type
end
