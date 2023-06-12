import React from 'react';
import {requireNativeComponent, View} from "react-native";

const RTCILImageView = requireNativeComponent('RTCIMIImageView');


/**
 *   图片加载 功能如下：
 *
 *    - 默认占位图片
 *    --待完善---
 */
class IMIImageView extends React.PureComponent {

    static propTypes = {

    };

    constructor(props) {
        super(props);

    }

    render() {
        return (
            <View style={ {backgroundColor:'red'}}>

                <RTCILImageView/>

            </View>
        );
    }

}

export default IMIImageView;
