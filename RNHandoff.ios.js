import { PureComponent } from 'react';
import { NativeModules } from 'react-native'

const { RNHandoff } = NativeModules;

let id = 0;

export default class Handoff extends PureComponent {
    id = -1;

    componentDidMount() {
        const { type, title, userInfo } = this.props;

        this.id = ++id;

        RNHandoff.becomeCurrent(this.id, type, title, userInfo);
    }

    componentWillUnmount() {
        if (this.id !== -1) {
            RNHandoff.invalidate(this.id);
        }
    }

    render() {
        return null;
    }
}
