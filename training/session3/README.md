# Solomon Islands Training

## Session 3
Samples and examples for an introduction to development training.  
This session is on Markup and Bootstrap 5 HTML.  We have already briefly introduced Markdown, but we will be going just a little further with it today.  Then we will move onto doing some introductory web pages using the Bootstrap style library. This is what we will be using in our group project "SOLIC Anywhere"[^1] so getting familiar with it is an important step.  

Admin Points
- This session is a markdown file.   This is so you can revise anytime you like but also highlight any issue you would like to cover again. We are also interested if it helps better pace the remote virtual training.
- This markdown also demonstrates documenting (ie the lesson plan)
- It might seem like we are not doing much coding at this point, but note that everything we are introducing here will be used in Phase 2 of the Noro ePort Project and "SOLIC Anywhere". Github is the storage and review mechanism. Markdown will be the format for technical documentation, and Bootstrap HTML will be utilised to enhance the appearance of the "SOLIC Anywhere" project with minimal effort. 
- At this stage, we can use notepad or other basic text editor to show the level of detail. 
- Fridays at 2pm?


### Review
- Github for code management
  - [Getting Started Guide](https://docs.github.com/en/get-started) 
  - Create, 
  - Pull, commit, Push
  - Branches, Merge
  - .gitignore
  - Issues, tagging/closing issues to commit
- Markdown for documentation inside Github 
  - [Markup Reference](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)


### MARKUP

Today I really just want to get everyone to do a practical exercise as revision.   In your directory create a market.md file.  Put in a major heading of "Market Shopping" and under a smaller heading of saturday's date list 5 items that you could go to the market for. Then commit your changes as <strong>\*your name\*</strong> market items.  

Once some else has committed their market list, edit your market.md file to include a link to their market list.  Commit your changes as <strong>\*your name\*</strong> market linkage.   Make sure your link works by browsing online.

### Boostrap

Developing for the WEB requires understanding many things, one of the base items is HTML. This comes with practice and exposure. When starting with HTML there are a few options about where to start.

* basic - good as minimises fluff, can look plain examples [W3SCHOOLS](https://www.w3schools.com/tags/tag_li.asp)
* template - better looking, but can be confusing. examples [HTML5UP](https://html5up.net/)
* toolkit - a compromise between, examples [Bootstrap](https://getbootstrap.com/)

We will be using the boostrap toolkit in the project (FFA and SPC utilise).  Bootstrap [website](https://getbootstrap.com/) and preview the examples pages.  Google Search  Boostrap how to demonstrate wide array of resources.   Highlight it is not the only HTML framework, but we have to start somewhere. 

In your directory, create a folder called website1. 
We are going to follow the ["Quick Start"](https://getbootstrap.com/docs/5.2/getting-started/introduction/#quick-start) in bootstrap documentation to create an index.html file.  Follow the three steps.  Just cut and paste into notepad and save the file.  Open in a browser, still farly plain that is ok.

Commit your code.  Checkout someone elses, review what is happening in the repo.....   Are there any differences?

OK let's make it interesting. An easy way is to borrow from the docs and examples. Let's go to the [heroes](https://getbootstrap.com/docs/5.2/examples/heroes/) example and pick one of the six hero types. Use it to update your <strong><em>index.html</em></strong> file. Customise your hero text for "SOLIC Anywhere". Demo correcting URL for images.

Commit your code. Review what is happening in the repository.

Demonstrate browser resizing.  
Demonstrate the inspect option 
- window sizing.
- inspecting elements.
- console


Next, let's add a section to practice that again. Let's go to the [feature](https://getbootstrap.com/docs/5.2/examples/features/) examples and select an example of the features, and add below our hero. Demo correcting inline SVG images.

Next, let's add some bells and whistles. Let's go to the [modal](https://getbootstrap.com/docs/5.2/components/modal/) section of the documentation, and try to add a modal. Start by just copying the example into the page, and make sure that it works. Now, update the primary button in your hero to open the dialog and remove the original button that opened the dialog. After that, try changing the colour to something you prefer.

Next, more bells and whistles. Tooltips and Popups. Add a tooltip and a popup to the page as well.Demonstrate adding a script tag to the bottom to include the initialisation code.

Demonstrate <em>console.log</em> and adding an error on the console...   

### Next Session Options
- Code Editors - What Visual Studio brings.   More Bootstrap HTML and Github.
- Starting Docker (will be a long one)

[^1]: I am really open to what to call it, and welcome suggestions. I am not very imaginative.
