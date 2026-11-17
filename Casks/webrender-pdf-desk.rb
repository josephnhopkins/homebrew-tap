cask "webrender-pdf-desk" do
  version "1.1.2"
  sha256 "8cfc0f76019f72426c8d99c592fed3c9fa0332eb62e756380aa9a49051092b3f"

  url "https://github.com/josephnhopkins/webrender-pdf-desk-releases/releases/download/v#{version}/WebrenderPdfDesk-#{version}-osx-arm64.zip"
  name "Webrender Pdf Desk"
  desc "Read and mark up PDF files, saving the marks into the PDF itself"
  homepage "https://nextwaveweb.co.uk/products/webrender-pdf-desk"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "WebrenderPdfDesk/Webrender Pdf Desk.app"

  zap trash: [
    "~/Library/Application Support/WebrenderPdfDesk",
    "~/Library/Caches/uk.co.nextwaveweb.webrenderpdfdesk",
    "~/Library/WebKit/uk.co.nextwaveweb.webrenderpdfdesk",
  ]
end
