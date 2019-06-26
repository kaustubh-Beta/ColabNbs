#!/usr/bin/env bash

echo preparing dataset .......
mkdir data

mkdir -p "data/train"
mkdir -p "data/test"
mkdir -p "data/valid"

echo created training data folder ....
echo created test data folder ....
echo created validation data folder ....
for class_F in "$@"
do
  mkdir -p "data/train/$class_F";
  mkdir -p "data/test/$class_F";
  mkdir -p "data/valid/$class_F";

  cp 101_ObjectCategories/$class_F/image_00[0-5][0-9].jpg data/train/$class_F/
  cp 101_ObjectCategories/$class_F/image_0060.jpg data/train/$class_F/
  cp 101_ObjectCategories/$class_F/image_006[1-9].jpg data/valid/$class_F/
  cp 101_ObjectCategories/$class_F/image_0070.jpg data/valid/$class_F/
  cp 101_ObjectCategories/$class_F/image_00[7-9]* data/test/$class_F/
done

echo process completed !
