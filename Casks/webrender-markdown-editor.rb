cask "webrender-markdown-editor" do
  version "1.2.0"
  sha256 "13174cdc7eb5b6a9b99eb3afd2c011f9886ef2f39df2d1c6519a133a0bf32f78"

  url "https://github.com/josephnhopkins/markdown-viewer-releases/releases/download/v#{version}/MarkdownViewer-#{version}-osx-arm64.dmg"
  name "Webrender Markdown Editor"
  desc "View and edit Markdown with GitHub-style rendering, Mermaid diagrams and print"
  homepage "https://nextwaveweb.co.uk/"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Webrender Markdown Editor.app"

  zap trash: "~/Library/Application Support/Markdown"
end
