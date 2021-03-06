/*
 *   Copyright 2015 (C) Martin Klapetek <mklapetek@kde.org>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU Library General Public License as
 *   published by the Free Software Foundation; either version 2 or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU Library General Public License for more details
 *
 *   You should have received a copy of the GNU Library General Public
 *   License along with this program; if not, write to the
 *   Free Software Foundation, Inc.,
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

import QtQuick 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.2

ColumnLayout {
    id: basicInfoLayout
    property bool canContinue: true

    //FIXME at some point this should become a list of disabled services
    property alias contactsEnabled: contactsService.checked

    Label {
        text: i18n("Choose services to enable");
    }

    CheckBox {
        id: contactsService
        text: i18n("Contacts")
    }

    // Just an item padder
    Item {
        Layout.fillHeight: true
    }
}
