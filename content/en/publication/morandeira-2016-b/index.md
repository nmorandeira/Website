---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: Assessment of SAR speckle filters in the context of object-based image analysis
subtitle: ''
summary: ''
authors:
- N S Morandeira
- R. Grimson
- P. Kandus
tags: []
categories: []
date: '2016-01-01'
lastmod: 2020-10-12T23:48:48-03:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ''
  focal_point: ''
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
publishDate: '2020-10-13T02:48:47.976345Z'
publication_types:
- '2'
abstract: 'The initial step in most object-based classification methodologies is the
  application of a segmentation algorithm to define objects. In the context of synthetic
  aperture radar (SAR) image analysis, the presence of speckle noise might hamper
  the segmentation quality. The aim of this study is to assess the segmentation performance
  of SAR images when no filter or different filters are applied before segmentation.
  In particular, the performance of the mean-shift segmentation algorithm combined
  with different adaptive and non-adaptive filters is assessed based on both synthetic
  and natural SAR images. Studied filters include the non-adaptive Boxcar filter and
  four adaptive filters: the well-known Refined Lee filter and three recently proposed
  non-local filters differing, in particular, in their dissimilarity criteria: the
  Hellinger and the Kullback-Leibler filters are based on stochastic distances, whereas
  the NL-SAR filter is based on the generalized likelihood ratio. Two measures were
  used for quality assessment: -index and -index. Over-segmentation was assessed by
  the -index, the ratio of the resulting number of segments to the number of connected
  components of the ground-truth classes. The accuracy of the best possible classification
  given on the segmentation result was assessed with ground truth information by maximizing
  the -index. A Monte Carlo experiment conducted on synthetic images shows that the
  quality measures significantly differ for the applied filters. Our results indicate
  that the use of an adaptive filter improves the performance of the segmentation.
  In particular, the combination of the mean-shift segmentation algorithm with the
  NL-SAR filter gives the best results and the resulting process is less sensitive
  to variations in the mean-shift operational parameters than when applying other
  filters or no filter. The results obtained may help improve the reliability of land-cover
  classification analyses based on an object-based approach on SAR data.'
publication: '*Remote Sensing Letters*'
doi: 10.1080/2150704X.2015.1117153
---
