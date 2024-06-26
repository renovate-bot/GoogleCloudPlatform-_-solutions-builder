/**
 * Copyright 2023 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

variable "project_id" {
  type        = string
  description = "project ID"
}

variable "firestore_region" {
  type        = string
  description = "Firestore Region - must be app_engine region"
  # options for firestore: https://cloud.google.com/appengine/docs/locations
  # {{region}} and europe-west1 must be us-central and europe-west for legacy reasons
  default = "us-central"
}

variable "storage_multiregion" {
  type    = string
  default = "us"
}

variable "firebase_init" {
  type        = bool
  description = "Whether to initialize Firebase/Firestore."
  default     = false
}
