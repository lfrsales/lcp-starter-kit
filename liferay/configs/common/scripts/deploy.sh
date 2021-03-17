TMPDIR=/tmp/deploy
DEPLOYDIR=/opt/liferay/deploy

mkdir -p $TMPDIR

### Add Modules to be Deployed Here: ###

modules=(
	"https://github.com/lfrsales/site-se-site-initializer/releases/download/v0.0.1/com.liferay.site.se.site.initializer-1.0.0.jar"
    "https://github.com/ethib137/loan-calculator/releases/download/v0.0.3/loan-calculator-1.0.0.jar"
    "https://github.com/jverweijL/Markdown/releases/download/v0.4/com.liferay.demo.markdown.api-1.0.0.jar"
    "https://github.com/jverweijL/Markdown/releases/download/v0.4/com.liferay.demo.markdown.service-1.0.0.jar"
    "https://github.com/jverweijL/Markdown/releases/download/v0.4/markdowntemplatecontextcontributor-1.0.0.jar"
    "https://github.com/jverweijL/QRgenerator/releases/download/v0.2/com.liferay.demo.qr.qrcode-1.0.0.jar"
    "https://github.com/jverweijL/UserDocumentUploadPortlet/releases/download/0.3/userdocumentupload-1.0.0.jar"
    "https://github.com/jverweijL/UserRatedItems/releases/download/v0.0.1/UserRatedAssetsInfoListProvider-1.0.0.jar"
    "https://github.com/jverweijL/WeatherContextContributor/releases/download/v0.1/weathercontextcontributor-1.0.0.jar"
    "https://github.com/jverweijL/custom-rest-api/releases/download/v0.1/custom.rest.api-1.0.0.jar"
    "https://github.com/jverweijL/dbwidget/releases/download/0.1/com.liferay.demo.db.api-1.0.0.jar"
    "https://github.com/jverweijL/dbwidget/releases/download/0.1/com.liferay.demo.db.service-1.0.0.jar"
    "https://github.com/jverweijL/dbwidget/releases/download/0.1/com.liferay.demo.db.viewer.web-1.0.0.jar"
    "https://github.com/jverweijL/defaultLP/releases/download/v1.1.0/com.liferay.demo.portal.action-1.0.0.jar"
    "https://github.com/jverweijL/mondriaan/releases/download/0.1/com.liferay.demo.mondriaan.portlet-1.0.0.jar"
    "https://github.com/jverweijL/notifications-workflow-wrapper/releases/download/v0.1/notifications.wrapper-1.0.0.jar"
    "https://github.com/jverweijL/spaceship-react/releases/download/v0.1/spaceship-0.1.0.jar"
    "https://github.com/lfrsales/73-formed-theme/releases/download/v0.0.2/73-formed-theme.war"
    "https://github.com/lfrsales/article-service-template-context-contributor/releases/download/v0.0.1/com.liferay.demo.asset.article.service.template.context.contributor-1.0.0.jar"
    "https://github.com/lfrsales/character-limited-text-input-ddm-form-field/releases/download/v0.0.1/com.liferay.dynamic.data.mapping.form.field.type.internal.character.limited.text-1.0.0.jar"
    "https://github.com/lfrsales/demo-fragment-collections/releases/download/v0.0.3/billboard.theme.contributor-1.0.0.jar"
    "https://github.com/lfrsales/demo-fragment-collections/releases/download/v0.0.3/com.liferay.fragment.collection.contributor.billboard-1.0.0.jar"
    "https://github.com/lfrsales/demo-fragment-collections/releases/download/v0.0.3/com.liferay.fragment.collection.contributor.formed.components-1.0.0.jar"
    "https://github.com/lfrsales/demo-fragment-collections/releases/download/v0.0.3/com.liferay.fragment.collection.contributor.formed.content.display-1.0.0.jar"
    "https://github.com/lfrsales/demo-fragment-collections/releases/download/v0.0.3/com.liferay.fragment.collection.contributor.header.components-1.0.0.jar"
    "https://github.com/lfrsales/demo-fragment-collections/releases/download/v0.0.3/com.liferay.fragment.collection.contributor.integrations-1.0.0.jar"
    "https://github.com/lfrsales/demo-fragment-collections/releases/download/v0.0.3/com.liferay.fragment.collection.contributor.utilities-1.0.0.jar"
    "https://github.com/lfrsales/demo-fragment-collections/releases/download/v0.0.3/d3.theme.contributor-1.0.0.jar"
    "https://github.com/lfrsales/toggle-control-menu-personal-menu-entry/releases/download/v0.0.1/com.liferay.users.admin.web.internal.product.navigation.personal.menu.toggle.control.menu-1.0.0.jar"
    "https://github.com/martin-dominguez/liferay-modules/releases/download/1.0.0/com.liferay.dynamic.data.mapping.form.field.type.internal.userdata.field-1.0.0.jar"
)

cd $TMPDIR

for module in ${modules[@]}; do
  (curl --location --remote-name $module)
done

mv $TMPDIR/* $DEPLOYDIR
