class Array

	def rj_inject(element = self.shift)
		self.each {|memo| element = yield element, memo}
element
	end
end

