#Project h4ckBtu
Summary
UrbanAI is an interactive dashboard prototype developed to promote sustainable urban growth, integrating NASA's Earth observation data with local municipal information. Using APIs such as MODIS (air quality and vegetation), Landsat (land use changes), and GRACE (water resources), we combine machine learning and GIS to model predictive scenarios of urbanization and climate risks. This allows planners to explore real-time data, generate heat maps, and visual simulations of urban expansion with or without sustainable policies, proposing strategies such as suitable expansion zones, green corridors, and mobility optimization. The project addresses the central challenge of periurban cities, which face climate pressures affecting natural resources, infrastructure, and public health, through a three-step approach: data collection and integration, predictive analysis, and scenario projection. Without effective tools, urban planning fails to balance economic growth and environmental preservation; UrbanAI transforms data into actionable intelligence for resilient decisions. Its importance lies in the triple impact: social (improvement in quality of life), environmental (preservation of ecosystems), and economic (reduction of costs with future crises). Applicable to areas like the APA Cuesta Guarani, it fosters water conservation, sustainable land use, and ecotourism, positioning itself as a compass for 21st-century urban management.
Project Demonstration
https://drive.google.com/file/d/1FfpNjAn8sRPVrzck3wPhnW3atIp3ae17/view?usp=sharing
Project
http://urbanai.earth/
Project Details
What Does It Do or How Does It Work?
Core Functionality: UrbanAI is an interactive dashboard prototype designed to empower urban planners and policymakers. It enables them to monitor, analyze, and simulate sustainable urban growth scenarios by integrating vast amounts of NASA's Earth observation data with specific local municipal information. This tool aims to bridge the gap in effective monitoring and forecasting tools that currently hinder urban planners from balancing economic growth, quality of life, and environmental preservation.
Advanced Data Collection and Integration:
Utilizes open NASA APIs such as MODIS (Moderate Resolution Imaging Spectroradiometer) for air quality, vegetation health, and land use patterns.
Leverages Landsat data for high-resolution insights into land use and land cover changes.
Incorporates GRACE (Gravity Recovery and Climate Experiment) data for groundwater resource management.
Explores GEDI (Global Ecosystem Dynamics Investigation) for forest biomass and urban ecosystem monitoring.
Considers Sentinel/NASA partnerships for broader climate and environmental observations.
These global datasets are complemented with specific local municipal information, including population demographics, traffic patterns, and public health indicators.
Applies advanced machine learning algorithms to identify complex patterns of urbanization and predict climate risks.
Employs Geographic Information Systems (GIS) for precise spatial visualization of these patterns, generating critical insights like heat maps for pollution hotspots, areas vulnerable to flooding, or zones of urban pressure.
Produces visual simulations that compare urban expansion with and without the implementation of sustainable policies.
The interactive dashboard allows users to explore data in real-time, visually compare different growth scenarios, and obtain AI-driven recommendations for urban decisions. This includes proposing intelligent growth strategies such as defining suitable expansion zones, establishing green corridors, and optimizing transportation networks.
What Benefits Does It Have?
Enhanced Planning Efficiency: Provides actionable insights rapidly, significantly reducing the time and cost associated with manual data analysis for urban planners. It streamlines the decision-making process by offering clear, data-backed recommendations.
Data-Driven Decision Making: Transforms raw satellite data into visual, predictive tools that help balance economic development with crucial environmental protection. This minimizes risks such as resource depletion, habitat loss, and adverse health impacts from pollution, leading to more resilient urban environments.
Accessibility and Scalability: The integration of open-source NASA data makes the solution cost-effective and highly adaptable to various regions, from small municipalities to large metropolitan areas, promoting widespread adoption and impact.
Empowerment of Stakeholders: Enables non-expert users, including local government officials and community leaders, to simulate policy outcomes and understand their potential impacts. This fosters informed, collaborative urban strategies and greater public engagement in planning processes.
What Is the Intended Impact of the Project?
The "Why" - The Heart of Our Mission: We believe in a future where cities thrive in harmony with the natural environment. Urban areas face increasing pressures from climate change, threatening vital natural resources (water, soil, air), critical infrastructure (mobility, energy, housing), and public health. Our clear "Why" is to push the boundaries of planning to ensure resilient and sustainable cities, minimizing future costs associated with climate crises.
Social: Directly improves the quality of life, public health, and well-being of the population through better urban planning, optimized mobility, and expanded green spaces.
Environmental: Ensures the essential preservation of ecosystems and reduces the urban footprint, leading to the mitigation of heat islands, efficient water resource management, and the preservation of green areas.
Economic: Creates more resilient cities, reducing future expenditures on climate-related disasters and fostering sustainable economic models, including ecotourism and green industries.
Water Conservation: Monitoring and predicting the recharge of the Guarani Aquifer System (SAG), which is vulnerable to contamination.
Urban Growth and Infrastructure: Providing simulations to help municipalities promote land use and occupation compatible with environmental specificities, minimizing impacts on mobility and critical infrastructure.
Scenic Beauty and Sustainable Tourism: Guiding the construction of tourism infrastructure to preserve scenic beauty and encourage ecotourism in harmony with nature.
What Tools, Coding Languages, Hardware, or Software Did You Use to Develop Your Project?
Data Sources and APIs: NASA Earthdata APIs (MODIS, Landsat, GEDI, GRACE-FO), Sentinel/NASA partnerships, supplemented by local datasets from municipal APIs or CSV imports.
Python: Primarily used for data processing, machine learning model development (via libraries like scikit-learn, TensorFlow, and pandas), and backend logic.
Java: Utilized for the robust frontend development of the project, enabling complex interactive elements and a stable user interface.
JavaScript: Employed for additional frontend interactivity and dynamic web components, often integrated with frameworks like React.js.
GIS Tools: QGIS or ArcGIS for advanced spatial analysis; Leaflet or Folium for interactive web-based mapping and visualization.
Machine Learning: Jupyter Notebooks for prototyping and experimentation; Streamlit or Dash for building interactive data dashboards.
Backend: Flask or Django for API integration and data pipeline management.
Frontend Frameworks: Spring Boot or JavaFX for Java-based frontend components; React.js for JavaScript-based frontend elements.
Integrated Development Environment (IDE): Eclipse (specifically for Java development, facilitating efficient code editing, debugging, and project management).
Hardware: Standard cloud-based development environments (e.g., AWS or Google Cloud instances for processing large satellite datasets); local development on high-performance laptops, often equipped with GPUs (e.g., NVIDIA RTX series) for faster machine learning model training.
Development Tools: Git for version control and collaborative development; Docker for containerization to ensure consistent deployment and reproducibility across different environments.
How Is Your Project Creative?
Innovative Data Fusion: Creatively blends global NASA satellite data with hyper-local municipal information, creating a unique "global-local" hybrid model. This approach provides unprecedented accuracy and context-specific predictions for urban planning, moving beyond generic solutions.
Narrative-Driven Design (Golden Circle): Applies the Golden Circle framework (Why, How, What) to structure the entire project's pitch and user experience. This makes the tool not just a technical utility but a storytelling platform, where users can "narrate" their city's future through interactive scenarios and understand the mission behind the data.
Visual and AI Storytelling: Utilizes AI-generated visualizations, such as animated projections of green versus gray urban growth, to make abstract climate risks tangible and engaging. This approach inspires creative policy solutions, like "smart green zoning" and sustainable infrastructure development, by showing their direct visual impact.
Adaptability to Unique Contexts: Demonstrates tailored creativity by showing how the project can be applied to specific, sensitive regions like the APA Cuesta Guarani. Here, it integrates simulations for ecotourism and sustainable infrastructure development that preserve scenic beauty and natural resources while promoting economic growth.
What Factors Did Your Team Consider?
Multidisciplinary Expertise: The ideal team for this project is multidisciplinary, including Data Scientists/ML Engineers, Computer Engineers/DevOps, GIS/Urban Planning Specialists, and UX/UI Designers. This ensures the solution is technically robust, practically applicable, and user-friendly. A Communicator/Storyteller is also crucial for conveying the social and environmental impact.
Sustainability and Ethics: Prioritized the use of open data sources to promote equity and transparency. Ethical considerations included data privacy (e.g., anonymizing local health metrics) and bias mitigation in ML models to prevent skewed urban predictions or unfair policy recommendations.
Scalability and Feasibility: Focused on developing a prototype (MVP) that could be scaled efficiently using cloud resources to handle large volumes of satellite data without incurring prohibitive costs. The project's real-world applicability was evaluated through case studies, such as its potential use in the APA Cuesta Guarani for water conservation and sustainable land use.
User Needs and Challenges: Directly addressed critical pain points faced by urban planners, such as the lack of effective predictive tools in climate-vulnerable areas. The development process incorporated feedback loops for iterative design, ensuring accessibility and usability for non-technical users, particularly in developing regions.
Environmental and Economic Viability: Carefully weighed the environmental impacts on protected areas, ensuring the tool supports biodiversity and ecosystem preservation. Simultaneously, it aimed to deliver a strong economic return on investment by preventing future climate-related crises and fostering sustainable development.
Use of Artificial Intelligence (AI)
IA blackbox was used to transform figma screen into pre-java code.
IA gamma was used to assemble the Slide

NASA Data
https://www.earthdata.nasa.gov/
https://earthobservatory.nasa.gov/
https://eotoolkit.unhabitat.org/
Space Agency Partner & Other Data
https://www.dgi.inpe.br/catalogo/explore
https://www.meteomatics.com/en/api/available-parameters/atmospheric-trace-gases/#o3
