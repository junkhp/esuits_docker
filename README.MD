# ESUITSの環境をdockerで構築 & AWSにデプロイ
[ESUITS](https://github.com/junkhp/esuits_junki/)の環境をdockerで構築

## docker起動手順
※起動するためには`local_settings.py`が必要です。
1. このリポジトリをクローン
```git
git clone https://github.com/junkhp/esuits_docker.git
```
2. アプリケーション用のディレクトリを作成
```
cd esuits_docker/container
mkdir app
```

3. ESUITSをアプリケーション以下にクローン
```
git clone https://github.com/junkhp/esuits_junki/ ./app
```

4. docker用のファイルをappにコピー
```
cp django/Dockerfile app/
cp django/entrypoint.sh app/
```

5. entrypoint.shに実行権限を付与
```
chmod +x app/entrypoint.sh
```

6. コンテナを起動
```docker-compose
docker-compose up -d build
```

7. `http://localhost:8000/`にアクセス