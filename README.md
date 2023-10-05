# Scalewill Demo
 
## Assignment
1. Choose any architecture you feel comfortable with, but assume the app will grow in size and complexity (features) over time.
2. Use either UIKit or SwiftUI. There are no Deployment Target constraints.
3. Using base internationalization, the app will support English language, and another language of developer's choice.
4. The app name is "Demo".
5. The app theme color is RGB(77, 116, 217).
6. There should be a launch screen displaying the app name in white, against a solid background of the theme color.
7. The 'home' screen should display a table view embedded in a navigation view. The navigation title should be the app name. The navigation bar should be white, with the control tint color using the app theme color.
8. The data displayed on the table will eventually be retrieved from a web service, but for the time being you will mock that and put the static, dummy data provided in point #12 behind a mock (view model, 9. data provider, etc.)
10. The table view should display the outline of each item: name and price. Choose the format and layout freely.
11. On tapping each table cell, the navigation should push a "detail screen" for the selected item, with the item name as the navigation title. The item price should be displayed under a label titled "price" (12pt), in large characters (24pt) near the center of the screen, and the keywords displayed underneath in some suitable format, under a "keywords" heading. All unspecified layout and design details are left to the developer's choice.
13. Although the data is a dummy immediately available on the client for now, eventually it will be retrieved asynchronously, so implement the data flow around that assumption. By the time the table is displayed, all the data is assumed downloaded, but between launch and initial display of the table, there might be some lengthy netwroking involved.

## Extra comments
1. The uses a third party font (Onest).
2. The app constants class has some static values that alter the app's behaviour. The launchDelayInNanoseconds set's delay for navigating between launch screen and home screen. The networkRequestDelayInNanoseconds simulates a real network request, that can have different speeds based on network / cellular connection.
3. The DataModel replicates the model that we get from the backend, however it also has an "id" property to conform to identifiable. In future, decoding data will be easy since the data model is already Decodable.
4. The data may be "fetched" before or after the home screen is presented (see point 2). In case the data is not yet fetched, the home screen is showing a progress view. When the data is finally fetched, the home screen is refreshed and the data is presented.
5. During development, I focused on utilizing Apple's latest technologies like: SwiftUI, Combine, Structured Concurrency (async await). Older frameworks like UIKit or GCD (Grand Central Dispatch) were not used **purposefully**.

## Demo 
| iPhone 15 Pro |
| -------- |
| <video src="https://github.com/maksim-mitrofanov/Scalewill-Demo/assets/87092187/fea4bdf7-38fe-4657-9173-50137e956d58"> |






