defmodule LargestInSeries do
  @spec solution(String.t()) :: integer
  def solution(digits) do
    Enum.map(digits, calc())
  end



  def calc(digit, nextdigit) do
    if nextdigit - 1 == digit do
      true
    end
  end
end
