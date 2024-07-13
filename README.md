<!-- Improved compatibility of back to top link: See: https://github.com/othneildrew/Best-README-Template/pull/73 -->

<a id="readme-top"></a>

<!--
*** Thanks for checking out the Best-README-Template. If you have a suggestion
*** that would make this better, please fork the repo and create a pull request
*** or simply open an issue with the tag "enhancement".
*** Don't forget to give the project a star!
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/NinoHelfenstein/m122-gitgpt">
    <img src="images/logo.png" alt="Logo" width="80" height="80">
  </a>

<h3 align="center">GitGPT</h3>

  <p align="center">
    A bash script which generates commit messages with the openai api.
    <br />
    <a href="https://github.com/NinoHelfenstein/m122-gitgpt">View Demo</a>
    ·
    <a href="https://github.com/NinoHelfenstein/m122-gitgpt/issues/new?labels=bug&template=bug-report---.md">Report Bug</a>
    ·
    <a href="https://github.com/NinoHelfenstein/m122-gitgpt/issues/new?labels=enhancement&template=feature-request---.md">Request Feature</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->

## About The Project

This project is about a bash script to help with git. The initial idea for this project came up because we had to do a bash script project for school. We then came up with this idea of a script generating commit messages and pull request. The whole generating process is made by Openai's GPT3.5 Turbo.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

- [![Bash][Bash]][Bash-url]
- [![OpenAi][OpenAi]][OpenAi-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## Getting Started

### Installation

1. Get a your API Key at [https://platform.openai.com/settings/profile?tab=api-keys](https://platform.openai.com/settings/profile?tab=api-keys)
2. Save the script in your bin folder
   ```sh
   curl -o $HOME/bin/gitgpt/gitgpt https://raw.githubusercontent.com/ninohelfenstein/m122-gitgpt/main/gitgpt --create-dirs
   ```
3. Set execute permission
   ```sh
   chmod +x $HOME/bin/gitgpt/gitgpt
   ```
4. Add the script to your path
   ```sh
   echo "export PATH="$HOME/bin/gitgpt:$PATH" >> $HOME/.bashrc
   ```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->

## Usage

gitgpt commit - Generates a commit message for your changes

```sh
gitgpt commit
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ROADMAP -->

## Roadmap

- [x] Commit Message Generator
  - [x] Only generate messages for staged files
- [ ] Pull Request Generator

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/NinoHelfenstein/m122-gitgpt.svg?style=for-the-badge
[contributors-url]: https://github.com/NinoHelfenstein/m122-gitgpt/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/NinoHelfenstein/m122-gitgpt.svg?style=for-the-badge
[forks-url]: https://github.com/NinoHelfenstein/m122-gitgpt/network/members
[stars-shield]: https://img.shields.io/github/stars/NinoHelfenstein/m122-gitgpt.svg?style=for-the-badge
[stars-url]: https://github.com/NinoHelfenstein/m122-gitgpt/stargazers
[issues-shield]: https://img.shields.io/github/issues/NinoHelfenstein/m122-gitgpt.svg?style=for-the-badge
[issues-url]: https://github.com/NinoHelfenstein/m122-gitgpt/issues
[Bash]: https://img.shields.io/badge/gnubash-4EAA25?style=for-the-badge&logo=gnubash&logoColor=white
[Bash-url]: https://www.gnu.org/software/bash/
[OpenAi]: https://img.shields.io/badge/openai-412991?style=for-the-badge&logo=openai&logoColor=white
[OpenAi-url]: https:openai.com
