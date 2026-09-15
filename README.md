# homebrew-tap

Anyend 的 Homebrew tap。

## 安装

```bash
brew install --cask jinqimu/tap/transend
```

或先 tap 再装：

```bash
brew tap jinqimu/tap
brew install --cask transend
```

> Transend 当前未做 Apple 公证。若首次打开提示“无法验证开发者”，执行
> `xattr -dr com.apple.quarantine /Applications/Transend.app`，或右键 App →「打开」。

## 更新

```bash
brew update && brew upgrade --cask transend
```

## 卸载

```bash
brew uninstall --cask transend
```

模型与缓存位于 `~/Library/Application Support/Transend`，如需彻底清理请手动删除。

## 维护（发布新版本后）

在主仓库执行（会拉取 Release 里的 sha256 并更新本仓库 `Casks/transend.rb`）：

```bash
./Scripts/update-cask.sh <version>
```
