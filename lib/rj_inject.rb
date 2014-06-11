class Array

	def rj_inject(starter = self.shift)
		self.each {|item| starter = yield starter, item}
starter
	end
end