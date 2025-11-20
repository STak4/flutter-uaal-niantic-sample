import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("prod") {
            dimension = "flavor-type"
            applicationId = "com.stak4.flutteruaalnianticsample.prod"
            resValue(type = "string", name = "app_name", value = "Flutter UaaL with Niantic")
        }
        create("stg") {
            dimension = "flavor-type"
            applicationId = "com.stak4.flutteruaalnianticsample.stg"
            resValue(type = "string", name = "app_name", value = "Flutter UaaL with Niantic Stg")
        }
        create("dev") {
            dimension = "flavor-type"
            applicationId = "com.stak4.flutteruaalnianticsample.dev"
            resValue(type = "string", name = "app_name", value = "Flutter UaaL with Niantic Dev")
        }
    }
}