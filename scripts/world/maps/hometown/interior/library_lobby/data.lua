return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.11.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 16,
  height = 12,
  tilewidth = 40,
  tileheight = 40,
  nextlayerid = 8,
  nextobjectid = 43,
  properties = {
    ["border"] = "leaves",
    ["music"] = "future_world"
  },
  tilesets = {},
  layers = {
    {
      type = "imagelayer",
      image = "../../../../../../assets/sprites/world/maps/hometown/interior/library_lobby.png",
      id = 2,
      name = "room",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      repeatx = false,
      repeaty = false,
      properties = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 3,
      name = "collision",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1,
          name = "",
          type = "",
          shape = "rectangle",
          x = 360,
          y = 400,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = 400,
          width = 40,
          height = 80,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "",
          type = "",
          shape = "rectangle",
          x = 400,
          y = 400,
          width = 160,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 4,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 400,
          width = 160,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "",
          type = "",
          shape = "rectangle",
          x = 40,
          y = 0,
          width = 40,
          height = 440,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 0,
          width = 480,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "",
          type = "",
          shape = "rectangle",
          x = 560,
          y = 0,
          width = 40,
          height = 280,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "",
          type = "",
          shape = "rectangle",
          x = 560,
          y = 400,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "",
          type = "",
          shape = "rectangle",
          x = 576,
          y = 280,
          width = 40,
          height = 120,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 16,
          name = "",
          type = "",
          shape = "rectangle",
          x = 396,
          y = 40,
          width = 48,
          height = 120,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 17,
          name = "",
          type = "",
          shape = "rectangle",
          x = 518,
          y = 40,
          width = 42,
          height = 120,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "",
          type = "",
          shape = "rectangle",
          x = 362,
          y = 108,
          width = 34,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 26,
          name = "",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 338,
          width = 168,
          height = 62,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 27,
          name = "",
          type = "",
          shape = "rectangle",
          x = 418,
          y = 336,
          width = 104,
          height = 62,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 38,
          name = "",
          type = "",
          shape = "rectangle",
          x = 230,
          y = 118,
          width = 48,
          height = 30,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "objects",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 18,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 444,
          y = 120,
          width = 72,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["exit_delay"] = 0.3,
            ["facing"] = "up",
            ["map"] = "hometown/interior/library_library",
            ["marker"] = "spawn",
            ["sound"] = "escaped"
          }
        },
        {
          id = 20,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 278,
          y = 108,
          width = 84,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["exit_delay"] = 0.3,
            ["exit_sound"] = "doorclose",
            ["facing"] = "up",
            ["map"] = "hometown/interior/library_computer",
            ["marker"] = "spawn",
            ["sound"] = "dooropen"
          }
        },
        {
          id = 21,
          name = "transition",
          type = "",
          shape = "rectangle",
          x = 280,
          y = 480,
          width = 80,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["facing"] = "down",
            ["map"] = "hometown/town_south",
            ["marker"] = "entrylibrary"
          }
        },
        {
          id = 11,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 398,
          y = 212,
          width = 58,
          height = 82,
          rotation = 0,
          visible = true,
          properties = {
            ["solid"] = true,
            ["text1"] = "* (There's a crude drawing of an ice-cube wearing a headband.)",
            ["text2"] = "* (\"The TeenZone: Where Teen's Can Be Kid's.\")",
            ["text3"] = "* (A feeling of immense relief washes over you.)"
          }
        },
        {
          id = 12,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 206,
          width = 78,
          height = 86,
          rotation = 0,
          visible = true,
          properties = {
            ["solid"] = true,
            ["text1"] = "* (It's an unlabelled book. You look inside...)",
            ["text2"] = "* oh.... i accidentally returned my personal journal instead of my book...",
            ["text3"] = "* oh no.... they're putting it into their catalogue...",
            ["text4"] = "* oh no... i have to take it out every time i want to write a new entry..."
          }
        },
        {
          id = 14,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 80,
          y = 74,
          width = 78,
          height = 86,
          rotation = 0,
          visible = true,
          properties = {
            ["solid"] = true,
            ["text1"] = "* \"Lord of the Hammer\"",
            ["text2"] = "* (First in the award-winning fiction series by lauded historian Gerson Boom.)"
          }
        },
        {
          id = 28,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 158,
          y = 74,
          width = 68,
          height = 86,
          rotation = 0,
          visible = true,
          properties = {
            ["solid"] = true,
            ["text1"] = "* (It's a book of magic tricks.)",
            ["text2"] = "* (Most of them require orbs or floating hands.)"
          }
        },
        {
          id = 29,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 158,
          y = 206,
          width = 78,
          height = 86,
          rotation = 0,
          visible = true,
          properties = {
            ["solid"] = true,
            ["text1"] = "* (There's a book here.)\n[wait:5]* (You lick the page...)\n[wait:5]* (It's delicious!)",
            ["text2"] = "* (This must be what they meant by flavor text.)"
          }
        },
        {
          id = 15,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 226,
          y = 108,
          width = 52,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["flagcheck"] = "!hometown_digisetup",
            ["solid"] = true,
            ["text1"] = "* (Computer Lab.)\n[wait:5]* (Please surf the web responsibly.)",
            ["text2"] = "* (In fact,[wait:5] maybe don't do it at all.)"
          }
        },
        {
          id = 30,
          name = "interactable",
          type = "",
          shape = "rectangle",
          x = 456,
          y = 212,
          width = 104,
          height = 82,
          rotation = 0,
          visible = true,
          properties = {
            ["solid"] = true,
            ["text1"] = "* (It's the weekly cartoon review.)",
            ["text2"] = "* (Just looking at cartoon criticism is sapping your energy rapidly.)"
          }
        },
        {
          id = 32,
          name = "npc",
          type = "",
          shape = "point",
          x = 420,
          y = 180,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "susie_lw",
            ["cutscene"] = "hometown.digi_susie",
            ["facing"] = "down",
            ["flagcheck"] = "hometown_digisetup",
            ["sprite"] = "chill"
          }
        },
        {
          id = 34,
          name = "npc",
          type = "",
          shape = "point",
          x = 460,
          y = 330,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "dess",
            ["cutscene"] = "hometown.digi_dess",
            ["facing"] = "up",
            ["flagcheck"] = "hometown_digisetup"
          }
        },
        {
          id = 35,
          name = "npc",
          type = "",
          shape = "point",
          x = 470,
          y = 200,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "ceroba",
            ["cutscene"] = "hometown.digi_ceroba",
            ["facing"] = "left",
            ["flagcheck"] = "hometown_digisetup"
          }
        },
        {
          id = 36,
          name = "npc",
          type = "",
          shape = "point",
          x = 390,
          y = 380,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "brenda_lw",
            ["cutscene"] = "hometown.digi_brenda",
            ["facing"] = "right",
            ["flagcheck"] = "hometown_digisetup"
          }
        },
        {
          id = 37,
          name = "npc",
          type = "",
          shape = "point",
          x = 250,
          y = 170,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "noelle_lw",
            ["cutscene"] = "hometown.digi_noelle",
            ["facing"] = "down",
            ["flagcheck"] = "hometown_digisetup"
          }
        },
        {
          id = 39,
          name = "npc",
          type = "",
          shape = "point",
          x = 180,
          y = 320,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {
            ["actor"] = "jammarcy_light",
            ["cutscene"] = "hometown.digi_jammarcy",
            ["facing"] = "up",
            ["flagcheck"] = "hometown_digisetup"
          }
        },
        {
          id = 40,
          name = "script",
          type = "",
          shape = "rectangle",
          x = 300,
          y = 420,
          width = 40,
          height = 40,
          rotation = 0,
          visible = true,
          properties = {
            ["cutscene"] = "hometown.digi_library",
            ["flagcheck"] = "hometown_digisetup"
          }
        },
        {
          id = 41,
          name = "script",
          type = "",
          shape = "rectangle",
          x = 278.5,
          y = 462.5,
          width = 82.5,
          height = 15,
          rotation = 0,
          visible = true,
          properties = {
            ["cutscene"] = "hometown.digiwrongway_library",
            ["flagcheck"] = "!digi_complete",
            ["once"] = false
          }
        }
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "markers",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 22,
          name = "entrylibrary",
          type = "",
          shape = "point",
          x = 480,
          y = 200,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 23,
          name = "entrycyber",
          type = "",
          shape = "point",
          x = 320,
          y = 188,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 25,
          name = "spawn",
          type = "",
          shape = "point",
          x = 320,
          y = 440,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    },
    {
      type = "imagelayer",
      image = "../../../../../../assets/sprites/world/maps/hometown/interior/library_lobbyover.png",
      id = 6,
      name = "over",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      repeatx = false,
      repeaty = false,
      properties = {}
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 7,
      name = "controllers",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 42,
          name = "hometowndaynight",
          type = "",
          shape = "point",
          x = 40,
          y = 40,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
