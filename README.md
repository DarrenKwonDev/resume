# resume

~~written in latex and exported to pdf.~~

written in typst, better and easier than latex.

## clean up your git log

```bash
git checkout master
git reset $(git commit-tree HEAD^{tree} -m ".")
git push origin master --force
```
