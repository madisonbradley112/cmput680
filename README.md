The project, as described below, can be found in the [wiki page](https://github.com/madisonbradley112/cmput680/wiki) of this repository. 

## Introduction:
Transformation passes that change code layout are an essential component of compiler optimization pipelines. A blind spot in the LLVM optimization pipeline is that contributions to these pipelines are overwhelmingly local. LLVM's code layout passes are modular by design, but this obscures interactions between passes preceding and following them in the pipeline. While there are conceptual advantages to this (e.g. developer freedom to reorder passes), in practice, passes often depend on the code transformations from prior passes to perform effective optimizations. A sensitivity analysis done by Torres et al. indicates that when considered alone passes minimally impact execution time, but alongside other passes the impact of a single pass jumps immensely (https://doi.org/10.1007/978-3-319-91479-4_23), demonstrating the importance of a holistic perspective. Although the importance of pass dependencies is understood, there is little work done in holistically mapping code layout transformations in the pipeline. To address this gap, we will review and map out the opt pipeline's code layout passes alongside their theoretical background.

## Method: 

We will investigate the LLVM 20 source for each code-layout pass, recording its actions, compiler heuristics, links to theoretical references and papers, and a short description of its role in the pipeline with respect to other passes. This investigation will include profile-guided optimizations, and optimizations at the IR and MIR levels. We will classify this information in a taxonomy by transformation type and IR unit, hosted here on a publicly-available GitHub Wiki with cross links to relevant passes and theoretical references. The collected data will be synthesized into a dependency graph/diagram that briefly summarizes the code layout transformations and where they occur. In parallel to this investigation, we will explore and document the theoretical foundations and modern research that is relevant to LLVM's code transformation optimizations. 

## Significance: 

Significance: We aim to produce a publicly available comprehensive overview of LLVM code transformation passes and their theoretical backgrounds to empower further research on pass development and ordering. This will contribute to a global understanding of the pipeline, providing avenues for further improvements in code layout pass design. While previous works have investigated the performance impact on pass orderings, none (to our knowledge) systematically document cumulative layout transformations in the LLVM opt pipeline; our research aims to fill that gap. 

## Wiki Index: 
