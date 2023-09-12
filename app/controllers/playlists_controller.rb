class PlaylistsController < ApplicationController
  def new
    @playlist = Playlist.new
  end

  def create
    @playlist = Playlist.new(playlist_params)

    redirect_back_or_to(playlists_path) if @playlist.save
  end

  private

  def playlist_params
    params.require(:playlist).permit(:name)
  end
end
