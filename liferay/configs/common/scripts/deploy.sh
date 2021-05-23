TMPDIR=/tmp/deploy
DEPLOYDIR=/opt/liferay/deploy

mkdir -p $TMPDIR

### Add Modules to be Deployed Here: ###

modules=(
	"https://github.com/ethib137/loan-calculator/releases/latest/download/loan-calculator-1.0.0.jar"
	"https://github.com/jverweijL/Markdown/releases/latest/download/com.liferay.demo.markdown.api-1.0.0.jar"
	"https://github.com/jverweijL/Markdown/releases/latest/download/com.liferay.demo.markdown.service-1.0.0.jar"
	"https://github.com/jverweijL/Markdown/releases/latest/download/markdowntemplatecontextcontributor-1.0.0.jar"
	"https://github.com/jverweijL/QRgenerator/releases/latest/download/com.liferay.demo.qr.qrcode-1.0.0.jar"
	"https://github.com/jverweijL/UserDocumentUploadPortlet/releases/latest/download/userdocumentupload-1.0.0.jar"
	"https://github.com/jverweijL/UserRatedItems/releases/download/v0.0.1/UserRatedAssetsInfoListProvider-1.0.0.jar"
	"https://github.com/jverweijL/WeatherContextContributor/releases/latest/download/weathercontextcontributor-1.0.0.jar"
	"https://github.com/jverweijL/custom-rest-api/releases/latest/download/custom.rest.api-1.0.0.jar"
	"https://github.com/jverweijL/dbwidget/releases/latest/download/com.liferay.demo.db.api-1.0.0.jar"
	"https://github.com/jverweijL/dbwidget/releases/latest/download/com.liferay.demo.db.service-1.0.0.jar"
	"https://github.com/jverweijL/dbwidget/releases/latest/download/com.liferay.demo.db.viewer.web-1.0.0.jar"
	"https://github.com/jverweijL/defaultLP/releases/latest/download/com.liferay.demo.portal.action-1.0.0.jar"
	"https://github.com/jverweijL/mondriaan/releases/latest/download/com.liferay.demo.mondriaan.portlet-1.0.0.jar"
	"https://github.com/jverweijL/notifications-workflow-wrapper/releases/latest/download/notifications.wrapper-1.0.0.jar"
	"https://github.com/jverweijL/spaceship-react/releases/latest/download/spaceship-0.1.0.jar"
	"https://github.com/lfrsales/73-formed-theme/releases/latest/download/73-formed-theme.war"
	"https://github.com/lfrsales/api-gui/releases/latest/download/api.gui-1.0.0.jar"
	"https://github.com/lfrsales/article-service-template-context-contributor/releases/latest/download/com.liferay.demo.asset.article.service.template.context.contributor-1.0.0.jar"
	"https://github.com/lfrsales/custom-liferay-ddm-form-fields/releases/latest/download/com.liferay.dynamic.data.mapping.form.field.type.internal.character.limited.text-1.0.0.jar"
	"https://github.com/lfrsales/custom-liferay-ddm-form-fields/releases/latest/download/com.liferay.dynamic.data.mapping.form.field.type.internal.userdata.field-1.0.0.jar"
	"https://github.com/lfrsales/demo-fragment-collections/releases/latest/download/billboard.theme.contributor.jar"
	"https://github.com/lfrsales/demo-fragment-collections/releases/latest/download/com.liferay.fragment.collection.contributor.billboard.jar"
	"https://github.com/lfrsales/demo-fragment-collections/releases/latest/download/com.liferay.fragment.collection.contributor.formed.components.jar"
	"https://github.com/lfrsales/demo-fragment-collections/releases/latest/download/com.liferay.fragment.collection.contributor.formed.content.display.jar"
	"https://github.com/lfrsales/demo-fragment-collections/releases/latest/download/com.liferay.fragment.collection.contributor.header.components.jar"
	"https://github.com/lfrsales/demo-fragment-collections/releases/latest/download/com.liferay.fragment.collection.contributor.integrations.jar"
	"https://github.com/lfrsales/demo-fragment-collections/releases/latest/download/com.liferay.fragment.collection.contributor.utilities.jar"
	"https://github.com/lfrsales/demo-fragment-collections/releases/latest/download/d3.theme.contributor.jar"
	"https://github.com/lfrsales/onboarding-forms/releases/latest/download/com.liferay.form.onboarding.api.jar"
	"https://github.com/lfrsales/onboarding-forms/releases/latest/download/com.liferay.form.onboarding.service.jar"
	"https://github.com/lfrsales/onboarding-forms/releases/latest/download/com.liferay.onboarding.form.web.jar"
	"https://github.com/lfrsales/site-se-site-initializer/releases/latest/download/com.liferay.site.se.site.initializer-1.0.0.jar"
	"https://github.com/lfrsales/toggle-control-menu-personal-menu-entry/releases/latest/download/com.liferay.users.admin.web.internal.product.navigation.personal.menu.toggle.control.menu-1.0.0.jar"
)

cd $TMPDIR

for module in ${modules[@]}; do
	(curl --location --remote-name $module)
done

mv $TMPDIR/* $DEPLOYDIR
