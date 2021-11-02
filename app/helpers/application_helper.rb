module ApplicationHelper
  def full_readable_date(date = DateTime.now)
    # Here %B stands for readable month
    date.to_date.strftime('%d %B, %Y')
  end

  def load_svg(path)
    File.open("app/assets/images/svg/#{path}", "rb") do |file|
      raw file.read
    end
  end
end
