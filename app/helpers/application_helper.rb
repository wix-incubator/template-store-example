module ApplicationHelper
  def body_class(class_name)
    content_for(:body_class) { h(class_name) }
  end

  def errors_for(errors, key)
    if errors[key].any?
      errors.map do |field, error|
        "<div class='error'>#{error}</div>"
      end.join.html_safe
    end
  end

  def price_tag(price)
    number_to_currency(price, unit: '$', precision: 0)
  end

  def template_preview(template)
    image_tag('/assets/templates/' + (template.image_url || ""))
  end
end
