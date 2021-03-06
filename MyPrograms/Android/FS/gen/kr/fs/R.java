            return;
        }

        if (request.action === NavigationRequest.ActionReject) {
            console.debug('Opening: ' + url + ' in the browser window.')
            Qt.openUrlExternally(url)
        }
    }

    function createPopupWindow(request) {
        popupWebViewFactory.createObject(webview, { request: request, width: 500, height: 800 });
    }

    Component {
        id: popupWebViewFactory
        Window {
            id: popup
            property alias request: popupBrowser.request
            UbuntuWebView {
                id: popupBrowser
                anchors.fill: parent

                function navigationRequestedDelegate(request) {
                    var url = request.url.toString()

                    // If we are to browse in the popup to a place where we are not allows
                    if (request.disposition !== NavigationRequest.DispositionNewPopup &&
                            ! webview.shouldAllowNavigationTo(url)) {
                        Qt.openUrlExternally(url);
                        popup.close()
                        return;
                    }

                    // Fallback to regulat checks (there is a bit of overlap)
                    webview.navigationRequestedDelegate(request)
                }

                onNewTabRequested: {
                    webview.createPopupWindow(request)
                }
            }
            Component.onCompleted: popup.show()
        }
    }

    onNewTabRequested: {
        createPopupWindow(request)
    }

    preferences.localStorageEnabled: true

    // Small shim needed when running as a webapp to wire-up connections
    // with the webview (message received, etc…).
    // This is being called (and expected) internally by the webapps
    // component as a way to bind to a webview lookalike without
    // reaching out directly to its internals (see it as an interface).
    function getUnityWebappsProxies() {
        var eventHandlers = {
            onAppRaised: function () {
                if (webbrowserWindow) {
                    try {
                        webbrowserWindow.raise();
                    } catch (e) {
                        console.debug('Error while raising: ' + e);
                    }
                }
            }
        };
        return UnityWebAppsUtils.makeProxiesForWebViewBindee(webview, eventHandlers)
    }
}
                                                                                                                                                                                                                                                                                              