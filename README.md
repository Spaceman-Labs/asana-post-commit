README
======

A git post-commit script to comment on / close Asana tickets. Read the blog post about version one here: [http://www.ultrajoke.net/2013/01/integrating-asana-and-git/](http://www.ultrajoke.net/2013/01/integrating-asana-and-git/)

tl;dr:

### Magical setup:
`% cd workspace`

`% bash <(curl https://raw.githubusercontent.com/Spaceman-Labs/asana-post-commit/master/setup.sh)`

### Manual setup:
Copy the post-commit file to your repo's root `.git/hooks` directory. It's probably not a great idea to actually clone the repo into the internals of your repo. I don't know that it will break anything, but I don't guarantee it won't.

Then run the following commands:

`% git config --global user.asana-token "MY_ASANA_PERSONAL_ACCESS_TOKEN" (http://app.asana.com/-/account_api)`

`% git config --global user.display-branch-name-in-comment "true/false" # (This is config is optional, defaults to false)` 

Then chmod your hooks folder and post-commit hook file:
`% chmod 755 .git/hooks && chmod ogu+rx .git/hooks/post-commit`

Now in your commits, you can write messages like "Tweaked the widget; fixed #1, #2, and #3; references #4 and #5; oh yeah, and closes #6" and the right thing will happen.

Alternatively, if the branch name ends with '#' followed by the task id then a comment will also be added to the task. Example for branch name with task id 1: `myBranch#1`

LICENSE
-------

Copyright (C) 2013 by Spaceman Labs

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
