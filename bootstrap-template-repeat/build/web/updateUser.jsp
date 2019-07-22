
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            input[type=text], select {
                width: 50%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }

            input[type=submit] {
                width: 50%;
                background-color: #4CAF50;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            input[type=submit]:hover {
                background-color: #45a049;
            }

            div {
                border-radius: 5px;
                background-color: #f2f2f2;
                padding: 20px;
            }
            .button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
        </style> 

    </style>
</head>
<body>
    <h1>Update Product</h1>

    <div>
        <form action="Product" method="POST">

            <input type="text"  name="id" value="${CURRENT_PRODUCT.id}"/>
            <label for="id">Id</label>

            <input type="text"  name="name" value="${CURRENT_PRODUCT.name}"/>
            <label for="name">Product Name</label>

            <input type="text"  name="longname" value="${CURRENT_PRODUCT.longName}"/>
            <label for="longname">Long Product Name</label>

            <input type="text"  name="description" value="${CURRENT_PRODUCT.description}"/>
            <label for="description">Product Description</label>

            <input type="text"  name="imageurl" value="${CURRENT_PRODUCT.imageURL}"/>
            <label for="imageurl">Image URL</label>


            <input type="hidden" name="function" value="submitUpdateProduct"/>
            <input type="submit" class="button" value="Update Product" />
        </form>
    </div>
</body>
</html>
