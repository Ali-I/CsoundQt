/*
	Copyright (C) 2010 Andres Cabrera
	mantaraya36@gmail.com

	This file is part of CsoundQt.

	CsoundQt is free software; you can redistribute it
	and/or modify it under the terms of the GNU Lesser General Public
	License as published by the Free Software Foundation; either
	version 2.1 of the License, or (at your option) any later version.

	CsoundQt is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU Lesser General Public License for more details.

	You should have received a copy of the GNU Lesser General Public
	License along with Csound; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA
	02111-1307 USA
*/

#ifndef APPDETAILSPAGE_H
#define APPDETAILSPAGE_H

#include <QWizardPage>

namespace Ui {
class AppDetailsPage;
}

class AppDetailsPage : public QWizardPage {
	Q_OBJECT
public:
	AppDetailsPage(QWidget *parent = 0);
	~AppDetailsPage();

protected:
	void changeEvent(QEvent *e);

private:
	Ui::AppDetailsPage *ui;

private slots:
	void browseTarget();
	void browseLibrary();
	void browseOpcodes();
	void browseQtLibs();
	void browseSdk();
	void platformChanged(int index);
	void opcodeDirChanged();
	void libDirChanged();

signals:
	void platformChangedSignal();
	void opcodeDirChangedSignal();
	void libDirChangedSignal();
};

#endif // APPDETAILSPAGE_H
