package com.jfinalshop.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseMessage<M extends BaseMessage<M>> extends Model<M> implements IBean {

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

	public void setContent(java.lang.String content) {
		set("content", content);
	}

	public java.lang.String getContent() {
		return getStr("content");
	}

	public void setIp(java.lang.String ip) {
		set("ip", ip);
	}

	public java.lang.String getIp() {
		return getStr("ip");
	}

	public void setIsDraft(java.lang.Boolean isDraft) {
		set("is_draft", isDraft);
	}

	public java.lang.Boolean getIsDraft() {
		return get("is_draft");
	}

	public void setReceiverDelete(java.lang.Boolean receiverDelete) {
		set("receiver_delete", receiverDelete);
	}

	public java.lang.Boolean getReceiverDelete() {
		return get("receiver_delete");
	}

	public void setReceiverRead(java.lang.Boolean receiverRead) {
		set("receiver_read", receiverRead);
	}

	public java.lang.Boolean getReceiverRead() {
		return get("receiver_read");
	}

	public void setSenderDelete(java.lang.Boolean senderDelete) {
		set("sender_delete", senderDelete);
	}

	public java.lang.Boolean getSenderDelete() {
		return get("sender_delete");
	}

	public void setSenderRead(java.lang.Boolean senderRead) {
		set("sender_read", senderRead);
	}

	public java.lang.Boolean getSenderRead() {
		return get("sender_read");
	}

	public void setTitle(java.lang.String title) {
		set("title", title);
	}

	public java.lang.String getTitle() {
		return getStr("title");
	}

	public void setForMessageId(java.lang.Long forMessageId) {
		set("for_message_id", forMessageId);
	}

	public java.lang.Long getForMessageId() {
		return getLong("for_message_id");
	}

	public void setReceiverId(java.lang.Long receiverId) {
		set("receiver_id", receiverId);
	}

	public java.lang.Long getReceiverId() {
		return getLong("receiver_id");
	}

	public void setSenderId(java.lang.Long senderId) {
		set("sender_id", senderId);
	}

	public java.lang.Long getSenderId() {
		return getLong("sender_id");
	}

}
