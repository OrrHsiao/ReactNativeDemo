import React from 'react';
import {UIManager} from "react-native";

export default class IMINativeComponent extends React.Component {
    constructor(props) {
        super(props);
        console.log('constructor IMINativeComponent');
    }

    getViewManagerConfigCommands() {
        return UIManager.getViewManagerConfig(this.getNativeComponentName()).Commands;
    }

    getNativeComponentName() {
        return '';
    }

}
