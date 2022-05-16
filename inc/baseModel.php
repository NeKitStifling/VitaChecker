<?php

abstract class baseModel
{
	static private $dbcon;
	static private $resource;


	function __construct($con)
	{
		$this->dbcon= $con;
	}


	function getlist(){
		$qwry=$this->dbcon->query("select `id` from `".static::$tblname."` where  `del`=0");
		return $qwry->fetchAll();
	}


	function getlistBySql($SQL,$values,$params=[])
	{



		$qwry=$this->dbcon->prepare("select `id` from `".static::$tblname."` where  `del`=0 ".$SQL);
		if (isset($params["trace"])){
			print_r($qwry);
			print_r($values);
		}
		$qwry->execute($values);
		return $qwry->fetchAll();

	}

	function getlistBy($values,$params=[])
	{

		$ssql = "";
		$ssql2 = "";
		$sep= "";
		foreach ($values as $param => $val) {

			if (is_array($val)){

				$sval = "";
				$sep="";
				foreach ($val as $key => $vl) {
					$sval.= $sep."$vl";
					$sep=", ";
				}

				unset($values[$param]);
				$ssql.=" and `".$param."` in ($sval)";
			}
			else{
				$ssql.=" and `".$param."` = :".$param;
			}
		}


		if ($params){
			if ($params["orderby"]){
				$ssql.=" order by `".$params["orderby"]."`";
			}
		}



		$qwry=$this->dbcon->prepare("select `id` from `".static::$tblname."` where  `del`=0 ".$ssql);
		if (isset($params["trace"])){
			print_r($qwry);
			print_r($values);
		}
		$qwry->execute($values);
		return $qwry->fetchAll();

	}



	function select($itemid)
	{
		$qwry=$this->dbcon->prepare("select * from `".static::$tblname."` where `id`=? and `del`=0");
		$qwry->execute(array($itemid));

		if ($this->resource=$qwry->fetch()){

			return 1;
		}

		return 0;
	}


	function selectBy($values)
	{

		$ssql = "";
		$ssql2 = "";
		$sep= "";
		foreach ($values as $param => $val) {
			$ssql.=" and `".$param."` = :".$param;
		}


		$qwry=$this->dbcon->prepare("select * from `".static::$tblname."` where  `del`=0 ".$ssql);
		$qwry->execute($values);

		if ($this->resource=$qwry->fetch()){

			return 1;
		}

		return 0;
	}




	function getresource()
	{
		return $this->resource;
	}

	function getinfo ($param)
	{
		return $this->resource[$param];
	}

	function setinfo ($values)
	{

		$ssql = "";
		$sep= "";
		foreach ($values as $param => $val) {
			$this->resource[$param] = $val;
			$ssql.=$sep."`".$param."` = :".$param;
			$sep = ", ";
		}

		$values["id"]=$this->resource["id"];

		$qwrysvs=$this->dbcon->prepare("UPDATE `".static::$tblname."` set ".$ssql." where `del`=0 and `id`= :id");
		$rs = $qwrysvs->execute($values);
		return $rs;

	}

	function create($values,$trace = 0){


		$ssql1 = "";
		$ssql2 = "";
		$sep= "";
		foreach ($values as $param => $val) {
			$ssql1.=$sep."`".$param."`";
			$ssql2.=$sep.":".$param;
			$sep = ", ";
		}

		try {
			$this->dbcon->beginTransaction();
			$qwry=$this->dbcon->prepare("INSERT INTO `".static::$tblname."` (".$ssql1.") values (".$ssql2.")");
			if ($trace){
				print_r($qwry);
				print_r($values);
			}
			$rs = $qwry->execute($values);

			$qwry=$this->dbcon->query("SELECT max(`id`) as `id` FROM `".static::$tblname."`");

			$row = $qwry->fetch();
			$res = $row["id"];
			$this->dbcon->commit();

			return $res;
		}catch(PDOException $e) {
			$this->dbcon->rollBack();
			return 0;
		}


	}
}