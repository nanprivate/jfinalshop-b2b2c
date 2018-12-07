package com.jfinalshop.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseCouponCode<M extends BaseCouponCode<M>> extends Model<M> implements IBean {

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

	public void setCode(java.lang.String code) {
		set("code", code);
	}

	public java.lang.String getCode() {
		return getStr("code");
	}

	public void setIsUsed(java.lang.Boolean isUsed) {
		set("is_used", isUsed);
	}

	public java.lang.Boolean getIsUsed() {
		return get("is_used");
	}

	public void setUsedDate(java.util.Date usedDate) {
		set("used_date", usedDate);
	}

	public java.util.Date getUsedDate() {
		return get("used_date");
	}

	public void setCouponId(java.lang.Long couponId) {
		set("coupon_id", couponId);
	}

	public java.lang.Long getCouponId() {
		return getLong("coupon_id");
	}

	public void setMemberId(java.lang.Long memberId) {
		set("member_id", memberId);
	}

	public java.lang.Long getMemberId() {
		return getLong("member_id");
	}

}
