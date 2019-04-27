package com.padrao.spring.conversion;

import java.beans.PropertyEditorSupport;

import com.padrao.spring.entities.Role;
import com.padrao.spring.models.RoleModel;

public class RoleEditor extends PropertyEditorSupport {
	
	@Override
	public void setAsText(String id ) throws IllegalArgumentException {
		try {
			RoleModel roleModel = new RoleModel();
			this.setValue(roleModel.find(id));
		}catch (Exception e) {
			this.setValue(null);
		}
	}
	
	@Override
	public String getAsText() {
		Role role = (Role) getValue();
		return role.getId();
	}
}
