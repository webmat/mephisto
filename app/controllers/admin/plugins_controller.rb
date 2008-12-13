class Admin::PluginsController < Admin::BaseController
  
  before_filter :global_admin_required
  before_filter :find_plugin, :except => :index

  def index
    @plugins = Mephisto.plugins
  end
  
  def update
    @plugin.options = params[:options]
    @plugin.save!
    flash[:notice] = "Plugin successfully updated"
    redirect_to :action => "show", :id => params[:id]
  end
  
  def destroy
    @plugin.destroy
    flash[:notice] = "Plugin successfully removed"
    redirect_to :action => "show", :id => params[:id]
  end
  
  protected
    def find_plugin
      @plugin = Mephisto::Plugin[params[:id]]
    end
end
