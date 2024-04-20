class CategoryPolicy
  def index
    Current.user.admin?
  end
end