# import holidays


# def is_holiday(date_col):
#     french_holiday = holidays.France()
#     is_holiday = (date_col in french_holiday)
#     return is_holiday


# def model(dbt, session):

#     dbt.config(packages=['holidays'])
#     my_sql_model_df = dbt.ref("stablecoin_activity_per_day")
#     # my_sql_model_df = dbt.source("eth", "contracts")

#     my_sql_model_df = my_sql_model_df.to_pandas()

#     my_sql_model_df["is_holiday"] = my_sql_model_df["DATE"].apply(is_holiday)

#     # print(type(my_sql_model_df))
#     # raise Exception(type(my_sql_model_df))

#     return my_sql_model_df