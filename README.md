Semantic-Labeling
=================

Semantic Labeling of Images: Design and Analysis


Abstract
The process of analyzing a scene and decomposing it
into logical partitions or semantic segments is what
semantic labeling of images refers to. The capability is
inherent in human beings, when we see an image we are
readily able to classify every part of it as either a person,
building, sky etc. depending upon our learning of
surroundings and objects. In this paper we discuss the
approach to extend this capability to Computer Vision and
analyze how some features, intrinsic to a scene impact our
understanding and classification of labels.

1. Introduction
The basic understanding of an image from a human
perspective lies in the broader yet much more intensive
classification with respect to real world objects and
surroundings. This process is at a higher level and much
like any other machine-human interaction scenario we will
need to upscale from components at a lower level that fit
into computer vision analysis parameters directly to
interpret these higher level features.
In order to decompose features at a higher and more
holistic level we need to move from pixel level to a more
grouped and unified basic unit for image understanding
furthermore this also helps us reduce computational
intensiveness widely, to implement this we use a
superpixel as a basic block for scene understanding. For
our image data we are provided input images pre
segmented in superpixels. It is worth mentioning here the
basic metric behind superpixel calculation is an adaptive
clustering technique based on color and image plane space
so it does not compromise on pixel information data.
Our benchmark dataset is the “Stanford Background
Dataset”, a set of 715 benchmark images from urban and
rural scenes each image size of 320*240 pixels. Each
image here has at least one foreground object and has the
horizon positioned within the image. Each image has a
different number of superpixels as decided by the
algorithm employed to calculate superpixels which
ultimately renders the initial pixel size image measure
obsolete and our ultimate processing comes down to
number of superpixels.
The crux component of our approach involves pixel to
superpixel generation and then realizing a feature space, as
mentioned earlier the feature space parameters that fit
directly in computer vision analysis parameters and hence
we generate the high level classification. In our approach
the feature space is composed of RGB color space values,
HSV values and there manipulations as mean and
maximum values, mean texture response, maximum
texture response and superpixel position respective to a
scene. The RGB and HSV color space parameters have
been extracted from image data provided in the input
dataset while to generate mean and maximum texture
response we use LM (Leung-Malik) Filter bank which
consists of first and second derivatives of Gaussians at 6
orientations and 3 scales making a total of 36; 8 Laplacian
of Gaussian (LOG) filters; and 4 Gaussians. LM filter bank
ensures a comprehensive texture output but its relevancy to
ensure accurate classification shall be discussed in the
paper later. The position component is decided by row and
column value and is expressed in a relative scenario to the
scene for a superpixel. Furthermore optimal feature has
been decided based upon the concept of Markov Random
Field by setting edge relations between neighborhoods
generated from adjacency matrix and determining the most
common feature value and maximizing the same, this is a
very basic implementation based on the concept of
estimation via Markov Blanket for a superpixel that is the
node in our case. All these combined give up to 52
dimensional feature vector space to start our analysis of
image labeling. The feature vector space has been heavily
modified and analyzed in the process of understanding of
effective image classification and accurate labels. On the
basis of this available vector space comparative analysis
has been done for added / removed features and its impact
on specific classes.
This feature space generated for the entire dataset is
used to train out model based on Support Vector Machine,
again in SVM analysis was done for several tuning
parameters to improve accuracy of classification and
labeling. Finally a test metric has been defined to set up a
Semantic Labeling of Images: Design and Analysis
Aayush Uppal, 50134711
The State University of New York, University at Buffalo
aayushup@buffalo.edu
2
confusion matrix, this matrix represents how many of the
existing superpixels in a particular class are correctly
classified for the given input fold.
