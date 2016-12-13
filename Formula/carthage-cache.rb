# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class CarthageCache < Formula
  desc "A simple formula for caching carthage libraries"
  homepage "https://soheilbm.github.io/carthage-cache/"
  url "https://github.com/soheilbm/carthage-cache/archive/v0.1.1.tar.gz"
  version "0.1.1"
  sha256 "dccca55054b0772431d779a361108c01ac0907a3921859862931b7cdd7e05784"

  depends_on "cmake" => :builds

  def install
   system "cmake", ".", *std_cmake_args
   system "make", "install"
   system "make", "copy"
   system "make", "clean"
  end

end
