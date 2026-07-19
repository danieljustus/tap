class Symmeet < Formula
  desc "Local-first, standalone meeting-artifact tool"
  homepage "https://github.com/danieljustus/symaira-meet"
  url "https://github.com/danieljustus/symaira-meet/releases/download/v0.4.0-beta.1/symmeet_v0.4.0-beta.1_darwin_arm64.tar.gz"
  sha256 "7b198f3dbdb3d8bbe7d96e25cd1afe1a4c3dae1ebda7265456d333d881b3d505"
  license "Apache-2.0"

  depends_on macos: :sequoia

  def install
    bin.install "symmeet"
  end

  test do
    system "#{bin}/symmeet", "version", "--json"
  end
end
