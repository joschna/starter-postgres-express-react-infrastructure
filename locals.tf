locals {
  module_prefix = "starter"
  prefix        = "${local.module_prefix}-"

  api_auth_response = jsonencode({
    user = {
      id        = 2,
      email     = "john.doe@example.com",
      password  = "8f77bba49b2e314b1d93a882763267a4afdbd2888098092d66dca8c46b2a3434a2fdda1c",
      firstName = "John",
      lastName  = "Doe",
      createdAt = "2022-11-28T20:08:59.976Z"
    },
    token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MiwiZW1haWwiOiJqb2huLmRvZUBleGFtcGxlLmNvbSIsImlhdCI6MTY2OTY2NjEzOX0.XaJG8JEWIjqh-BAFhqasNm2dKFoFA1RAeDrRz35VkbY"
  })

  api_posts_response = jsonencode([
    {
      id      = 1,
      title   = "Bike",
      content = "Blanditiis aliquam voluptas quo. Vitae vero ad velit voluptatibus animi facilis amet consectetur dignissimos. Est ipsa deserunt ut.\n \rSuscipit et id totam. Animi non impedit eaque sit et. Debitis asperiores dolore.\n \rFacere doloribus odio reprehenderit est et voluptatem cum officiis. Assumenda quo magni accusamus inventore et quos doloribus minus nostrum. Ipsum impedit quia id incidunt consequatur alias vel labore molestiae.",
      user_id = 1,
      author  = "user@test.com"
    },
    {
      id      = 2,
      title   = "Bacon",
      content = "Et architecto repudiandae ipsam ratione in dolore ipsum. Id voluptatem ipsum quas. Quis hic accusantium aut quas consectetur. Perferendis temporibus consectetur. Minus quia aperiam qui vero mollitia enim. Aut ut id atque officia at.",
      user_id = 1,
      author  = "user@test.com"
    },
    {
      id      = 3,
      title   = "Cheese",
      content = "eveniet",
      user_id = 1,
      author  = "user@test.com"
    },
    {
      id      = 4,
      title   = "Tuna",
      content = "Consequatur dolor eos alias aliquid. Hic minus illo vel ut quae porro sit rerum. Provident et ut et consequatur. Molestiae et ut illum vel dolores sequi saepe id.\n \rIste ut itaque harum quibusdam sed tenetur minus necessitatibus ut. Quos rem dolor tempora quia facilis sit. Quod et laborum vel aliquam. Vitae numquam tenetur amet voluptatibus. Eaque nihil quam possimus magnam.\n \rSed dolor quia quae quidem distinctio minima. Reprehenderit voluptatem dolorem dolor fugit ex nisi. Libero laborum odio assumenda quia omnis quas reprehenderit et minima. Fugit quo perspiciatis nam doloremque eaque et voluptatem eveniet. In autem et. Autem est enim iusto.",
      user_id = 1,
      author  = "user@test.com"
    },
    {
      id      = 5,
      title   = "Shoes",
      content = "Sit temporibus nobis sequi vel quibusdam fugit architecto. Excepturi ipsam odio. Dolores quisquam minima velit ea quia nobis repellendus. Tempore dicta veritatis iste debitis alias omnis.",
      user_id = 1,
      author  = "user@test.com"
    },
    {
      id      = 6,
      title   = "Car",
      content = "Molestias et dolorem fugit sit iusto. Voluptatum nobis illum molestiae libero aut placeat. Perferendis ea id occaecati veritatis molestias. Error autem nemo magni corporis sunt vitae perferendis. Blanditiis explicabo tempora est qui natus veniam quia eligendi omnis.",
      user_id = 1,
      author  = "user@test.com"
    },
    {
      id      = 7,
      title   = "Shirt",
      content = "ut",
      user_id = 1,
      author  = "user@test.com"
    },
    {
      id      = 8,
      title   = "Pants",
      content = "Corrupti expedita voluptatem aut quia dignissimos.",
      user_id = 1,
      author  = "user@test.com"
    },
    {
      id      = 9,
      title   = "Mouse",
      content = "aspernatur",
      user_id = 1,
      author  = "user@test.com"
    },
    {
      id      = 10,
      title   = "Table",
      content = "qui",
      user_id = 1,
      author  = "user@test.com"
    }
  ])
}
