class Offer < ActiveRecord::Base

  def self.for_applicant(applicant)
    self.where("position LIKE ? OR work_languages LIKE ?",
               "%#{applicant.main_language}%",
               "%#{applicant.main_language}%")
      .where(:work_experience => applicant.years_of_experience)
  end

end
