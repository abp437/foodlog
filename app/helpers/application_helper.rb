module ApplicationHelper
  def formatted_readable_date(date = DateTime.now)
    date.strftime(Entry.date_format)
  end

  def load_svg(path)
    File.open("app/assets/images/svg/#{path}", 'rb') do |file|
      raw file.read
    end
  end
end
