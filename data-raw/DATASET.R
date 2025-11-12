## code to prepare `DATASET` dataset goes here

###CO2数据集的写入
file_path <- "C://Users/admin/Desktop/课题_me/数据/富集分析/CO2_result/CO2_300.txt"
CO2_data <- read.table(file_path,header = FALSE,stringsAsFactors = FALSE)
CO2_data <- CO2_data$V1
#写入CO2
usethis::use_data(CO2_data,overwrite = T)


##一ALL的写入
#01 请将文件路径替换为您的 差异表达基因文件 的实际位置

term2gene_path_top200 <- "C://Users/admin/Desktop/课题_me/数据/富集分析/00_富集准备数据/第二版（由Top_gene_2_第二版生成）/ALL/term2gene_Top200.csv"
term2name_path_top200 <- "C://Users/admin/Desktop/课题_me/数据/富集分析/00_富集准备数据/第二版（由Top_gene_2_第二版生成）/ALL/term2name_Top200.csv"
term2gene_path_top500 <- "C://Users/admin/Desktop/课题_me/数据/富集分析/00_富集准备数据/第二版（由Top_gene_2_第二版生成）/ALL/term2gene_Top500.csv"
term2name_path_top500 <- "C://Users/admin/Desktop/课题_me/数据/富集分析/00_富集准备数据/第二版（由Top_gene_2_第二版生成）/ALL/term2name_Top500.csv"
term2gene_path_top1000 <- "C://Users/admin/Desktop/课题_me/数据/富集分析/00_富集准备数据/第二版（由Top_gene_2_第二版生成）/ALL/term2gene_Top1000.csv"
term2name_path_top1000 <- "C://Users/admin/Desktop/课题_me/数据/富集分析/00_富集准备数据/第二版（由Top_gene_2_第二版生成）/ALL/term2name_Top1000.csv"


term2gene_top200 <- read.csv(term2gene_path_top200,header = TRUE)
term2name_top200 <- read.csv(term2name_path_top200,header = TRUE )
term2gene_top500 <- read.csv(term2gene_path_top500,header = TRUE)
term2name_top500 <- read.csv(term2name_path_top500,header = TRUE )
term2gene_top1000 <- read.csv(term2gene_path_top1000,header = TRUE)
term2name_top1000 <- read.csv(term2name_path_top1000,header = TRUE )

#02 提取差异基因列

#将输入的差异基因统一转为大写

#03 准备背景基因 (Universe)，它也必须是大写的
universe_genes_top200 <- unique(term2gene_top200$gene)
universe_genes_top500 <- unique(term2gene_top500$gene)
universe_genes_top1000 <- unique(term2gene_top1000$gene)


##二MG的写入
#01 请将文件路径替换为您的 差异表达基因文件 的实际位置

term2gene_path_top200_MG <- "C://Users/admin/Desktop/课题_me/数据/富集分析/00_富集准备数据/第二版（由Top_gene_2_第二版生成）/MG/term2gene_Top200_MG.csv"
term2name_path_top200_MG <- "C://Users/admin/Desktop/课题_me/数据/富集分析/00_富集准备数据/第二版（由Top_gene_2_第二版生成）/MG/term2name_Top200_MG.csv"
term2gene_path_top500_MG <- "C://Users/admin/Desktop/课题_me/数据/富集分析/00_富集准备数据/第二版（由Top_gene_2_第二版生成）/MG/term2gene_Top500_MG.csv"
term2name_path_top500_MG <- "C://Users/admin/Desktop/课题_me/数据/富集分析/00_富集准备数据/第二版（由Top_gene_2_第二版生成）/MG/term2name_Top500_MG.csv"
term2gene_path_top1000_MG <- "C://Users/admin/Desktop/课题_me/数据/富集分析/00_富集准备数据/第二版（由Top_gene_2_第二版生成）/MG/term2gene_Top1000_MG.csv"
term2name_path_top1000_MG <- "C://Users/admin/Desktop/课题_me/数据/富集分析/00_富集准备数据/第二版（由Top_gene_2_第二版生成）/MG/term2name_Top1000_MG.csv"


term2gene_top200_MG <- read.csv(term2gene_path_top200_MG,header = TRUE)
term2name_top200_MG <- read.csv(term2name_path_top200_MG,header = TRUE )
term2gene_top500_MG <- read.csv(term2gene_path_top500_MG,header = TRUE)
term2name_top500_MG <- read.csv(term2name_path_top500_MG,header = TRUE )
term2gene_top1000_MG <- read.csv(term2gene_path_top1000_MG,header = TRUE)
term2name_top1000_MG <- read.csv(term2name_path_top1000_MG,header = TRUE )

#02 提取差异基因列

#将输入的差异基因统一转为大写

#03 准备背景基因 (Universe)，它也必须是大写的
universe_genes_top200_MG <- unique(term2gene_top200_MG$gene)
universe_genes_top500_MG <- unique(term2gene_top500_MG$gene)
universe_genes_top1000_MG <- unique(term2gene_top1000_MG$gene)

##三DG的写入
#01 请将文件路径替换为您的 差异表达基因文件 的实际位置

term2gene_path_top200_DG <- "C://Users/admin/Desktop/课题_me/数据/富集分析/00_富集准备数据/第二版（由Top_gene_2_第二版生成）/DG/term2gene_Top200_DG.csv"
term2name_path_top200_DG <- "C://Users/admin/Desktop/课题_me/数据/富集分析/00_富集准备数据/第二版（由Top_gene_2_第二版生成）/DG/term2name_Top200_DG.csv"
term2gene_path_top500_DG <- "C://Users/admin/Desktop/课题_me/数据/富集分析/00_富集准备数据/第二版（由Top_gene_2_第二版生成）/DG/term2gene_Top500_DG.csv"
term2name_path_top500_DG <- "C://Users/admin/Desktop/课题_me/数据/富集分析/00_富集准备数据/第二版（由Top_gene_2_第二版生成）/DG/term2name_Top500_DG.csv"
term2gene_path_top1000_DG <- "C://Users/admin/Desktop/课题_me/数据/富集分析/00_富集准备数据/第二版（由Top_gene_2_第二版生成）/DG/term2gene_Top1000_DG.csv"
term2name_path_top1000_DG <- "C://Users/admin/Desktop/课题_me/数据/富集分析/00_富集准备数据/第二版（由Top_gene_2_第二版生成）/DG/term2name_Top1000_DG.csv"


term2gene_top200_DG <- read.csv(term2gene_path_top200_DG,header = TRUE)
term2name_top200_DG <- read.csv(term2name_path_top200_DG,header = TRUE )
term2gene_top500_DG <- read.csv(term2gene_path_top500_DG,header = TRUE)
term2name_top500_DG <- read.csv(term2name_path_top500_DG,header = TRUE )
term2gene_top1000_DG <- read.csv(term2gene_path_top1000_DG,header = TRUE)
term2name_top1000_DG <- read.csv(term2name_path_top1000_DG,header = TRUE )

#02 提取差异基因列

#将输入的差异基因统一转为大写

#03 准备背景基因 (Universe)，它也必须是大写的
universe_genes_top200_DG <- unique(term2gene_top200_DG$gene)
universe_genes_top500_DG <- unique(term2gene_top500_DG$gene)
universe_genes_top1000_DG <- unique(term2gene_top1000_DG$gene)

##四TG的写入
#01 请将文件路径替换为您的 差异表达基因文件 的实际位置

term2gene_path_top200_TG <- "C://Users/admin/Desktop/课题_me/数据/富集分析/00_富集准备数据/第二版（由Top_gene_2_第二版生成）/TG/term2gene_Top200_TG.csv"
term2name_path_top200_TG <- "C://Users/admin/Desktop/课题_me/数据/富集分析/00_富集准备数据/第二版（由Top_gene_2_第二版生成）/TG/term2name_Top200_TG.csv"
term2gene_path_top500_TG <- "C://Users/admin/Desktop/课题_me/数据/富集分析/00_富集准备数据/第二版（由Top_gene_2_第二版生成）/TG/term2gene_Top500_TG.csv"
term2name_path_top500_TG <- "C://Users/admin/Desktop/课题_me/数据/富集分析/00_富集准备数据/第二版（由Top_gene_2_第二版生成）/TG/term2name_Top500_TG.csv"
term2gene_path_top1000_TG <- "C://Users/admin/Desktop/课题_me/数据/富集分析/00_富集准备数据/第二版（由Top_gene_2_第二版生成）/TG/term2gene_Top1000_TG.csv"
term2name_path_top1000_TG <- "C://Users/admin/Desktop/课题_me/数据/富集分析/00_富集准备数据/第二版（由Top_gene_2_第二版生成）/TG/term2name_Top1000_TG.csv"


term2gene_top200_TG <- read.csv(term2gene_path_top200_TG,header = TRUE)
term2name_top200_TG <- read.csv(term2name_path_top200_TG,header = TRUE )
term2gene_top500_TG <- read.csv(term2gene_path_top500_TG,header = TRUE)
term2name_top500_TG <- read.csv(term2name_path_top500_TG,header = TRUE )
term2gene_top1000_TG <- read.csv(term2gene_path_top1000_TG,header = TRUE)
term2name_top1000_TG <- read.csv(term2name_path_top1000_TG,header = TRUE )

#02 提取差异基因列

#将输入的差异基因统一转为大写

#03 准备背景基因 (Universe)，它也必须是大写的
universe_genes_top200_TG <- unique(term2gene_top200_TG$gene)
universe_genes_top500_TG <- unique(term2gene_top500_TG$gene)
universe_genes_top1000_TG <- unique(term2gene_top1000_TG$gene)


internal_data_list <- list(term2gene_top200=term2gene_top200,
                           term2name_top200=term2name_top200,
                           term2gene_top500=term2gene_top500,
                           term2name_top500= term2name_top500,
                           term2gene_top1000=term2gene_top1000,
                           term2name_top1000=term2name_top1000,
                           universe_genes_top200=universe_genes_top200,
                           universe_genes_top500=universe_genes_top500,
                           universe_genes_top1000=universe_genes_top1000,
                           term2gene_top200_MG=term2gene_top200_MG,
                           term2name_top200_MG=term2name_top200_MG,
                           term2gene_top500_MG=term2gene_top500_MG,
                           term2name_top500_MG=term2name_top500_MG,
                           term2gene_top1000_MG=term2gene_top1000_MG,
                           term2name_top1000_MG=term2name_top1000_MG,
                           universe_genes_top200_MG=universe_genes_top200_MG,
                           universe_genes_top500_MG=universe_genes_top500_MG,
                           universe_genes_top1000_MG=universe_genes_top1000_MG,
                           term2gene_top200_TG=term2gene_top200_TG,
                           term2name_top200_TG=term2name_top200_TG,
                           term2gene_top500_TG=term2gene_top500_TG,
                           term2name_top500_TG=term2name_top500_TG,
                           term2gene_top1000_TG=term2gene_top1000_TG,
                           term2name_top1000_TG=term2name_top1000_TG,
                           universe_genes_top200_TG=universe_genes_top200_TG,
                           universe_genes_top500_TG=universe_genes_top500_TG,
                           universe_genes_top1000_TG=universe_genes_top1000_TG,
                           term2gene_top200_DG=term2gene_top200_DG,
                           term2name_top200_DG=term2name_top200_DG,
                           term2gene_top500_DG=term2gene_top500_DG,
                           term2name_top500_DG=term2name_top500_DG,
                           term2gene_top1000_DG=term2gene_top1000_DG,
                           term2name_top1000_DG=term2name_top1000_DG,
                           universe_genes_top200_DG=universe_genes_top200_DG,
                           universe_genes_top500_DG=universe_genes_top500_DG,
                           universe_genes_top1000_DG=universe_genes_top1000_DG)


saveRDS(internal_data_list, file = "data-raw/enrichpkg_data.rds")
#写入term2gene和term2name数据与背景基因数据
#usethis::use_data(term2gene_top200,
#                 term2name_top200,
#                  term2gene_top500,
#                  term2name_top500,
#                  term2gene_top1000,
#                  term2name_top1000,
#                  universe_genes_top200,
#                  universe_genes_top500,
#                  universe_genes_top1000,
#                  term2gene_top200_MG,
#                  term2name_top200_MG,
#                  term2gene_top500_MG,
#                  term2name_top500_MG,
#                  term2gene_top1000_MG,
#                  term2name_top1000_MG,
#                  universe_genes_top200_MG,
#                  universe_genes_top500_MG,
#                  universe_genes_top1000_MG,
#                  term2gene_top200_TG,
#                  term2name_top200_TG,
#                  term2gene_top500_TG,
#                  term2name_top500_TG,
#                  term2gene_top1000_TG,
#                  term2name_top1000_TG,
#                  universe_genes_top200_TG,
#                  universe_genes_top500_TG,
#                  universe_genes_top1000_TG,
#                  term2gene_top200_DG,
#                  term2name_top200_DG,
#                  term2gene_top500_DG,
#                  term2name_top500_DG,
#                  term2gene_top1000_DG,
#                  term2name_top1000_DG,
#                  universe_genes_top200_DG,
#                  universe_genes_top500_DG,
#                  universe_genes_top1000_DG,
#                  internal = TRUE,overwrite = TRUE)
#usethis::use_data(internal_data_list,internal = TRUE,overwrite = TRUE)

#写入背景基因数据
#usethis::use_data(universe_genes_top200,universe_genes_top500,universe_genes_top1000)



#给所需数据编写文档(即R文件夹下的data.R)后再使用
devtools::document()
