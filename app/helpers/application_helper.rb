module ApplicationHelper
  def admin_types
    ['AdminUser']
  end

  def active?(path)
    'active' if current_page?(path)
  end

  def errors_for(object)
    render 'shared/errors', object: object if object.errors.any?
  end

  def status_label(status)
    status_span_generator status
  end

  private

  def status_span_generator(status)
    case status
    when 'submitted'
      content_tag(:span, status.titleize, class: 'label label-primary')
    when 'approved'
      content_tag(:span, status.titleize, class: 'label label-success')
    when 'rejected'
      content_tag(:span, status.titleize, class: 'label label-danger')
    when 'pending'
      content_tag(:span, status.titleize, class: 'label label-primary')
    when 'confirmed'
      content_tag(:span, status.titleize, class: 'label label-success')
    end
  end
end
