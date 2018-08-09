class ApplicationController < ActionController::Base
  def index
    if authenticate_user!
      @users = User.all
      @resourses = Resource.all
      found = @resourses.select {|x| x["parent"] == 3}
      puts found
    end
  end

  def admin_val
    if current_user.admin?
      true
    else
      render_404
    end
  end

  def render_404
    respond_to do |format|
      format.html { render :file => "#{Rails.root}/public/404", :layout => false, :status => :not_found }
      format.xml  { head :not_found }
      format.any  { head :not_found }
    end
  end
end
