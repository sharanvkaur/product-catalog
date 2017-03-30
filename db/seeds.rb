Category.create!([
  {name: "Makeup"},
  {name: "Skincare"},
  {name: "Hair"},
  {name: "Tools"}
])
SubCategory.create!([
  {name: "Eyes", category_id: 1},
  {name: "Face", category_id: 1},
  {name: "Lips", category_id: 1},
  {name: "Nails", category_id: 1},
  {name: "Cheek", category_id: 1},
  {name: "Moisturize", category_id: 2},
  {name: "Cleanse", category_id: 2},
  {name: "Suncare", category_id: 2},
  {name: "Treatments", category_id: 3},
  {name: "SmallTools", category_id: 4},
  {name: "HairTools", category_id: 4},
  {name: "ShampoosConditioners", category_id: 3}
])
SubSubCategory.create!([
  {name: "Mascara", sub_category_id: 1},
  {name: "Primer", sub_category_id: 1},
  {name: "Foundation", sub_category_id: 2},
  {name: "Concealer", sub_category_id: 2},
  {name: "Contouring", sub_category_id: 2},
  {name: "Stain", sub_category_id: 3},
  {name: "Balm", sub_category_id: 3},
  {name: "Gloss", sub_category_id: 3},
  {name: "Polish", sub_category_id: 4},
  {name: "Tools", sub_category_id: 4},
  {name: "Blush", sub_category_id: 5},
  {name: "Bronzer", sub_category_id: 5},
  {name: "Neck", sub_category_id: 6},
  {name: "Face Oil", sub_category_id: 6},
  {name: "Exfoliator", sub_category_id: 7},
  {name: "Toner", sub_category_id: 7},
  {name: "Devices", sub_category_id: 7},
  {name: "Protection", sub_category_id: 8},
  {name: "Tanning", sub_category_id: 8},
  {name: "Oily", sub_category_id: 9},
  {name: "Coloured", sub_category_id: 9},
  {name: "Dry", sub_category_id: 10},
  {name: "Oily", sub_category_id: 10},
  {name: "Mirrors", sub_category_id: 11},
  {name: "ManicurePedicure", sub_category_id: 11},
  {name: "HeatProtection", sub_category_id: 9},
  {name: "NightCream", sub_category_id: 6},
  {name: "BrushesCombs", sub_category_id: 12},
  {name: "Falsies", sub_category_id: 1},
  {name: "CurlyWavy", sub_category_id: 10}
])
Product.create!([
  {name: "Luscious Lip Balm", description: "Wild Lip Balm does not contain any artificial preservatives, chemicals, bleaches, artificial colours or fragrances.\nBenefits\n100% Natural - Organic Butters & Flavours - 100% Pure - Cruelty Free Super hydrating coconut oil, organic shea butter and organic cocoa butter combined with all natural & protective benefits of beeswax to help seal in moisture and shield lips from the elements. Our rich and creamy lip balm comes in a number of certified organic flavours that you are bound to fall in love with...", price: "6.0", sub_sub_category_id: 8},
  {name: "NARS\nLip Gloss", description: "NARS Lip Gloss delivers serious shine and sexy color in sheer, semi-sheer and creamy formulas that support anti-aging. Nourishing ingredients moisturize, leaving lips smooth and soft. The doe-foot applicator glides smoothly with comfort and precision for long-lasting wear.", price: "38.0", sub_sub_category_id: 9},
  {name: "Nail Clipper", description: "About\nSmaller yet as effective in clipping your nails!\nBenefits\nCompact size for great convenienceCompact size for great convenienceCompact size for great convenienceCompact size for great convenience.", price: "14.0", sub_sub_category_id: 11},
  {name: "Radiance Glow Bronzing Veil", description: "Add natural radiance to your complexion with this bronzer-and-highlighter powder duo. The buildable and blendable bronzer conceals imperfections and blurs away the look of pores, fine lines and wrinkles—all while imparting a natural, sun-kissed warmth with the perfect balance of red and brown tones. Paired with a colour-correcting highlighter, the set also brightens and evens skin tone with an illuminating finish. Made with fine, jet-milled formulas, these powders feel silky smooth and weightless.", price: "78.0", sub_sub_category_id: 13},
  {name: "GinZing™ Refreshing Scrub Cleanser", description: "This two-in-one scrubby cleanser is fortified with radiance-boosting panax ginseng and caffeine, while jojoba and carnauba wax gently exfoliate to help unclog pores. Skin looks smoother and brighter, feels perfectly refreshed, and is squeaky clean. Great for all skin types, the uplifting 100 percent natural essential oil blend of grapefruit, lemon, and spearmint perks you up so you’re ready to face the day.", price: "38.0", sub_sub_category_id: 17},
  {name: "Hydrating Essence Toner (150 ml)", description: "The Hydrating Essence Toner features Algenist’s patented ingredient, Alguronic Acid, to increase smoothness and improve the appearance of skin firmness. This formula combines Alguronic Acid with Witch Hazel and Chamomile to gently tone, soothe and purify. After application, skin will feel revitalized, hydrated and refreshed, while skin texture will appear softer and more even.", price: "36.0", sub_sub_category_id: 18},
  {name: "Cat Lashes Mascara", description: "Innovative hour glass-shaped brush, made with elastomer, hugs, stretches and separates each lash to deliver incredibly fanned-out lashes, defined length and eye-opening volume from corner to corner. A cone-shape tip stretches out the outer corner lashes to emphasize a cat eye look. The short bristles wrap lashes in the formula to create volume, while the longer bristles comb to create separation and definition, resulting in a clump-free finish. The new eye-opening volume mascara that creates a cat eye effect.", price: "52.0", sub_sub_category_id: 1},
  {name: "Smooth & Bright Concealer", description: "Achieve a radiant and flawless appearance in a single step. This concealer contains light-reflecting pigments to erase dark circles and signs of fatigue. Its brush applicator helps to obscure your skin imperfections precisely. Containing a moisturising formula, it keeps your skin smooth and supple.", price: "24.0", sub_sub_category_id: 5},
  {name: "Coco Rose - Lip Tint (Coral)", description: "Herbivore’s signature blend of vitamin-rich organic virgin coconut oil and delicately scented Moroccan rose absolute is infused with vibrant, natural pigments is this all-natural lip tint. It has all the same deeply moisturising, conditioning and nourishing properties of the other beloved Coco Rose lip treatments, but with a little added rosy coral colour.", price: "38.0", sub_sub_category_id: 7},
  {name: "Step-By-Step Contour Kit", description: "A cult-favorite, contouring kit that teaches you how to sculpt, shape, and define your features with three shades for defining, bronzing, and highlighting any complexion.", price: "80.0", sub_sub_category_id: 6},
  {name: "Energy Bank Sun Flash 30ml", description: "MODERN: Power up your daily routine with a shot of vitamins, Caffeine and natural Caramel to add a healthy glow to sunshine- deficient skin.\nNATURAL: Chicory Root works like Vitamin D to repair and protect while Vitamins C and E and skin plumping Hyaluronic Acid provide anti- ageing benefits.\nBEAUTY: Energise and transform your skin instantly, no sun required. ", price: "59.0", sub_sub_category_id: 20},
  {name: "Tinted Self-tanning Mist 50ml", description: "Shake, spray, blend in with hands and observe the results: a natural-looking sunkissed glow! Its extra bonus: amonoi fragrance that whisks us away to exotic destinations and a tinted color so that we can see where we've already applied it.", price: "26.0", sub_sub_category_id: 21},
  {name: "Argan Oil Shampoo 1000ml", description: "The beauty secret of Morocco, argan oil has been used for centuries by Berber women to naturally nourish, moisturize and restore shine and softness to their hair. Natural World’s luxurious shampoo taps into that power with a wonderfully creamy formula infused with precious, certified organic argan oil and an uplifting blend of five essential oils—cedarwood, rosemary, lemongrass, Orange and ylang ylang.", price: "29.0", sub_sub_category_id: 22},
  {name: "Repair: Nutri-Repair Conditioner 150ml", description: "Enriched with Sweet Almond Oil, this conditioner nourishes and repairs very dry and/or curly hair for stronger hair. Enriched with Sweet Almond Oil, this conditioner nourishes and repairs very dry and/or curly hair for stronger hair.", price: "14.0", sub_sub_category_id: 25},
  {name: "Curly Locks Curl Control Cream", description: "This curl cream has enough styling muscle to hold the most rebellious hair in check. Kinks and frizz are tamed into sleek, glossy submission.", price: "26.0", sub_sub_category_id: 26},
  {name: "4- Way Nail Buffer\n", description: "This nail buffer uses very fine grits to give your nails a perfect shape and a glossy shine. It effectively polishes your nails by smoothing rough areas and grooves, giving off the appearance of tidy and well-groomed nails.", price: "6.0", sub_sub_category_id: 28},
  {name: "Light-Up Mirror to go", description: "Travel in style with this light-up compact featuring a 2x magnification option.\nBenefits\nThe bright LED lights enable expert application in low lighting conditions.", price: "26.0", sub_sub_category_id: 29},
  {name: "Mermaid's Dream 15ml", description: "Lovers of the sea will love this metallic turquoise base. Wear the polish with flexible bristles that ease the application. This polish is inspired by the beach and gives off a carefree and luxurious mood. Paint your nails to suit your resort look and the gorgeous nature. ", price: "33.0", sub_sub_category_id: 10},
  {name: "Styling Pomade 108ml", description: "The flexible-hold pomade adds shine and definition while repelling moisture and humidity. It smoothes frizz and flyaways, and creates texture so that your tresses are perfectly manageable.\n", price: "29.0", sub_sub_category_id: 23},
  {name: "Iris Eye Massager Petal Pink", description: "Achieve luminous, youthful-looking eyes with the IRIS™ Eye Massager from FOREO, a brand who specialise in premium beauty devices. Designed with innovative Alternating T-Sonic™ technology, the tool features two modes: a gentle 'Pure Mode' to replicate the feeling of a manual massage and 'Spa Mode', which combines tapping and delicate pulsations for a professional beauty treatment experience.", price: "139.0", sub_sub_category_id: 19},
  {name: "Ultra HD Foundation", description: "Developed specifically for the TV industry's most advanced technology, Ultra HD Liquid Foundation creates a naturally flawless complexion in and out of the spotlight. Invisible under the latest, super-focused 4k lens, this revolutionary foundation features coated pigments that provide medium to buildable coverage with a lightweight, second-skin texture. The formula leaves your complexion with the same flawless results that you’d achieve with a flat foundation brush in a tap and stretch motion.\n", price: "72.0", sub_sub_category_id: 4},
  {name: "Dramatically Different Moisturizing Gel", description: "About\nDermatologist-developed formula combines oil-free hydration with skin-strengthening ingredients. Your daily moisturizer helps skin look younger, longer.", price: "60.0", sub_sub_category_id: 15},
  {name: "Stage Performer Eye: Primer", description: "Shu Uemura's first eye makeup base, designed to create a flawless finish. Incorporating true color technology, the light and comforatable texture of stage performer eye:prime creates a thin film with the best balance of smoothness and adherence for true payoff of eye shadow. it allows color to adhere smoothly. blending for graduation and drawing lines become easy, and the naunces of each color stands out, resulting in long-lasting makeup that stays true all day.\nEye:prime instantly adjusts to your skin tone, forming the ideal eye canvas for shu uemura's iconic pressed eye shadow and infinite makeup looks. the finish lasts all day, and will leave the skin around your eyes feeling moisturized.", price: "45.0", sub_sub_category_id: 2},
  {name: "Purifying Shampoo", description: "A gentle, sulfate-free daily cleanser that’s packed with nutrients and deeply moisturising.\n\nWhat it does:\nFormulated with a patented blend of sea kelp, green tea, vegetable-derived glycerin and aloe vera extracts, Purifying Shampoo by BYRD helps regulate moisture and protect hair from UV and environmental damages. Sea salt gives hair a beachy texture and added volume, while red algae, kelp and vitamin B5 prevent breakage.", price: "33.0", sub_sub_category_id: 27},
  {name: "Color: Protection & Radiance Conditioner", description: "The Protection & Radiance Conditioner allows coloured hair to last longer, thanks to its protection and nourishment from its key botanical ingredients, Hawthorn and Sweet Organic Almond Oil. It also allows your hair to be detangled more efficiently.", price: "14.0", sub_sub_category_id: 24},
  {name: "Wildflower Collection", description: "The Wildflower Collection features a range of alluring false lash designs that are sure to turn heads from across the room. It's perfect for any eye size and shape, and handmade from 100% premium natural hair. ", price: "6.0", sub_sub_category_id: 3},
  {name: "Nutrient Cream 50ml\n", description: "Susanne Kaufmann Nutrient Cream contains only natural active ingredients. They increase the skin’s natural cell process to regenerate. Moisture depots are filled up to prevent or cure dry skin. It can even be used as a daily regeneration cream during the winter since this is the season that the skin gets dry and chapped. It even protects or cures against Couperose. ", price: "134.0", sub_sub_category_id: 14},
  {name: "Rose Hip Nourishing Oil", description: "Achieve brighter, evenly toned complexion with this antiseptic oil. It contains a lightweight texture and performs gently, even on sensitive skin. Soothe dry and peeling skin with its blend of botanicals and vitamins. ", price: "44.0", sub_sub_category_id: 16},
  {name: "Compact Styler Gold Rush", description: "The compact, on-the-go brush is a great fit into your handbag. It works just as efficiently as the regular-sized Tangle Teezer, which detangles hair and removes knots without trouble. It also provides a therapeutic scalp massage while eliminating tangles.", price: "35.0", sub_sub_category_id: 30},
  {name: "GALifornia", description: "Everyone loves a GALifornia girl! Part sun, pure fun, this blush is a blend of warm pinks and shimmering gold. It features Benefit Cosmetics signature Galifornia Dreamin’ scent with notes of pink grapefruit and vanilla. A custom rounded brush allows for soft, diffused application.", price: "51.0", sub_sub_category_id: 12}
])
