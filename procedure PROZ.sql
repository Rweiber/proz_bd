-- cria a tabela vendas

CREATE TABLE Vendas (
    DataVenda DATE,
    Quantidade INT
);

-- cria o procedimento

DELIMITER //
CREATE PROCEDURE RelatorioDiarioVendas()
BEGIN
    SELECT DataVenda, SUM(Quantidade) as QuantidadeTotal
    FROM Vendas
    GROUP BY DataVenda
    ORDER BY DataVenda DESC;
END //
DELIMITER ;

-- chama o procedimento

CALL RelatorioDiarioVendas();
