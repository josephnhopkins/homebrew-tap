cask "webrender-markdown-editor" do
  version "1.4.0"
  sha256 "93cf22bca4689c5d8bff5d2139400957514f00340f3f2af0e3c7d9e264d9d23c"

  url "https://github.com/josephnhopkins/markdown-viewer-releases/releases/download/v#{version}/MarkdownViewer-#{version}-osx-arm64.dmg"
  name "Webrender Markdown Editor"
  desc "View and edit Markdown with GitHub-style rendering, Mermaid diagrams and print"
  homepage "https://nextwaveweb.co.uk/"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Webrender Markdown Editor.app"

  zap trash: "~/Library/Application Support/Markdown"
end
