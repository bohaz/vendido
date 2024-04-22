module Error
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound do
      redirect_to products_path, alert: t('errors.record_not_found')
    end
  end
end