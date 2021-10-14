from PIL import Image
from glob import glob

MAX_SIDE_LEN = 360


def add_margin(pil_img, top, right, bottom, left, color):
    width, height = pil_img.size
    new_width = width + right + left
    new_height = height + top + bottom
    result = Image.new(pil_img.mode, (new_width, new_height), color)
    result.paste(pil_img, (left, top))
    return result


ims = glob("./full/*.jpg")
for imfn in ims:
    im = Image.open(imfn)
    w, h = im.size
    ratio = max(w, h) // MAX_SIDE_LEN
    thumb_w, thumb_h = w // ratio, h // ratio
    im.thumbnail((thumb_w, thumb_h))
    im = add_margin(im, 5, 5, 5, 5, (255, 255, 255))
    try:
        im.save(imfn.replace("full", "thumb"))
    except OSError:
        im.convert("RGB").save(imfn.replace("full", "thumb"))
