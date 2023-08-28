/* Full Functional Dependency (FFD):**
- In a full functional dependency, an attribute (or a set of attributes) determines another attribute entirely.
- It means that there are no extraneous attributes present in the dependency; removing any attribute from the determining set would break the dependency.
- In essence, the determining attribute(s) uniquely determines the determined attribute.
- Achieving full functional dependency is a goal in normalization, as it helps minimize data redundancy and anomalies.
- Example: In a table of students where Student_ID determines Student_Name, and no subset of Student_ID can determine Student_Name, we have a full functional dependency.

**Transitive Dependency:**
- A transitive dependency exists when an attribute indirectly determines another attribute through a third attribute.
- In other words, attribute A determines attribute B, and attribute B determines attribute C, leading to a dependency of A → B → C.
- Transitive dependencies can lead to data redundancy and anomalies.
- Eliminating transitive dependencies is an important step in normalization.
- Example: In a table of students where Course_ID determines Instructor, and Instructor determines Department, we have a transitive dependency of Course_ID → Instructor → Department.

In summary, a full functional dependency is a straightforward direct relationship between attributes, while a transitive dependency involves a chain of dependencies between attributes through an intermediary attribute. Both concepts are important in database design and normalization to ensure data accuracy, efficiency, and integrity.*/
