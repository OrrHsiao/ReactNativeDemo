import {requireNativeComponent} from 'react-native';
import React from 'react';
import IMINativeComponent from "./IMINativeComponent";

const RTCIMIImageView = requireNativeComponent('RTCIMIImageView', IMINativeImageView);

/**
 * 针对创米云存储需要进行解密和获取的特殊图片格式进行封装获取
 */
export default class IMINativeImageView extends IMINativeComponent {



    getNativeComponentName() {
        return 'RTCIMIImageView';
    }

    render() {
        return (
            <RTCIMIImageView
                src={this.props.src}
                onLoad={this.props.onLoad}
            />
        )
    }
}