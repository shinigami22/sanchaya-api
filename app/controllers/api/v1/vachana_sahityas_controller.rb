class Api::V1::VachanaSahityasController < ApplicationController
  after_filter only: [:index] { set_pagination_header(:vachana) }
  before_action :authenticate_with_token!, only: [:create, :update, :destroy]
  respond_to :json
 
  def index
    if params[:search] 
      # Search
     # @vachana=VachanaSahitya.all
       @vachana = VachanaSahitya.all
       puts "The value of page"
       p=params[:page]
       puts p
      @vachana= @vachana.search do
        fulltext params[:search]
        paginate(page: params[:page], per_page: 10)
      end
      @vachana = @vachana.results
      respond_with :json => { :total_count => @vachana.total_count,:total_pages => @vachana.total_pages, :current_page => @vachana.current_page, :entries => @vachana }
    else
      #@vachana=VachanaSahitya.page(params[:page])
      # respond_with  @vachana, serializer: PaginationSerializer
      @vachana = VachanaSahitya.page(params[:page])
      respond_with :json => { :prev_page => @vachana.prev_page, :next_page => @vachana.next_page, :total_count => @vachana.total_count,:total_pages => @vachana.total_pages, :current_page => @vachana.current_page, :entries => @vachana }
    end
  end



  def show
    respond_with VachanaSahitya.find(params[:id])
  end

  def create
    vachana_sahitya = VachanaSahitya.new(params_list)
    if vachana_sahitya.save
      render json: vachana_sahitya, status: 201, location: [:api, vachana_sahitya]
    else
      render json: { errors: vachana_sahitya.errors }, status: 422
    end
  end
  def update
    vachana_sahitya = VachanaSahitya.find(params[:id])
    if vachana_sahitya.update(vachana_sahityas_params)
      render json: vachana_sahitya, status: 200, location: [:api, vachana_sahitya]
    else
      render json: { errors: vachana_sahitya.errors }, status: 422
    end
  end

  def destroy
    vachana_sahitya = VachanaSahitya.find(params[:id])
    vachana_sahitya.destroy
    head 204
  end

  private
  def params_list
    params.require(:vachana_sahitya).permit(:vachana, :vachanakaara, :pen_name)
  end

end
