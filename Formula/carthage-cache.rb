# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class CarthageCache < Formula
  desc "A simple formula for caching carthage libraries"
  homepage "https://soheilbm.github.io/carthage-cache/"
  url "https://github.com/soheilbm/carthage-cache.git", :tag => "v0.1.2"
  head "https://github.com/soheilbm/carthage-cache.git", :branch => "master"

  depends_on "cmake" => :builds

  def install
   system "make", "install", "copy", "clean" 
  end

end
