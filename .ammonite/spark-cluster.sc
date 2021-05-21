import $file.resolvers

import $ivy.`org.apache.spark::spark-core:3.1.1`
import $ivy.`org.apache.spark::spark-sql:3.1.1`
import $ivy.`org.apache.spark::spark-mllib:3.1.1`
// import $ivy.`org.jgrapht:jgrapht-core:1.5.1`

import org.apache.spark.SparkConf
import org.apache.spark.sql._
import org.apache.spark.sql.types._
import org.apache.spark.sql.functions._
// import com.databricks.spark.xml._
// import org.jgrapht._
// import org.jgrapht.generate._
// import org.jgrapht.traverse._
// import org.jgrapht.graph._
// import org.jgrapht.util._

object SparkSessionBuilder {
  def apply(log: String = "WARN"): SparkSession = {
    val sparkConf = new SparkConf()
      .set("spark.driver.maxResultSize", "0")
      .setAppName("similarities-loaders")

    val ss = SparkSession.builder
      .config(sparkConf)
      .getOrCreate

    ss.sparkContext.setLogLevel(log)
    ss
  }
}

val spark = SparkSessionBuilder()
import spark.implicits._
