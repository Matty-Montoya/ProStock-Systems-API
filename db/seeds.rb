# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Collection.destroy_all
Part.destroy_all

Collection.create([
                    # Collection 1
                    {
                      collection_name: 'Alien Workshop'
                    },
                    # Collection 2
                    {
                      collection_name: 'Almost'
                    },
                    # Collection 3
                    {
                      collection_name: 'Bones'
                    },
                    # Collection 4
                    {
                      collection_name: 'Mob'
                    }
                  ])

Part.destroy_all

Part.create([
              # Collection 1 Alien Workshop Parts Start
              {
                name: 'Bunker Issue Deck',
                description: 'Deck Width: 8.38',
                sku: 'PT101001',
                quantity: 1200,
                collection_id: '1'
              },
              {
                name: 'Strobe Medium Deck',
                description: 'Deck Width: 8.125',
                sku: 'PT101002',
                quantity: 700,
                collection_id: '1'
              },
              {
                name: 'Starlite Medium Deck',
                description: 'Deck Width: 8.25',
                sku: 'PT101003',
                quantity: 874,
                collection_id: '1'
              },
              {
                name: 'Starlite Large Deck',
                description: 'Deck Width: 8.50',
                sku: 'PT101004',
                quantity: 925,
                collection_id: '1'
              },
              {
                name: 'Popson Abducao Brasileira Deck',
                description: 'Deck Width: 8.25 ',
                sku: 'PT101005',
                quantity: 300,
                collection_id: '1'
              },
              {
                name: 'Guevara Siren Song Deck',
                description: 'Deck Width: 8.25',
                sku: 'PT101006',
                quantity: 513,
                collection_id: '1'
              },
              {
                name: 'Gas Mask Large Deck',
                description: 'Deck Width: 8.50',
                sku: 'PT101007',
                quantity: 793,
                collection_id: '1'
              },
              {
                name: 'Embrace Mars Large Deck',
                description: 'Deck Width: 8.50',
                sku: 'PT101008',
                quantity: 390,
                collection_id: '1'
              },
              {
                name: 'Embrace Mars Medium Deck',
                description: 'Deck Width: 8.25',
                sku: 'PT101009',
                quantity: 747,
                collection_id: '1'
              },
              {
                name: 'Embrace Mars Small Deck',
                description: 'Deck Width: 8.00',
                sku: 'PT101010',
                quantity: 530,
                collection_id: '1'
              },
              {
                name: 'Dinosaur Jr. Peace Deck',
                description: 'Deck Width: 8.25 ',
                sku: 'PT101011',
                quantity: 1130,
                collection_id: '1'
              },
              {
                name: 'Dinosaur Jr. Peace Deck',
                description: 'Deck Width: 8.50 ',
                sku: 'PT101012',
                quantity: 430,
                collection_id: '1'
              },
              {
                name: 'Dinosaur Jr. Peace Deck',
                description: 'Deck Width: 8.75 ',
                sku: 'PT101013',
                quantity: 130,
                collection_id: '1'
              },
              {
                name: 'Guevara Mache Prarie Deck',
                description: 'Deck Width: 8.00 ',
                sku: 'PT101014',
                quantity: 56,
                collection_id: '1'
              },
              {
                name: 'Trace Humans Deck',
                description: 'Deck Width: 8.50 ',
                sku: 'PT101015',
                quantity: 100,
                collection_id: '1'
              },
              {
                name: 'Popson Exalt El Cado Deck',
                description: 'Deck Width: 8.25 ',
                sku: 'PT101016',
                quantity: 800,
                collection_id: '1'
              },
              {
                name: 'Clone Mice Wheels',
                description: 'Size Dimension: 52mm',
                sku: 'PT101017',
                quantity: 1200,
                collection_id: '1'
              },
              {
                name: 'Solo Man Die Cut Griptape',
                description: 'Size Dimensions: 9 X 33',
                sku: 'PT101018',
                quantity: 1800,
                collection_id: '1'
              },
              {
                name: 'Pill Wax',
                description: 'Color: Blue',
                sku: 'PT101019',
                quantity: 3000,
                collection_id: '1'
              },
              {
                name: 'Pill Wax',
                description: 'Color: Red',
                sku: 'PT101020',
                quantity: 3000,
                collection_id: '1'
              },
              # Collection 1 Alien Workshop Part End

              # Collection 2 Almost Part Start
              {
                name: 'Pipe Blurry HYB Teal/Cardinal Deck',
                description: 'Deck Width: 8.25',
                sku: 'PT303000',
                quantity: 746,
                collection_id: '2'
              },
              {
                name: 'Pipe Blurry HYB Blue Deck',
                description: 'Deck Width: 8.50',
                sku: 'PT303001',
                quantity: 446,
                collection_id: '2'
              },
              {
                name: 'Fragments R7 - Yuri Facchini Deck',
                description: 'Deck Width: 8.125',
                sku: 'PT303002',
                quantity: 346,
                collection_id: '2'
              },
              {
                name: 'Fragments R7 - Youness Amrani Deck',
                description: 'Deck Width: 8.375',
                sku: 'PT303003',
                quantity: 146,
                collection_id: '2'
              },
              {
                name: 'Fat Font R7 - Orange/Red Deck',
                description: 'Deck Width: 8.50',
                sku: 'PT303004',
                quantity: 346,
                collection_id: '2'
              },
              {
                name: 'Fat Font R7 - Cooper Wilt Deck',
                description: 'Deck Width: 8.25',
                sku: 'PT303005',
                quantity: 746,
                collection_id: '2'
              },
              {
                name: 'Enlightenment R7 - Youness Amrani Deck',
                description: 'Deck Width: 8.00',
                sku: 'PT303006',
                quantity: 146,
                collection_id: '2'
              },
              {
                name: 'CT Logo HYB - Red Deck',
                description: 'Deck Width: 8.00',
                sku: 'PT303007',
                quantity: 426,
                collection_id: '2'
              },
              {
                name: 'CT Logo HYB - Blue Deck',
                description: 'Deck Width: 7.75',
                sku: 'PT303008',
                quantity: 230,
                collection_id: '2'
              },
              {
                name: 'Color Crash HYB - Black Deck',
                description: 'Deck Width: 8.375',
                sku: 'PT303009',
                quantity: 540,
                collection_id: '2'
              },
              {
                name: 'Color Crash HYB - Black Deck ',
                description: 'Deck Width: 8.25',
                sku: 'PT303010',
                quantity: 320,
                collection_id: '2'
              },
              {
                name: 'Batman Choker Impact Light - Rodney Mullen Deck',
                description: 'Deck Width: 8.25',
                sku: 'PT303011',
                quantity: 1000,
                collection_id: '2'
              },
              {
                name: 'Augmented Reality R7 - Yuri Facchini Deck',
                description: 'Deck Width: 8.50',
                sku: 'PT303012',
                quantity: 464,
                collection_id: '2'
              },
              {
                name: 'Augmented Reality R7 - Yuri Facchini Deck',
                description: 'Deck Width: 8.125',
                sku: 'PT303013',
                quantity: 621,
                collection_id: '2'
              },
              {
                name: 'Text Death R7 - Youness Amrani Deck',
                description: 'Deck Width: 8.375',
                sku: 'PT303014',
                quantity: 343,
                collection_id: '2'
              },
              {
                name: 'Rice Burner R7 - Daewon Song Deck',
                description: 'Deck Width: 7.75 ',
                sku: 'PT303015',
                quantity: 231,
                collection_id: '2'
              },
              {
                name: 'Rice Burner R7 - Daewon Song Deck',
                description: 'Deck Width: 8.375',
                sku: 'PT303016',
                quantity: 836,
                collection_id: '2'
              },
              {
                name: 'Dog Poker R7 - Rodney Mullen Deck',
                description: 'Deck Width: 8.00',
                sku: 'PT303017',
                quantity: 431,
                collection_id: '2'
              },
              {
                name: 'Color Crash HYB - White Deck',
                description: 'Deck Width:   7.50',
                sku: 'PT303018',
                quantity: 111,
                collection_id: '2'
              },
              {
                name: 'Color Crash HYB - Black Deck',
                description: 'Deck Width: 8.00',
                sku: 'PT303019',
                quantity: 121,
                collection_id: '2'
              },
              {
                name: 'Catwoman Impact Light - Youness Armani Deck',
                description: 'Deck Width: 8.00',
                sku: 'PT303020',
                quantity: 711,
                collection_id: '2'
              },
              {
                name: 'Black Holde R7 - Daweon Song Deck',
                description: 'Deck Width: 8.125',
                sku: 'PT303021',
                quantity: 83,
                collection_id: '2'
              },
              {
                name: 'Comic Strip R7 - Yuri Facchini Deck',
                description: 'Deck Width: 8.125',
                sku: 'PT303022',
                quantity: 938,
                collection_id: '2'
              },
              {
                name: 'Comic Strip R7 - Daweon Song Deck',
                description: 'Deck Width: 7.75',
                sku: 'PT303023',
                quantity: 940,
                collection_id: '2'
              },
              {
                name: 'Bottle Flip R7 - Youness Armani Deck',
                description: 'Deck Width: 8.00',
                sku: 'PT303024',
                quantity: 646,
                collection_id: '2'
              },
              {
                name: 'Black Hole R7 - Cooper Wilt Deck',
                description: 'Deck Width: 8.375',
                sku: 'PT303025',
                quantity: 943,
                collection_id: '2'
              },
              {
                name: 'Yogi Bear Big Picnic R7 - Cooper Wilt Deck',
                description: 'Deck Width: 8.125',
                sku: 'PT303026',
                quantity: 848,
                collection_id: '2'
              },
              {
                name: 'Uber EX17 Black - Rodney Mullen Deck',
                description: 'Deck Width: 8.00',
                sku: 'PT303027',
                quantity: 636,
                collection_id: '2'
              },
              {
                name: 'Lewis Farwell Infinity R7 - Lewis Marnell Deck',
                description: 'Deck Width: 8.00',
                sku: 'PT303028',
                quantity: 674,
                collection_id: '2'
              },
              {
                name: 'Captain Caveman Cream Wax ',
                description: 'Color Brown',
                sku: 'PT303029',
                quantity: 1300,
                collection_id: '2'
              },
              {
                name: 'Wax Nugs Wax',
                description: 'Color: Green',
                sku: 'PT3030',
                quantity: 732,
                collection_id: '2'
              },
              {
                name: 'Gold Nuts & Bolts In Your Mouth - Allen',
                description: 'Size Dimensions: 1',
                sku: 'PT303031',
                quantity: 1300,
                collection_id: '2'
              },
              {
                name: 'Gold Nuts & Bolts In Your Mouth - Allen',
                description: 'Size Dimensions: 7/8',
                sku: 'PT303032',
                quantity: 1400,
                collection_id: '2'
              },
              {
                name: 'Thai Stick Hardware - Black',
                description: 'Size Dimensions: 7/8',
                sku: 'PT303033',
                quantity: 2040,
                collection_id: '2'
              },
              # Collection 2 Almost Part End

              # Collection 3 Bones Part Start
              {
                name: 'Bones 100/s #11 Wheels',
                description: 'Size Dimension: 53mm',
                sku: 'PT721000',
                quantity: 3200,
                collection_id: '3'
              },
              {
                name: 'Bones 100/s #11 Wheels',
                description: 'Size Dimensions: 52mm',
                sku: 'PT721001',
                quantity: 3430,
                collection_id: '3'
              },
              {
                name: 'Bones STF Decenzo Catstronaut Wheels',
                description: 'Size Dimensions: 53mm',
                sku: 'PT721002',
                quantity: 900,
                collection_id: '3'
              },
              {
                name: 'Bones STF Berger Spy Wheels',
                description: 'Size Dimensions: 54mm',
                sku: 'PT721003',
                quantity: 857,
                collection_id: '3'
              },
              {
                name: 'Bones STF Berger Spy Wheels',
                description: 'Size Dimensions: 52mm',
                sku: 'PT721004',
                quantity: 890,
                collection_id: '3'
              },
              {
                name: 'Bones SPF McClain Super P5 Wheels',
                description: 'Size Dimensions: 55m',
                sku: 'PT721005',
                quantity: 933,
                collection_id: '3'
              },
              {
                name: 'Bones Deep Dye STF Wheels',
                description: 'Size Dimensions: 54mm',
                sku: 'PT721006',
                quantity: 1200,
                collection_id: '3'
              },
              {
                name: 'Bones Deep Dye STF Wheels',
                description: 'Size Dimensions: 53mm',
                sku: 'PT721007',
                quantity: 753,
                collection_id: '3'
              },
              {
                name: 'Bones Deep Dye STF Wheels',
                description: 'Size Dimensions: 52mm',
                sku: 'PT721008',
                quantity: 343,
                collection_id: '3'
              },
              {
                name: 'Bones Cab Moto SPF Wheels',
                description: 'Size Dimensions: 60mm',
                sku: 'PT721009',
                quantity: 2000,
                collection_id: '3'
              },
              {
                name: 'Bones Cab Moto SPF Wheels',
                description: 'Size Dimensions: 54mm',
                sku: 'PT721010',
                quantity: 2000,
                collection_id: '3'
              },
              {
                name: 'Bones SPF McClain Super P5 Wheels',
                description: 'Size Dimensions: 54mm',
                sku: 'PT721011',
                quantity: 2300,
                collection_id: '3'
              },
              {
                name: 'Bones STF Skate-Aid 2 V1 Wheels',
                description: 'Size Dimensions: 54mm',
                sku: 'PT721012',
                quantity: 340,
                collection_id: '3'
              },
              {
                name: 'Bones STF Skate-Aid 2 V1 Wheels',
                description: 'Size Dimensions: 53mm',
                sku: 'PT721013',
                quantity: 875,
                collection_id: '3'
              },
              {
                name: 'Bones Race Reds Bearings',
                description: 'Size Dimensions:',
                sku: 'PT721014',
                quantity: 4000,
                collection_id: '3'
              },
              {
                name: 'Bones Swiss Labyrinth Bearings',
                description: 'Size Dimensions:',
                sku: 'PT721015',
                quantity: 4000,
                collection_id: '3'
              },
              {
                name: 'Bones Swiss Ceramic Bearings',
                description: 'Size Dimensions:',
                sku: 'PT721016',
                quantity: 4000,
                collection_id: '3'
              },
              {
                name: 'Bones Swiss Bearings',
                description: 'Size Dimensions:',
                sku: 'PT721017',
                quantity: 4000,
                collection_id: '3'
              },
              {
                name: 'Bones Swiss 6 Bearings',
                description: 'Size Dimensions:',
                sku: 'PT721018',
                quantity: 4000,
                collection_id: '3'
              },
              {
                name: 'Bones Super Reds Bearings',
                description: 'Size Dimensions:',
                sku: 'PT721019',
                quantity: 4000,
                collection_id: '3'
              },
              {
                name: 'Bones Reds Bearings',
                description: 'Size Dimensions:',
                sku: 'PT721020',
                quantity: 4000,
                collection_id: '3'
              },
              {
                name: 'Bones Ceramic Reds Bearings',
                description: 'Size Dimensions:',
                sku: 'PT721021',
                quantity: 4000,
                collection_id: '3'
              },
              {
                name: 'Bones Hardcore Bushings',
                description: 'Size Dimensions:',
                sku: 'PT721022',
                quantity: 4000,
                collection_id: '3'
              },
              {
                name: 'Bones Hardware',
                description: 'Size Dimensions: 7/8"',
                sku: 'PT721023',
                quantity: 4000,
                collection_id: '3'
              },
              {
                name: 'Bones Hardware',
                description: 'Size Dimensions: 1"',
                sku: 'PT721024',
                quantity: 4000,
                collection_id: '3'
              },
              # Collection 3 Bones Part End

              # Collection 4 Mob Start
              {
                name: 'Mob X Jess Mudgett Carnivorous Nights Grip Tape',
                description: 'Size Dimensions: 9" X 33" ',
                sku: 'PT910000',
                quantity: 4300,
                collection_id: '3'
              },
              {
                name: 'Mob X Jess Mudgett Barren Grip Tape',
                description: 'Size Dimensions: 9" X 33" ',
                sku: 'PT910000',
                quantity: 4300,
                collection_id: '3'
              },
              {
                name: 'Mob X Jess Mudgett Carnivorous Nights Grip Tape',
                description: 'Size Dimensions: 9" X 33" ',
                sku: 'PT910000',
                quantity: 4300,
                collection_id: '3'
              },
              {
                name: 'Mob X Jess Mudgett Carnivorous Nights Grip Tape',
                description: 'Size Dimensions: 9" X 33" ',
                sku: 'PT910000',
                quantity: 4300,
                collection_id: '3'
              },
              {
                name: 'Mob X Jess Mudgett Carnivorous Nights Grip Tape',
                description: 'Size Dimensions: 9" X 33" ',
                sku: 'PT910000',
                quantity: 4300,
                collection_id: '3'
              },

              # Collection 4 Mob End
            ])
