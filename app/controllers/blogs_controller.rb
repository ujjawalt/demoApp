class BlogsController < ApplicationController

    def show
        @blog = Blog.find(params[:id])
    end

    def index
        @blog = Blog.all
    end

end