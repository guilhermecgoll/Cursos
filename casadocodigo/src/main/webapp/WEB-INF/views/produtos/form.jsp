<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset=ISO-8859-1">
<title>Android bla bla</title>
</head>
<body>
<!-- Com a taglib do Spring, é possível chamar o controle através das iniciais da classe mapeada.
PC = ProdutosController # método "gravar" -->
<form:form action="${s:mvcUrl('PC#gravar').build() }" method="POST" commandName="produto">
	<div>
		<label>Título</label>
		<form:input path="titulo" />
		<form:errors path="titulo"/>
	</div>
	<div>
		<label>Descrição</label>
		<form:textarea rows="10" cols="20" path="descricao" />
		<form:errors path="descricao"/>
	</div>
	<div>
		<label>Páginas</label>
		<form:input path="paginas"/>
		<form:errors path="paginas"/>
	</div>
	<div>
		<label>Data de Lançamento</label>
		<form:input path="dataLancamento"/>
		<form:errors path="dataLancamento"/>
	</div>
	<c:forEach items="${tipos }" var="tipoPreco" varStatus="status">
		<div>
			<label>${tipoPreco }</label>
			<form:input path="precos[${status.index}].valor" />
			<form:input type="hidden" path="precos[${status.index}].tipo" value="${tipoPreco }"/>
		</div>
	</c:forEach>
	<button type="submit">Cadastrar</button>
</form:form>

</body>
</html>