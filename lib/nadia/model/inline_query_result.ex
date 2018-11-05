defmodule Nadia.Model.InlineQueryResult do
  @moduledoc false

  @type t ::
          Nadia.Model.InlineQueryResult.Article.t()
          | Nadia.Model.InlineQueryResult.Photo.t()
          | Nadia.Model.InlineQueryResult.Gif.t()
          | Nadia.Model.InlineQueryResult.Mpeg4Gif.t()
          | Nadia.Model.InlineQueryResult.Video.t()
          | Nadia.Model.InlineQueryResult.Audio.t()
          | Nadia.Model.InlineQueryResult.Voice.t()
          | Nadia.Model.InlineQueryResult.Document.t()
          | Nadia.Model.InlineQueryResult.Location.t()
          | Nadia.Model.InlineQueryResult.Venue.t()
          | Nadia.Model.InlineQueryResult.Contact.t()
          | Nadia.Model.InlineQueryResult.CachedPhoto
          | Nadia.Model.InlineQueryResult.CachedGif
          | Nadia.Model.InlineQueryResult.CachedMpeg4Gif
          | Nadia.Model.InlineQueryResult.CachedSticker
          | Nadia.Model.InlineQueryResult.CachedDocument
          | Nadia.Model.InlineQueryResult.CachedVideo
          | Nadia.Model.InlineQueryResult.CachedVoice
          | Nadia.Model.InlineQueryResult.CachedAudio

  defmodule Article do
    @moduledoc false

    alias Nadia.Model.{InlineKeyboardMarkup, InputMessageContent}

    defstruct type: "article",
              id: nil,
              title: nil,
              input_message_content: nil,
              reply_markup: nil,
              url: nil,
              hide_url: nil,
              description: nil,
              thumb_url: nil,
              thumb_width: nil,
              thumb_height: nil

    @type t :: %__MODULE__{
            type: binary,
            id: binary,
            input_message_content: InputMessageContent.t(),
            reply_markup: InlineKeyboardMarkup.t(),
            title: binary,
            url: binary,
            hide_url: boolean,
            description: binary,
            thumb_url: binary,
            thumb_width: integer,
            thumb_height: integer
          }
  end

  defmodule Photo do
    @moduledoc false

    alias Nadia.Model.{InlineKeyboardMarkup, InputMessageContent}

    defstruct type: "photo",
              id: nil,
              photo_url: nil,
              thumb_url: nil,
              photo_width: nil,
              photo_height: nil,
              title: nil,
              description: nil,
              caption: nil,
              reply_markup: nil,
              input_message_content: nil

    @type t :: %__MODULE__{
            type: binary,
            id: binary,
            photo_url: binary,
            thumb_url: binary,
            photo_width: integer,
            photo_height: integer,
            title: binary,
            description: binary,
            caption: binary,
            reply_markup: InlineKeyboardMarkup.t(),
            input_message_content: InputMessageContent.t()
          }
  end

  defmodule Gif do
    @moduledoc false

    alias Nadia.Model.{InlineKeyboardMarkup, InputMessageContent}

    defstruct type: "gif",
              id: nil,
              gif_url: nil,
              gif_width: nil,
              gif_height: nil,
              thumb_url: nil,
              title: nil,
              description: nil,
              caption: nil,
              reply_markup: nil,
              input_message_content: nil

    @type t :: %__MODULE__{
            type: binary,
            id: binary,
            gif_url: binary,
            gif_width: integer,
            gif_height: integer,
            thumb_url: binary,
            title: binary,
            description: binary,
            caption: binary,
            reply_markup: InlineKeyboardMarkup.t(),
            input_message_content: InputMessageContent.t()
          }
  end

  defmodule Mpeg4Gif do
    @moduledoc false

    alias Nadia.Model.{InlineKeyboardMarkup, InputMessageContent}

    defstruct type: "mpeg4_gif",
              id: nil,
              mpeg4_url: nil,
              mpeg4_width: nil,
              mpeg4_height: nil,
              thumb_url: nil,
              title: nil,
              description: nil,
              caption: nil,
              reply_markup: nil,
              input_message_content: nil

    @type t :: %__MODULE__{
            type: binary,
            id: binary,
            mpeg4_url: binary,
            mpeg4_width: integer,
            mpeg4_height: integer,
            thumb_url: binary,
            title: binary,
            description: binary,
            caption: binary,
            reply_markup: InlineKeyboardMarkup.t(),
            input_message_content: InputMessageContent.t()
          }
  end

  defmodule Video do
    @moduledoc false

    alias Nadia.Model.{InlineKeyboardMarkup, InputMessageContent}

    defstruct type: "video",
              id: nil,
              video_url: nil,
              mime_type: nil,
              thumb_url: nil,
              title: nil,
              caption: nil,
              video_width: nil,
              video_height: nil,
              video_duration: nil,
              description: nil,
              reply_markup: nil,
              input_message_content: nil

    @type t :: %__MODULE__{
            type: binary,
            id: binary,
            video_url: binary,
            mime_type: binary,
            thumb_url: binary,
            title: binary,
            caption: binary,
            video_width: integer,
            video_height: integer,
            video_duration: integer,
            description: binary,
            reply_markup: InlineKeyboardMarkup.t(),
            input_message_content: InputMessageContent.t()
          }
  end

  defmodule Audio do
    @moduledoc false

    alias Nadia.Model.{InlineKeyboardMarkup, InputMessageContent}

    defstruct type: "audio",
              id: nil,
              audio_url: nil,
              title: nil,
              performer: nil,
              audio_duration: nil,
              reply_markup: nil,
              input_message_content: nil

    @type t :: %__MODULE__{
            type: binary,
            id: binary,
            audio_url: binary,
            title: binary,
            performer: binary,
            audio_duration: integer,
            reply_markup: InlineKeyboardMarkup.t(),
            input_message_content: InputMessageContent.t()
          }
  end

  defmodule Voice do
    @moduledoc false

    alias Nadia.Model.{InlineKeyboardMarkup, InputMessageContent}

    defstruct type: "voice",
              id: nil,
              voice_url: nil,
              title: nil,
              voice_duration: nil,
              reply_markup: nil,
              input_message_content: nil

    @type t :: %__MODULE__{
            type: binary,
            id: binary,
            voice_url: binary,
            title: binary,
            voice_duration: integer,
            reply_markup: InlineKeyboardMarkup.t(),
            input_message_content: InputMessageContent.t()
          }
  end

  defmodule Document do
    @moduledoc false

    alias Nadia.Model.{InlineKeyboardMarkup, InputMessageContent}

    defstruct type: "document",
              id: nil,
              title: nil,
              caption: nil,
              document_url: nil,
              mime_type: nil,
              description: nil,
              reply_markup: nil,
              input_message_content: nil,
              thumb_url: nil,
              thumb_width: nil,
              thumb_height: nil

    @type t :: %__MODULE__{
            type: binary,
            id: binary,
            title: binary,
            caption: binary,
            document_url: binary,
            mime_type: binary,
            description: binary,
            reply_markup: InlineKeyboardMarkup.t(),
            input_message_content: InputMessageContent.t(),
            thumb_url: binary,
            thumb_width: integer,
            thumb_height: integer
          }
  end

  defmodule Location do
    @moduledoc false

    alias Nadia.Model.{InlineKeyboardMarkup, InputMessageContent}

    defstruct type: "location",
              id: nil,
              latitude: nil,
              longitude: nil,
              title: nil,
              reply_markup: nil,
              input_message_content: nil,
              thumb_url: nil,
              thumb_width: nil,
              thumb_height: nil

    @type t :: %__MODULE__{
            type: binary,
            id: binary,
            latitude: float,
            longitude: float,
            title: binary,
            reply_markup: InlineKeyboardMarkup.t(),
            input_message_content: InputMessageContent.t(),
            thumb_url: binary,
            thumb_width: integer,
            thumb_height: integer
          }
  end

  defmodule Venue do
    @moduledoc false

    alias Nadia.Model.{InlineKeyboardMarkup, InputMessageContent}

    defstruct type: "venue",
              id: nil,
              latitude: nil,
              longitude: nil,
              title: nil,
              address: nil,
              foursquare_id: nil,
              reply_markup: nil,
              input_message_content: nil,
              thumb_url: nil,
              thumb_width: nil,
              thumb_height: nil

    @type t :: %__MODULE__{
            type: binary,
            id: binary,
            latitude: float,
            longitude: float,
            title: binary,
            address: binary,
            foursquare_id: binary,
            reply_markup: InlineKeyboardMarkup.t(),
            input_message_content: InputMessageContent.t(),
            thumb_url: binary,
            thumb_width: integer,
            thumb_height: integer
          }
  end

  defmodule Contact do
    @moduledoc false

    alias Nadia.Model.{InlineKeyboardMarkup, InputMessageContent}

    defstruct type: "contact",
              id: nil,
              phone_number: nil,
              first_name: nil,
              last_name: nil,
              reply_markup: nil,
              input_message_content: nil,
              thumb_url: nil,
              thumb_width: nil,
              thumb_height: nil

    @type t :: %__MODULE__{
            type: binary,
            id: binary,
            phone_number: binary,
            first_name: binary,
            last_name: binary,
            reply_markup: InlineKeyboardMarkup.t(),
            input_message_content: InputMessageContent.t(),
            thumb_url: binary,
            thumb_width: integer,
            thumb_height: integer
          }
  end

  defmodule CachedPhoto do
    @moduledoc false

    alias Nadia.Model.{InlineKeyboardMarkup, InputMessageContent}

    defstruct type: "photo",
              id: nil,
              photo_file_id: nil,
              title: nil,
              description: nil,
              caption: nil,
              reply_markup: nil,
              input_message_content: nil

    @type t :: %__MODULE__{
            type: binary,
            id: binary,
            photo_file_id: binary,
            title: binary,
            description: binary,
            caption: binary,
            reply_markup: InlineKeyboardMarkup.t(),
            input_message_content: InputMessageContent.t()
          }
  end

  defmodule CachedGif do
    @moduledoc false

    alias Nadia.Model.{InlineKeyboardMarkup, InputMessageContent}

    defstruct type: "gif",
              id: nil,
              gif_file_id: nil,
              title: nil,
              caption: nil,
              reply_markup: nil,
              input_message_content: nil

    @type t :: %__MODULE__{
            type: binary,
            id: binary,
            gif_file_id: binary,
            title: binary,
            caption: binary,
            reply_markup: InlineKeyboardMarkup.t(),
            input_message_content: InputMessageContent.t()
          }
  end

  defmodule CachedMpeg4Gif do
    @moduledoc false

    alias Nadia.Model.{InlineKeyboardMarkup, InputMessageContent}

    defstruct type: "mpeg4_gif",
              id: nil,
              mpeg4_file_id: nil,
              title: nil,
              caption: nil,
              reply_markup: nil,
              input_message_content: nil

    @type t :: %__MODULE__{
            type: binary,
            id: binary,
            mpeg4_file_id: binary,
            title: binary,
            caption: binary,
            reply_markup: InlineKeyboardMarkup.t(),
            input_message_content: InputMessageContent.t()
          }
  end

  defmodule CachedSticker do
    @moduledoc false

    alias Nadia.Model.{InlineKeyboardMarkup, InputMessageContent}

    defstruct type: "sticker",
              id: nil,
              sticker_file_id: nil,
              reply_markup: nil,
              input_message_content: nil

    @type t :: %__MODULE__{
            type: binary,
            id: binary,
            sticker_file_id: binary,
            reply_markup: InlineKeyboardMarkup.t(),
            input_message_content: InputMessageContent.t()
          }
  end

  defmodule CachedDocument do
    @moduledoc false

    alias Nadia.Model.{InlineKeyboardMarkup, InputMessageContent}

    defstruct type: "document",
              id: nil,
              title: nil,
              document_file_id: nil,
              description: nil,
              caption: nil,
              reply_markup: nil,
              input_message_content: nil

    @type t :: %__MODULE__{
            type: binary,
            id: binary,
            title: binary,
            document_file_id: binary,
            description: binary,
            caption: binary,
            reply_markup: InlineKeyboardMarkup.t(),
            input_message_content: InputMessageContent.t()
          }
  end

  defmodule CachedVideo do
    @moduledoc false

    alias Nadia.Model.{InlineKeyboardMarkup, InputMessageContent}

    defstruct type: "video",
              id: nil,
              video_file_id: nil,
              title: nil,
              description: nil,
              caption: nil,
              reply_markup: nil,
              input_message_content: nil

    @type t :: %__MODULE__{
            type: binary,
            id: binary,
            video_file_id: binary,
            title: binary,
            description: binary,
            caption: binary,
            reply_markup: InlineKeyboardMarkup.t(),
            input_message_content: InputMessageContent.t()
          }
  end

  defmodule CachedVoice do
    @moduledoc false

    alias Nadia.Model.{InlineKeyboardMarkup, InputMessageContent}

    defstruct type: "voice",
              id: nil,
              voice_file_id: nil,
              title: nil,
              reply_markup: nil,
              input_message_content: nil

    @type t :: %__MODULE__{
            type: binary,
            id: binary,
            voice_file_id: binary,
            title: binary,
            reply_markup: InlineKeyboardMarkup.t(),
            input_message_content: InputMessageContent.t()
          }
  end

  defmodule CachedAudio do
    @moduledoc false

    alias Nadia.Model.{InlineKeyboardMarkup, InputMessageContent}

    defstruct type: "audio",
              id: nil,
              audio_file_id: nil,
              reply_markup: nil,
              input_message_content: nil

    @type t :: %__MODULE__{
            type: binary,
            id: binary,
            audio_file_id: binary,
            reply_markup: InlineKeyboardMarkup.t(),
            input_message_content: InputMessageContent.t()
          }
  end
end
