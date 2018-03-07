package com.zheli.kf4op.module;

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

public class CommEntityModuleImpl implements CommEntityModule {

  @SuppressWarnings("unchecked")
  @Override
  public String list(KfData data) {
    Map<String, Object> coreData = (Map<String, Object>) data.get(Config.core_data);
    int pageSize = coreData.get(Config.pageSize) == null ? Config.pageSizeDefault : (int) coreData.get(Config.pageSize);
    int currentPage = coreData.get(Config.currentPage) == null ? Config.currentPageDefault : (int) coreData
        .get(Config.currentPage);

    String service_uri = StringUtils.join(new Object[] { (String) data.get(Config.cake_uri), Config.cake_path_spilt,
        pageSize, Config.cake_path_spilt, currentPage });

    Client client = ClientBuilder.newClient().register(JacksonJsonProvider.class);
    WebTarget target = client.target(service_uri);
    Response response = target.request().get();
    String value = response.readEntity(String.class);
    response.close();
    return value;
  }

  @Override
  public String search(KfData data) {
    return null;
  }

  @Override
  public boolean add(KfData data) {
    String service_uri = StringUtils.join(new Object[] { (String) data.get(Config.cake_uri) });

    Client client = ClientBuilder.newClient().register(JacksonJsonProvider.class);
    WebTarget target = client.target(service_uri);
    Response response = target.request()
        .buildPost(Entity.entity(data.get(Config.core_data), MediaType.APPLICATION_JSON)).invoke();
    Boolean value = response.readEntity(Boolean.class);
    response.close();
    return value;
  }

  @SuppressWarnings("unchecked")
  @Override
  public boolean delete(KfData data) {
    Map<String, Object> coreData = (Map<String, Object>) data.get(Config.core_data);
    String service_uri = StringUtils.join(new Object[] { (String) data.get(Config.cake_uri), Config.cake_path_spilt,
        (String) coreData.get(JSTLField.comm_recordId) });

    Client client = ClientBuilder.newClient().register(JacksonJsonProvider.class);
    WebTarget target = client.target(service_uri);
    Response response = target.request().delete();
    Boolean value = response.readEntity(Boolean.class);
    response.close();
    return value;
  }

  @Override
  public boolean update(KfData data) {
    String service_uri = StringUtils.join(new Object[] { (String) data.get(Config.cake_uri) });

    Client client = ClientBuilder.newClient().register(JacksonJsonProvider.class);
    WebTarget target = client.target(service_uri);
    Response response = target.request()
        .buildPut(Entity.entity(data.get(Config.core_data), MediaType.APPLICATION_JSON)).invoke();
    Boolean value = response.readEntity(Boolean.class);
    response.close();
    return value;
  }

  @SuppressWarnings("unchecked")
  @Override
  public String find(KfData data) {
    String service_uri = StringUtils.join(new Object[] { (String) data.get(Config.cake_uri) });
    String hospitalId = (String) ((Map<String, Object>) data.get(Config.core_data)).get(JSTLField.comm_recordId);
    Client client = ClientBuilder.newClient().register(JacksonJsonProvider.class);
    WebTarget target = client.target(service_uri);
    Response response = target.request().buildPost(Entity.entity(hospitalId, MediaType.APPLICATION_JSON)).invoke();
    String value = response.readEntity(String.class);
    response.close();
    return value;
  }

}
