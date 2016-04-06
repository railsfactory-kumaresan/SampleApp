class ArticlesController < ApplicationController

	http_basic_authenticate_with name: "aman", password: "aman@inquirly", except: [:index, :show]

	def index
		@articles = Article.all
	end
	
	def show
		@article = Article.find(params[:id]) 
	end

	def new
		@article = Article.new
	end

	def create

		@article = Article.new(article_params)

		if @article.save
			redirect_to @article
		else
			#render 'new'
			render :new
			#render :nothing => true, :status => '400'
			#render html:"<strong> Nto founded </strong >".html_safe
			#render plain:'Ok'
			#both are same in 2nd we are using symbol instead of string
			  

		end	
				
	end

	def update 
		@article = Article.find(params[:id])
		if @article.update(article_params)
			redirect_to @article
		else
			rendr 'edit'	
		end
	end


	def edit
		@article = Article.find(params[:id])
	end


	def destroy 
		@article = Article.find(params[:id])
		@article.destroy
		redirect_to articles_path
	end		

	private
	def article_params
		params.require(:article).permit(:title, :text)
	end
end
