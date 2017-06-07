class StaticPagesController < ApplicationController
def about 
end
def random 
    @idea = Idea.order("Random()").first
end
end
