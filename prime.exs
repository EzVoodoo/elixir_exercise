defmodule Prime do
	@doc """
	This function computes the sum of the prime numbers from 1 to n
	"""
	def ps(n), do: _ps(Enum.to_list(1..n), 0)

	defp _ps([], acc), do: acc
	defp _ps([1|tail], acc), do: _ps(tail, acc+1)
	defp _ps([head|tail], acc) do
		_ps(Enum.reject(tail, &(rem(&1, head)==0)), head+acc)
	end

	@doc """
	This function generates a list of prime numbers from 1 to n
	"""
	def prime(n), do: _prime(Enum.to_list(1..n), []) 
	
	defp _prime([], prime_list), do: Enum.reverse prime_list
	defp _prime([1|tail], prime_list), do: _prime(tail, [1|prime_list])
	defp _prime([head | tail], prime_list) do
		_prime(Enum.reject(tail, &(rem(&1, head)==0)), [head|prime_list])
		##IO.inspect head
	end
	
end

