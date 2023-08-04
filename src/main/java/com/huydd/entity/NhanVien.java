package com.huydd.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;
import javax.persistence.*;
@Data

@Entity 
@Table(name ="TT")
public class NhanVien implements Serializable{
	@Id 
	String manv;
	String hoten;
	String diachi;
	boolean gioitinh;
	
	
}
