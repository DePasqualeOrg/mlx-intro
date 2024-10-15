**Setup instructions for running Python notebooks in VS Code on a Mac**

Follow these instructions precisely, or the process will likely fail.

1. Install Python with `brew install python@3.12`.
2. Open the directory of this repository in VS Code.
3. Select a notebook from the sidebar. In the notebook, select *Run All* → *Python Environments...* → *Create Python Environment* → *Venv* → *Python 3.12*
4. Click "Install" to install ipykernel.
5. After the installation is complete, the notebook will run.

To run the notebook at a later time, you will again need to open the repository directory in VS Code. You can create a VS Code workspace file for convenience, which you can then open from the Finder. To run the notebook, select *Run All* → *Python Environments...*, and select the starred ("recommended") environment, which should be called `.venv (Python 3.12)`.
