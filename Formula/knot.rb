# frozen_string_literal: true

class Knot < Formula
  desc "Terminal UI for Git with tig-compatible views, worktree support and themes"
  homepage "https://github.com/jedipunkz/knot"
  version "0.0.1"

  on_macos do
    on_intel do
      url "https://github.com/jedipunkz/knot/releases/download/v#{version}/knot_v#{version}_darwin_amd64"
      sha256 "14166835c3c0ddf3fdcc67e36bcb94c79f5e411965d4212b0f6b54f321abed93"
    end

    on_arm do
      url "https://github.com/jedipunkz/knot/releases/download/v#{version}/knot_v#{version}_darwin_arm64"
      sha256 "f033606eec6e4d0ff9fd7ce5d5f96321d260e1a02620be5773c12f71206d7d8e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jedipunkz/knot/releases/download/v#{version}/knot_v#{version}_linux_amd64"
      sha256 "2f3221885279d72c15fe8dad9d121da722794761e252ec5ec3fc9dbb689091de"
    end

    on_arm do
      url "https://github.com/jedipunkz/knot/releases/download/v#{version}/knot_v#{version}_linux_arm64"
      sha256 "d6403cefb1089b07547564a3aa698f4e4f5105db3a390778e8c0c549559dda1b"
    end
  end

  def install
    bin.install Dir["knot_v#{version}_*"].first => "knot"
  end

  test do
    assert_match "knot version", shell_output("#{bin}/knot --version")
  end
end
