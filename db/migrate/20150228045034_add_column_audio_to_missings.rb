class AddColumnAudioToMissings < ActiveRecord::Migration
  def up
    unless  column_exists?(:missings, :url_audio)
      add_column :missings, :url_audio, :text
    end
  end
end
