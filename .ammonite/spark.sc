import $ivy.`org.apache.spark::spark-core:2.4.5`
import $ivy.`org.apache.spark::spark-sql:2.4.5`
import $ivy.`org.apache.spark::spark-mllib:2.4.5`
import $ivy.`sh.almond::ammonite-spark:0.9.0`

import org.apache.spark.SparkConf
import org.apache.spark.sql._
import org.apache.spark.sql.AmmoniteSparkSession
import org.apache.spark.sql.types._
import org.apache.spark.sql.functions._

object SparkSessionBuilder {
  def apply(log: String = "WARN"): SparkSession = {
    val sparkConf = new SparkConf()
      .set("spark.driver.maxResultSize", "0")
      .setAppName("similarities-loaders")
      .setMaster("local[*]")

    val ss = SparkSession.builder
      .config(sparkConf)
      .getOrCreate

    ss.sparkContext.setLogLevel(log)
    ss
  }
}
