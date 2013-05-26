module ApplicationHelper
  # activerecord以下のテンプレートの省略表記
  def tm(model, template)
    return t("activerecord.attributes." + model + "." + template)
  end
end
