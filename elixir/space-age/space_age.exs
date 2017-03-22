defmodule SpaceAge do
  @type planet :: :mercury | :venus | :earth | :mars | :jupiter
                | :saturn | :uranus | :neptune

  @doc """
  Return the number of years a person that has lived for 'seconds' seconds is
  aged on 'planet'.
  """

  @spec age_on(planet, pos_integer) :: float
  def age_on(planet, seconds) do
    earth = seconds / 31557600.0
    case planet do
      :earth   -> earth
      :mercury -> earth / 0.2408467
      :venus   -> earth / 0.61519726
      :mars    -> earth / 1.8808158
      :jupiter -> earth / 11.862615
      :saturn  -> earth / 29.447498
      :uranus  -> earth / 84.016846
      :neptune -> earth / 164.79132
    end
  end
end
