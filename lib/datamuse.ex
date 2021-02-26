defmodule Datamuse do
  @moduledoc """
  Wrapper for datamuse.com/api
  """
  use HTTPoison.Base

  @endpoint "https://api.datamuse.com/words?"

  def get_relavent(word), do: get! "rel_trg=#{word}"

  def get_synonyms(word), do: get! "ml=#{word}"

  def get_adjectives(word), do: get! "rel_jjb=#{word}"

  def get_nouns(word), do: get! "rel_jja=#{word}"

  def process_request_url(url) do
    @endpoint <> url
  end

  def process_response_body(body) do
    body
    |> Jason.decode!
  end
end
