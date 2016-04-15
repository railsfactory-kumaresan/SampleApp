module ApplicationHelper

  def find_assembly_name(assembly_id)
    Assembly.where(id: assembly_id).first.try(:name)
  end

  def find_part_name(part_id)
     Part.where(id: part_id).first.try(:part_number)
  end
end
