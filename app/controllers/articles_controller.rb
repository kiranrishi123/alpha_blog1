class ArticlesController < ApplicationController
	def show

		@article = Articles.find(params[:id])

		


	end
	def index
		@articles =Articles.all
	end
	def new 
		@article =Articles.new
	end
	def create
		@article = Articles.new(params.require(:article).permit(:articles, :descprition))
		if @article.save
			flash[:notice] ="Article has sucessfully saved"
			redirect_to @article

		else
			render 'new'
		end
	end
	def edit
		@article = Articles.find(params[:id])

	end

	def update

		@article =Articles.find(params[:id])
		if @article.update(params.require(:articles).permit(:articles, :descprition))
			flash[:notice] ="Your Article has updated sucesffully"
			redirect_to @article
		else
			render 'show'
		
		end

	end
	def destroy

		@article =Articles.find(params[:id])
		@article.destroy
		redirect_to article_path
	end
end