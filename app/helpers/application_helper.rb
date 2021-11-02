module ApplicationHelper
  def full_readable_date
    # Here %B stands for readable month
    DateTime.now.to_date.strftime('%d %B, %Y')
  end

  def load_svg(path)
    File.open("app/assets/images/svg/#{path}", "rb") do |file|
      raw file.read
    end
  end
end
