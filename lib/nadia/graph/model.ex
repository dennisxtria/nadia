defmodule Nadia.Graph.Model do
  @moduledoc """
  Types used in Telegra.ph API.

  ## Reference
  http://telegra.ph/api#Available-types
  """

  defmodule Account do
    @moduledoc false

    defstruct short_name: nil,
              author_name: nil,
              author_url: nil,
              access_token: nil,
              auth_url: nil,
              page_count: nil

    @type t :: %__MODULE__{
            short_name: binary,
            author_name: binary,
            author_url: binary,
            access_token: binary,
            auth_url: binary,
            page_count: integer
          }
  end

  defmodule PageList do
    @moduledoc false

    alias Nadia.Graph.Model.Page

    defstruct total_count: nil, pages: []
    @type t :: %__MODULE__{total_count: integer, pages: [[Page.t()]]}
  end

  defmodule Page do
    @moduledoc false

    alias Nadia.Graph.Model.NodeElement

    defstruct path: nil,
              url: nil,
              title: nil,
              description: nil,
              author_name: nil,
              author_url: nil,
              image_url: nil,
              content: nil,
              views: nil,
              can_edit: nil

    @type t :: %__MODULE__{
            path: binary,
            url: binary,
            title: binary,
            description: binary,
            author_name: binary,
            author_url: binary,
            image_url: binary,
            content: NodeElement.t(),
            views: integer,
            can_edit: atom
          }
  end

  defmodule PageViews do
    @moduledoc false

    defstruct views: nil
    @type t :: %__MODULE__{views: integer}
  end

  defmodule NodeElement do
    @moduledoc false

    defstruct tag: nil, attrs: [], children: []
    @type t :: %__MODULE__{tag: binary, attrs: [[term]], children: [[NodeElement.t()]]}
  end

  defmodule Error do
    @moduledoc false

    defexception reason: nil
    @type t :: %__MODULE__{reason: term}

    def message(%Error{reason: reason}), do: inspect(reason)
  end
end
