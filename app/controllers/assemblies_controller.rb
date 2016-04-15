class AssembliesController < ApplicationController
  
  def new
    @assembly = Assembly.new
  end

  def create
    @assembly = Assembly.new(assembly_params)
    if@assembly.save
       redirect_to new_part_path
     else
       render :new   
    end  
  end

  def all_parts
    @parts = []
    p assembly =Assembly.where(id: params[:assembly_id]).first
    #@parts = Assembly.where(id: params[:assembly_id]).first.try(:parts)
    @parts = assembly.parts if assembly
  end


  private 
  def assembly_params
    params.require(:assembly).permit(:name)
  end

end
