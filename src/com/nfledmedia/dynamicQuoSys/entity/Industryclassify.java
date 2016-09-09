package com.nfledmedia.dynamicQuoSys.entity;

import java.util.Set;

/**
 * Industryclassify entity. @author MyEclipse Persistence Tools
 */
public class Industryclassify implements java.io.Serializable {

	// Fields

		private Short id;
		private String name;

		// Constructors

		/** default constructor */
		public Industryclassify() {
		}

		/** minimal constructor */
		public Industryclassify(String name) {
			this.name = name;
		}

		/** full constructor */
		public Industryclassify(Short id,String name) {
			this.id=id;
			this.name =name;
		}

		// Property accessors
		public Short getId() {
			return id;
		}

		public void setId(Short id) {
			this.id = id;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		

		
}
