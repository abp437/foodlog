module ApplicationHelper
  def full_readable_date
    # Here %B stands for readable month
    DateTime.now.to_date.strftime('%d %B, %Y')
  end
end
