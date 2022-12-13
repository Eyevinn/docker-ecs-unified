# ECS-UNIFIED-ORIGIN

A wrapper container for running Unified Origin on ECS and that uses the ECS task role for remote access
to S3 bucket.

## Usage

Read credentials from ECS task role via credentials API.

```
docker run -d \
  -e USP_LICENSE_KEY=<LICENSE_KEY> \
  -e S3_REGION=eu-north-1 \
  -e REMOTE_STORAGE_URL=https://<bucket>.s3.eu-north-1.amazonaws.com/delivery/ \
  -p 8080:80 \
  eyevinntechnology/unifiedorigin-ecs
```

## Contributing

If you're interested in contributing to the project:

- We welcome all people who want to contribute in a healthy and constructive manner within our community. To help us create a safe and positive community experience for all, we require all participants to adhere to the [Code of Conduct](CODE_OF_CONDUCT.md).
- If you are looking to make a code change create a Pull Request with suggested changes.
- Develop and contribute with scheduling service plugins.
- Report, triage bugs or suggest enhancements.
- Help others by answering questions.

## License (Apache-2.0)

```
Copyright 2022 Eyevinn Technology AB

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

## Support

Join our [community on Slack](http://slack.streamingtech.se) where you can post any questions regarding any of our open source projects. Eyevinn's consulting business can also offer you:

- Further development of this component
- Customization and integration of this component into your platform
- Support and maintenance agreement

Contact [sales@eyevinn.se](mailto:sales@eyevinn.se) if you are interested.

## About Eyevinn Technology

[Eyevinn Technology](https://www.eyevinntechnology.se) is an independent consultant firm specialized in video and streaming. Independent in a way that we are not commercially tied to any platform or technology vendor. As our way to innovate and push the industry forward we develop proof-of-concepts and tools. The things we learn and the code we write we share with the industry in [blogs](https://dev.to/video) and by open sourcing the code we have written.

Want to know more about Eyevinn and how it is to work here. Contact us at work@eyevinn.se!
