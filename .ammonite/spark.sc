import $file.resolvers

import $ivy.`org.apache.spark::spark-core:3.2.0`
import $ivy.`org.apache.spark::spark-sql:3.2.0`
import $ivy.`org.apache.spark::spark-mllib:3.2.0`
import $ivy.`com.johnsnowlabs.nlp:spark-nlp_2.12:3.4.0`

// import $ivy.`org.jgrapht:jgrapht-core:1.5.1`

import org.apache.spark.broadcast._
import org.apache.spark.SparkConf
import org.apache.spark.sql._
import org.apache.spark.sql.types._
import org.apache.spark.sql.functions._
import org.apache.spark.sql.expressions.Window
import org.apache.spark.storage.StorageLevel
import org.apache.spark.ml.fpm._
import org.apache.spark.ml.feature.{Word2Vec, Word2VecModel}
import org.apache.spark.ml.functions._
import org.apache.spark.ml.Pipeline
import com.johnsnowlabs.nlp.annotator._
import com.johnsnowlabs.nlp.pretrained._
import com.johnsnowlabs.nlp.{DocumentAssembler, Finisher, SparkNLP}
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
