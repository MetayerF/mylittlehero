class RelativeMailerPreview < ActionMailer::Preview

  def send_invitation
    @relative = Relative.last
    RelativeMailer.send_invitation(@relative)
  end
end
