cask "transend" do
  version "0.1.5"
  sha256 "57bcbb59d25cf4b123b38b926fa6a952648ace7d9eb41f1b317b3bc65bfce494"

  url "https://github.com/jinqimu/Transend/releases/download/v#{version}/Transend-#{version}.dmg"
  name "Transend"
  desc "菜单栏 AI 翻译（内置 llama.cpp + Hy-MT2 本地模型）"
  homepage "https://github.com/jinqimu/Transend"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Transend.app"

  uninstall quit: "Transend"

  caveats <<~EOS
    Transend 目前未做 Apple 公证。若首次打开提示“无法验证开发者”，任选其一：
      • 执行：xattr -dr com.apple.quarantine /Applications/Transend.app
      • 或右键 Transend.app →「打开」→ 再确认一次

    升级：brew update && brew upgrade --cask transend
  EOS
end
