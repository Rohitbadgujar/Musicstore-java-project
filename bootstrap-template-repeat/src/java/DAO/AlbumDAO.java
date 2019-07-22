/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.Vector;
import model.Album;


public class AlbumDAO {
   private static Vector<Album> staticAlbumVector;
    
    static {
        
        Vector<Album> albumVector = new Vector<Album>();
        Album pr1 = new Album(1,"A Head Full of Dreams", "Pop", "A Head Full of Dreams is the seventh studio album by the British rock band Coldplay. It was released on 4 December 2015, by Parlophone in the United Kingdom, and by Atlantic Records in the United States","Yes",12, "https://s-media-cache-ak0.pinimg.com/originals/8c/5f/dd/8c5fdd94f9dc257860d522d7741e3c7e.jpg");
        albumVector.add(pr1);
        Album pr2 = new Album(2,"A Thousand Suns", "Rock", "A Thousand Suns is the fourth studio album by American rock band Linkin Park. It was released on September 8, 2010, by Warner Bros. Records","Yes",15,"https://static.posters.cz/image/750/plakatok/linkin-park-white-i1412.jpg");
        albumVector.add(pr2);
        Album pr3 = new Album(3,"Smoke + Mirros", "Pop Rock", "Smoke + Mirrors is the second studio album by American pop rock band Imagine Dragons. The album was recorded during 2014 at the band's home studio in Las Vegas, Nevada","Yes",11, "https://images-na.ssl-images-amazon.com/images/I/51nA1EZAX-L.jpg");
        albumVector.add(pr3);
        Album pr4 = new Album(4,"Curtain Call: The Hits", "Hip Hop", "Curtain Call: The Hits is the first greatest hits album by American rapper Eminem. It was released on December 6, 2005, under Aftermath Entertainment, Shady Records, and Interscope Records. The album collects Eminem's most popular singles, as well as four new songs, including a live version of \"Stan\", featuring English singer and songwriter Elton John from the 43rd Grammy Awards, plus the songs \"FACK\", \"When I'm Gone\" and \"Shake That\" featuring Nate Dogg. ","Yes",12, "https://upload.wikimedia.org/wikipedia/en/thumb/4/4e/Curtain_Call_cover.jpg/220px-Curtain_Call_cover.jpg");
        albumVector.add(pr4);
        Album pr5 = new Album(5,"Hot Fuss", "Alternative Rock", "Hot Fuss is the debut album by the American rock band The Killers, released on June 7, 2004, in the United Kingdom and on June 15, 2004, in the United States.[2] The album is mostly influenced by new wave music and post-punk. Hot Fuss produced several commercially and critically successful singles: \"Mr. Brightside\", \"Somebody Told Me\", \"All These Things That I've Done\" and \"Smile Like You Mean It\".","No",10, "https://upload.wikimedia.org/wikipedia/en/thumb/1/17/The_Killers_-_Hot_Fuss.png/220px-The_Killers_-_Hot_Fuss.png");
        albumVector.add(pr5);
        Album pr6 = new Album(6,"Coast to Coast", "Pop", "Coast to Coast is the second studio album by Irish boy band Westlife. It was released on 6 November 2000 by RCA Records. Five hit singles were released from the album: \"Against All Odds\", \"My Love\", \"What Makes a Man\", \"I Lay My Love on You\" and \"When You're Looking Like That\".","Yes",7, "https://upload.wikimedia.org/wikipedia/en/thumb/7/7e/Coast_To_Coast_-_Westlife.Jpg/220px-Coast_To_Coast_-_Westlife.Jpg");
        albumVector.add(pr6);
        Album pr7 = new Album(7,"Closer to you", "Indie Rock", "Closer To You is the third album by the Irish indie act The Coronas, released in November 2011.[1] It went straight into the Irish Indie Chart at number one, making number three in the overall chart. The album was produced by Tony Hoffer. Its lead single \"Addicted to Progress\" received more radio play in Ireland than any of the band's previous singles, topping Today FM's playlist chart for three consecutive weeks in December 2011.","Yes",18, "https://upload.wikimedia.org/wikipedia/en/thumb/1/15/TheCoronasCloserToYou.jpg/220px-TheCoronasCloserToYou.jpg");
        albumVector.add(pr7);
        Album pr8 = new Album(8,"Scissor Sisters", "Glam Rock", "Scissor Sisters is the debut studio album by American glam rock band Scissor Sisters, first released in 2004 (see 2004 in music). It was released by Polydor in the UK. It reached number 1 on the UK and Irish albums charts, and was the best-selling album of 2004 in the UK.","Yes",15, "https://upload.wikimedia.org/wikipedia/en/thumb/2/28/Scissoralbum.jpg/220px-Scissoralbum.jpg");
        albumVector.add(pr8);
        Album pr9 = new Album(9,"Ready to Die", "Hip Hop", "Ready to Die is the debut studio album by American rapper The Notorious B.I.G., released on September 13, 1994, by Bad Boy and Arista Records. The album features production by Bad Boy founder Sean \"Puffy\" Combs, Easy Mo Bee, Chucky Thompson, DJ Premier, and Lord Finesse, among others.","Yes",9, "https://e.snmc.io/i/600/w/18354fe3b0c6d3f0f39675b7f00cd307/6700517");
        albumVector.add(pr9);
        Album pr10 = new Album(10,"Man on the Moon: The End of Day", "Hip Hop", " Man on the Moon: The End of Day is the debut studio album by American rapper Kid Cudi. It was released on September 15, 2009, by Dream On, GOOD Music and Universal Motown Records. A concept album, narrated by fellow American rapper Common, it follows the release of his first mixtape A Kid Named Cudi (2008). ","Yes",4, "https://images-na.ssl-images-amazon.com/images/I/51m%2BqOWNoEL._SY355_.jpg");
        albumVector.add(pr10);
      
        
        AlbumDAO.staticAlbumVector = albumVector;
    }
    

    
   public AlbumDAO(){
        
    }
    
    public Vector<Album> getAllAlbums(){
        return staticAlbumVector;
    }
    
    
    public void addAlbum(Album newAlbum){
        staticAlbumVector.add(newAlbum);
        return;
    }
    
   public Album getAlbum(Long albumId){
        
        Album prod = new Album();
        for (Album currentAlbum: staticAlbumVector ){
            if (currentAlbum.getId()==albumId){
                prod =  currentAlbum;
                return prod;
            }
        }
        
        return prod;
    }
    
    public void updateAlbum(Album album){
        

        for (Album currentAlbum: staticAlbumVector ){
            if (currentAlbum.getId()==album.getId()){
                int albumToUpdate =  staticAlbumVector.indexOf(currentAlbum);
                staticAlbumVector.set(albumToUpdate, album);
            }
        }
       
    }
    
}