require 'emoji'

module Emoji
  extend self

  def names
    emoji_list.keys.sort
  end

  def emoji_list
    list = index.instance_variable_get(:@emoji_by_name)
    list.merge!(additional_emojis)
  end

  def find_by_name(name)
    emoji_list[name]
  end

  def images_path
    File.expand_path("../../assets/images", __FILE__)
  end

  def additional_emojis
    {
      "check_button_green"=> {"name"=>"check_button_green", "category"=>"gesture"},
      "white_large_square"=> {"name"=>"white_large_square", "category"=>"gesture"},
      "thumbs_up_sign"=> {"name"=>"thumbs_up_sign", "category"=>"gesture"},
      "thumbs_down_sign"=> {"name"=>"thumbs_down_sign", "category"=>"gesture"},
      "white_up_pointing_index"=> {"name"=>"white_up_pointing_index", "category"=>"gesture"},
      "blue_heart"=> {"name"=>"blue_heart", "category"=>"abstract"},
      "broken_heart"=> {"name"=>"broken_heart", "category"=>"abstract"},
      "green_heart"=> {"name"=>"green_heart", "category"=>"abstract"},
      "purple_heart"=> {"name"=>"purple_heart", "category"=>"abstract"},
      "yellow_heart"=> {"name"=>"yellow_heart", "category"=>"abstract"},
      "white_check_mark"=> {"name"=>"check_button_green", "category"=>"gesture"},
      "thumbsup"=> {"name"=>"thumbs_up_sign", "category"=>"gesture"},
      "thumbsdown"=> {"name"=>"thumbs_down_sign", "category"=>"gesture"},
      "+1"=> {"name"=>"thumbs_up_sign", "category"=>"gesture"},
      "-1"=> {"name"=>"thumbs_down_sign", "category"=>"gesture"}
    }
  end
end

