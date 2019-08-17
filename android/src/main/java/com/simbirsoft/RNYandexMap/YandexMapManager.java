package com.simbirsoft.RNYandexMap;

import android.view.ViewGroup;
import android.widget.LinearLayout;

import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;

import com.yandex.mapkit.MapKitFactory;
import com.yandex.mapkit.mapview.MapView;

public class YandexMapManager extends ViewGroupManager<ViewGroup> {
    public static final String REACT_CLASS = "YandexMap";

    private final String MAPKIT_API_KEY = "72c56920-584b-41c2-ad19-0b1b807847ce";

    private MapView mapView;

    @Override
    public String getName() {
        return REACT_CLASS;
    }
    @Override
    public ViewGroup createViewInstance(ThemedReactContext c) {
        MapKitFactory.setApiKey(MAPKIT_API_KEY);
        MapKitFactory.initialize(c);
        mapView = new MapView(c);

        LinearLayout wrapper = new LinearLayout(c);
        wrapper.addView(mapView);
        wrapper.setLayoutParams(new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT, 1f));

        return wrapper;
    }

}