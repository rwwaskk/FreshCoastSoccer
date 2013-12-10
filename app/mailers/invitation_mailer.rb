class InvitationMailer < ActionMailer::Base
  default from: "info@freshcoastbeachsoccer.com"
  def invite(invitation)
    @invitation=invitation
    @url='http://example/login'
    mail(to:@invitation.receiver_email,subject: 'Interested In Beach Soccer?')
  end
  
end
