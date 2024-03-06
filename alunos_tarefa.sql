
create dataBase escola;
use escola;


CREATE TABLE `aluno` (
  `id_aluno` int(11) NOT NULL,
  `nome_aluno` varchar(100) NOT NULL,
  `dt_nasc_aluno` date NOT NULL,
  `endereco_aluno` varchar(255) NOT NULL,
  `telefone_aluno` varchar(20) NOT NULL,
  `serie_aluno` varchar(100) NOT NULL,
  `email_aluno` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `aluno`
--

INSERT INTO `aluno` (`id_aluno`, `nome_aluno`, `dt_nasc_aluno`, `endereco_aluno`, `telefone_aluno`, `serie_aluno`, `email_aluno`) VALUES
(1, 'João Silva', '2005-02-15', 'Rua A, 123', '9999-8888', '9º ano', 'joao.silva@example.com'),
(2, 'Maria Santos', '2006-04-20', 'Rua B, 456', '9999-7777', '8º ano', 'maria.santos@example.com'),
(3, 'Pedro Oliveira', '2007-07-10', 'Rua C, 789', '9999-6666', '7º ano', 'pedro.oliveira@example.com'),
(4, 'Ana Pereira', '2008-09-25', 'Rua D, 1011', '9999-5555', '6º ano', 'ana.pereira@example.com'),
(5, 'Carlos Costa', '2005-11-05', 'Rua E, 1213', '9999-4444', '5º ano', 'carlos.costa@example.com'),
(6, 'Mariana Rodrigues', '2006-01-30', 'Rua F, 1415', '9999-3333', '4º ano', 'mariana.rodrigues@example.com'),
(7, 'Paulo Santos', '2007-03-12', 'Rua G, 1617', '9999-2222', '3º ano', 'paulo.santos@example.com'),
(8, 'Julia Oliveira', '2008-05-18', 'Rua H, 1819', '9999-1111', '2º ano', 'julia.oliveira@example.com'),
(9, 'Lucas Pereira', '2009-08-07', 'Rua I, 2021', '9999-0000', '1º ano', 'lucas.pereira@example.com'),
(10, 'Fernanda Silva', '2009-10-22', 'Rua J, 2223', '9999-9999', '1º ano', 'fernanda.silva@example.com');

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `alunos`
-- (Veja abaixo para a visão atual)
--
CREATE TABLE `alunos` (
`id_aluno` int(11)
,`nome_aluno` varchar(100)
,`dt_nasc_aluno` date
,`endereco_aluno` varchar(255)
,`telefone_aluno` varchar(20)
,`serie_aluno` varchar(100)
,`email_aluno` varchar(100)
,`id_turma` int(11)
);

-- --------------------------------------------------------

--
-- Estrutura para tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `id_disciplina` int(11) NOT NULL,
  `nome_disciplina` varchar(100) NOT NULL,
  `carga_horaria_disciplina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `disciplina`
--

INSERT INTO `disciplina` (`id_disciplina`, `nome_disciplina`, `carga_horaria_disciplina`) VALUES
(1, 'Matemática', 80),
(2, 'Português', 80),
(3, 'Ciências', 60),
(4, 'História', 60),
(5, 'Geografia', 60),
(6, 'Inglês', 40),
(7, 'Artes', 40),
(8, 'Educação Física', 40),
(9, 'Física', 60),
(10, 'Química', 60);

-- --------------------------------------------------------

--
-- Estrutura para tabela `matricula`
--

CREATE TABLE `matricula` (
  `id_matricula` int(11) NOT NULL,
  `id_aluno` int(11) DEFAULT NULL,
  `id_turma` int(11) DEFAULT NULL,
  `data_matricula` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `matricula`
--

INSERT INTO `matricula` (`id_matricula`, `id_aluno`, `id_turma`, `data_matricula`) VALUES
(1, 1, 1, '2023-02-15'),
(2, 2, 2, '2023-02-16'),
(3, 3, 3, '2023-02-17'),
(4, 4, 4, '2023-02-18'),
(5, 5, 5, '2023-02-19'),
(6, 6, 6, '2023-02-20'),
(7, 7, 7, '2023-02-21'),
(8, 8, 8, '2023-02-22'),
(9, 9, 9, '2023-02-23'),
(10, 10, 10, '2023-02-24');

-- --------------------------------------------------------

--
-- Estrutura para tabela `notas`
--

CREATE TABLE `notas` (
  `id_nota` int(11) NOT NULL,
  `id_aluno` int(11) DEFAULT NULL,
  `id_disciplina` int(11) DEFAULT NULL,
  `nota_obtida` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `notas`
--

INSERT INTO `notas` (`id_nota`, `id_aluno`, `id_disciplina`, `nota_obtida`) VALUES
(1, 1, 1, 80),
(2, 2, 2, 85),
(3, 3, 3, 75),
(4, 4, 4, 90),
(5, 5, 5, 88),
(6, 6, 6, 92),
(7, 7, 7, 78),
(8, 8, 8, 87),
(9, 9, 9, 83),
(10, 10, 10, 89);

-- --------------------------------------------------------

--
-- Estrutura para tabela `professor`
--

CREATE TABLE `professor` (
  `id_professor` int(11) NOT NULL,
  `nome_professor` varchar(100) NOT NULL,
  `dt_nasc_professor` date NOT NULL,
  `endereco_professor` varchar(255) NOT NULL,
  `telefone_professor` varchar(20) NOT NULL,
  `email_professor` varchar(100) NOT NULL,
  `disciplina_professor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `professor`
--

INSERT INTO `professor` (`id_professor`, `nome_professor`, `dt_nasc_professor`, `endereco_professor`, `telefone_professor`, `email_professor`, `disciplina_professor`) VALUES
(1, 'Ana Costa', '1975-03-20', 'Av. X, 123', '8888-7777', 'ana.costa@example.com', 'Matemática'),
(2, 'José Lima', '1980-05-15', 'Av. Y, 456', '8888-6666', 'jose.lima@example.com', 'Português'),
(3, 'Carla Santos', '1978-07-10', 'Av. Z, 789', '8888-5555', 'carla.santos@example.com', 'Ciências'),
(4, 'Marcos Oliveira', '1982-09-25', 'Av. W, 1011', '8888-4444', 'marcos.oliveira@example.com', 'História'),
(5, 'Patrícia Pereira', '1976-11-05', 'Av. V, 1213', '8888-3333', 'patricia.pereira@example.com', 'Geografia'),
(6, 'Ricardo Silva', '1981-01-30', 'Av. U, 1415', '8888-2222', 'ricardo.silva@example.com', 'Inglês'),
(7, 'Camila Rodrigues', '1979-03-12', 'Av. T, 1617', '8888-1111', 'camila.rodrigues@example.com', 'Artes'),
(8, 'Gustavo Santos', '1983-05-18', 'Av. S, 1819', '8888-0000', 'gustavo.santos@example.com', 'Educação Física'),
(9, 'Luciana Oliveira', '1984-08-07', 'Av. R, 2021', '8888-9999', 'luciana.oliveira@example.com', 'Física'),
(10, 'Felipe Costa', '1977-10-22', 'Av. Q, 2223', '8888-8888', 'felipe.costa@example.com', 'Química');

-- --------------------------------------------------------

--
-- Estrutura para tabela `turma`
--

CREATE TABLE `turma` (
  `id_turma` int(11) NOT NULL,
  `serie_turma` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `turma`
--

INSERT INTO `turma` (`id_turma`, `serie_turma`) VALUES
(1, '1º ano'),
(2, '2º ano'),
(3, '3º ano'),
(4, '4º ano'),
(5, '5º ano'),
(6, '6º ano'),
(7, '7º ano'),
(8, '8º ano'),
(9, '9º ano'),
(10, '10º ano');

-- --------------------------------------------------------

--
-- Estrutura para tabela `turma_disciplina`
--

CREATE TABLE `turma_disciplina` (
  `id_turma` int(11) NOT NULL,
  `id_disciplina` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `turma_disciplina`
--

INSERT INTO `turma_disciplina` (`id_turma`, `id_disciplina`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Estrutura para view `alunos`
--
DROP TABLE IF EXISTS `alunos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `alunos`  AS SELECT `aluno`.`id_aluno` AS `id_aluno`, `aluno`.`nome_aluno` AS `nome_aluno`, `aluno`.`dt_nasc_aluno` AS `dt_nasc_aluno`, `aluno`.`endereco_aluno` AS `endereco_aluno`, `aluno`.`telefone_aluno` AS `telefone_aluno`, `aluno`.`serie_aluno` AS `serie_aluno`, `aluno`.`email_aluno` AS `email_aluno`, `matricula`.`id_turma` AS `id_turma` FROM (`aluno` join `matricula` on(`aluno`.`id_aluno` = `matricula`.`id_aluno`)) ;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id_aluno`);

--
-- Índices de tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`id_disciplina`);

--
-- Índices de tabela `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`id_matricula`),
  ADD KEY `id_aluno` (`id_aluno`),
  ADD KEY `id_turma` (`id_turma`);

--
-- Índices de tabela `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id_nota`),
  ADD KEY `id_aluno` (`id_aluno`),
  ADD KEY `id_disciplina` (`id_disciplina`);

--
-- Índices de tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`id_professor`);

--
-- Índices de tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`id_turma`);

--
-- Índices de tabela `turma_disciplina`
--
ALTER TABLE `turma_disciplina`
  ADD PRIMARY KEY (`id_turma`,`id_disciplina`),
  ADD KEY `id_disciplina` (`id_disciplina`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id_aluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `id_disciplina` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `matricula`
--
ALTER TABLE `matricula`
  MODIFY `id_matricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `notas`
--
ALTER TABLE `notas`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `professor`
--
ALTER TABLE `professor`
  MODIFY `id_professor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `id_turma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`),
  ADD CONSTRAINT `matricula_ibfk_2` FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id_turma`);

--
-- Restrições para tabelas `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `notas_ibfk_1` FOREIGN KEY (`id_aluno`) REFERENCES `aluno` (`id_aluno`),
  ADD CONSTRAINT `notas_ibfk_2` FOREIGN KEY (`id_disciplina`) REFERENCES `disciplina` (`id_disciplina`);

--
-- Restrições para tabelas `turma_disciplina`
--
ALTER TABLE `turma_disciplina`
  ADD CONSTRAINT `turma_disciplina_ibfk_1` FOREIGN KEY (`id_turma`) REFERENCES `turma` (`id_turma`),
  ADD CONSTRAINT `turma_disciplina_ibfk_2` FOREIGN KEY (`id_disciplina`) REFERENCES `disciplina` (`id_disciplina`);
COMMIT;

CREATE VIEW view_alunos AS
SELECT aluno.nome_aluno, aluno.dt_nasc_aluno, aluno.endereco_aluno, aluno.telefone_aluno, aluno.serie_aluno, aluno.email_aluno, matricula.id_turma
FROM aluno
INNER JOIN matricula ON aluno.id_aluno = matricula.id_aluno;
 
CREATE VIEW view_notas AS 
SELECT notas.nota_obtida, aluno.nome_aluno, disciplina.nome_disciplina
FROM notas
INNER JOIN aluno ON notas.id_aluno = aluno.id_aluno
INNER JOIN disciplina ON notas.id_disciplina = disciplina.id_disciplina;
 
 
CREATE VIEW prof_disciplina AS
SELECT professor.nome_professor, professor.disciplina_professor
FROM professor;
 
CREATE VIEW notas_altas AS
SELECT aluno.nome_aluno, notas.nota_obtida
FROM aluno
INNER JOIN notas ON aluno.id_aluno = notas.id_aluno
WHERE notas.nota_obtida > 80;
 
CREATE VIEW notas_baixas AS
SELECT aluno.nome_aluno, notas.nota_obtida
FROM aluno
INNER JOIN notas ON aluno.id_aluno = notas.id_aluno
WHERE notas.nota_obtida < 60; -- Substitua '60' pela pontuação desejada

