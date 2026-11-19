-- 1. Inserção de Alunos
INSERT INTO aluno (numero_matricula, nome, cpf, data_nascimento, telefone, email, data_abertura, status_matricula) VALUES
('MAT-2026-0001', 'Lucas Almeida Souza', '111.222.333-44', '1998-05-14', '(61) 99123-4567', 'lucas.almeida@email.com', '2026-01-10', 'ATIVA'),
('MAT-2026-0002', 'Mariana Costa Ferreira', '222.333.444-55', '1995-09-22', '(61) 99234-5678', 'mariana.costa@email.com', '2026-01-15', 'ATIVA'),
('MAT-2026-0003', 'Gabriel Henrique Lima', '333.444.555-66', '2001-03-08', '(61) 99345-6789', 'gabriel.lima@email.com', '2026-02-01', 'ATIVA'),
('MAT-2026-0004', 'Beatriz Santos Oliveira', '444.555.666-77', '1992-11-30', '(61) 99456-7890', 'beatriz.santos@email.com', '2026-02-12', 'TRANCADA'),
('MAT-2026-0005', 'Rafael Mendes Rocha', '555.666.777-88', '1989-07-19', '(61) 99567-8901', 'rafael.mendes@email.com', '2026-03-05', 'ATIVA'),
('MAT-2026-0006', 'Camila Rodrigues Dias', '666.777.888-99', '2003-01-25', '(61) 99678-9012', 'camila.dias@email.com', '2026-03-20', 'ATIVA'),
('MAT-2026-0007', 'Thiago Barbosa Martins', '777.888.999-00', '1996-12-03', '(61) 99789-0123', NULL, '2026-04-02', 'INATIVA'),
('MAT-2026-0008', 'Juliana Pereira Gomes', '888.999.000-11', '2000-06-17', '(61) 99890-1234', 'juliana.gomes@email.com', '2026-05-10', 'ATIVA'),
('MAT-2026-0009', 'Felipe Cardoso Nunes', '999.000.111-22', '1994-08-29', '(61) 99901-2345', 'felipe.nunes@email.com', '2026-06-18', 'ATIVA'),
('MAT-2026-0010', 'Amanda Ribeiro Castro', '000.111.222-33', '1999-04-11', '(61) 99012-3456', 'amanda.castro@email.com', '2026-07-01', 'ATIVA');


-- 2. Inserção de Cargos
INSERT INTO cargo (nome, descricao, salario_base) VALUES
('Instrutor de Musculação', 'Acompanhamento de alunos na sala de musculação, montagem de fichas e avaliações físicas.', 2800.00),
('Personal Trainer', 'Atendimento individualizado e prescrição avançada de treinamento.', 3500.00),
('Recepcionista', 'Atendimento ao público, controle de matrículas, pagamentos e acesso.', 1850.00),
('Gerente Geral', 'Gestão administrativa, financeira e operacional da academia.', 5200.00),
('Auxiliar de Manutenção', 'Manutenção preventiva, limpeza técnica e lubrificação de equipamentos.', 2100.00);


-- 3. Inserção de Planos
INSERT INTO plano (nome, duracao_meses, valor, ativo) VALUES
('Mensal Básico', 1, 129.90, TRUE),
('Trimestral Plus', 3, 349.90, TRUE),
('Semestral Fit', 6, 629.90, TRUE),
('Anual VIP', 12, 1140.00, TRUE),
('Promocional Verão 2025', 3, 299.90, FALSE);


-- 4. Inserção de Formas de Pagamento
INSERT INTO forma_pagamento (descricao) VALUES
('PIX'),
('Cartão de Crédito'),
('Cartão de Débito'),
('Dinheiro'),
('Transferência Bancária');


-- 5. Inserção de Grupos Musculares
INSERT INTO grupo_muscular (nome) VALUES
('Peitoral'),
('Dorsais'),
('Quadríceps'),
('Posteriores de Coxa'),
('Glúteos'),
('Deltoides'),
('Bíceps'),
('Tríceps'),
('Panturrilhas'),
('Abdômen');


-- 6. Inserção de Exercícios
INSERT INTO exercicio (nome, descricao_execucao) VALUES
('Supino Reto com Barra', 'Deitado no banco plano, descer a barra até tocar levemente o meio do peitoral e empurrar até a extensão dos cotovelos.'),
('Supino Inclinado com Halteres', 'Banco inclinado a 30-45 graus, empurrar os halteres mantendo escápulas retraídas.'),
('Crucifixo na Máquina (Peck Deck)', 'Manter cotovelos semiflexionados e fechar os braços à frente contraindo o peitoral.'),
('Puxada Frontal na Polia Alta', 'Pegada aberta pronada, puxar a barra em direção à parte superior do peito.'),
('Remada Curvada com Barra', 'Tronco inclinado a 45 graus, puxar a barra em direção ao umbigo mantendo lombar neutra.'),
('Remada Baixa no Triângulo', 'Sentado, puxar o triângulo até o abdômen controlando a fase excêntrica.'),
('Agachamento Livre com Barra', 'Barra apoiada no trapézio, agachar até quebrar a paralela mantendo joelhos alinhados.'),
('Leg Press 45°', 'Pés na largura dos ombros na plataforma, flexionar os joelhos até 90 graus sem tirar o quadril do banco.'),
('Cadeira Extensora', 'Estender completamente os joelhos segurando 1 segundo no pico de contração.'),
('Mesa Flexora', 'Deitado em decúbito ventral, flexionar os joelhos trazendo o rolo em direção aos glúteos.'),
('Stiff com Barra', 'Joelhos semiflexionados, descer a barra rente às pernas flexionando o quadril até sentir alongar posteriores.'),
('Elevação Pélvica com Barra', 'Costas apoiadas no banco, elevar o quadril contraindo fortemente os glúteos no topo.'),
('Desenvolvimento com Halteres', 'Sentado, empurrar os halteres acima da cabeça sem bater um no outro.'),
('Elevação Lateral com Halteres', 'Elevar os braços lateralmente até a linha dos ombros com cotovelos levemente flexionados.'),
('Rosca Direta com Barra W', 'Cotovelos fixos ao lado do tronco, flexionar até a contração máxima do bíceps.'),
('Tríceps Pulley com Corda', 'Cotovelos junto ao corpo, estender totalmente os braços abrindo a corda no final.'),
('Panturrilha em Pé na Máquina', 'Amplitude máxima na dorsiflexão e flexão plantar com pausa de 1 segundo no topo.'),
('Prancha Abdominal Isométrica', 'Apoio nos antebraços e pontas dos pés, mantendo abdômen e glúteos contraídos.');


-- 7. Inserção de Equipamentos
INSERT INTO equipamento (nome, marca, numero_serie, data_aquisicao, status) VALUES
('Esteira Ergométrica Profissional T1', 'Movement', 'MOV-EST-2024-001', '2024-02-10', 'OPERACIONAL'),
('Esteira Ergométrica Profissional T2', 'Movement', 'MOV-EST-2024-002', '2024-02-10', 'EM_MANUTENCAO'),
('Leg Press 45° Articulado', 'Life Fitness', 'LF-LP45-2023-014', '2023-08-15', 'OPERACIONAL'),
('Cross Over Angular', 'Technogym', 'TG-CRO-2024-009', '2024-05-20', 'OPERACIONAL'),
('Cadeira Extensora Convergente', 'Life Fitness', 'LF-EXT-2023-022', '2023-08-15', 'OPERACIONAL'),
('Mesa Flexora Deitada', 'Technogym', 'TG-FLX-2024-011', '2024-05-20', 'OPERACIONAL'),
('Banco Regulável Multi-Ângulos 01', 'Cimerian', 'CIM-BNC-2025-003', '2025-01-12', 'OPERACIONAL'),
('Bicicleta Spinning Pro', 'Movement', 'MOV-SPN-2022-045', '2022-06-01', 'INATIVO');


-- 8. Inserção de Funcionários
INSERT INTO funcionario (nome, cpf, cref, telefone, data_contratacao, ativo, cargo_id) VALUES
('Carlos Eduardo Vasconcelos', '123.456.789-01', '014582-G/DF', '(61) 98111-2233', '2024-01-15', TRUE, 1),
('Fernanda Nogueira Bastos', '234.567.890-12', '018934-G/DF', '(61) 98222-3344', '2024-06-01', TRUE, 1),
('Rodrigo Tavares Rezende', '345.678.901-23', '011209-G/DF', '(61) 98333-4455', '2023-09-10', TRUE, 2),
('Patrícia Moraes Teixeira', '456.789.012-34', NULL, '(61) 98444-5566', '2024-03-01', TRUE, 3),
('Marcelo Antunes Prado', '567.890.123-45', NULL, '(61) 98555-6677', '2023-08-01', TRUE, 4),
('André Luiz Siqueira', '678.901.234-56', NULL, '(61) 98666-7788', '2024-08-15', TRUE, 5);


-- 9. Inserção de Manutenções
INSERT INTO manutencao (tipo, descricao, data_manutencao, custo, equipamento_id) VALUES
('PREVENTIVA', 'Lubrificação de lona e calibração do motor.', '2026-06-15', 180.00, 1),
('CORRETIVA', 'Substituição da placa inversora e correia de tração queimadas.', '2026-11-10', 890.00, 2),
('PREVENTIVA', 'Troca de cabos de aço e lubrificação das roldanas.', '2026-08-20', 320.00, 4),
('PREVENTIVA', 'Revisão de estofado e aperto estrutural.', '2026-09-05', 120.00, 3),
('CORRETIVA', 'Falha no sistema magnético de resistência; aguardando baixa patrimonial.', '2026-10-01', 0.00, 8);


-- 10. Inserção de Pagamentos
INSERT INTO pagamento (data_pagamento, data_vencimento, valor_pago, status, aluno_id, plano_id, forma_pagamento_id) VALUES
('2026-01-10 09:15:00', '2026-01-10', 1140.00, 'PAGO', 1, 4, 2),
('2026-01-15 14:30:00', '2026-01-15', 629.90, 'PAGO', 2, 3, 1),
('2026-07-15 10:20:00', '2026-07-15', 629.90, 'PAGO', 2, 3, 1),
('2026-10-01 18:05:00', '2026-10-01', 129.90, 'PAGO', 3, 1, 1),
('2026-11-01 17:45:00', '2026-11-01', 129.90, 'PAGO', 3, 1, 1),
('2026-02-12 11:00:00', '2026-02-12', 349.90, 'PAGO', 4, 2, 3),
('2026-09-05 08:40:00', '2026-09-05', 349.90, 'PAGO', 5, 2, 2),
('2026-10-20 16:10:00', '2026-10-20', 129.90, 'PAGO', 6, 1, 1),
('2026-11-18 00:00:00', '2026-11-20', 129.90, 'PENDENTE', 6, 1, 1),
('2026-11-05 00:00:00', '2026-11-05', 129.90, 'ATRASADO', 8, 1, 4),
('2026-06-18 19:25:00', '2026-06-18', 629.90, 'PAGO', 9, 3, 2),
('2026-10-01 12:00:00', '2026-10-01', 349.90, 'PAGO', 10, 2, 1);


-- 11. Inserção de Avaliações Físicas 
INSERT INTO avaliacao_fisica (data_avaliacao, peso_kg, altura_m, percentual_gordura, massa_magra_kg, observacoes, aluno_id, funcionario_id) VALUES
('2026-01-12', 92.50, 1.78, 24.50, 69.84, 'Avaliação inicial. Foco em recomposição corporal e resistência.', 1, 1),
('2026-05-15', 87.20, 1.78, 19.80, 69.93, 'Excelente perda de gordura mantendo massa muscular.', 1, 1),
('2026-09-20', 84.80, 1.78, 16.20, 71.06, 'Evolução consistente. Ajustar treino para hipertrofia.', 1, 3),
('2026-01-18', 64.00, 1.65, 26.00, 47.36, 'Iniciante, leve encurtamento de posteriores.', 2, 2),
('2026-06-20', 61.50, 1.65, 22.10, 47.91, 'Melhora significativa de mobilidade e condicionamento.', 2, 2),
('2026-02-05', 74.00, 1.81, 14.50, 63.27, 'Biotipo ectomorfo, objetivo de ganho de massa magra.', 3, 1),
('2026-03-10', 98.40, 1.75, 29.80, 69.08, 'Controle de impacto articular nos primeiros 60 dias.', 5, 3),
('2026-06-22', 58.20, 1.62, 23.40, 44.58, 'Sem restrições médicas. Foco em membros inferiores.', 9, 2);


-- 12. Inserção de Fichas de Treino
INSERT INTO ficha_treino (nome_ficha, objetivo, data_inicio, data_fim, ativa, aluno_id, funcionario_id) VALUES
('Treino A - Superior (Empurrar/Puxar)', 'Hipertrofia', '2026-09-22', '2026-12-22', TRUE, 1, 3),
('Treino B - Inferior Completo', 'Hipertrofia', '2026-09-22', '2026-12-22', TRUE, 1, 3),
('Adaptação Full Body', 'Condicionamento Geral', '2026-01-20', '2026-04-20', FALSE, 2, 2),
('Treino ABC - Ênfase Inferiores', 'Definição Muscular', '2026-06-25', '2026-11-30', TRUE, 2, 2),
('Hipertrofia Upper/Lower A', 'Ganho de Massa Magra', '2026-08-01', '2026-12-01', TRUE, 3, 1),
('Emagrecimento Metabólico', 'Perda de Gordura', '2026-09-10', '2026-12-10', TRUE, 5, 3);


-- 13. Inserção na Associativa Exercício x Grupo Muscular
INSERT INTO exercicio_grupo_muscular (exercicio_id, grupo_muscular_id, tipo_ativacao) VALUES
(1, 1, 'PRIMARIO'),   -- Supino Reto -> Peitoral
(1, 8, 'SECUNDARIO'), -- Supino Reto -> Tríceps
(1, 6, 'SECUNDARIO'), -- Supino Reto -> Deltoides
(2, 1, 'PRIMARIO'),   -- Supino Inclinado -> Peitoral
(2, 6, 'SECUNDARIO'), -- Supino Inclinado -> Deltoides
(3, 1, 'PRIMARIO'),   -- Crucifixo -> Peitoral
(4, 2, 'PRIMARIO'),   -- Puxada Frontal -> Dorsais
(4, 7, 'SECUNDARIO'), -- Puxada Frontal -> Bíceps
(5, 2, 'PRIMARIO'),   -- Remada Curvada -> Dorsais
(5, 7, 'SECUNDARIO'), -- Remada Curvada -> Bíceps
(6, 2, 'PRIMARIO'),   -- Remada Baixa -> Dorsais
(7, 3, 'PRIMARIO'),   -- Agachamento Livre -> Quadríceps
(7, 5, 'SECUNDARIO'), -- Agachamento Livre -> Glúteos
(8, 3, 'PRIMARIO'),   -- Leg Press 45 -> Quadríceps
(8, 5, 'SECUNDARIO'), -- Leg Press 45 -> Glúteos
(9, 3, 'PRIMARIO'),   -- Cadeira Extensora -> Quadríceps
(10, 4, 'PRIMARIO'),  -- Mesa Flexora -> Posteriores de Coxa
(11, 4, 'PRIMARIO'),  -- Stiff -> Posteriores de Coxa
(11, 5, 'SECUNDARIO'), -- Stiff -> Glúteos
(12, 5, 'PRIMARIO'),  -- Elevação Pélvica -> Glúteos
(13, 6, 'PRIMARIO'),  -- Desenvolvimento -> Deltoides
(13, 8, 'SECUNDARIO'), -- Desenvolvimento -> Tríceps
(14, 6, 'PRIMARIO'),  -- Elevação Lateral -> Deltoides
(15, 7, 'PRIMARIO'),  -- Rosca Direta -> Bíceps
(16, 8, 'PRIMARIO'),  -- Tríceps Pulley -> Tríceps
(17, 9, 'PRIMARIO'),  -- Panturrilha em Pé -> Panturrilhas
(18, 10, 'PRIMARIO'); -- Prancha -> Abdômen


-- 14. Inserção na Associativa Ficha de Treino x Exercício
INSERT INTO ficha_treino_exercicio (ficha_treino_id, exercicio_id, ordem, series, repeticoes, carga_kg, descanso_segundos, observacao) VALUES
-- Ficha 1
(1, 1, 1, 4, '8-10', 70.00, 90, 'Controlar descida em 3 segundos'),
(1, 4, 2, 4, '10-12', 55.00, 75, 'Segurar 1s na contração'),
(1, 2, 3, 3, '10-12', 24.00, 75, 'Halteres de 24kg cada lado'),
(1, 5, 4, 3, '10', 50.00, 90, 'Manter coluna estabilizada'),
(1, 14, 5, 4, '12-15', 12.00, 60, 'Sem balançar o tronco'),
(1, 15, 6, 3, '10-12', 26.00, 60, NULL),
(1, 16, 7, 3, '12', 30.00, 60, NULL),

-- Ficha 2
(2, 7, 1, 4, '8-10', 90.00, 120, 'Amplitude máxima'),
(2, 8, 2, 4, '10-12', 180.00, 90, NULL),
(2, 11, 3, 4, '10', 60.00, 90, 'Alongar bem posterior'),
(2, 9, 4, 3, '12-15', 45.00, 60, 'Drop-set na última série'),
(2, 10, 5, 3, '12', 35.00, 60, NULL),
(2, 17, 6, 4, '15-20', 50.00, 45, NULL),

-- Ficha 4
(4, 12, 1, 4, '10-12', 65.00, 90, 'Pausa de 2s no topo'),
(4, 8, 2, 4, '12', 110.00, 75, 'Pés mais altos na plataforma'),
(4, 10, 3, 3, '12-15', 25.00, 60, NULL),
(4, 9, 4, 3, '15', 30.00, 60, NULL),
(4, 18, 5, 3, '45 seg', NULL, 45, 'Isometria máxima'),

-- Ficha 5
(5, 1, 1, 4, '8-10', 50.00, 90, NULL),
(5, 6, 2, 4, '10-12', 45.00, 75, NULL),
(5, 13, 3, 3, '10', 16.00, 75, NULL),
(5, 16, 4, 3, '12', 25.00, 60, NULL),

-- Ficha 6
(6, 8, 1, 3, '15', 100.00, 45, 'Cadência acelerada'),
(6, 3, 2, 3, '15', 35.00, 45, NULL),
(6, 4, 3, 3, '15', 40.00, 45, NULL),
(6, 18, 4, 3, '40 seg', NULL, 30, NULL);