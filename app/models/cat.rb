# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :datetime         not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string           not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper 
    CAT_COLORS = %w(black white orange brown).freeze 

    validates :birth_date, :name, :description, presence:true 
    validates :color, inclusion: CAT_COLORS
    validates :sex, inclusion: %w(M F)

    belongs_to :user 

    has_many :rental_requests,
        class_name: :CatRentalRequest,
        dependent: :destroy

    def age 
        return time_ago_in_words(birth_date)
    end

end
