/*
 * Copyright 2014 Canonical Ltd.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; version 3.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import QtQuick 2.3
import Ubuntu.Components 1.1 as Components
import Ubuntu.Settings.Components 0.1

Components.CheckBox {
    id: root
    property alias dataTarget: signalBinder.serverTarget
    property alias dataProperty: signalBinder.serverProperty
    property bool bidirectional: false

    SignalBinder {
        id: signalBinder

        clientTarget: root
        clientProperty: "checked"
        bidirectional: false
    }

    onTriggered: {
        if (bidirectional) signalBinder.updateServerValue();
    }
}
