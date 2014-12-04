<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class _bidang extends CI_Model {
	function getall(){
	return $this->db->get('bidang');
	}
	function getby(){
	$this->db->where('no','1');
	return $this->db->get('bidang');
	}
}
?>