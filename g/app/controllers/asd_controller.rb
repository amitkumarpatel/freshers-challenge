class AsdController < ApplicationController
  
# add_breadcrumb "home", :root_path
#   add_breadcrumb "my", :my_path
#   add_breadcrumb :root_name, "/"
   add_breadcrumb "homepage", :action=>'home'

   # protected

   #  def root_name
   #    "the name"
   #  end
def home
  @asd=Asd.new
  @adv=Adv.new
  @cm=Cm.new
end
 


  def index

  	@asd=Asd.all
    add_breadcrumb "Category",''
end

  def show
  	@asd=Asd.find(params[:id])
    @as=Adv.new
  add_breadcrumb @asd.name , ''
  end


  def new
  @asd=Asd.new 
 # @as=Asd.all
add_breadcrumb "newpage", ''   
end


  def create
   
  	@asd=Asd.new(params[:asd])
    #@asd.bus=params[:adv][:id]
  	if @asd.save
  		redirect_to :action=>'index'
  	else
  		render 'new'
  	end
  end
  def edit
  	@asd=Asd.find(params[:id])
add_breadcrumb "editpage",'' 
  end


  def update
  	@asd=Asd.find(params[:id])
  	@asd.update_attributes(params[:asd])
  	if@asd.save
  		redirect_to :action=>'index'
  	else
  		render 'edit'
  	end
  end
  

  def destroy
  	@asd=Asd.find(params[:id])
  	if @asd.delete
  		redirect_to :action=>'index'
  	else
  		render 'index'
end
  end
  def serch
    @a=params.values[2][:id]
    @asd=Asd.find(@a)
 redirect_to :action=>'show',:id=>@asd.id  
  end
  def sad
     @a=params.values[2][:id]
     @asd=Adv.find(@a)
    # redirect_to :controller=>'adv',:action=>'show',:id=>@asd.id 
  end
  def display
     @a=params.values[2][:id]
     @asd=Cm.find(@a)
     redirect_to :controller=>'cm',:action=>'show',:id=>@asd.id 
  end
end
