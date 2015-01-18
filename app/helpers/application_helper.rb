module ApplicationHelper
  ASSET_PREFIX = "https://s3.eu-central-1.amazonaws.com/workouter-assets/"
  def external_image(path)
    "#{ASSET_PREFIX}images/#{path}"
  end
end
