require("dotenv").config({
  path: `.env.${process.env.NODE_ENV}`,
})

module.exports = {
  siteMetadata: {
    title: `Cosmos University`,
    siteUrl: `https://cosmos.university`
  },
  plugins: 
  [
    "gatsby-plugin-image", 
    "gatsby-plugin-sitemap", 
    {
      resolve: 'gatsby-plugin-manifest',
      options: {"icon": "src/images/icon.png"}
    }, 
    "gatsby-plugin-mdx",
    "gatsby-plugin-sharp",
    "gatsby-transformer-sharp",
    {
      resolve: 'gatsby-source-filesystem',
      options: {"name": "images","path": "./src/images/"},
      __key: "images"
    },
    {
      resolve: 'gatsby-source-filesystem',
      options: {"name": "pages","path": "./src/pages/"},
      __key: "pages"
    },
    `gatsby-plugin-react-helmet`,
    {
      resolve: `gatsby-plugin-google-gtag`,
      options: 
      {
        trackingIds: ["G-0M9EMRZHK4"],
        pluginConfig:
        {
          head: false,
          respectDNT: true,
          exclude:["/setecastronomy/**"]
        }
      },
    },
    {
      resolve: `gatsby-source-airtable`,
      options: {
        apiKey: process.env.AT_API_KEY, // may instead specify via env, see below
        concurrency: 5, // default, see using markdown and attachments for more information
        tables: [
          {
            baseId: process.env.AT_BASE_CUDB_ID,
            tableName: `books`,
            queryName: `_books`,
            separateNodeType:true
          },
          {
            baseId: process.env.AT_BASE_CUDB_ID,
            tableName: `celestials`,
            queryName: `_celestials`,
            separateNodeType: true
          },
          {
            baseId: process.env.AT_BASE_CUDB_ID,
            tableName: `chakras`,
            queryName: `_chakras`,
            separateNodeType: true
          },
          {
            baseId: process.env.AT_BASE_CUDB_ID,
            tableName: `companies`,
            queryName: `_companies`,
            separateNodeType: true
          },
          {
            baseId: process.env.AT_BASE_CUDB_ID,
            tableName: `crystals`,
            queryName: `_crystals`,
            separateNodeType: true
          },
          {
            baseId: process.env.AT_BASE_CUDB_ID,
            tableName: `crystals-magical`,
            queryName: `_crystals_magical`,
            separateNodeType: true
          },
          {
            baseId: process.env.AT_BASE_CUDB_ID,
            tableName: `cycles`,
            queryName: `_cycles`,
            separateNodeType: true
          },
          {
            baseId: process.env.AT_BASE_CUDB_ID,
            tableName: `cycles-rhythm`,
            queryName: `_cycles_rhythm`,
            separateNodeType: true
          },
          {
            baseId: process.env.AT_BASE_CUDB_ID,
            tableName: `deities`,
            queryName: `_deities`,
            separateNodeType: true
          },
          {
            baseId: process.env.AT_BASE_CUDB_ID,
            tableName: `elements`,
            queryName: `_elements`,
            separateNodeType: true
          },
          {
            baseId: process.env.AT_BASE_CUDB_ID,
            tableName: `institutions`,
            queryName: `_institutions`,
            separateNodeType: true
          },
          {
            baseId: process.env.AT_BASE_CUDB_ID,
            tableName: `magic-effects`,
            queryName: `_magic_effects`,
            separateNodeType: true
          },
          {
            baseId: process.env.AT_BASE_CUDB_ID,
            tableName: `magic-schools`,
            queryName: `_magic_schools`,
            separateNodeType: true
          },
          {
            baseId: process.env.AT_BASE_CUDB_ID,
            tableName: `numbers`,
            queryName: `_numbers`,
            separateNodeType: true
          },
          {
            baseId: process.env.AT_BASE_CUDB_ID,
            tableName: `people`,
            queryName: `_people`,
            separateNodeType: true
          },
          {
            baseId: process.env.AT_BASE_CUDB_ID,
            tableName: `plants`,
            queryName: `_plants`,
            separateNodeType: true
          },
          {
            baseId: process.env.AT_BASE_CUDB_ID,
            tableName: `plants-magical`,
            queryName: `_plants_magical`,
            separateNodeType: true
          },
          {
            baseId: process.env.AT_BASE_CUDB_ID,
            tableName: `religions`,
            queryName: `_religions`,
            separateNodeType: true
          },
          {
            baseId: process.env.AT_BASE_CUDB_ID,
            tableName: `rituals`,
            queryName: `_rituals`,
            separateNodeType: true
          },
          {
            baseId: process.env.AT_BASE_CUDB_ID,
            tableName: `tarot`,
            queryName: `_tarot`,
            separateNodeType: true
          },
          {
            baseId: process.env.AT_BASE_CUDB_ID,
            tableName: `tarot_decks`,
            queryName: `_tarot_decks`,
            separateNodeType: true
          },
          {
            baseId: process.env.AT_BASE_CUDB_ID,
            tableName: `tarot_deck_cards`,
            queryName: `_tarot_deck_cards`,
            separateNodeType: true
          },
          {
            baseId: process.env.AT_BASE_CUDB_ID,
            tableName: `traditions`,
            queryName: `_traditions`,
            separateNodeType: true
          },
        ]
      }
    }
  ]
};