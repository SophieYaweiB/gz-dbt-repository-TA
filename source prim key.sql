models: 
  - name: product
    columns:
      - name: products_id
        description: prim key test of table product
        tests:
          - unique
          - not_null
  - name: ship
    columns:
      - name: orders_id
        description: prim key test of table ship
        tests:
          - unique
          - not_null            
           - not_null
  - name: sales
    columns:
      - name: date_date
      - name: orders_id
      - name: products_id
      - name: revenue
      - name: quantity
    tests:
      - unique:
              column_name: "(orders_id || '-' || products_id)"