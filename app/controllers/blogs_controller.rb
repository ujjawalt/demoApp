class BlogsController < ApplicationController

    before_action :set_blog, only: [:show, :edit, :update, :destroy]

    def show
        
    end

    def index
        @blog = Blog.all
    end

    def new
        @blog = Blog.new
    end

    def edit
        
    end

    def create
        @blog = Blog.new(blog_params)
        if
            @blog.save
            flash[:notice]="Blog created successfully"
            redirect_to @blog
        else
            render "new"
        end
    end

    def update
        
        if
            @blog.update(blog_params)
            flash[:notice]="Blog updated successfully"
            redirect_to @blog
        else
            render "new"
        end
    end

    def destroy
        @blog.destroy
        redirect_to blogs_path
    end

    private
    def set_blog
        @blog = Blog.find(params[:id])
    end

    def blog_params
        params.require(:blog).permit(:title, :description)
    end

end