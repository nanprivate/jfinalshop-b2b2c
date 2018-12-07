package com.jfinalshop.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseAdmin<M extends BaseAdmin<M>> extends Model<M> implements IBean {

	public void setId(java.lang.Long id) {
		set("id", id);
	}

	public java.lang.Long getId() {
		return getLong("id");
	}

	public void setCreatedDate(java.util.Date createdDate) {
		set("created_date", createdDate);
	}

	public java.util.Date getCreatedDate() {
		return get("created_date");
	}

	public void setLastModifiedDate(java.util.Date lastModifiedDate) {
		set("last_modified_date", lastModifiedDate);
	}

	public java.util.Date getLastModifiedDate() {
		return get("last_modified_date");
	}

	public void setVersion(java.lang.Long version) {
		set("version", version);
	}

	public java.lang.Long getVersion() {
		return getLong("version");
	}

	public void setIsEnabled(java.lang.Boolean isEnabled) {
		set("is_enabled", isEnabled);
	}

	public java.lang.Boolean getIsEnabled() {
		return get("is_enabled");
	}

	public void setIsLocked(java.lang.Boolean isLocked) {
		set("is_locked", isLocked);
	}

	public java.lang.Boolean getIsLocked() {
		return get("is_locked");
	}

	public void setLastLoginDate(java.util.Date lastLoginDate) {
		set("last_login_date", lastLoginDate);
	}

	public java.util.Date getLastLoginDate() {
		return get("last_login_date");
	}

	public void setLastLoginIp(java.lang.String lastLoginIp) {
		set("last_login_ip", lastLoginIp);
	}

	public java.lang.String getLastLoginIp() {
		return getStr("last_login_ip");
	}

	public void setLockDate(java.util.Date lockDate) {
		set("lock_date", lockDate);
	}

	public java.util.Date getLockDate() {
		return get("lock_date");
	}

	public void setDepartment(java.lang.String department) {
		set("department", department);
	}

	public java.lang.String getDepartment() {
		return getStr("department");
	}

	public void setEmail(java.lang.String email) {
		set("email", email);
	}

	public java.lang.String getEmail() {
		return getStr("email");
	}

	public void setHasher(java.lang.String hasher) {
		set("hasher", hasher);
	}

	public java.lang.String getHasher() {
		return getStr("hasher");
	}

	public void setSalt(java.lang.String salt) {
		set("salt", salt);
	}

	public java.lang.String getSalt() {
		return getStr("salt");
	}

	public void setPassword(java.lang.String password) {
		set("password", password);
	}

	public java.lang.String getPassword() {
		return getStr("password");
	}

	public void setName(java.lang.String name) {
		set("name", name);
	}

	public java.lang.String getName() {
		return getStr("name");
	}

	public void setUsername(java.lang.String username) {
		set("username", username);
	}

	public java.lang.String getUsername() {
		return getStr("username");
	}

}
