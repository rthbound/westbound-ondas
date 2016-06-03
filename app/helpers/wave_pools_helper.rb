module WavePoolsHelper
  def post_onda_from_wave_pool_params(wave_pool)
    {
      onda: {
        method: :post,
        card_title:             wave_pool["card_title"],
        tweet:                  wave_pool["tweet"],
        card_description:       wave_pool["card_description"],
        card_image_url:         wave_pool["card_image_url"],
        page_title:             wave_pool["page_title"],
        page_header:            wave_pool["page_header"],
        page_image:             wave_pool["page_image"],
        page_image_link_target: wave_pool["page_image_link_target"],
        youtube_id:             wave_pool["youtube_id"],
        facebook_video_url:     wave_pool["facebook_video_url"],
      }
    }
  end
end
