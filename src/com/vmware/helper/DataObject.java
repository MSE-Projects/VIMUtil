package com.vmware.helper;

import java.util.ArrayList;
import java.util.List;
import java.util.TreeSet;

class Node
{
     String id;
     //Name of the Managed Entity (e.g. name of VM, Host ...)
     String name;

     Properties data = new Properties();

     List<Node> children;

     Node(String nodeId, String nodeType, String nodeStatus) {
          this(nodeId, nodeId, nodeType, nodeStatus);
     }

     Node(String nodeId, String nodeName, String nodeType, String nodeStatus) {
          id = nodeId;
          name = nodeName;
          data.type = nodeType;
          data.status = nodeStatus;
          children = new ArrayList<Node>();
     }

     public void addChild(Node node) {
          children.add(node);
     }

     //Provide ',' separated property values
     public void addProperties(String props) {
          data.addProperty(props);
     }

     //return name, type and status of the managed entity
     public String toString() {
        return "[name=" + name + "] [type=" + data.type + "] [status= " + data.status + "]";
     }
}

public class DataObject 
{
        private String id = "";
        //Name of the Managed Entity (e.g. name of Datacenter ...)
        private String name =  "";
        private Properties data = new Properties();

        List<Node> children = new ArrayList<Node>();

        public DataObject() {

	}

	//Set name of the managed entity
        public void setName(String nodeName) {
           name = nodeName;
        }

        public void setId(String nodeId) {
           id = nodeId;
        }

	//Set type of the managed entity (e.g. VirtualMachine, HostSystem )
        public void setType(String nodeType) {
           data.type = nodeType;
        }

	//Set overall health status of the managed entity (red, yellow, green, gray)
        public void setStatus(String nodeStatus) {
           data.status = nodeStatus;
        }

	//Set any other ',' separated properties based on the managed entity type
        public void addProperties(String props) {
           data.addProperty(props);
        }


	public void addChild(Node childNode) {
           children.add(childNode);
	}

	//return name , type and status of the managed entity
        public String toString() {
           return "[name=" + name + "] [type=" + data.type + "] [status= " + data.status + "]";
        }
}

class Properties {

     //Type of the Managed Entity (e.g. VirtualMachine, HostSystem ...)
     String type;
     //Overall status of the Managed Entity (e.g. Red, Yellow, Green, Gray)
     String status;
    //Properties contain comma separated values [key=value1,value2;key2=value3,value4;....]
     String props = "";
     final static String PROP_DELIM = ";";

     public void addProperty(String prop) {
         props = props.concat(prop + PROP_DELIM);
     }
}
