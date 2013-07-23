require "spec_helper"

describe PasswordMailer do
  describe "password_reset_email" do
    let(:mail) { PasswordMailer.password_reset_email }

    it "renders the headers" do
      mail.subject.should eq("Password reset email")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
