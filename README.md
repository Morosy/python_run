## python_run
大量のPythonスクリプトを一括で実行する

examplexx.pyは例です。

実際の実行コマンドを `running.txt` に記入

> [!IMPORTANT]
> Makefileの末尾に必ず改行を入れて下さい

#### 利用方法

`running.txt`に記述された実行方法に則って順番に実行．

実行コマンドと出力結果(またはエラー内容)が`output/output_log.txt`に書き込まれる．
```
% make run
実行中: python example01.py
実行中: python example02.py
実行中: python example03.py This_is_argv[1] This_is_argv[2]
実行中: python example04.py output/output.txt This_is_Python!
```


```
% make clean
output ディレクトリをクリーンアップ中...
クリーンアップ完了！
```
`output`ディレクトリの中身を空にする．
