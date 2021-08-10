module ApplicationHelper
  def current_month
    I18n.t("date.month_names")[Date.today.month] + " " + Date.today.strftime("%Y")
  end
end
