# Lesson 1 Notes

## Download assets
1. First, you will need to go to the [figma](https://www.figma.com/file/B7teCnqt3GHEqau2v4wM3Q/Taskly-Sample-Note-Flutter-Learning-Project?node-id=5%3A157]).
2. Create a folder name in the root directory called `assets`. Under that, create two more folders: `icons` and `images`. 
3. Select the welcome image (phone with pencil on the notework). On the right hand side, under "Export", and then click Export to export it. 
+ Save this asset under `assets/images/welcome_image.jpg`
1. Do the same for the "Blue Notebook Icon". For icons **MAKE SURE TO EXPORT AS PNG FOR TRANSPARENCY PURPOSES**
+ Save this asset under `assets/icons/ic_notebook.png`

## Add Your Assets to PubSpec.yaml
1. You will need to add the asset to pubspec.yaml so that it can be loaded correctly when Flutter Starts.
* An important note to consider is that when you add a new asset, you will need to Re-deploy your app again as a
hot reload will not pick up new assets that were not included in pubspec.yaml.
2. In pubspec.yaml, under `flutter`, uncomment the `assets` and add the two asset items. It should look like the following:
    ```
    assets:
     - images/welcome_taskly_image.jpg
     - icons/ic_notebook.jpg
    ```

 ## Building the Welcome Page
 1. First, we know that we both have a common TransparentAppBarPage that is used by both pages. Pay attention that we created a component called TransparentAppBarPage, which includes a Page Title and also makes the App Bar Transparent. In addition, we also make sure to pass in a body (which is the components laying the rest of the screen as a child).    
 2. Please take a look at the welcome_screen and the sign_in_screen. There are attached comments that are attached with the page that should explain each and every step. Please ask any questions or ping me if you need further follow-up.
