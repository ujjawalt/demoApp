class BlogsController < ApplicationController

    def show
        @blog = Blog.find(params[:id])
    end

    def index
        @blog = Blog.all
    end

    def new
        @blog = Blog.new
    end

    def create
        @blog = Blog.new(params.require(:blog).permit(:title, :description))
        if
            @blog.save
            flash[:notice]="Blog created successfully"
            redirect_to @blog
        else
            render "new"
        end
    end

end