# Large files storage for eclipse-tractusx.github.io

To publish bigger files through GitHub pages or distribute them, GitHub suggests to use gits large file support: [about-large-files-on-github](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-large-files-on-github).

## Naming convention

allowed file names **`DATE_KIT_TITLE_VERSION (e.g., 230808_ECOPASS_VIDEO_v1)`**

- DATE: YYMMDD
- KIT / COMPONENT: ECOPASS, EDC, BPDM, PORTAL, ...
- TITLE: VIDEO, MANUAL, ...
- VERSION: v1, v2, ...

## How to use

Please read up on how to use `git lfs`. You can also follow the [guide](https://docs.github.com/en/repositories/working-with-files/managing-large-files/installing-git-large-file-storage) provided by GitHub.

## How to add files

To add files to this repository, you need to install git lfs first. Then you can add files to the repository like this:

```bash
# install git lfs
git lfs install
# add your desired files based on their extension eg. *.zip, this will update the .gitattributes file
git lfs track "*.zip"
# add the .gitattributes file and changed files to your branch
git add .gitattributes *.zip
# commit and push to a new branch
git commit -m "added extension for .zip files"
git push
# generate a PR to merge your branch into master
```

## How to link static files

To link this repository files you need to use the raw link to the file. You can get this link by clicking on the file in the repository and then clicking on the `Raw` button. This will open the file in a new tab, and you can copy the link from the address bar.
For our Docusaurus Page it is described in [Docusaurus documentation](https://docusaurus.io/docs/static-assets#referencing-your-static-asset), for Markdown you can use the [Markdown documentation](https://www.markdownguide.org/basic-syntax/#link-best-practices) and general documentation information from GitHub can be found [here](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#relative-links).
