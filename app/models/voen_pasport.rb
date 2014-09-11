class VoenPasport < ActiveRecord::Base
  belongs_to :user
  has_one :nationality
  has_one :education
  has_one :sport_mastery
  has_one :relashionship
  has_one :specialization

  def user_nationality
    if self.nationality_id.blank?
      Nationality.first.value
    else
      Nationality.find(nationality_id).value
    end

  end

  def user_nationality=(nation)
    self.nationality_id = Nationality.find_by_value(nation).id unless Nationality.find_by_value(nation).blank?
  end

  def user_education
    if self.education_id.blank?
      Education.first.value
    else
      Education.find(education_id).value
    end
  end

  def user_education=(type)
    self.education_id = Education.find_by_value(type).id unless Education.find_by_value(type).blank?
  end

  def user_relationship
    if self.relashionship_id.blank?
     Relashionship.first.value
    else
      Relashionship.find(relashionship_id).value
    end
  end

  def user_relationship=(grade)
    self.relashionship_id = Relashionship.find_by_value(grade).id unless Relashionship.find_by_value(grade).blank?
  end

  def user_specialization
    if self.specialization_id.blank?
      Specialization.first.value
    else
      Specialization.find(specialization_id).value
    end
  end

  def user_specialization=(type)
    self.specialization_id = Specialization.find_by_value(type).id unless Specialization.find_by_value(type).blank?
  end

  def user_sport_mastery
    if self.sport_mastery_id.blank?
      SportMastery.first.value
    else
      SportMastery.find(sport_mastery_id).value
    end

  end

  def user_sport_mastery=(degree)
    # binding.pry
    self.sport_mastery_id = SportMastery.find_by(value: degree).id unless SportMastery.find_by_value(degree).blank?
  end

end