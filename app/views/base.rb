class Views::Base < Components::Base
  # The `Views::Base` is an abstract class for all your views.

  # By default, it inherits from `Components::Base`, but you
  # can change that to `Phlex::HTML` if you want to keep views and
  # components independent.

  def around_template
    render layout.new do
      super
    end
  end

  def layout
    set_meta_tags(
      title:,
      description:,
      keywords:,
      image_src:,
      og:,
      twitter:
    )

    Components::Layouts::Default
  end

  def title = ""
  def description = nil
  def keywords = nil
  def image_src = nil
  def og = nil
  def twitter = nil
end
