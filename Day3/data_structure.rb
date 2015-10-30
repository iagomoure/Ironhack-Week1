require 'pry'

class DataStructure

	def self.data_array
		arr = [
			{:arr => [1,2,3] }, 
			{:arr => [4,5,6] },
			{:arr => [7,8,9] }
		]
	end

	def self.data_hash
		arr = [[0,1,2,3,4,{:sercret => :unlock[0,1]}],]
	end
end

da = DataStructure.data_array
dh = DataStructure.data_hash
puts dh[0][5][:secret][:unlock][1]
binding.pry 


