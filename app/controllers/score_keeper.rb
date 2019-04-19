class ScoreKeeper
	def initialize
		@total_score = @count = 0
	end
	def <<(score)
		@total_score += score
		@count += 1
		self
	end
	def average
		fail "No scores" if @count.zero?
		Float(@total_score) / @count
	end
end

alias old_backquote `
def `(cmd)
	result = old_backquote(cmd)
	if $? != 0
		puts "*** Command #{cmd} failed: status = #{$?.exitstatus}"
	end
	result
end