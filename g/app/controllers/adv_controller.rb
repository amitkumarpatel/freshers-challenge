class AdvController < ApplicationController
add_breadcrumb "home", :controller=>'asd',:action=>'home'	
#add_breadcrumb "Category", :controller=>'asd',:action=>'index'
#add_breadcrumb "Sub-Category", :controller=>'adv',:action=>'index'
def index
	add_breadcrumb "Category", :controller=>'asd',:action=>'index'
 #add_breadcrumb "Sub-Category", :controller=>'adv',:action=>'index'
	add_breadcrumb "Sub-Category", ""
	@asd=Asd.find(params[:id])
	@adv=@asd.advs.all
end
def show
	@adv=Adv.find(params[:id])
    @asd=@adv.asd
    @cm=Cm.new
    add_breadcrumb @asd.name, :controller=>'asd',:action=>'show',:id=>@asd.id
      add_breadcrumb @adv.subname, "" 
end
def new
	@asd=Asd.find(params[:id])
	@adv=@asd.advs.new

end
def create 
          @asd=Asd.find(params[:id])
          @adv=@asd.advs.create(params[:adv])
           
	if @adv.save
		redirect_to :action=>'index',:id=>@asd.id
	else
		render 'new'
	end

end
def edit
	@adv=Adv.find(params[:id])

end
def update
    @adv=Adv.find(params[:id])
    @asd=@adv.asd
    @adv.update_attributes(params[:adv])
    if @adv.save
    	redirect_to :action=>'show',:id=>@asd.id
    else
    	render 'edit'
    end
end

def delete
	@adv=Adv.find(params[:id])
	@asd=@adv.asd
	if @adv.delete
		redirect_to :action=>'index',:id=>@asd.id
	else 
		render  'index'
	end

end
def display
 @a=params.values[2][:id]
     @cm=Cm.find(@a)
     redirect_to :controller=>'cm',:action=>'show',:id=>@cm.id 
end
end