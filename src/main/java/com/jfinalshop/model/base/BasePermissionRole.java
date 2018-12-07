package com.jfinalshop.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BasePermissionRole<M extends BasePermissionRole<M>> extends Model<M> implements IBean {

	public void setPermissionsId(java.lang.Long permissionsId) {
		set("permissions_id", permissionsId);
	}

	public java.lang.Long getPermissionsId() {
		return getLong("permissions_id");
	}

	public void setRolesId(java.lang.Long rolesId) {
		set("roles_id", rolesId);
	}

	public java.lang.Long getRolesId() {
		return getLong("roles_id");
	}

}
