class ImportedData < ActiveRecord::Migration
  def up
  	create_table :compiledData do |t|
  		t.integer :id, :null => false
  		t.integer :birthDate, :null => false
  		t.integer :classID, :null => false
  		t.integer :ethnicityID, :null => false
  		t.string :firstName, :null => false
  		t.integer :genderID, :null => false
  		t.integer :gradeID, :null => false
  		t.integer :isActiveYN, :null => false
  		t.string :lastName, :null => false
  		t.string :middleName, :null => false
  		t.string :nickname, :null => false
  		t.string :password, :null => false
  		t.integer :printBodyCompYN, :null => false
  		t.integer :printSpanishYN, :null => false
  		t.string :studentNumber, :null => false
  		t.integer :unassignedSchoolID, :null => false
  		t.string :userName, :null => false
  	end
  end

  def down
  end
end
