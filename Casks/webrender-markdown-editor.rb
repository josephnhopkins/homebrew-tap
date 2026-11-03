cask "webrender-markdown-editor" do
  version "1.3.1"
  sha256 "bc009e45b642d2503f7a584fa8a0d33c56030bbfa7f8a0437301e2a35e4a66ea"

  url "https://github.com/josephnhopkins/markdown-viewer-releases/releases/download/v#{version}/MarkdownViewer-#{version}-osx-arm64.dmg"
  name "Webrender Markdown Editor"
  desc "View and edit Markdown with GitHub-style rendering, Mermaid diagrams and print"
  homepage "https://nextwaveweb.co.uk/"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Webrender Markdown Editor.app"

  zap trash: "~/Library/Application Support/Markdown"
end
