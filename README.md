# NetWorkedData Installation

This project test installation success after all update of repositories

-  Go to your unity project's directory

```shell
cd <your_project>
```

- add extension to ignore

```shell
echo '' >> .gitignore
echo '# Ignore NetWorkedData files' >> .gitignore
echo '*.prp' >> .gitignore
echo '*/*.prp' >> .gitignore
echo '*/Assets/NetWorkedData_Private/*' >> .gitignore
echo '*/Assets/NetWorkedData_Compile/*' >> .gitignore
git add --all
git commit -m "[ADD] extensions and folders in .gitignore"
```

- checkout submodule NetWorkedData engine

```shell
cd <your_project_path>/Assets
git submodule add --force git@github.com:NetWorkedData/NetWorketData.git
```

- checkout submodule NetWorkedData database engine

```shell
cd <your_project_path>/Assets
git submodule add git@github.com:NetWorkedData/NetWorkedData_Database.git
```