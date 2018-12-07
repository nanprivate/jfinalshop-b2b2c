package com.jfinalshop.model.base;

import com.jfinal.plugin.activerecord.Model;
import com.jfinal.plugin.activerecord.IBean;

/**
 * Generated by JFinal, do not modify this file.
 */
@SuppressWarnings("serial")
public abstract class BaseProductCategoryPromotion<M extends BaseProductCategoryPromotion<M>> extends Model<M> implements IBean {

	public void setProductCategoriesId(java.lang.Long productCategoriesId) {
		set("product_categories_id", productCategoriesId);
	}

	public java.lang.Long getProductCategoriesId() {
		return getLong("product_categories_id");
	}

	public void setPromotionsId(java.lang.Long promotionsId) {
		set("promotions_id", promotionsId);
	}

	public java.lang.Long getPromotionsId() {
		return getLong("promotions_id");
	}

}
