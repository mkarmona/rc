import $file.resolvers

import $ivy.`org.apache.spark::spark-core:3.0.1`
import $ivy.`org.apache.spark::spark-sql:3.0.1`
import $ivy.`org.apache.spark::spark-mllib:3.0.1`
import $ivy.`graphframes:graphframes:0.8.1-spark3.0-s_2.12`

import org.apache.spark.SparkConf
import org.apache.spark.sql._
import org.apache.spark.sql.types._
import org.apache.spark.sql.functions._
import org.graphframes._

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

val spark = SparkSessionBuilder()
import spark.implicits._
