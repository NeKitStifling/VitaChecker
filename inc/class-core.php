<?php
class core
{
	private $tmpl;
	private $content;
	private $dbcon;
	private $settings;
	private $user;
	private $menu;
	private $hiddenmode;
	private $title;

	function __construct()
	{

		$this->dbconnect();

		$this->hidenmode=0;
		if (isset($_GET["hiddenmode"]) || isset($_POST["hiddenmode"])) $this->hiddenmode=1;

		if(isset($_POST["request"])){
			$this->request();
		}

		if($this-> hiddenmode == 0){
			$this->build();

		}

	}


	function request(){
		$requesttype = $_POST['request'];

		if ($requesttype == "getpagelist"){
			$pageobj = new navbar ($this-> dbcon);
			$getlist = $pageobj->getlistBy(["vis" => 1]);
			$res = [];
			foreach($getlist as $key=>$item){
				$pageobj->select($item["id"]);
				$res[] = [$item["id"], $pageobj->getinfo("name")];
			}
			print(json_encode($res));
		}
		elseif($requesttype == "gethomecontent"){
			$pageobj = new contentHome ($this-> dbcon);
			$getlist = $pageobj->getlistBy(["vis"=>1]);
			$dat = [];
			foreach($getlist as $key=>$item){
				$pageobj->select($item["id"]);
				$dat[] = [$item["id"], $pageobj->getinfo("header"),$pageobj->getinfo("img")];
			}
			print(json_encode($dat));
		}
		elseif($requesttype == "getaboutcontent"){
			$pageobj = new contentAbout ($this-> dbcon);
			$getlist = $pageobj->getlistBy(["vis"=>1]);
			$dat = [];
			foreach($getlist as $key=>$item){
				$pageobj->select($item["id"]);
				$dat[] = [$item["id"],$pageobj->getinfo("type"),$pageobj->getinfo("text")];
			}
			print(json_encode($dat));
		}
		elseif($requesttype == "getcellcontent"){
			$cellType = $_POST['celltype'];
			if ($cellType == "meat"){
				$pageobj = new cellMeat ($this->dbcon);
			}
			$getlist = $pageobj->getlistBy(["vis"=>1]);
			$dat = [];
			foreach($getlist as $key=>$item){
				$pageobj->select($item["id"]);
				$dat[] = [$item["id"],
				$pageobj->getinfo("name"),
				$pageobj->getinfo("fat"),
				$pageobj->getinfo("protein"),
				$pageobj->getinfo("carbohydrates"),
				$pageobj->getinfo("A1"),
				$pageobj->getinfo("А2"),
				$pageobj->getinfo("B1"),
				$pageobj->getinfo("B2"),
				$pageobj->getinfo("B3"),
				$pageobj->getinfo("B4"),
				$pageobj->getinfo("B5"),
				$pageobj->getinfo("B6"),
				$pageobj->getinfo("B7"),
				$pageobj->getinfo("B8"),
				$pageobj->getinfo("B9"),
				$pageobj->getinfo("B10"),
				$pageobj->getinfo("B11"),
				$pageobj->getinfo("B12"),
				$pageobj->getinfo("B13"),
				$pageobj->getinfo("B15"),
				$pageobj->getinfo("C"),
				$pageobj->getinfo("D1"),
				$pageobj->getinfo("D2"),
				$pageobj->getinfo("D3"),
				$pageobj->getinfo("D4"),
				$pageobj->getinfo("D5"),
				$pageobj->getinfo("E"),
				$pageobj->getinfo("K1"),
				$pageobj->getinfo("K2"),
				$pageobj->getinfo("N"),
				$pageobj->getinfo("P"),
				$pageobj->getinfo("U"),
				$pageobj->getinfo("Zn"),
				$pageobj->getinfo("Fe"),
				$pageobj->getinfo("Ca"),
				$pageobj->getinfo("Mg"),
				$pageobj->getinfo("Cu"),
				$pageobj->getinfo("Mn"),
				$pageobj->getinfo("Cr"),
				$pageobj->getinfo("Se"),
				$pageobj->getinfo("I"),
				$pageobj->getinfo("Mo"),
				$pageobj->getinfo("K"),
				$pageobj->getinfo("Na")];
			}
			print(json_encode($dat));
		}
	}

	function dbconnect(){
		include("tools/dbCon.php");
		$dsn = $type.":host=".$host.";dbname=".$base;
		$opt = array(
		    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
		    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
		);
		$this->dbcon = new PDO($dsn, $user, $pasw, $opt);
		$stmt = $this->dbcon->query('SET NAMES utf8');
		$stmt = $this->dbcon->prepare('SELECT * FROM settings');
		$stmt->execute();
		$this->settings = array();
		while ($row = $stmt->fetch())
		{
		    $this->settings[$row['name']] =$row['val'];
		}
	}

	function build(){
		$tmpl = file_get_contents("tmpl/page.html");
		print ($tmpl);
	}


}

