# DXP Cloud SE Demo Starter Kit

## How to Use

After cloning your DXP Cloud git repo locally, run the following command from the project directory:

```
git remote add starter-pack git@github.com:lfrsales/lcp-starter-kit.git \
	&& git fetch starter-pack master \
	&& git cherry-pick 9b10dda^..28dde93 \
	&& git push origin master
```

These commands will add this repository as a remote for your local git repo. It will then fetch the latest changes to this repository and cherry pick the commits listed. Finally it will push the changes to your DXP Cloud repo. This will trigger a Jenkins job, which upon completion will allow you to deploy this build to any of your DXP Cloud environments. You will then be set up with many extra demo modules to help you build a demo more efficiently.