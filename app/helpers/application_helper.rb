# frozen_string_literal: true

module ApplicationHelper
  def attach_player_picture(model, picture)
    PictureAttachmentService.attach(model, picture) if picture.present?
  end
end
