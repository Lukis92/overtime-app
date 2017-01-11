module ApplicationHelper
  def active?(path)
    'active' if current_page?(path)
  end

  def errors_for(object)
    render 'shared/errors', object: object if object.errors.any?
  end
end
