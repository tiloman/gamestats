module ApplicationHelper

  def date_format(date)
    date.strftime("Am %d.%m.%Y um %H:%M Uhr")
  end

end
