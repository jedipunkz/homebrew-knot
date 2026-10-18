# frozen_string_literal: true

class Knot < Formula
  desc "Terminal UI for Git with tig-compatible views, worktree support and themes"
  homepage "https://github.com/jedipunkz/knot"
  version "0.0.0"

  on_macos do
    on_intel do
      url "https://github.com/jedipunkz/knot/releases/download/v#{version}/knot_v#{version}_darwin_amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end

    on_arm do
      url "https://github.com/jedipunkz/knot/releases/download/v#{version}/knot_v#{version}_darwin_arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jedipunkz/knot/releases/download/v#{version}/knot_v#{version}_linux_amd64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end

    on_arm do
      url "https://github.com/jedipunkz/knot/releases/download/v#{version}/knot_v#{version}_linux_arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install Dir["knot_v#{version}_*"].first => "knot"
  end

  test do
    assert_match "knot version", shell_output("#{bin}/knot --version")
  end
end
