#!/bin/bash
# Simplify terminal loggins by echo variables
export success="models downloaded to ~/git/openvino-models/intel."
export fail="Failed to download. Check model names, permissions and virtual environments."

# Create folder or notify it already exists
if mkdir ~/git/openvino-models
then
  echo "Created ~/git/openvino-models folder."
else
  echo "Folder already exists. Downloading."
fi

# go to model_downloader folder inside openvino installation
cd /opt/intel/openvino/deployment_tools/tools/model_downloader

for model in "face-detection-adas-binary-0001","head-pose-estimation-adas-0001","landmarks-regression-retail-0009","gaze-estimation-adas-0002"
do
  if sudo python3.6 downloader.py --name "$model" --output_dir ~/git/openvino-models
  then
    echo $model $success
  else
    echo $fail
  fi
done
