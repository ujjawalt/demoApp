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

    def edit
        @blog = Blog.find(params[:id])
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

    def update
        @blog = Blog.find(params[:id])
        if
            @blog.update(params.require(:blog).permit(:title, :description))
            flash[:notice]="Blog updated successfully"
            redirect_to @blog
        else
            render "new"
        end
    end

    def destroy
        @blog = Blog.find(params[:id])
        @blog.destroy
        redirect_to blogs_path
    end

end