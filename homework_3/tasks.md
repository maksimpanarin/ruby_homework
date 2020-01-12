1) Create new project name: ruby-practice; Visibility level: private; Initialize with README: false
2) Setup SSH key to local ${user.home}/.ssh directory (let it be ED25519 without passphrase)
3) Add public SSH to GitLab
4) Invite access to your repository for my account nikita.limarchuk@gmail.com (as Developer)

Working with Git bash:
5) Clone project to your workstation using git-protocol with ssh
6) Check the global user settings, if something is wrong - redefine them
8) Create new branches master_rebase, master_merge, primary, secondary
7) Checkout to primary
8) Create a .gitignore file and add any folder/file masks that you want to exclude (in fact, this is not a maven or gradle project)
9) Create a README.me file with come body (here and for similar steps you can choose any text editor)
10) Create at least one file and one folder that might be ignored by mask
11) Commit all changes (one commit per each file, your commit message should have a concise and clear meaning)
12) Checkout to secondary
13) Find .gitignore commit from primary branch and apply it to secondary
15) Create another file here and commit it too
14) Merge primary into master_merge
15) Merge secondary into master_merge
16) Rebase secondary onto master_rebase
17) Rebase primary onto master_rebase (with squash commits - let it be the last one)
18) Resolve all conflicts if necessary*
19) Checkout to master_merge
20) And create new branch tertiary from it
21) Delete last 2 commits (use --hard option)
22) Go back to master_merge
23) And rename it to develop
24) Push all local branches to remote 
25) Do 'git reflog show --all' command and save output to git-reflog.txt and attach it to your LMS-sys homework
26) Visualize graph of git branches and commits in git bash or IDE console=)

On GitLab:
27) Create MR (merge request) from develop branch to master, me as approver, delete source branch after merge option: false