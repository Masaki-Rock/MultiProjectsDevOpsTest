# MultiProjectsDevOpsTest
複数プロジェクト管理

# バージョンを指定する。
$ mvn versions:set -DnewVersion=1.0.1-20210109
$ mvn versions:commit
$ mvn versions:revert

# アーカイブファイルを作成する。
$ mvn clean package -DattachMuleSources

# 指定ファイルをCloudHubにデプロイする
$ mvn mule:deploy -Dmule.artifact=${{ format('../.github/script/{0}', steps.download.outputs.FILE_NAME) }} -DbusinessGroup=${{ github.event.inputs.org }} -Denvironment=${{ github.event.inputs.env }} -DworkerType=${{ github.event.inputs.type }}

git update-index --add --chmod=+x APIBuilder-dev.sh
git update-index --add --chmod=+x APIBuilder-prod.sh