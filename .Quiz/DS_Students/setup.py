from setuptools import setup, find_packages

VERSION = '0.0.5' 
DESCRIPTION = 'Python package for DS_Students'
LONG_DESCRIPTION = 'Python package for DS-Students to help achieve a better learning experience'

# Setting up
setup(
       # the name must match the folder name 'verysimplemodule'
        name="DS_Students", 
        version=VERSION,
        author="Matthew Gerardino",
        author_email="matthewgerardino@gmail.com",
        description=DESCRIPTION,
        long_description=LONG_DESCRIPTION,
        packages=find_packages(),
        install_requires=["ipywidgets", "ipynb", "ipython"], # add any additional packages that 
        # needs to be installed along with your package. Eg: 'caer'
        
        keywords=['python', 'DS_Students'],
        classifiers= [
            "Development Status :: 3 - Alpha",
            "Intended Audience :: Education",
            "Programming Language :: Python :: 2",
            "Programming Language :: Python :: 3",
            "Operating System :: MacOS :: MacOS X",
            "Operating System :: Microsoft :: Windows",
        ]
)