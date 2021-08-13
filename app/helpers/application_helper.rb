module ApplicationHelper
  def current_month
    I18n.t("date.month_names")[Date.today.month] + " " + Date.today.strftime("%Y")
  end

  def last_6_months
    (Date.today.beginning_of_month - 5.months..Date.today.beginning_of_month).select do |date|
        date == date.beginning_of_month
      end
  end
end
