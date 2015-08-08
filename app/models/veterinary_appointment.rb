# == Schema Information
#
# Table name: veterinary_appointments
#
#  id              :integer          not null, primary key
#  customer_id     :integer
#  pet_id          :integer
#  date            :datetime
#  note            :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  status          :boolean
#
class VeterinaryAppointment < ActiveRecord::Base
  belongs_to :customer
  belongs_to :pet
  has_many :atentions
  validates :date, presence: true
  validates :date, uniqueness: true
  
  def self.search(query)
    where("date like ? AND status = ?", "%#{query}%", "0")
    #where("date like ? AND CAST(status as boolean) = 0", "%#{query}%")
    #where("category_id = ? AND product_model_id IN (?)", id, model_ids)
    #where("DATE(date) like ? ", "%#{query}%")
    #@posts = Post.where("category_id = ? AND product_model_id IN (?)", id, model)
  end
  
end
