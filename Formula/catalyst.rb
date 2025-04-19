# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Catalyst < Formula
  desc "Terminal UI tool to simplify triggering GitHub Actions workflows with matrix configurations"
  homepage "https://github.com/PraveenGongada/catalyst"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/PraveenGongada/catalyst/releases/download/v1.0.0/catalyst_Darwin_x86_64.tar.gz"
      sha256 "3580326d2062d2ff55f0d66d7f9610b51d8d6ddb9e58f36153da416c4d44bb77"

      def install
        bin.install "catalyst"

        # Install completion scripts if the command exists
        if Utils.safe_popen_read(bin/"catalyst", "-help").include?("completion")
          bash_output = Utils.safe_popen_read(bin/"catalyst", "completion", "bash") rescue ""
          (bash_completion/"catalyst").write bash_output unless bash_output.empty?

          zsh_output = Utils.safe_popen_read(bin/"catalyst", "completion", "zsh") rescue ""
          (zsh_completion/"_catalyst").write zsh_output unless zsh_output.empty?

          fish_output = Utils.safe_popen_read(bin/"catalyst", "completion", "fish") rescue ""
          (fish_completion/"catalyst.fish").write fish_output unless fish_output.empty?
        end
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/PraveenGongada/catalyst/releases/download/v1.0.0/catalyst_Darwin_arm64.tar.gz"
      sha256 "b6a11b216659859d3511caae1af8ef2dd57af1ba193c18f2ae2b41595a5b2ff3"

      def install
        bin.install "catalyst"

        # Install completion scripts if the command exists
        if Utils.safe_popen_read(bin/"catalyst", "-help").include?("completion")
          bash_output = Utils.safe_popen_read(bin/"catalyst", "completion", "bash") rescue ""
          (bash_completion/"catalyst").write bash_output unless bash_output.empty?

          zsh_output = Utils.safe_popen_read(bin/"catalyst", "completion", "zsh") rescue ""
          (zsh_completion/"_catalyst").write zsh_output unless zsh_output.empty?

          fish_output = Utils.safe_popen_read(bin/"catalyst", "completion", "fish") rescue ""
          (fish_completion/"catalyst.fish").write fish_output unless fish_output.empty?
        end
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/PraveenGongada/catalyst/releases/download/v1.0.0/catalyst_Linux_x86_64.tar.gz"
        sha256 "96813d3613c04469046b43925b3577e0f4d54773b0f3240cf5148c8b52488ff5"

        def install
          bin.install "catalyst"

          # Install completion scripts if the command exists
          if Utils.safe_popen_read(bin/"catalyst", "-help").include?("completion")
            bash_output = Utils.safe_popen_read(bin/"catalyst", "completion", "bash") rescue ""
            (bash_completion/"catalyst").write bash_output unless bash_output.empty?

            zsh_output = Utils.safe_popen_read(bin/"catalyst", "completion", "zsh") rescue ""
            (zsh_completion/"_catalyst").write zsh_output unless zsh_output.empty?

            fish_output = Utils.safe_popen_read(bin/"catalyst", "completion", "fish") rescue ""
            (fish_completion/"catalyst.fish").write fish_output unless fish_output.empty?
          end
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/PraveenGongada/catalyst/releases/download/v1.0.0/catalyst_Linux_arm64.tar.gz"
        sha256 "6a8eb17f484fc8c3c479b7d17f448d97b7eca6d1ffacfc547accfadc52a34c9a"

        def install
          bin.install "catalyst"

          # Install completion scripts if the command exists
          if Utils.safe_popen_read(bin/"catalyst", "-help").include?("completion")
            bash_output = Utils.safe_popen_read(bin/"catalyst", "completion", "bash") rescue ""
            (bash_completion/"catalyst").write bash_output unless bash_output.empty?

            zsh_output = Utils.safe_popen_read(bin/"catalyst", "completion", "zsh") rescue ""
            (zsh_completion/"_catalyst").write zsh_output unless zsh_output.empty?

            fish_output = Utils.safe_popen_read(bin/"catalyst", "completion", "fish") rescue ""
            (fish_completion/"catalyst.fish").write fish_output unless fish_output.empty?
          end
        end
      end
    end
  end

  test do
    system "#{bin}/catalyst", "-version"
  end
end
