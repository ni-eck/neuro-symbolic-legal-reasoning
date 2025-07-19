% Case facts
parsed_money_received('KritiNet', 'grant', 42000000). % [5],([6];[7];[8];[10],None)
monetary_subsidy('grant'). % [-];[11]
direct_targeting('grant', 'KritiNet'). % [-];[11]
active_resource_flow('grant', 'state capital'). % [-];[11]
active_resource_flow('grant', 'ERDF capital'). % [-];[11]
resource_of_central_state_entity('state capital'). % [8]
resource_from_international_or_union_fund('ERDF capital'). % [7]
discretion_by_national_authorities('ERDF capital'). % [6]
adopted_by('grant', 'ministry of digital governance'). % [1]
public_state_authority('ministry of digital governance', 'greece'). % [-]