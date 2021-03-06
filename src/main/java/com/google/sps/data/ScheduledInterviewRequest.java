// Copyright 2019 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package com.google.sps.data;

/** Represents the data sent from a get request to the ScheduledInterview Servlet. */
public class ScheduledInterviewRequest {
  private long id;
  private String dateString;
  private String interviewer;
  private String interviewee;
  private String role;
  private boolean hasStarted;
  private String meetLink;
  private String position;
  private String shadow;

  public ScheduledInterviewRequest(
      long id,
      String dateString,
      String interviewer,
      String interviewee,
      String role,
      boolean hasStarted,
      String meetLink,
      String position,
      String shadow) {
    this.id = id;
    this.dateString = dateString;
    this.interviewer = interviewer;
    this.interviewee = interviewee;
    this.role = role;
    this.hasStarted = hasStarted;
    this.meetLink = meetLink;
    this.position = position;
    this.shadow = shadow;
  }

  public long getId() {
    return id;
  }

  public String getDateString() {
    return dateString;
  }

  public String getInterviewer() {
    return interviewer;
  }

  public String getInterviewee() {
    return interviewee;
  }

  public String getRole() {
    return role;
  }

  public boolean getHasStarted() {
    return hasStarted;
  }

  public String getMeetLink() {
    return meetLink;
  }

  public String getPosition() {
    return position;
  }

  public String getShadow() {
    return shadow;
  }

  public boolean equals(Object o) {
    if (o == this) {
      return true;
    }
    if (o instanceof ScheduledInterviewRequest) {
      ScheduledInterviewRequest that = (ScheduledInterviewRequest) o;
      return this.getId() == that.getId()
          && this.getDateString().equals(that.getDateString())
          && this.getInterviewer().equals(that.getInterviewer())
          && this.getInterviewee().equals(that.getInterviewee())
          && this.getRole().equals(that.getRole())
          && this.getHasStarted() == that.getHasStarted()
          && this.getMeetLink().equals(that.getMeetLink())
          && this.getPosition().equals(that.getPosition())
          && this.getShadow().equals(that.getShadow());
    }
    return false;
  }

  public String toString() {
    return String.format(
        "id:%s, dateString:%s, interviewer:%s, interviewee:%s, role:%s, hasStarted:%s, meetLink:%s, position:%s, shadow:%s",
        id, dateString, interviewer, interviewee, role, hasStarted, meetLink, position, shadow);
  }
}
