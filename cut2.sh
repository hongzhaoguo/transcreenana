#!/bin/bash

# 创建 aftercut 文件夹
mkdir -p aftercut

# 遍历所有 .fq.gz 文件
for fqgz in *.fq.gz; do
    # 获取文件名（去掉 .fq.gz 后缀）
    base_name=$(basename "$fqgz" .fq.gz)

    # 第一步：使用 cutadapt 进行修剪
    cutadapt --discard-untrimmed -a ATCACAGGCGAA -o "aftercut/${base_name}_step1.fq" "$fqgz"
    
    # 第二步：对生成的 .fq 文件继续修剪
    cutadapt --discard-untrimmed -g CTTTCTGCCCCGTTT -o "aftercut/${base_name}_step2.fq" "aftercut/${base_name}_step1.fq"
    
    # 可选：删除中间文件 (step1.fq)，如果不需要可以去掉这行
    rm "aftercut/${base_name}_step1.fq"
    
done

echo "处理完成！"

