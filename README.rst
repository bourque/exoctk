.. image:: /exoctk/data/images/ExoCTK_logo.png
    :alt: ExoCTK Logo
    :scale: 10%

|build-status| |docs|


Introduction
------------
ExoCTK is an open-source, modular data analysis package focused primarily on atmospheric characterization of exoplanets. The subpackages included are:

* Contamination and Visibility Calculator
* Integrations and Groups Calculator
* Transit Light-Curve Fitter
* Limb Darkening Calculator
* Atmospheric Retrievals
* Phase Constraint Calculator
* Atmospheric Forward Modeling

For more information on each package visit our documentation at `readthedocs <https://exoctk.readthedocs.io/en/latest/>`_.

Most packages are also available through interactive tools at our `web portal <https://exoctk.stsci.edu/>`_.

Installation
------------

The following are instructions on how to install the ``exoctk`` package for both users and contributors.  The ``exoctk`` repository provides a ``conda`` environment containing all of the dependencies needed to install and execute the ``exoctk`` software.


Download Anaconda or Miniconda
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

You must first have a working installation of ``anaconda`` or ``miniconda`` for Python 3.  If you do not yet have this on your system, you can visit the following links for download and installation instructions:

- `Anaconda <https://www.anaconda.com/download/>`_
- `Miniconda <https://conda.io/en/latest/miniconda.html>`_


Obtain the ``exoctk`` Package
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To obtain the ``exoctk`` package with the necessary environment files, clone the repository directly from GitHub:

::

  git clone https://github.com/ExoCTK/exoctk.git
  cd exoctk


Environment Installation
~~~~~~~~~~~~~~~~~~~~~~~~
You can install the ExoCTK ``conda`` environment via the ``env/environment-<PYTHON_VERSION>.yml`` files (relative to the parent directory of where the repository was installed).  Note that there are separate environment files for each version of ``python`` that ``exoctk`` supports.  First, one should ensure that their version of ``conda`` is up to date:

::

  conda update conda


Next, one should activate the ``base`` environment:

::

  conda activate base


Next, one can create the ``exoctk`` ``conda`` environment via the appropriate ``environment-<PYTHON_VERSION>.yml`` file. One can find these files under the ``env`` directory and should run the following command in that directory:

::

  conda env create -f environment-<PYTHON_VERSION>.yml


where ``<PYTHON_VERSION>`` is the version of python you are using (e.g. ``environment-3.6.yml``)

Lastly, one can activate the newly-created environment with:

::

  conda activate exoctk-<PYTHON_VERSION>

where again, ``<PYTHON_VERSION>`` is the version of python you are using (e.g. ``exoctk-3.6``)


Package Installation
~~~~~~~~~~~~~~~~~~~~

In order to install the ``exoctk`` package within the newly-created ``conda``
environment, run the `exoctk` setup script:

::

  python setup.py [install|develop]


Obtain the ``exoctk`` Data
~~~~~~~~~~~~~~~~~~~~~~~~~~

The ``exoctk`` data package will be available through the MAST portal soon!
Until then...

The suggested way to obtain the data is to execute the ``exoctk.utils.download_exoctk_data()`` function.  This function will download a series of compressed files from Box, extract the files, and organize them into a ``exoctk_data/`` directory.  Note that this can only be done once the ``exoctk`` package has been fully installed (see instructions above).

Lastly, export an environment variable for ``EXOCTK_DATA``.

- For Mac OS/Linux, add the line

::

    export EXOCTK_DATA='/path/to/your/unzipped/directory/exoctk_data/'

to your `.bashrc` or `.bash_profile`.

- For Windows, add an environment variable using System Utility.

Users may also download individual components of the ``exoctk`` data package directly through the `Box website <https://stsci.box.com/s/7ph64s6cfyusfcxjvih8ll5rn0ydzw86>`_.  Please note that materials must ultimately be placed within a ``exoctk_data/`` directory, and the ``EXOCTK_DATA`` environment variable be set in order for the ``exoctk`` package to work properly.


Missing Dependencies?
~~~~~~~~~~~~~~~~~~~~~
If you find that the `exoctk` `conda` is missing a required dependency, please feel free to `submit a GitHub Issue <https://github.com/ExoCTK/exoctk/issues>`_ detailing the problem.


Want to stay up-to-date with our releases and updates?
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Subscribe to our newsletter by sending an email with a blank body and subject to ``exoctk-news-subscribe-request@maillist.stsci.edu`` from the email you want to enroll. You should then receive a confirmation email with instructions on how to confirm your subscription, please be sure to do so within 48 hours.
