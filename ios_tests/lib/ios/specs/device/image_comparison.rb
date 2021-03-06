# $ rake ios[device/image_comparison]
describe 'device/image_comparison' do
  t 'image comparison' do
    image1 = File.read './data/test_normal.png'
    image2 = File.read './data/test_has_blue.png'

    # Equal to `$driver.driver.find_image_occurrence`
    # Equal to `driver.find_image_occurrence`
    find_result = find_image_occurrence full_image: image1, partial_image: image2
    assert_equal({ 'rect' => { 'x' => 0, 'y' => 0, 'width' => 750, 'height' => 1334 } }, find_result)
  end
end
