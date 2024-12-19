.PHONY: run clean

OUTPUT_FILE = output/output_log.txt
OUTPUT_DIR = output

run:
	@mkdir -p $(OUTPUT_DIR)
	@echo "実行ログ: $$(date)" > $(OUTPUT_FILE)
	@while read -r cmd; do \
		echo "実行中: $$cmd" | tee -a $(OUTPUT_FILE); \
		$$cmd >> $(OUTPUT_FILE) 2>&1; \
		if [ $$? -ne 0 ]; then \
			echo "エラーが発生しました: $$cmd" | tee -a $(OUTPUT_FILE); \
		fi; \
	done < running.txt

clean:
	@echo "output ディレクトリをクリーンアップ中..."
	@rm -rf $(OUTPUT_FILE)
	@rm -rf $(OUTPUT_DIR)/*
	@echo "クリーンアップ完了！"
