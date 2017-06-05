class IdeasController < ApplicationController
def index
    @idea = Idea.new
@ideas = Idea.all
end
def create
@idea = Idea.create(idea_params)
if @idea.valid?
    
else
    
end
redirect_to root_path
end
def edit
end
private
def idea_params
params.require(:idea).permit(:description, :author)
end
end
def edit 
    @idea = Idea.find(params[:id])
end
def update
   @idea = Idea.find(params[:id])
   if @idea.update(ideas_params)
       redirect_to root_path
   else
       redirect_to edit_idea_path(params[:id])
   end
end