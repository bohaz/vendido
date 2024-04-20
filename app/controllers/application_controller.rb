class ApplicationController < ActionController::Base
  include Pagy::Backend

  around_action :switch_locale
  before_action :set_current_user
  before_action :protect_pages
  

  def switch_locale(&action)
    I18n.with_locale(locale_from_header, &action)
  end

  private

  def locale_from_header
    request.env['HTTP_ACCEPT_LANGUAGE']&.scan(/^[a-z]{2}/)&.first
  end

  def set_current_user
    Current.user = User.find_by(id: session[:user_id]) if session[:user_id]
  end

  def protect_pages
    redirect_to new_session_path, alert: t('common.not_loged_in') unless Current.user
  end

  def authorize! product
    is_allowed = product.user_id == Current.user.id
    redirect_to products_path, alert: t('common.not_authorized') unless is_allowed
  end
end
