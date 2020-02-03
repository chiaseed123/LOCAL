class HomepageController < ApplicationController
  def home
    @papers = Paper.all
    if !current_user.nil?
      @scores = Score.find_by(user_id: current_user.id)
    end
  end

  def contact
  end

  def about
  end
end
