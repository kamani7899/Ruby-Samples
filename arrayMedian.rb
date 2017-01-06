class ArrayMedian
	def find_median_sorted_arrays(nums1, nums2)
	    total_size = nums1.length + nums2.length
	    total1 = nums1.reduce(:+).to_f
	    total2 = nums2.reduce(:+).to_f
	    puts (total1+total2)/ total_size
	end
end

ArrayMedian.new.find_median_sorted_arrays([1,2],[3,4])