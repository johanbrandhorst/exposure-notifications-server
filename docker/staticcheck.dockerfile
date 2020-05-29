# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# staticcheck containerizes the staticcheck linter

FROM golang:1.14 AS builder

ENV STATICCHECK_VERSION "2020.1.4"
ENV GO111MODULE=on

RUN go get honnef.co/go/tools/cmd/staticcheck@"${STATICCHECK_VERSION}"

ENTRYPOINT ["/go/bin/staticcheck"]