import os.path, datetime

__all__ = [
    "__title__", "__summary__", "__uri__", "__version__", "__commit__",
    "__author__", "__email__", "__license__", "__copyright__",
]

try:
    base_dir = os.path.dirname(os.path.abspath(__file__))
except NameError:
    base_dir = None


__title__ = "pveretention"
__summary__ = "Proxmox Virtual Environment Backup Retention"
__uri__ = "https://github.com/mechinn/pveretention"

__version__ = "1.0.0"

if base_dir is not None and os.path.exists(os.path.join(base_dir, ".commit")):
    with open(os.path.join(base_dir, ".commit")) as fp:
        __commit__ = fp.read().strip()
else:
    __commit__ = None

__author__ = "Michael Chinn"
__email__ = "pveretention@mechinn.com"

__license__ = "MIT"
__copyright__ = "{year} {author}".format(year=datetime.date.today().year,author=__author__)
