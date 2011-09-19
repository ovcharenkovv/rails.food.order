module ApplicationHelper

  def is_today_created k
     k.created_at.to_date == Date.today
  end

end
