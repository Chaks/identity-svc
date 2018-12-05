/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.demos.identity.boundary;

import javax.enterprise.context.RequestScoped;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import org.eclipse.microprofile.opentracing.Traced;

/**
 *
 * @author chaks
 */
@RequestScoped
@Path("/v1")
public class IdentityResource {

  @GET
  @Path("/ping")
  @Produces(MediaType.TEXT_PLAIN)
  @Traced
  public String ping() {
    return "2 packets transmitted, 2 received, 0% packet loss, time 1001ms";
  }
}
