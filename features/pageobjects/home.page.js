const Page = require('./page');

class HomePage extends Page {

    get searchBar_inputField() { return $('.auto_submit.form-text.form-autocomplete')}
    get search_button() { return $('.tagging-click.form-submit')}

    async search(item){
        await this.searchBar_inputField.setValue(item)
        await this.search_button.click();
        console.log(`Searching for ${item} item`)
    }

    open() {
        return super.open("");
    }
}
module.exports = new HomePage();