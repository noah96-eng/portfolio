/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package contract2;

/**
 *
 * @author nrholtz
 */
public class Contract2 {

    String name;
    ArrayList<Subcontractor> workers;
    
    public void addContractor(Subcontractor s) {
        workers.add(s);
    }
    
    public int getContractorSize(){
        return workers.size();
    }
    
    public Subcontractor getContractor(int index){
        return workers;
    }
}
