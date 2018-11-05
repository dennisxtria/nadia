defmodule Nadia.Behaviour do
  @moduledoc false

  alias Nadia.Model.{Chat, ChatMember, Error, File, Message, Update, User, UserProfilePhotos}

  @callback get_me :: {:ok, User.t()} | {:error, Error.t()}
  @callback send_message(integer, binary, [{atom, term}]) ::
              {:ok, Message.t()} | {:error, Error.t()}
  @callback forward_message(integer, integer, integer) :: {:ok, Message.t()} | {:error, Error.t()}
  @callback send_photo(integer, binary, [{atom, term}]) ::
              {:ok, Message.t()} | {:error, Error.t()}
  @callback send_audio(integer, binary, [{atom, term}]) ::
              {:ok, Message.t()} | {:error, Error.t()}
  @callback send_document(integer, binary, [{atom, term}]) ::
              {:ok, Message.t()} | {:error, Error.t()}
  @callback send_sticker(integer, binary, [{atom, term}]) ::
              {:ok, Message.t()} | {:error, Error.t()}
  @callback send_video(integer, binary, [{atom, term}]) ::
              {:ok, Message.t()} | {:error, Error.t()}
  @callback send_voice(integer, binary, [{atom, term}]) ::
              {:ok, Message.t()} | {:error, Error.t()}
  @callback send_location(integer, float, float, [{atom, term}]) ::
              {:ok, Message.t()} | {:error, Error.t()}
  @callback send_venue(integer, float, float, binary, binary, [{atom, term}]) ::
              {:ok, Message.t()} | {:error, Error.t()}
  @callback send_contact(integer, binary, binary, [{atom, term}]) ::
              {:ok, Message.t()} | {:error, Error.t()}
  @callback send_chat_action(integer, binary) :: :ok | {:error, Error.t()}
  @callback get_user_profile_photos(integer, [{atom, term}]) ::
              {:ok, UserProfilePhotos.t()} | {:error, Error.t()}
  @callback get_updates([{atom, term}]) :: {:ok, [Update.t()]} | {:error, Error.t()}
  @callback set_webhook([{atom, term}]) :: :ok | {:error, Error.t()}
  @callback get_file(binary) :: {:ok, File.t()} | {:error, Error.t()}
  @callback get_file_link(File.t()) :: {:ok, binary} | {:error, Error.t()}
  @callback kick_chat_member(integer | binary, integer) :: :ok | {:error, Error.t()}
  @callback leave_chat(integer | binary) :: :ok | {:error, Error.t()}
  @callback unban_chat_member(integer | binary, integer) :: :ok | {:error, Error.t()}
  @callback get_chat(integer | binary) :: {:ok, Chat.t()} | {:error, Error.t()}
  @callback get_chat_administrators(integer | binary) ::
              {:ok, [ChatMember.t()]} | {:error, Error.t()}
  @callback get_chat_members_count(integer | binary) :: {:ok, integer} | {:error, Error.t()}
  @callback get_chat_member(integer | binary, integer) ::
              {:ok, ChatMember.t()} | {:error, Error.t()}
  @callback answer_callback_query(binary, [{atom, term}]) :: :ok | {:error, Error.t()}
  @callback edit_message_text(integer | binary, integer, binary, [{atom, term}]) ::
              {:ok, Message.t()} | {:error, Error.t()}
  @callback edit_message_caption(integer | binary, integer, binary, [{atom, term}]) ::
              {:ok, Message.t()} | {:error, Error.t()}
  @callback edit_message_reply_markup(integer | binary, integer, binary, [{atom, term}]) ::
              {:ok, Message.t()} | {:error, Error.t()}
  @callback answer_inline_query(binary, [Nadia.Model.InlineQueryResult.t()], [{atom, term}]) ::
              :ok | {:error, Error.t()}
end
