class AdventuresPresenter
  private
  attr_reader :adventures

  public
  attr_reader :grid_rules

  def initialize(adventures)
    @adventures = adventures
    @grid_rules = build_grid_rules
  end

  def adventures_groups
    adventures.in_groups_of(12)
  end

  def adventures_slice_of_4(adventures_group)
    adventures_group.compact.each_slice(4)
  end

  def build_grid_rules
    [
      {
        grid_class: "big-card-left",
        adventures_styling_rules: [
          {
            div_class: "big-adv",
            position_class: "left-item-full",
            image_class: "big-paysage",
            hidden: false
          },
          {
            div_class: "medium-adv",
            position_class: "right-item-half",
            image_class: "medium-portrait",
            hidden: false
          },
          {
            div_class: "small-adv",
            position_class: "right-item-up",
            image_class: "small-paysage",
            hidden: true
          },
          {
            div_class: "small-adv",
            position_class: "right-item-down",
            image_class: "small-paysage",
            hidden: true
          }
        ]
      },
      {
        grid_class: "medium-card-left",
        adventures_styling_rules: [
          {
            div_class: "medium-advs",
            position_class: "left-item-2r",
            image_class: "medium-paysage",
            hidden: false
          },
          {
            div_class: "medium-adv",
            position_class: "center-item-half",
            image_class: "medium-portrait",
            hidden: false
          },
          {
            div_class: "small-adv",
            position_class: "md-right-item-up",
            image_class: "small-paysage",
            hidden: true
          },
          {
            div_class: "small-adv",
            position_class: "md-right-item-down",
            image_class: "small-paysage",
            hidden: true
          }
        ]
      },
      {
        grid_class: "big-card-right",
        adventures_styling_rules: [
          {
            div_class: "big-adv",
            position_class: "right-item-full",
            image_class: "big-paysage",
            hidden: false
          },
          {
            div_class: "medium-adv",
            position_class: "left-item-half",
            image_class: "medium-portrait",
            hidden: false
          },
          {
            div_class: "small-adv",
            position_class: "left-item-up",
            image_class: "small-paysage",
            hidden: true
          },
          {
            div_class: "small-adv",
            position_class: "left-item-down",
            image_class: "small-paysage",
            hidden: true
          }
        ]
      },
      {
        grid_class: "medium-card-right",
        adventures_styling_rules: [
          {
            div_class: "medium-advs",
            position_class: "right-item-2r",
            image_class: "medium-paysage",
            hidden: false
          },
          {
            div_class: "medium-adv",
            position_class: "left-item-half",
            image_class: "medium-portrait",
            hidden: false
          },
          {
            div_class: "small-adv",
            position_class: "md-left-item-up",
            image_class: "small-paysage",
            hidden: true
          },
          {
            div_class: "small-adv",
            position_class: "md-left-item-down",
            image_class: "small-paysage",
            hidden: true
          }
        ]
      }
    ]
  end
end
