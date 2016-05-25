package com.avi.myPack;

public class Project {
	int id;
	String projectName,techUsed,description,projectFileName,createrName;
    public void setId(int id) {
		this.id = id;
	}
    public int getId() {
		return id;
	}
    public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
    public String getProjectName() {
		return projectName;
	}
    public void setTechUsed(String techUsed) {
		this.techUsed = techUsed;
	}
    public String getTechUsed() {
		return techUsed;
	}
    public void setDescription(String description) {
		this.description = description;
	}
    public String getDescription() {
		return description;
	}
    public void setProjectFileName(String projectFileName) {
		this.projectFileName = projectFileName;
	}
    public String getProjectFileName() {
		return projectFileName;
	}
    public void setCreaterName(String createrName) {
		this.createrName = createrName;
	}
    public String getCreaterName() {
		return createrName;
	}
}
