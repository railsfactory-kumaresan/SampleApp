class PartsController < ApplicationController
  
  def new 
    @part = Part.new
  end
  
  def create
    @part = Part.new(part_params)
    if @part.save
      redirect_to list_parts_path
    else
      render :new   
    end 
  end

  def list
    @part = Part.all
    @assemblie = Assembly.all
  end

  def create_list
    AssemblyPart.create(assembly_id: params[:assembly_id], part_id: params[:part_id])
    redirect_to  show_list_parts_path
  end

  def show_list
    @all_assembly_parts = AssemblyPart.all
  end   

  def all_assembly
    @assemblies = []
    p part = Part.where(id: params[:part_id]).first
    @assemblies = part.try(:assemblies) if part
  end  
    
  private 
  def part_params
    params.require(:part).permit(:part_number)
  end 

end
