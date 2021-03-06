package com.jfinalshop.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseBusinessRole<M extends BaseBusinessRole<M>> extends Model<M> implements IBean {

	public void setBusinessId(java.lang.Long businessId) {
		set("business_id", businessId);
	}

	public java.lang.Long getBusinessId() {
		return getLong("business_id");
	}

	public void setRolesId(java.lang.Long rolesId) {
		set("roles_id", rolesId);
	}

	public java.lang.Long getRolesId() {
		return getLong("roles_id");
	}

}
