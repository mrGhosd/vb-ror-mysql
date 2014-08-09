class VoenPasport < ActiveRecord::Base
belongs_to :user
has_one :nationality
has_one :education
has_one :sport_mastery
has_one :relashionship
has_one :specialization

def user_nationality
  Nationality.find(nationality_id).value
end

def user_nationality=(nation)
  self.nationality_id = Nationality.find_by_value(nation).id
end

def user_education
  Education.find(education_id).value
end

def user_education=(type)
  self.education_id = Education.find_by_value(type).id
end

def user_relationship
  Relashionship.find(relashionship_id).value
end

def user_relationship=(grade)
  self.relashionship_id = Relashionship.find_by_value(grade).id
end

def user_specialization
  Specialization.find(specialization_id).value
end

def user_specialization=(type)
  self.specialization_id = Specialization.find_by_value(type).id
end

def user_sport_mastery
  SportMastery.find(sport_mastery_id).value
end

def user_sport_mastery=(degree)
  self.sport_mastery_id = SportMastery.find_by_value(degree).id
end

end