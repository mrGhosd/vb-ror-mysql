class VoenPasport < ActiveRecord::Base
belongs_to :user

# def user_nationality
#   Nationality.find(nationality_id).value
# end
#
# def user_education
#   Education.find(nationality_id).value
# end
#
# def user_relationship
#   Relashionship.find(nationality_id).value
# end
#
# def user_specialization
#   Specialization.find(nationality_id).value
# end
#
# def user_sport_mastery
#   SportMastery.find(nationality_id).value
# end
#
# def user_nationality=
#   self.nationality_id = Nationality.find_by_value(user_nationality).id
# end

end