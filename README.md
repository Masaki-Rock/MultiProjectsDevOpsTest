# MultiProjectsDevOpsTest
複数プロジェクト管理

# バージョンを指定する。
$ mvn versions:set -DnewVersion=1.0.1-20210109
$ mvn versions:commit
$ mvn versions:revert

# アーカイブファイルを作成する。
$ mvn clean package -DattachMuleSources

# リポジトリにアーカイブファイルをアップロードする。
$ mvn -s settings.xml deploy

# 指定ファイルをCloudHubにデプロイする
$ mvn mule:deploy -Dmule.artifact=${{ format('../.github/script/{0}', steps.download.outputs.FILE_NAME) }} -DbusinessGroup=${{ github.event.inputs.org }} -Denvironment=${{ github.event.inputs.env }} -DworkerType=${{ github.event.inputs.type }}

# リポジトリからアーカイブファイルを取得する
$ mvn dependency:get -Dartifact=sample.account:account-v1:1.0.0:mule-application -Ddest=./
mvn dependency:get -DgroupId=sample.account -DartifactId=account-v1 -Dversion=1.0.0  -Dclassifier=mule-application -Ddest=target/

# リリースフォルダにアーカイブファイルをアップロードする。
$ mvn -s settings.xml github-release:github-release

https://qiita.com/backpaper0@github/items/4d2d83a707b50b9f0151
https://docs.mulesoft.com/jp/exchange/to-publish-assets-maven

        <repository>
            <id>exchange-server</id>
            <name>Corporate Repository</name>
            <url>${exchange.url}</url>
            <layout>default</layout>
        </repository>
