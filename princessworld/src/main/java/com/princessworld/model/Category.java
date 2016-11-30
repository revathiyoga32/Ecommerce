package com.princessworld.model;

	import javax.persistence.Entity;
	import javax.persistence.GeneratedValue;
	import javax.persistence.GenerationType;
	import javax.persistence.Id;

	@Entity
	public class Category {
		
		@Id
	    @GeneratedValue(strategy=GenerationType.IDENTITY)
		private int catid;
	    private String ctname;
		public int getCatid() {
			return catid;
		}
		public void setCatid(int catid) {
			this.catid = catid;
		}
		public String getCtname() {
			return ctname;
		}
		public void setCtname(String ctname) {
			this.ctname = ctname;
		}
		
	}

