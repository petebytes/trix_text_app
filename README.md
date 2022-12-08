# README

Trix repo reproduces an issue where Trix strips all tags except H1

The issue only occurs on a full page reload or using a link without Turbo

https://github.com/lazaronixon/trix-extensions

To reproduce the issue:
1. Create a New Post
2. Add several lines of text
3. Add headings to each of the lines
4. Save the Post
5. Edit with "Edit (turbo works)"
  This should work without issue
6. Edit with "Edit (NO Turbo) This does not work, it only retains H1

After step 5, if you refresh the page it will also remove the tags
