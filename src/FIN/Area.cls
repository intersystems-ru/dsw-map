Class FIN.Area Extends (%Persistent, %XML.Adaptor)
{

Property Name As %String(MAXLEN = 500) [ Required ];

/// Guid for polygons in js file
Property Guid As %String [ Required ];

/// Link to Wiki article
Property DataUrl As %String(MAXLEN = 500);

/// All values
Relationship Parameters As ParameterValue [ Cardinality = many, Inverse = Region ];

Index GuidIdx On Guid [ IdKey, Unique ];

Storage Default
{
<Data name="AreaDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>Name</Value>
</Value>
<Value name="3">
<Value>DataUrl</Value>
</Value>
</Data>
<DataLocation>^FIN.AreaD</DataLocation>
<DefaultData>AreaDefaultData</DefaultData>
<IdLocation>^FIN.AreaD</IdLocation>
<IndexLocation>^FIN.AreaI</IndexLocation>
<StreamLocation>^FIN.AreaS</StreamLocation>
<Type>%Library.CacheStorage</Type>
}

}
