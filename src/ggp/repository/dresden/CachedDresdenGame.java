package ggp.repository.dresden;

import ggp.repository.CachedGame;
import org.ggp.galaxy.shared.persistence.Persistence;

import java.io.IOException;
import java.util.Set;

import javax.jdo.annotations.PersistenceCapable;

import org.ggp.galaxy.shared.loader.RemoteResourceLoader;

@PersistenceCapable
public class CachedDresdenGame extends CachedGame {
    public CachedDresdenGame(String theGameKey, String theRulesheet, String theDescription) {
		super(theGameKey, theRulesheet, theDescription);
	}

	private final static String descLoadingPrefix = "http://130.208.241.192/ggpserver/public/view_game.jsp?name=";
    private final static String gameLoadingPrefix = "http://130.208.241.192/ggpserver/public/download_gdl.jsp?name=";

    public static void ingestCachedGame(String gameKey) throws IOException {
    	String theDescription = extractDescription(RemoteResourceLoader.loadRaw(descLoadingPrefix + gameKey));
        String theRulesheet = RemoteResourceLoader.loadRaw(gameLoadingPrefix + gameKey);
        if (!theRulesheet.startsWith("<html><head>")) {
            // Don't store error pages as rulesheets.
            new CachedDresdenGame(gameKey, theRulesheet, theDescription);
        }
    }
    
    private static String extractDescription(String theHTML) {
    	try {
    		String theDescPrefix = theHTML.substring(theHTML.indexOf("<th><a name=\"description\">description</a></th>\n			<td>"));
    		String theDesc = theDescPrefix.substring("<th><a name=\"description\">description</a></th>\n			<td>".length(), theDescPrefix.indexOf("</td>"));
    		return theDesc.trim();
    	} catch (StringIndexOutOfBoundsException e) {
    		return "";
    	}
    }
    
    public static CachedDresdenGame loadCachedGame(String gameKey) {
        return Persistence.loadSpecific(gameKey, CachedDresdenGame.class);
    }
    
    public static Set<CachedDresdenGame> loadCachedGames() {
        return Persistence.loadAll(CachedDresdenGame.class);
    }    
}