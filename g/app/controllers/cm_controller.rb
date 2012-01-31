class CmController < ApplicationController

add_breadcrumb "home", :controller=>'asd',:action=>'home'	
   
#add_breadcrumb "Category", :controller=>'asd',:action=>'index'	
#add_breadcrumb "Sub-Category", :controller=>'adv',:action=>'index'
def index
	@adv=Adv.find(params[:id])
	@cm=@adv.cms.all   
add_breadcrumb "Category", :controller=>'asd',:action=>'index'	
add_breadcrumb "Sub-Category", :controller=>'adv',:action=>'index',:id=>@adv.id
   
add_breadcrumb "Sub-Sub-Category", ""	
	
end
def show
	@cm=Cm.find(params[:id])
    @adv=@cm.adv
    @asd=@adv.asd
    add_breadcrumb @asd.name, :controller=>'asd',:action=>'show',:id=>@asd.id
    add_breadcrumb @adv.subname, :controller=>'adv',:action=>'show',:id=>@adv.id
     add_breadcrumb @cm.name, "" 
end
def new
	@adv=Adv.find(params[:id])
	@cm=@adv.cms.new
end
def create
	@adv=Adv.find(params[:id])
	@cm=@adv.cms.new(params[:cm])
	if @cm.save
		redirect_to :action=>'index',:id=>@adv.id
	else
		render 'new'
	end
end
def edit
	@cm=Cm.find(params[:id])

end
def update
	@cm=Cm.find(params[:id])
	@adv=@cm.adv
	 @cm.update_attributes(params[:cm])
	  if @cm.save
    	redirect_to :action=>'index',:id=>@adv.id
    else
    	render 'edit'
    end
end
def delete
	@cm=Cm.find(params[:id])
	@adv=@cm.adv
	if @cm.delete
		redirect_to :action=>'index',:id=>@adv.id

	end
end
end