#' @title Use the conversion result to make a bubble chart
#'
#' @description 该函数用于将my_enrich函数返回的结果，转换为适合于enrichplot::dotplot函数的输入
#'
#' @param result_data A enrichResult instance
#'
#' @returns A enrichResult instance
#' @export
#'
#'
transform_result_to_dotplot <- function(result_data){
  result_data@result$Description<-result_data@result$ID
  return(result_data)
}
