package com.vmware.helper;

import java.util.HashMap;
import java.util.Vector;

public class ManagedObject {
        private String entityName = "";
	private String entityType = "";
	private String entityStatus = "";
	private String [] properties = null;
	private Vector<ManagedObject> children = null;
	public ManagedObject parent = null;

	public ManagedObject() {

	}

	public ManagedObject(String name, String type) {
            this (name, type, null, null);
	}

	public ManagedObject(String name, String type, String status) {
            this (name, type, status, null);
	}

	public ManagedObject(String name, String type, String status, String [] props) {
           entityName = name;
	   entityType = type;
	   entityStatus = status;
	   properties = props;
	}

	public void setName(String name) {
           entityName = name;
	}

	public void setType(String type) {
           entityType = type;
	}

	public void setStatus(String status) {
           entityStatus = status;
	}

	public void setProperties(String[] prop) {
           properties = prop;
	}

	public String getName() {
           return entityName;
	}

	public String getType() {
           return entityType;
	}

	public String getStatus() {
           return entityStatus;
	}

	public String [] getProperties() {
           return properties;
	}

	public Object getParent() {
           return parent;
	}

	public Vector<ManagedObject> getChildren() {
           return children;
	}

	public void addChild(ManagedObject child) {
           if (children == null) {
               children = new Vector<ManagedObject>();
	   }
	   child.parent = this;
           children.add(child);
	}

	public void flushAllChildren() {
           flushChildren(this);
	}

	public void flushChildren(ManagedObject self) {
           Vector<ManagedObject> childV = self.getChildren();
	   if (childV != null && childV.size() >= 0) {
               for (ManagedObject obj : childV) {
	            flushChildren(obj);
	       }
               self.children.removeAllElements();
	   }
	}
}
