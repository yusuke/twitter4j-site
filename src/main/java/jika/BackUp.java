/*
 * BackUp.java
 *
 * Created on 2006/11/20, 1:08
 *
 * To change this template, choose Tools | Template Manager
 * and open the template in the editor.
 */

package jika;

import java.io.File;

/**
 * @author yusukey
 */
public class BackUp {
    int numberToBackup = 10;

    /**
     * Creates a new instance of BackUp
     */
    public synchronized void willBeSaved(String path) {
        File file = new File(path);
        if (file.exists()) {
            //backup
            backup(path, 1);
        }
        file.renameTo(new File(getName(path, 1)));
    }

    private void backup(String path, int number) {
        File file = new File(getName(path, number));
        if (file.exists()) {
            if (numberToBackup == number) {
                file.delete();
            } else {
                backup(path, number + 1);
            }
        }
        file.renameTo(new File(getName(path, number + 1)));
    }

    private String getName(String path, int number) {
        return path + "." + number + ".bak";
    }
}
