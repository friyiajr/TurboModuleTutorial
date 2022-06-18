package com.turbomodulesampleproject;

import androidx.annotation.NonNull;

import com.facebook.fbreact.specs.NativeSampleModuleSpec;
import com.facebook.react.bridge.ReactApplicationContext;

public class NativeSampleModuleImpl extends NativeSampleModuleSpec {

    public static String NAME = "NativeSampleModule";

    public NativeSampleModuleImpl(ReactApplicationContext reactContext) {
        super(reactContext);
    }

    @Override
    public String getHelloWorld(String first, String second) {
        return "HelloWorld: " + first + " " + second;
    }

    @NonNull
    @Override
    public String getName() {
        return NAME;
    }
}
