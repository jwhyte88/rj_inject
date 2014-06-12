class Array 
	def rj_inject(starter = self.shift)
		if starter.is_a? Symbol
			memo = self.shift
			self.each{|item|memo = memo.send(starter, item)}
			memo
		else
			self.each {|item| starter = yield starter, item}
		starter
		end
	end
end