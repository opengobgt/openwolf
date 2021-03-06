require File.dirname(__FILE__) + '/../spec_helper'

describe Estado do
  before(:each) do
    @estado = Factory.build(:estado)
  end
  
  it { should validate_presence_of(:nombre) }
  it { @estado.save; should validate_uniqueness_of(:nombre)  }
   
  it "es valido" do
    @estado.should be_valid
  end

  it "es invalido" do
    @estado.nombre = nil
    @estado.should_not be_valid
  end

  describe 'asociaciones' do
    it { should have_many(:solicitudes) }
    it { should have_many(:tiporesoluciones) }
  end

  it "#nombre_modulo debe retornar el nombre del modulo actual" do
    @estado.nombre_modulo.should == 'LAIP'
  end
  
end
# == Schema Information
#
# Table name: estados
#
#  id             :integer         not null, primary key
#  nombre         :string(255)     not null
#  created_at     :datetime
#  updated_at     :datetime
#  final          :boolean         default(FALSE)
#  puede_entregar :boolean         default(FALSE)
#  modulo_id      :integer         default(1)
#

