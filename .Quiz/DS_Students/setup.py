import pathlib
from setuptools import setup, find_packages

HERE = pathlib.Path(__file__).parent

VERSION = '0.0.6' 
PACKAGE_NAME = 'DS_Students'
AUTHOR = 'Matthew Gerardino'
AUTHOR_EMAIL = 'matthewgerardino@gmail.com'
URL = 'https://github.com/woz-u/DS-Student-Resources'

LICENSE = 'MIT License'
DESCRIPTION = 'Python package for DS_Students'
LONG_DESCRIPTION = (HERE / "README.md").read_text()
LONG_DESC_TYPE = "text/markdown"

INSTALL_REQUIRES = [
      'ipywidgets',
      'ipynb',
      'ipython'
]


# Setting up
setup(name=PACKAGE_NAME, 
        version=VERSION,
        description=DESCRIPTION,
        long_description=LONG_DESCRIPTION,
        long_description_content_type=LONG_DESC_TYPE,
        author=AUTHOR,
        license=LICENSE,
        author_email=AUTHOR_EMAIL,
        url=URL,
        install_requires=INSTALL_REQUIRES,
        packages=find_packages()
        )