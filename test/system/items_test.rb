require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  setup do
    @item = items(:one)
  end

  test "visiting the index" do
    visit items_url
    assert_selector "h1", text: "Items"
  end

  test "creating a Item" do
    visit items_url
    click_on "New Item"

    fill_in "Condition", with: @item.condition
    fill_in "Desc", with: @item.desc
    fill_in "Image1", with: @item.image1
    fill_in "Image2", with: @item.image2
    fill_in "Image3", with: @item.image3
    fill_in "Image4", with: @item.image4
    fill_in "Location", with: @item.location
    fill_in "Price", with: @item.price
    fill_in "Shipment", with: @item.shipment
    fill_in "Size", with: @item.size
    fill_in "Tag", with: @item.tag
    fill_in "Title", with: @item.title
    click_on "Create Item"

    assert_text "Item was successfully created"
    click_on "Back"
  end

  test "updating a Item" do
    visit items_url
    click_on "Edit", match: :first

    fill_in "Condition", with: @item.condition
    fill_in "Desc", with: @item.desc
    fill_in "Image1", with: @item.image1
    fill_in "Image2", with: @item.image2
    fill_in "Image3", with: @item.image3
    fill_in "Image4", with: @item.image4
    fill_in "Location", with: @item.location
    fill_in "Price", with: @item.price
    fill_in "Shipment", with: @item.shipment
    fill_in "Size", with: @item.size
    fill_in "Tag", with: @item.tag
    fill_in "Title", with: @item.title
    click_on "Update Item"

    assert_text "Item was successfully updated"
    click_on "Back"
  end

  test "destroying a Item" do
    visit items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item was successfully destroyed"
  end
end
