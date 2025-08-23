# mqtt_ws_test.html の使用方法

作成者：@hohno_at_kuimc  
作成日：2025-08-19(Tue) 05:37 JST / 2025-08-18(Mon) 20:37 UTC

この HTML ファイルは、いくつかの公開 MQTT ブローカに対して **WebSocket 接続の確認テスト**を行うためのものです。

---

## ✅ テスト内容

次の URL に対して、MQTT over WebSocket で接続できるかを確認します：

- `ws://broker.emqx.io:8083/mqtt`
- `wss://broker.emqx.io:8084/mqtt`
- `wss://test.mosquitto.org:8081/mqtt`
- `ws://broker.hivemq.com:8000/mqtt`
- `wss://broker.hivemq.com:8884/mqtt`

---

## 🚀 使用手順

### 1. サーバ起動

HTML を直接開くと `file://` 経由になってしまい MQTT over WebSocket が正しく動作しないことがあります。  
そのため、ローカルに Web サーバを立ててからブラウザで開いてください。

```bash
cd /path/to/mqtt_ws_test.html
python3 -m http.server 8000
```

---

### 2. ブラウザで開く

以下の URL にアクセス：

```
http://localhost:8000/mqtt_ws_test.html
```

---

## 🔍 表示の見方

| 表示内容 | 意味 |
|----------|------|
| `[OK] 接続成功:` | MQTT over WebSocket に正常に接続できた |
| `[ERR] 接続失敗:` | 接続に失敗（ポートが閉じている、CORSエラーなど） |

色付きの表示で成功／失敗がすぐにわかります。

---

## 📝 備考

- 再接続機能は無効化しているため、結果は即時かつ一過性です。
- 接続失敗の理由はネットワーク制限、TLS証明書の問題、CORSポリシーなど様々です。
- 追加で確認したい URL があれば `urls[]` に追加して使ってください。

---
