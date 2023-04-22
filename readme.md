


# vtubers-dataset

This repo downloads the Vtubers illustrations dataset introduced in [PAniC-3D: Stylized Single-view 3D Reconstruction from Portraits of Anime Characters](https://github.com/ShuhongChen/panic3d-anime-reconstruction).  As described in that repo, this downloader will add to `./_data/lustrous`


## setup

Make a copy of `./_env/machine_config.bashrc.template` to `./_env/machine_config.bashrc`, and set `$PROJECT_DN` to the absolute path of this repository folder.  The other variables are optional.

Run these lines from the project directory to pull the image from the main project and enter a container; note these are bash scripts inside the `./make` folder, not `make` commands.

    make/docker_pull
    make/shell_docker


## download

First, download the `panic_data_models_merged.zip` from the project's [drive folder](https://drive.google.com/drive/folders/1Zpt9x_OlGALi-o-TdvBPzUPcvTc7zpuV?usp=share_link), and merge it with this repo's file structure.

There should be a `./_data/lustrous/raw/vroid/metadata.json`, which the following commands will use to download the models.  Note that `metadata.json` also contains all vroid model attributions.

    # run the downloader
    python3 -m _scripts.download_vtubers


## citing

If you use our repo, please cite our work:

    @inproceedings{chen2023panic3d,
        title={PAniC-3D: Stylized Single-view 3D Reconstruction from Portraits of Anime Characters},
        author={Chen, Shuhong and Zhang, Kevin and Shi, Yichun and Wang, Heng and Zhu, Yiheng and Song, Guoxian and An, Sizhe and Kristjansson, Janus and Yang, Xiao and Matthias Zwicker},
        booktitle={Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern Recognition (CVPR)},
        year={2023}
    }



