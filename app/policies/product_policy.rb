class ProductPilicy
  def edit?
    record.user_id == Current.user.id
  end

  def update?
    record.user_id == Current.user.id
  end
end