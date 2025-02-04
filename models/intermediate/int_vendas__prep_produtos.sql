with
    /* Chamada dos modelos necessários. */
        
    categorias as (
        select *
        from {{ ref('stg_erp__categorias') }}
    )

    , fornecedores as (
        select *
        from {{ ref('stg_erp__fornecedores') }}
    )

    , produtos as (
        select *
        from {{ ref('stg_erp__produtos') }}
    )

    , enriquecer_produtos as (
        select
            produtos.id_PRODUTO
            , produtos.NM_PRODUTO
            , produtos.QUANTIDADE_POR_UNIDADE
            , produtos.PRECO_POR_UNIDADE
            , produtos.UNIDADE_EM_ESTOQUE
            , produtos.UNIDADE_POR_PEDIDO
            , categorias.NOME_CATEGORIA
            , fornecedores.NOME_FORNECEDOR
            , fornecedores.CIDADE_FORNECEDOR
            , fornecedores.PAIS_FORNECEDOR
        from produtos
        left join categorias on produtos.fk_categoria = categorias.id_categoria
        left join fornecedores on produtos.fk_fornecedor = fornecedores.id_fornecedor
    )

select *
from enriquecer_produtos