	<div>
		<table class="table"
			style="margin-left: 0px;">
			<tbody>
				<g:each in="${customFields.entrySet()}" status="i"
					var="e">
					<tr>
						<td style="width:100px;">
							<b>${e.value.key}<g:if test="${e.key.isMandatory}"><span class="req">*</span></g:if></b>
						</td>
						<td>
							<div class="cfStaticVal">
								${e.value.value}
							</div>
							<div class="cfInlineEdit" style="display:none;">

                                <obv:hasPermissionForCustomField model="[observationInstance:observationInstance, customFieldInstance:e.key]">
									<g:render template="customFieldTemplate" model="['observationInstance':observationInstance, 'customFieldInstance':e.key, hideLabel:true]"/>
                                </obv:hasPermissionForCustomField>
							</div>	
						</td>
						<td style="width:50px;">	
                            <obv:hasPermissionForCustomField model="[observationInstance:observationInstance, customFieldInstance:e.key]">
								<div class="editCustomField btn btn-small btn-primary" onclick="customFieldInlineEdit($(this),  '${createLink(controller:'observation', action:'updateCustomField')}', '${e.key.id}', ${observationInstance.id}); return false;">Edit</div>
						    </obv:hasPermissionForCustomField>	
						</td>
					</tr>
				</g:each>
			</tbody>
		</table>
	</div>

