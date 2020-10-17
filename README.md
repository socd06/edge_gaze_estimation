# edge_gaze_estimation
[![Python Version](https://img.shields.io/badge/Python-3.5|3.6-blue.svg)](https://shields.io/)
[![GitHub license](https://img.shields.io/github/license/socd06/edge-smart-queue)](https://github.com/socd06/edge-smart-queue/blob/master/LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)

Edge computer pointer controller using Intel OpenVINO pre-trained inference models.

## Project Set Up and Installation
### Requirements
- Ubuntu 18.04 LTS
- Python > 3.5, 3.6
- A virtual environment

### Download and Install Intel OpenVINO
- [Download OpenVINO](https://software.intel.com/content/www/us/en/develop/tools/openvino-toolkit/choose-download.html)
- [Go through OpenVINO Getting Started Guide](https://docs.openvinotoolkit.org/latest/index.html)

### Download inference models using the Model Downloader
Go to your OpenVINO Model Downloader folder, for instance:

`cd /opt/intel/openvino/deployment_tools/tools/model_downloader`

The models to download are the following:

- [Face Detection](https://docs.openvinotoolkit.org/2020.3/omz_models_intel_face_detection_adas_binary_0001_description_face_detection_adas_binary_0001.html)

- [Head Pose Estimation](https://docs.openvinotoolkit.org/2020.3/_models_intel_head_pose_estimation_adas_0001_description_head_pose_estimation_adas_0001.html)

- [Facial Landmarks Regression](https://docs.openvinotoolkit.org/2020.3/_models_intel_landmarks_regression_retail_0009_description_landmarks_regression_retail_0009.html)

- [Gaze Estimation](https://docs.openvinotoolkit.org/2020.3/_models_intel_gaze_estimation_adas_0002_description_gaze_estimation_adas_0002.html)

#### Download all OpenVINO pre-trained models:

You can download all OpenVINO pre-trained models with the following command:

`sudo python3.6 downloader.py --all --output_dir ~/git/openvino-models`

<em> By default, `--output_dir` is not required and the models are downloaded to the `model_downloader/intel` directory. The `home/user/git/openvino-models` folder is a personal choice. </em>

#### Download all required models, all precisions
For this project, all precisions were downloaded since this is still a work in progress and model precisions have not been compared yet.

The `dl.sh` script will download all four models and store them at `~/git/openvino-models`:

`./scripts/dl.sh`

##### Download each model individually
If for some reason the script doesn't work, models can still be downloaded individually.

- [Face Detection](https://docs.openvinotoolkit.org/2020.3/omz_models_intel_face_detection_adas_binary_0001_description_face_detection_adas_binary_0001.html)

`sudo python3.6 downloader.py --name face-detection-adas-binary-0001 --output_dir ~/git/openvino-models`

- [Head Pose Estimation](https://docs.openvinotoolkit.org/2020.3/_models_intel_head_pose_estimation_adas_0001_description_head_pose_estimation_adas_0001.html)

`sudo python3.6 downloader.py --name head-pose-estimation-adas-0001 --output_dir ~/git/openvino-models`

- [Facial Landmarks Regression](https://docs.openvinotoolkit.org/2020.3/_models_intel_landmarks_regression_retail_0009_description_landmarks_regression_retail_0009.html)

`sudo python3.6 downloader.py --name landmarks-regression-retail-0009 --output_dir ~/git/openvino-models`

- [Gaze Estimation](https://docs.openvinotoolkit.org/2020.3/_models_intel_gaze_estimation_adas_0002_description_gaze_estimation_adas_0002.html)

`sudo python3.6 downloader.py --name gaze-estimation-adas-0002 --output_dir ~/git/openvino-models`

*TODO:* Explain the setup procedures to run your project. For instance, this can include your project directory structure, the models you need to download and where to place them etc. Also include details about how to install the dependencies your project requires.

## Demo
*TODO:* Explain how to run a basic demo of your model.

## Documentation
*TODO:* Include any documentation that users might need to better understand your project code. For instance, this is a good place to explain the command line arguments that your project supports.

## Benchmarks
*TODO:* Include the benchmark results of running your model on multiple hardwares and multiple model precisions. Your benchmarks can include: model loading time, input/output processing time, model inference time etc.

## Results
*TODO:* Discuss the benchmark results and explain why you are getting the results you are getting. For instance, explain why there is difference in inference time for FP32, FP16 and INT8 models.

## Stand Out Suggestions
This is where you can provide information about the stand out suggestions that you have attempted.

### Async Inference
If you have used Async Inference in your code, benchmark the results and explain its effects on power and performance of your project.

### Edge Cases
There will be certain situations that will break your inference flow. For instance, lighting changes or multiple people in the frame. Explain some of the edge cases you encountered in your project and how you solved them to make your project more robust.
