class WineGrapesController < ApplicationController
    def destroy
        @wine_grape = Wine.find(params[:id])
        @wine_grape.destroy
        respond_to do |format|
          format.html { redirect_to wines_url, notice: "Wine was successfully destroyed." }
          format.json { head :no_content }
        end
    end
end
