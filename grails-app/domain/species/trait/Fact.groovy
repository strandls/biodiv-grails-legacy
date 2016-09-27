package species.trait;

import species.TaxonomyDefinition;
import species.Field;
import species.UtilsService;
import species.auth.SUser;
import species.License;

class Fact {

    Trait trait;
    TraitValue traitValue;
    String value;
    String attribution;
    SUser contributor;
    License license;
    TaxonomyDefinition pageTaxon;
    Long objectId;

    static constraints = {
      trait nullable:false, unique:['pageTaxon', 'objectId']
      //attribution nullable:true
      //contributor nullable:true
      //license nullable:true
      value nullable:true
      objectId nullable:false
    }

    static mapping = {
        description type:"text"
        attribution type:"text"
    }
}
