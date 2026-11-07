# Food Bank Location-Allocation Optimization in Tehran

**Mathematical Model Extension, GAMS Implementation, and Sensitivity Analysis**

## Project Overview

This repository presents an academic optimization project investigating the hypothetical establishment of a food bank in Tehran, Iran.

The project extends a published food bank nutrition optimization framework by incorporating facility location decisions and adapting selected food, cost, and geographic parameters to the Tehran context.

The study aims to explore how mathematical optimization can support food bank location planning and food resource allocation under nutritional, economic, and operational considerations.

**Project date:** June 2025  
**Academic context:** Operations Research II, B.Sc. Industrial Engineering, Shahid Beheshti University  
**Software:** GAMS  
**Methods:** Mathematical optimization, location-allocation modeling, sensitivity analysis, and scenario-based model verification

## Relationship to OR1

This project is a continuation and extension of an earlier Operations Research project (OR1).

In OR1, my teammate and I collaboratively studied and implemented a published linear programming model for food bank nutrition optimization in GAMS.

For OR2, I independently developed the mathematical extension for the Tehran case study. The GAMS implementation and subsequent sensitivity analyses were completed collaboratively.

**Previous project:** [Food Bank Nutrition Optimization Using GAMS — OR1](https://github.com/MaralSmi/food-bank-nutrition-optimization-gams)

## Original Research Foundation

The mathematical foundation of this project is based on:

**The Food Bank of Madrid: A Linear Model for Optimal Nutrition**  
*International Journal of Environmental Research and Public Health*, 2020, 17(21), 8097.

[Original Research Article](https://doi.org/10.3390/ijerph17218097)

The original research examines food procurement and nutritional allocation through mathematical optimization.

Our OR2 project builds upon this framework and investigates additional decisions relevant to a hypothetical food bank in Tehran.

## Mathematical Model Extension

The Tehran extension addresses several aspects of food bank planning.

### 1. Facility Location

A facility location decision was introduced to evaluate potential locations across Tehran's 22 municipal districts.

The model considers geographic relationships and distance-related restrictions to support the selection of a suitable location.

### 2. Food Basket Adaptation

The food basket assumptions were modified to better reflect the Iranian context considered in the academic case study.

### 3. Local Cost Parameters

Food price parameters were adapted using information available for Iran during the project period.

These prices represent the approximate conditions considered in June 2025 and should not be interpreted as current market prices.

### 4. Food Procurement and Allocation

The extended optimization framework considers food procurement, resource allocation, and relevant nutritional and operational constraints.

### 5. Optimization Implementation

The mathematical model was implemented in GAMS to investigate the location-allocation problem under the selected assumptions.

The repository contains the main model and additional scenario files used for sensitivity analysis and verification.

## Sensitivity Analysis and Model Verification

Sensitivity analysis and scenario-based verification were conducted to investigate how changes in selected input parameters and constraints affected model behavior.

The experiments included:

- **Maximum distance:** Modifying distance-related parameters or restrictions.
- **Vegetable costs:** Changing selected food cost parameters.
- **Location-related decisions:** Testing conditions involving the location decision variable associated with `y8`.
- **Constraint modifications:** Adding or removing selected constraints to examine the resulting behavior.

These tests were used to assess whether the model responded logically to alternative scenarios and to identify potential formulation issues.

They do not independently establish the model's real-world validity or guarantee that all assumptions are correct.

## Repository Structure

| File | Description |
|---|---|
| `or2.gms` | Main GAMS model for the Tehran food bank optimization problem |
| `varification max distance1.gms` | Scenario examining changes in maximum distance |
| `verification vegetable cost.gms` | Scenario examining changes in vegetable costs |
| `verification y8.gms` | Scenario examining a location-related decision |
| `README.md` | Project documentation |

The sensitivity-analysis files contain modified parameter values or constraints for testing specific scenarios. They should be interpreted as experimental model variants rather than independent optimization projects.

## Data Sources and Limitations

The project was completed in **June 2025**.

Locally relevant data were collected from available Iranian sources, including official sources where possible. Due to limitations in data availability and consistency, some parameters required estimates or modeling assumptions.

Important limitations include:

- **Time-sensitive prices:** Food prices may have changed substantially since June 2025 because of inflation.
- **Data availability:** Some parameters could not be established using fully comprehensive or consistently reliable datasets.
- **Simplified assumptions:** The mathematical formulation necessarily simplifies aspects of real-world food bank operations.
- **Academic scope:** The results represent a hypothetical planning case study rather than an operational recommendation.

The model and its results should be interpreted within these limitations.

## Project Presentation

A university project presentation was prepared in Persian to explain the Tehran case study and the modeling approach.

**Presentation language:** Persian (Farsi).

[View OR2 Project Presentation on Canva](https://www.canva.com/design/DAGnvFBnG08/vjWzapaR4JB7UmTYOXAZ6w/view)

## Team Members and Contributions

This project was completed collaboratively by:

- **Maral Esmikhani**
- **Melika Rostami**

### My Individual Contribution — Maral Esmikhani

- Independently formulated the mathematical extension of the original food bank optimization model for the Tehran case study.
- Developed the modeling approach for incorporating facility location and locally relevant planning considerations.

### Collaborative Contributions

- Implemented the extended model in GAMS.
- Conducted sensitivity analysis by modifying selected parameters and constraints.
- Performed scenario-based checks of model behavior.

The original research model is attributed to the authors of the referenced publication.

## How to Explore the Project

1. Download the `.gms` files from this repository.
2. Open `or2.gms` in a compatible GAMS environment.
3. Review the sets, parameters, decision variables, objective function, and constraints.
4. Examine the sensitivity-analysis files to identify changes made for individual scenarios.
5. Run the models using an appropriate GAMS solver, subject to the availability of required data and software.

## Related Project

**OR1 — Food Bank Nutrition Optimization Using GAMS**

[View the Original Model Implementation](https://github.com/MaralSmi/food-bank-nutrition-optimization-gams)

## Research Reference

*The Food Bank of Madrid: A Linear Model for Optimal Nutrition.* (2020). *International Journal of Environmental Research and Public Health*, 17(21), 8097.

https://doi.org/10.3390/ijerph17218097

## Author

**Maral Esmikhani**  
B.Sc. Student in Industrial Engineering  
Shahid Beheshti University, Tehran, Iran

[GitHub Profile](https://github.com/MaralSmi)
