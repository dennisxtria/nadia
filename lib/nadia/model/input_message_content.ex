defmodule Nadia.Model.InputMessageContent do
  @moduledoc false

  alias Nadia.Model.InputMessageContent

  @type t ::
          InputMessageContent.Text.t()
          | InputMessageContent.Location.t()
          | InputMessageContent.Venue.t()
          | InputMessageContent.Contact.t()

  defmodule Text do
    @moduledoc false

    defstruct message_text: nil, parse_mode: nil, disable_web_page_preview: false

    @type t :: %__MODULE__{
            message_text: binary,
            parse_mode: binary,
            disable_web_page_preview: atom
          }
  end

  defmodule Location do
    @moduledoc false

    defstruct latitude: nil, longitude: nil
    @type t :: %__MODULE__{latitude: float, longitude: float}
  end

  defmodule Venue do
    @moduledoc false

    defstruct latitude: nil, longitude: nil, title: nil, address: nil, foursquare_id: nil

    @type t :: %__MODULE__{
            latitude: float,
            longitude: float,
            title: binary,
            address: binary,
            foursquare_id: binary
          }
  end

  defmodule Contact do
    @moduledoc false

    defstruct phone_number: nil, first_name: nil, last_name: nil
    @type t :: %__MODULE__{phone_number: binary, first_name: binary, last_name: binary}
  end
end
