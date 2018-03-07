package com.zheli.kf4op.module;

import java.util.HashMap;
import java.util.Map;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

import org.apache.commons.lang.StringUtils;

import com.fasterxml.jackson.jaxrs.json.JacksonJsonProvider;
import com.zheli.kf4op.util.Config;
import com.zheli.kf4op.util.JSTLField;

public class UserModuleImpl implements UserModule {

  @SuppressWarnings("unchecked")
  @Override
  public boolean login(KfData data) {
    String service_uri = StringUtils.join(new Object[] { (String) data.get(Config.cake_uri),
        Config.cake_account_exist_uri });

    Client client = ClientBuilder.newClient().register(JacksonJsonProvider.class);
    WebTarget target = client.target(service_uri);
    Response response = target
        .request()
        .buildPost(
            Entity.entity(accountFromKfData((Map<String, Object>) data.get(Config.core_data)),
                MediaType.APPLICATION_JSON)).invoke();
    Boolean value = response.readEntity(Boolean.class);
    response.close();
    return value;
  }

  private Map<String, String> accountFromKfData(Map<String, Object> data) {
    Map<String, String> submap = new HashMap<>();
    submap.put(JSTLField.accountId, (String) data.get(JSTLField.accountId));
    submap.put(JSTLField.type, (String) data.get(JSTLField.type));
    submap.put(JSTLField.password, (String) data.get(JSTLField.password));

    return submap;
  }

  @Override
  public String getUserNameByAccountId(String accountId) {
    // TODO Auto-generated method stub
    return null;
  }

}
