package species.traits;

import species.TaxonomyDefinition;
import species.Field;
import species.UtilsService;

class TraitValue {

    String trait;
    String value;
    String description;
    String icon;
    String source;

    static constraints = {
        trait nullable:false, blank:false
        value nullable:false
		description nullable:true
        icon nullable:true
        source nullable:false
    }

    static mapping = {
        description type:"text"
    }
}
