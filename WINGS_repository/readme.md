Provenance Corpus (WINGS)
=================

This is the WINGS Provenance corpus. The corpus is a partial snapshot taken from the 
WINGS endpoint(http://wind.isi.edu:8890/sparql) the 29-10-2012. The corpus is 
[maintained at GitHub]. For more information, read about the 
[Provenance corpus in the Wf4Ever wiki](http://www.wf4ever-project.org/wiki/display/docs/Provenance+corpus).

Each of the folders represent a [Wings](http://www.wings-workflows.org/) 
workflow template. The folders have the name of the template they represent. For example:
SimilarWords.

Within a workflow template folder, different workflow runs are shown in separate folders (starting with
the "Account" name). The original file of the template, a diagram and a short RDF description 
(version of the template, system where it was created, etc.) are also provided. Note that the runs
might specialize the template: the number of steps is going to be the same, but some components could
be different in different runs of the same template.

Each run is described according to the [PROV standard](http://www.w3.org/TR/prov-o/).
Additional metadata of the account is providing using [OPMW](http://www.opmw.org/model/OPMW/) relationships.

Please note that the traces included here are mostly modeled with PROV. We have avoided adding
how they are connected to the template components, because that is out of the scope of PROV.
However this information is included in the public repository using the [OPMW](http://www.opmw.org/model/OPMW/) vocabulary.
If want any information about the resources exposed in this corpus, just paste the URI
of the resource in your browser. For example if you paste the next process:
http://www.opmw.org/export/resource/WorkflowExecutionProcess/CLASSIFIER1348698692976 you could see easily that it corresponds to the template:
http://www.opmw.org/export/resource/WorkflowTemplateProcess/SAMPLE10THENMODELANDCLASSIFY_CLASSIFIER.

Intermediate results, inputs and outputs are not included in subfolders because they are available online. Just look for the property
prov:atLocation of the entities in the RDF.
Example: <http://www.opmw.org/export/resource/WorkflowExecutionArtifact/8954A55A85DD9935C98B7F2702F832A4> a <http://www.w3.org/ns/prov#Entity>
				<http://www.w3.org/ns/prov#atLocation> "http://www.opmw.org/datasets/resource/2/203/c7457d4a6cfd68f0144c8b0217ba3586"^^xsd:anyURI ;

Licensing
---------

Each workflow is exposed using the next license:
http://creativecommons.org/licenses/by-sa/3.0
This information is also available in the RDF of each account.

Do you want more traces? Check the endpoint!
---------
Since this is a snapshot of the repository, new traces may have been added.
Check them out!
Go to http://wind.isi.edu:8890/sparql
and try this query: 
select distinct ?template where {?template a <http://www.opmw.org/ontology/WorkflowTemplate>}

Any of the links returned by the endpoint can be resolved in your browser.

