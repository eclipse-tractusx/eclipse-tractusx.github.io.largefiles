# Large files storage for eclipse-tractusx.github.io

To publish bigger files through GitHub pages or distribute them, GitHub suggests to use gits large file support: [about-large-files-on-github](https://docs.github.com/en/repositories/working-with-files/managing-large-files/about-large-files-on-github).

## Naming convention

allowed file names **`KITorCOMPONENT_TITLE_VERSION (e.g., ECOPASS_VIDEO_v1)`**

- KIT / COMPONENT: ECOPASS, EDC, BPDM, PORTAL, ...
- TITLE: VIDEO, MANUAL, ...
- VERSION: v1, v2, ...

## How to use

Please read up on how to use `git lfs`. You can also follow the [guide](https://docs.github.com/en/repositories/working-with-files/managing-large-files/installing-git-large-file-storage) provided by GitHub and the git-lfs [installation guide](https://github.com/git-lfs/git-lfs/wiki/Installation).

## How to add files

To add files to this repository, you need to install git lfs first see [How-to-use](#how-to-use). Then you can add files to the repository like this:

```bash
# add your desired files based on their extension eg. *.zip, this will update the .gitattributes file
git lfs track "*.zip"
# add the .gitattributes file and changed files to your branch
git add .gitattributes "*.zip"
# commit and push to your desired branch
git commit -m "added extension for .zip files"
# push lfs files to the lfs server to your desired branch, replace BRANCHNAME with your branch name
git lfs push --all origin BRANCHNAME
git push
# now you can generate a PR to merge your branch into main
```

## How to link static files

To link this repository files you need to use the raw link to the file. You can get this link by clicking on the file in the repository and then clicking on the `Raw` button. This will open the file in a new tab, and you can copy the link from the address bar.
For our Docusaurus Page it is described in [Docusaurus documentation](https://docusaurus.io/docs/static-assets#referencing-your-static-asset), for Markdown you can use the [Markdown documentation](https://www.markdownguide.org/basic-syntax/#link-best-practices) and general documentation information from GitHub can be found [here](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#relative-links).
