# == Schema Information
#
# Table name: document_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class DocumentType < ActiveRecord::Base
end
