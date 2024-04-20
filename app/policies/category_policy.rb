class CategoryPolicy
  def index
    Current.user.admin?
  end

  def new
    Current.user.admin?
  end

  def create
    Current.user.admin?
  end

  def edit
    Current.user.admin?
  end
end