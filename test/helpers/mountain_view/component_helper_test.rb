require 'test_helper'

class MountainView::ComponentHelperTest < ActionView::TestCase
  test "renders the proper component" do
    rendered = render_component("header", id: 1, title: "Pepe")

    expected = /Pepe/

    assert_match expected, rendered
    assert_match %r(href=\"\/products\/1\"), rendered
  end

  test "accepts a block" do
    rendered = render_component "form", id: 1, title: "Pepe" do |var|
      "INSIDE #{var}"
    end

    expected = /CONTENT: \[INSIDE Pepe\]/

    assert_match expected, rendered
  end

  test " renders correctly if block doesn't given" do
    rendered = render_component "form", id: 1, title: "Pepe"

    expected = /CONTENT: \[\]/

    assert_match expected, rendered
  end
end
