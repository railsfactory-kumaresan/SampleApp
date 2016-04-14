class AssemblyPart < ActiveRecord::Base
  self.table_name = "assemblies_parts"
  belongs_to :part
  belongs_to :assembly
end  