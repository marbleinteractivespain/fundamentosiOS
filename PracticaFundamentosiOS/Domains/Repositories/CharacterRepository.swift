//
//  CharacterRepository.swift
//  PracticaFundamentosiOS
//
//  Created by DAVID DE LA PUENTE on 5/7/21.
//

import Foundation

class CharacterRepository{
    
    let charactersRepo = [
        Character(name: "Capitán",
                  surname: "América",
                  img_character: "img_captain",
                  rating: 9.3,
                  characterType: .heroe,
                  biography: "Captain America: The First Avenger (Capitán América: El Primer Vengador en América Hispana y España) es una película de superhéroes basada en el superhéroe de Marvel Comics del mismo nombre. Se trata de la quinta entrega en el Universo Cinematográfico de Marvel, de la Saga del Infinito y de la Fase Uno. Se estrenó el 22 de julio de 2011 en Estados Unidos.",
                  gallery: ["f1_capitan.jpeg", "f2_capitan.jpeg","f3_capitan.jpeg","f4_capitan.jpeg"], bg_image: "bg_capitan"),
        Character(name: "Thor",
                  surname: "Odinson",
                  img_character: "img_thor",
                  rating: 8.2,
                  characterType: .heroe,
                  biography: "Thor es el hijo de Odín, señor de los dioses de Asgard, y de Jord, que también es conocida como Gea, la más anciana diosa de la Tierra. Odín quería ser padre de un hijo cuyo poder derivase de la Tierra y de Asgard, así que se apareó con Jord. Odín creó una cueva en Noruega donde Jord dio a luz a Thor.",
                  gallery: ["f1_thor.jpg", "f2_thor.jpeg","f3_thor.jpeg","f4_thor.jpeg",
                            "f5_thor.jpeg"], bg_image: "bg_thor"),
        Character(name: "Iron",
                  surname: "Man",
                  img_character: "img_iron",
                  rating: 7.3,
                  characterType: .heroe,
                  biography: "Iron Man (conocida por su título original en España y como Iron Man: el hombre de hierro en Hispanoamérica) es una película de superhéroes de 2008, basada en el personaje del mismo nombre, perteneciente a la editorial Marvel Comics. Dirigido por Jon Favreau, el filme está protagonizado por Robert Downey Jr., quien interpreta a Tony Stark, un magnate multimillonario y hábil ingeniero con abundantes vicios que construye un exoesqueleto mecánico y se convierte en el superhéroe Iron Man. Gwyneth Paltrow interpreta a su asistente personal Pepper Potts, Terrence Howard a James Rhodes, su enlace con el ejército, y Jeff Bridges al villano director de Industrias Stark Obadiah Stane. Esta es la primera película de una trilogía sobre Iron Man. También está comprendida dentro del megaproyecto coral de Marvel's The Avengers.",
                  gallery: ["f1_ironman.jpeg","f2_ironman.jpeg","f3_ironman.jpeg","f4_ironman.jpeg"], bg_image: "bg_ironman"),
        Character(name: "Ojo de",
                  surname: "Halcón",
                  img_character: "img_halcon",
                  rating: 6.3,
                  characterType: .heroe,
                  biography: "Ojo de Halcón, es un superhéroe de ficción que aparece en los cómics estadounidenses publicados por Marvel Comics. Creado por el escritor Stan Lee y el artista Don Heck, el personaje apareció por primera vez como un villano en Tales of Suspense # 57 y más tarde se unió a los Vengadores en The Avengers #",
                  gallery: ["f1_ojo.jpeg","f2_ojo.jpeg","f3_ojo.jpeg","f4_ojo.jpeg","f5_ojo.jpeg","f6_ojo.jpeg","f7_ojo.jpeg"], bg_image: "bg_ojo"),
        Character(name: "Thanos", surname: "", img_character: "img_thanos", rating: 5.3, characterType: .villian, biography: "Thanos es lo más grande que ha dado Marvel en cuanto a villanos y puede que el más reconocible, pero no por ello el mejor. Sí, es un personaje muy bien calculado y pensado, pero le acaba de faltar un punto de humanidad. Y de empatía con el público: no quieres que gane. Pero su importancia en el MCU es innegable, y ha sido el villano que más películas acumula...",
                  gallery: ["f1_thanos.jpeg","f2_thanos.jpeg","f3_thanos.jpeg","f4_thanos.jpeg","f5_thanos.jpeg"], bg_image: "bg_thanos"),
        Character(name: "Loki", surname: "", img_character: "img_loki", rating: 4.3, characterType: .villian, biography: "Loki es el único villano que los niños quieren ser. Es carismático, tiene rollazo, tiene estilo, habla como si fuera Shakespeare, viste como una estrella del rock, su historia es trágica, nos ha vacilado más veces de las que podamos recordar... y si preguntas a alguien por un villano de Marvel, es el primero que les va a venir a la mente.",
                  gallery: ["f1_loki.jpeg","f2_loki.jpeg","f3_loki.jpeg","f4_loki.jpeg","f5_loki.jpeg"], bg_image: "bg_loki"),
        Character(name: "Malekith", surname: "", img_character: "img_malekith", rating: 2.3, characterType: .villian, biography: "Este villano interpretado por el mismísimo Dr. Who (Christopher Eccleston) es intercambiable con el Laufey de la primera parte, tanto en diseño como en motivación, es decir, cero. Sabemos que es malo porque... bueno, porque es un Elfo Oscuro, y eso tiene que ser muy malo.",
                  gallery: ["f1_malekith.jpeg","f2_malekith.jpeg","f3_malekith.jpeg","f4_malekith.jpeg","f5_malekith.jpeg"], bg_image: "bg_malekith"),
    ]
}
