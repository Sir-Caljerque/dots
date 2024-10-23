# 1 - Intro

**AWS Billing and Cost Management** is the service that you use to pay your AWS bill, monitor your usage, and budget your costs. Billing and Cost Management enables you to forecast and obtain a better idea of what your costs and usage might be in the future so that you can plan ahead.

You can set a custom time period and determine whether you would like to view your data at a monthly or daily level of granularity.

With the filtering and grouping functionality, you can further analyze your data using a variety of available dimensions. The AWS Cost and Usage Report Tool enables you to identify opportunities for optimization by understandingyour cost and usage data trends and how you are using your AWS implementation.

# 2 - Billing dashboard

The **AWS Billing Dashboard** lets you view the status of your month-to-date AWS expenditure, identify the services that account for the majority of your overall expenditure, and understand at a high level how costs are trending.

One of the graphs that is located on the dashboard is the Spend Summary.**The Spend Summary** shows you how much you spent last month, the estimated costs of your AWS usage for the month to date, and a forecast for how much you are likely to spend this month.

Another graph is **Month-to-Date Spend by Service**,which shows the top services that you use most and the proportion of costs thatare attributed to that service.

# Tools
From the billing dashboard, you can access several other cost management tools that you can use to estimate and plan your AWS costs.These tools include AWS Bills, AWS Cost Explorer, AWS Budgets, and AWS Cost and Usage Reports.

# Monthly Bills
The **AWS Bills page** lists the costs that you incurred over the past month for each AWS service, with a further breakdown by AWS Region and linked account.

This tool gives you access to the most up-to-date information on your costs and usage, including your monthly bill and the detailed breakdown of the AWS services that you use.

# 3 - Cost explorer

The **AWS Billing and Cost Management** console includes the **Cost Explorer page** for viewing your AWS cost data as a graph

With Cost Explorer, you can visualize, understand, and manage your AWS costs and usage over time.

The Cost Explorer includes a default report that visualizes your costs and usage for your top cost-incurring AWS services. The monthly running costs report gives you an overview of all your costs for the past 3 months.It also provides forecasted numbers for the coming month, with a corresponding confidence interval.

The Cost Explorer is a free tool that enables you to:
- View charts of your costs.
- View cost data for the past 13 months.
- Forecast how much you are likely to spend over the next 3 months.
- Discover patterns in how much you spend on AWS resources over time and identify costproblem areas.
- Identify the services that you use the most
- View metrics, like which Availability Zones have the most traffic or which linked AWS account is used the most.



# 4 - Forecast and track costs

![[Pasted image 20240802061945.png]]

**AWS Budgets** uses the cost visualization that is provided by Cost Explorer to show you the status of your budgets and to provide forecasts of your estimated costs.

You can also use AWS Budgets to create notifications forwhen you go over your budget for the month,or when your estimated costs exceed your budget. Budgets can be tracked at the monthly, quarterly, or yearly level, and you can customize the start and end dates. Budget alerts can be sent via email or via **Amazon Simple Notification Service (Amazon SNS).**

> [!NOTE]
> The AWS Billing budgets panel showing budget names, current and future costs and usages, and headings for current and forecasted versus budgets. 

# 5 - Cost and usage reports

![[Pasted image 20240802062034.png]]

The **AWS Cost and Usage Report** is a single location for accessing comprehensive information about your AWS costs and usage. This tool lists the usage for each service category that is used by an account (and its users) in hourly or daily line items,and any tax that you activated for tax allocation purposes.

You can choose to have AWS to publish billing reports to an S3 bucket. These reports can be updated once a day.

