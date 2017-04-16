module ApplicationHelper
  def date_format(datetime)
    time_ago_in_words(datetime) + '前'
  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
end
