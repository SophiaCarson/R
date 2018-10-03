con <- file("test.log") # 创建一个.log文件
sink(con, append=TRUE) # 记录output
sink(con, append=TRUE, type="message") # 记录message
# 所有的output和message都会记录到test.log中，而控制台中不在有信息显示

# 读取test.R的命令，所有的input在被解析后都会显示出来，此处会直接记录到test.log中
source("code.R", echo=TRUE, max.deparse.length=10000)

# 记录完毕后，重置output和message的记录，运行完一下两行，后续的输入命令重新显示到控制台中
sink()
sink(type="message")

# 在控制台中显示test.log中记录下楼来的命令output和message
cat(readLines("test.log"), sep="\n")

# 导出
write.table(cat(readLines("test.log"), sep="\n"), "log.txt")
