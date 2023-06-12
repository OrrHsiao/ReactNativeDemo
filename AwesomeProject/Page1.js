import React from 'react';

import {Button, StyleSheet, Text, View} from 'react-native';

export default class Page1 extends React.Component {

    constructor(props) {
        super(props);

        this.state = {};
    }

    /***  ·······        系统函数 start       ·······   *****/

    render() {
        return (
            <View style={styles.main}>


                <Text  style={{backgroundColor: 'powderblue'}}>--------- test 1 ---------</Text>
                <Text  style={{backgroundColor: 'powderblue'}}>--------- test 1 ---------</Text>
                <Text  style={{backgroundColor: 'powderblue'}}>--------- test 1 ---------</Text>
                <Text  style={{backgroundColor: 'powderblue'}}>--------- test 1 ---------</Text>
                <Text  style={{backgroundColor: 'powderblue'}}>--------- test 1 ---------</Text>
                <Text  style={{backgroundColor: 'powderblue'}}>--------- test 1 ---------</Text>
                <Text  style={{backgroundColor: 'powderblue'}}>--------- test 1 ---------</Text>

                 <Button  style={{ backgroundColor:'#ffffff',marginTop:200,justifyContent:'center',alignItems:'center'}}
                          title={'jump hello word'} onPress={() => this.props.navigation.push('App3')}/>

            </View>
        )
    }

    componentDidMount() {
    }

    componentWillUnmount() {
    }


    /***  ·······    系统函数 end      ·······   *****/


}

const styles = StyleSheet.create({
    demoBtnContainer: {
        flex: 1,
        backgroundColor: '#000000',
    },
    main: {
        flex: 1,
        backgroundColor: '#006000',
        height: "100%"
    }
});
