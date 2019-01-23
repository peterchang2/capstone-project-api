class WhiskeysController < OpenReadController
  before_action :set_whiskey, only: [:show, :update, :destroy]

  # GET /whiskeys
  def index
    @whiskeys = Whiskey.all

    render json: @whiskeys, include: ['user']
  end

  # GET /whiskeys/1
  def show
    render json: @whiskey, include: ['user']
  end

  # POST /whiskeys
  def create
    @whiskey = current_user.whiskeys.build(whiskey_params)

    if @whiskey.save
      render json: @whiskey, status: :created, location: @whiskey
    else
      render json: @whiskey.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /whiskeys/1
  def update
    if @whiskey.update(whiskey_params)
      render json: @whiskey
    else
      render json: @whiskey.errors, status: :unprocessable_entity
    end
  end

  # DELETE /whiskeys/1
  def destroy
    @whiskey.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_whiskey
    @whiskey = Whiskey.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def whiskey_params
    params.require(:whiskey).permit(:name, :meta_critic, :cost, :whiskey_class, :country, :whiskey_type)
  end
end
