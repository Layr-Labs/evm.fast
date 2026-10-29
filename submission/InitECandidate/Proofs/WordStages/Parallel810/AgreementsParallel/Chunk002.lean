import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel810.Data2
import InitECandidate.Proofs.WordStages.Parallel810.Data3
import InitECandidate.Proofs.DeadStages810.Parallel.Data.Chunk002
import InitECandidate.Proofs.WordStages.Parallel810.AgreementsParallel.Chunk001

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.WordStages.Parallel810.AgreementsParallel
theorem input512_eq : InitECandidate.Proofs.DeadStages810.Parallel.input512 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_185 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input512_def]
  kernel_rfl

theorem output512_eq : InitECandidate.Proofs.DeadStages810.Parallel.output512 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_162 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output512_def]
  kernel_rfl

theorem input513_eq : InitECandidate.Proofs.DeadStages810.Parallel.input513 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_182 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input513_def]
  kernel_rfl

theorem output513_eq : InitECandidate.Proofs.DeadStages810.Parallel.output513 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_159 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output513_def]
  kernel_rfl

theorem input514_eq : InitECandidate.Proofs.DeadStages810.Parallel.input514 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_181 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input514_def]
  kernel_rfl

theorem output514_eq : InitECandidate.Proofs.DeadStages810.Parallel.output514 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_158 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output514_def]
  kernel_rfl

theorem input515_eq : InitECandidate.Proofs.DeadStages810.Parallel.input515 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_183 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input515_def]
  simp only [input514_eq, input513_eq]
  kernel_rfl

theorem output515_eq : InitECandidate.Proofs.DeadStages810.Parallel.output515 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_160 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output515_def]
  simp only [output514_eq, output513_eq]
  kernel_rfl

theorem input516_eq : InitECandidate.Proofs.DeadStages810.Parallel.input516 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_179 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input516_def]
  kernel_rfl

theorem output516_eq : InitECandidate.Proofs.DeadStages810.Parallel.output516 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_156 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output516_def]
  kernel_rfl

theorem input517_eq : InitECandidate.Proofs.DeadStages810.Parallel.input517 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_176 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input517_def]
  kernel_rfl

theorem output517_eq : InitECandidate.Proofs.DeadStages810.Parallel.output517 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_153 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output517_def]
  kernel_rfl

theorem input518_eq : InitECandidate.Proofs.DeadStages810.Parallel.input518 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_175 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input518_def]
  kernel_rfl

theorem output518_eq : InitECandidate.Proofs.DeadStages810.Parallel.output518 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_152 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output518_def]
  kernel_rfl

theorem input519_eq : InitECandidate.Proofs.DeadStages810.Parallel.input519 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_177 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input519_def]
  simp only [input518_eq, input517_eq]
  kernel_rfl

theorem output519_eq : InitECandidate.Proofs.DeadStages810.Parallel.output519 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_154 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output519_def]
  simp only [output518_eq, output517_eq]
  kernel_rfl

theorem input520_eq : InitECandidate.Proofs.DeadStages810.Parallel.input520 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_173 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input520_def]
  kernel_rfl

theorem output520_eq : InitECandidate.Proofs.DeadStages810.Parallel.output520 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_150 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output520_def]
  kernel_rfl

theorem input521_eq : InitECandidate.Proofs.DeadStages810.Parallel.input521 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_170 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input521_def]
  kernel_rfl

theorem output521_eq : InitECandidate.Proofs.DeadStages810.Parallel.output521 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_147 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output521_def]
  kernel_rfl

theorem input522_eq : InitECandidate.Proofs.DeadStages810.Parallel.input522 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_169 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input522_def]
  kernel_rfl

theorem output522_eq : InitECandidate.Proofs.DeadStages810.Parallel.output522 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_146 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output522_def]
  kernel_rfl

theorem input523_eq : InitECandidate.Proofs.DeadStages810.Parallel.input523 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_171 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input523_def]
  simp only [input522_eq, input521_eq]
  kernel_rfl

theorem output523_eq : InitECandidate.Proofs.DeadStages810.Parallel.output523 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_148 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output523_def]
  simp only [output522_eq, output521_eq]
  kernel_rfl

theorem input524_eq : InitECandidate.Proofs.DeadStages810.Parallel.input524 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_167 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input524_def]
  kernel_rfl

theorem output524_eq : InitECandidate.Proofs.DeadStages810.Parallel.output524 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_144 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output524_def]
  kernel_rfl

theorem input525_eq : InitECandidate.Proofs.DeadStages810.Parallel.input525 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_164 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input525_def]
  kernel_rfl

theorem output525_eq : InitECandidate.Proofs.DeadStages810.Parallel.output525 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_141 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output525_def]
  kernel_rfl

theorem input526_eq : InitECandidate.Proofs.DeadStages810.Parallel.input526 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_163 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input526_def]
  kernel_rfl

theorem output526_eq : InitECandidate.Proofs.DeadStages810.Parallel.output526 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_140 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output526_def]
  kernel_rfl

theorem input527_eq : InitECandidate.Proofs.DeadStages810.Parallel.input527 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_165 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input527_def]
  simp only [input526_eq, input525_eq]
  kernel_rfl

theorem output527_eq : InitECandidate.Proofs.DeadStages810.Parallel.output527 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_142 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output527_def]
  simp only [output526_eq, output525_eq]
  kernel_rfl

theorem input528_eq : InitECandidate.Proofs.DeadStages810.Parallel.input528 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_161 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input528_def]
  kernel_rfl

theorem output528_eq : InitECandidate.Proofs.DeadStages810.Parallel.output528 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_138 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output528_def]
  kernel_rfl

theorem input529_eq : InitECandidate.Proofs.DeadStages810.Parallel.input529 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_159 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input529_def]
  kernel_rfl

theorem output529_eq : InitECandidate.Proofs.DeadStages810.Parallel.output529 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_136 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output529_def]
  kernel_rfl

theorem input530_eq : InitECandidate.Proofs.DeadStages810.Parallel.input530 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_157 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input530_def]
  kernel_rfl

theorem output530_eq : InitECandidate.Proofs.DeadStages810.Parallel.output530 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_134 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output530_def]
  kernel_rfl

theorem input531_eq : InitECandidate.Proofs.DeadStages810.Parallel.input531 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_155 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input531_def]
  kernel_rfl

theorem output531_eq : InitECandidate.Proofs.DeadStages810.Parallel.output531 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_132 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output531_def]
  kernel_rfl

theorem input532_eq : InitECandidate.Proofs.DeadStages810.Parallel.input532 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_153 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input532_def]
  kernel_rfl

theorem output532_eq : InitECandidate.Proofs.DeadStages810.Parallel.output532 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_130 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output532_def]
  kernel_rfl

theorem input533_eq : InitECandidate.Proofs.DeadStages810.Parallel.input533 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_151 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input533_def]
  kernel_rfl

theorem output533_eq : InitECandidate.Proofs.DeadStages810.Parallel.output533 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_128 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output533_def]
  kernel_rfl

theorem input534_eq : InitECandidate.Proofs.DeadStages810.Parallel.input534 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_149 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input534_def]
  kernel_rfl

theorem output534_eq : InitECandidate.Proofs.DeadStages810.Parallel.output534 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_126 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output534_def]
  kernel_rfl

theorem input535_eq : InitECandidate.Proofs.DeadStages810.Parallel.input535 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_147 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input535_def]
  kernel_rfl

theorem output535_eq : InitECandidate.Proofs.DeadStages810.Parallel.output535 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_124 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output535_def]
  kernel_rfl

theorem input536_eq : InitECandidate.Proofs.DeadStages810.Parallel.input536 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_145 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input536_def]
  kernel_rfl

theorem output536_eq : InitECandidate.Proofs.DeadStages810.Parallel.output536 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_122 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output536_def]
  kernel_rfl

theorem input537_eq : InitECandidate.Proofs.DeadStages810.Parallel.input537 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_143 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input537_def]
  kernel_rfl

theorem output537_eq : InitECandidate.Proofs.DeadStages810.Parallel.output537 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_120 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output537_def]
  kernel_rfl

theorem input538_eq : InitECandidate.Proofs.DeadStages810.Parallel.input538 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_141 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input538_def]
  kernel_rfl

theorem output538_eq : InitECandidate.Proofs.DeadStages810.Parallel.output538 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_118 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output538_def]
  kernel_rfl

theorem input539_eq : InitECandidate.Proofs.DeadStages810.Parallel.input539 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_139 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input539_def]
  kernel_rfl

theorem output539_eq : InitECandidate.Proofs.DeadStages810.Parallel.output539 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_116 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output539_def]
  kernel_rfl

theorem input540_eq : InitECandidate.Proofs.DeadStages810.Parallel.input540 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_137 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input540_def]
  kernel_rfl

theorem output540_eq : InitECandidate.Proofs.DeadStages810.Parallel.output540 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_114 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output540_def]
  kernel_rfl

theorem input541_eq : InitECandidate.Proofs.DeadStages810.Parallel.input541 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_135 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input541_def]
  kernel_rfl

theorem output541_eq : InitECandidate.Proofs.DeadStages810.Parallel.output541 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_112 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output541_def]
  kernel_rfl

theorem input542_eq : InitECandidate.Proofs.DeadStages810.Parallel.input542 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_132 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input542_def]
  kernel_rfl

theorem output542_eq : InitECandidate.Proofs.DeadStages810.Parallel.output542 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_109 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output542_def]
  kernel_rfl

theorem input543_eq : InitECandidate.Proofs.DeadStages810.Parallel.input543 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_131 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input543_def]
  kernel_rfl

theorem output543_eq : InitECandidate.Proofs.DeadStages810.Parallel.output543 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_108 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output543_def]
  kernel_rfl

theorem input544_eq : InitECandidate.Proofs.DeadStages810.Parallel.input544 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_133 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input544_def]
  simp only [input543_eq, input542_eq]
  kernel_rfl

theorem output544_eq : InitECandidate.Proofs.DeadStages810.Parallel.output544 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_110 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output544_def]
  simp only [output543_eq, output542_eq]
  kernel_rfl

theorem input545_eq : InitECandidate.Proofs.DeadStages810.Parallel.input545 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_128 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input545_def]
  kernel_rfl

theorem output545_eq : InitECandidate.Proofs.DeadStages810.Parallel.output545 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_105 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output545_def]
  kernel_rfl

theorem input546_eq : InitECandidate.Proofs.DeadStages810.Parallel.input546 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_127 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input546_def]
  kernel_rfl

theorem output546_eq : InitECandidate.Proofs.DeadStages810.Parallel.output546 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_104 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output546_def]
  kernel_rfl

theorem input547_eq : InitECandidate.Proofs.DeadStages810.Parallel.input547 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_129 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input547_def]
  simp only [input546_eq, input545_eq]
  kernel_rfl

theorem output547_eq : InitECandidate.Proofs.DeadStages810.Parallel.output547 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_106 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output547_def]
  simp only [output546_eq, output545_eq]
  kernel_rfl

theorem input548_eq : InitECandidate.Proofs.DeadStages810.Parallel.input548 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_124 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input548_def]
  kernel_rfl

theorem output548_eq : InitECandidate.Proofs.DeadStages810.Parallel.output548 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_101 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output548_def]
  kernel_rfl

theorem input549_eq : InitECandidate.Proofs.DeadStages810.Parallel.input549 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_123 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input549_def]
  kernel_rfl

theorem output549_eq : InitECandidate.Proofs.DeadStages810.Parallel.output549 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_100 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output549_def]
  kernel_rfl

theorem input550_eq : InitECandidate.Proofs.DeadStages810.Parallel.input550 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_125 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input550_def]
  simp only [input549_eq, input548_eq]
  kernel_rfl

theorem output550_eq : InitECandidate.Proofs.DeadStages810.Parallel.output550 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_102 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output550_def]
  simp only [output549_eq, output548_eq]
  kernel_rfl

theorem input551_eq : InitECandidate.Proofs.DeadStages810.Parallel.input551 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_120 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input551_def]
  kernel_rfl

theorem output551_eq : InitECandidate.Proofs.DeadStages810.Parallel.output551 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_97 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output551_def]
  kernel_rfl

theorem input552_eq : InitECandidate.Proofs.DeadStages810.Parallel.input552 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_119 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input552_def]
  kernel_rfl

theorem output552_eq : InitECandidate.Proofs.DeadStages810.Parallel.output552 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_96 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output552_def]
  kernel_rfl

theorem input553_eq : InitECandidate.Proofs.DeadStages810.Parallel.input553 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_121 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input553_def]
  simp only [input552_eq, input551_eq]
  kernel_rfl

theorem output553_eq : InitECandidate.Proofs.DeadStages810.Parallel.output553 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_98 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output553_def]
  simp only [output552_eq, output551_eq]
  kernel_rfl

theorem input554_eq : InitECandidate.Proofs.DeadStages810.Parallel.input554 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_116 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input554_def]
  kernel_rfl

theorem output554_eq : InitECandidate.Proofs.DeadStages810.Parallel.output554 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_93 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output554_def]
  kernel_rfl

theorem input555_eq : InitECandidate.Proofs.DeadStages810.Parallel.input555 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_115 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input555_def]
  kernel_rfl

theorem output555_eq : InitECandidate.Proofs.DeadStages810.Parallel.output555 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_92 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output555_def]
  kernel_rfl

theorem input556_eq : InitECandidate.Proofs.DeadStages810.Parallel.input556 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_117 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input556_def]
  simp only [input555_eq, input554_eq]
  kernel_rfl

theorem output556_eq : InitECandidate.Proofs.DeadStages810.Parallel.output556 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_94 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output556_def]
  simp only [output555_eq, output554_eq]
  kernel_rfl

theorem input557_eq : InitECandidate.Proofs.DeadStages810.Parallel.input557 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_112 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input557_def]
  kernel_rfl

theorem output557_eq : InitECandidate.Proofs.DeadStages810.Parallel.output557 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_89 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output557_def]
  kernel_rfl

theorem input558_eq : InitECandidate.Proofs.DeadStages810.Parallel.input558 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_111 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input558_def]
  kernel_rfl

theorem output558_eq : InitECandidate.Proofs.DeadStages810.Parallel.output558 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_88 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output558_def]
  kernel_rfl

theorem input559_eq : InitECandidate.Proofs.DeadStages810.Parallel.input559 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_113 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input559_def]
  simp only [input558_eq, input557_eq]
  kernel_rfl

theorem output559_eq : InitECandidate.Proofs.DeadStages810.Parallel.output559 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_90 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output559_def]
  simp only [output558_eq, output557_eq]
  kernel_rfl

theorem input560_eq : InitECandidate.Proofs.DeadStages810.Parallel.input560 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_108 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input560_def]
  kernel_rfl

theorem output560_eq : InitECandidate.Proofs.DeadStages810.Parallel.output560 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_85 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output560_def]
  kernel_rfl

theorem input561_eq : InitECandidate.Proofs.DeadStages810.Parallel.input561 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_107 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input561_def]
  kernel_rfl

theorem output561_eq : InitECandidate.Proofs.DeadStages810.Parallel.output561 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_84 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output561_def]
  kernel_rfl

theorem input562_eq : InitECandidate.Proofs.DeadStages810.Parallel.input562 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_109 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input562_def]
  simp only [input561_eq, input560_eq]
  kernel_rfl

theorem output562_eq : InitECandidate.Proofs.DeadStages810.Parallel.output562 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_86 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output562_def]
  simp only [output561_eq, output560_eq]
  kernel_rfl

theorem input563_eq : InitECandidate.Proofs.DeadStages810.Parallel.input563 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_104 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input563_def]
  kernel_rfl

theorem output563_eq : InitECandidate.Proofs.DeadStages810.Parallel.output563 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_81 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output563_def]
  kernel_rfl

theorem input564_eq : InitECandidate.Proofs.DeadStages810.Parallel.input564 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_103 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input564_def]
  kernel_rfl

theorem output564_eq : InitECandidate.Proofs.DeadStages810.Parallel.output564 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_80 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output564_def]
  kernel_rfl

theorem input565_eq : InitECandidate.Proofs.DeadStages810.Parallel.input565 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_105 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input565_def]
  simp only [input564_eq, input563_eq]
  kernel_rfl

theorem output565_eq : InitECandidate.Proofs.DeadStages810.Parallel.output565 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_82 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output565_def]
  simp only [output564_eq, output563_eq]
  kernel_rfl

theorem input566_eq : InitECandidate.Proofs.DeadStages810.Parallel.input566 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_100 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input566_def]
  kernel_rfl

theorem output566_eq : InitECandidate.Proofs.DeadStages810.Parallel.output566 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_77 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output566_def]
  kernel_rfl

theorem input567_eq : InitECandidate.Proofs.DeadStages810.Parallel.input567 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_99 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input567_def]
  kernel_rfl

theorem output567_eq : InitECandidate.Proofs.DeadStages810.Parallel.output567 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_76 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output567_def]
  kernel_rfl

theorem input568_eq : InitECandidate.Proofs.DeadStages810.Parallel.input568 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_101 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input568_def]
  simp only [input567_eq, input566_eq]
  kernel_rfl

theorem output568_eq : InitECandidate.Proofs.DeadStages810.Parallel.output568 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_78 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output568_def]
  simp only [output567_eq, output566_eq]
  kernel_rfl

theorem input569_eq : InitECandidate.Proofs.DeadStages810.Parallel.input569 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_96 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input569_def]
  kernel_rfl

theorem output569_eq : InitECandidate.Proofs.DeadStages810.Parallel.output569 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_73 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output569_def]
  kernel_rfl

theorem input570_eq : InitECandidate.Proofs.DeadStages810.Parallel.input570 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_95 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input570_def]
  kernel_rfl

theorem output570_eq : InitECandidate.Proofs.DeadStages810.Parallel.output570 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_72 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output570_def]
  kernel_rfl

theorem input571_eq : InitECandidate.Proofs.DeadStages810.Parallel.input571 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_97 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input571_def]
  simp only [input570_eq, input569_eq]
  kernel_rfl

theorem output571_eq : InitECandidate.Proofs.DeadStages810.Parallel.output571 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_74 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output571_def]
  simp only [output570_eq, output569_eq]
  kernel_rfl

theorem input572_eq : InitECandidate.Proofs.DeadStages810.Parallel.input572 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_92 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input572_def]
  kernel_rfl

theorem output572_eq : InitECandidate.Proofs.DeadStages810.Parallel.output572 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_69 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output572_def]
  kernel_rfl

theorem input573_eq : InitECandidate.Proofs.DeadStages810.Parallel.input573 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_91 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input573_def]
  kernel_rfl

theorem output573_eq : InitECandidate.Proofs.DeadStages810.Parallel.output573 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_68 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output573_def]
  kernel_rfl

theorem input574_eq : InitECandidate.Proofs.DeadStages810.Parallel.input574 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_93 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input574_def]
  simp only [input573_eq, input572_eq]
  kernel_rfl

theorem output574_eq : InitECandidate.Proofs.DeadStages810.Parallel.output574 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_70 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output574_def]
  simp only [output573_eq, output572_eq]
  kernel_rfl

theorem input575_eq : InitECandidate.Proofs.DeadStages810.Parallel.input575 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_88 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input575_def]
  kernel_rfl

theorem output575_eq : InitECandidate.Proofs.DeadStages810.Parallel.output575 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_65 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output575_def]
  kernel_rfl

theorem input576_eq : InitECandidate.Proofs.DeadStages810.Parallel.input576 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_87 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input576_def]
  kernel_rfl

theorem output576_eq : InitECandidate.Proofs.DeadStages810.Parallel.output576 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_64 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output576_def]
  kernel_rfl

theorem input577_eq : InitECandidate.Proofs.DeadStages810.Parallel.input577 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_89 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input577_def]
  simp only [input576_eq, input575_eq]
  kernel_rfl

theorem output577_eq : InitECandidate.Proofs.DeadStages810.Parallel.output577 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_66 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output577_def]
  simp only [output576_eq, output575_eq]
  kernel_rfl

theorem input578_eq : InitECandidate.Proofs.DeadStages810.Parallel.input578 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_84 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input578_def]
  kernel_rfl

theorem output578_eq : InitECandidate.Proofs.DeadStages810.Parallel.output578 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_61 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output578_def]
  kernel_rfl

theorem input579_eq : InitECandidate.Proofs.DeadStages810.Parallel.input579 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_83 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input579_def]
  kernel_rfl

theorem output579_eq : InitECandidate.Proofs.DeadStages810.Parallel.output579 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_60 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output579_def]
  kernel_rfl

theorem input580_eq : InitECandidate.Proofs.DeadStages810.Parallel.input580 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_85 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input580_def]
  simp only [input579_eq, input578_eq]
  kernel_rfl

theorem output580_eq : InitECandidate.Proofs.DeadStages810.Parallel.output580 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_62 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output580_def]
  simp only [output579_eq, output578_eq]
  kernel_rfl

theorem input581_eq : InitECandidate.Proofs.DeadStages810.Parallel.input581 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_80 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input581_def]
  kernel_rfl

theorem output581_eq : InitECandidate.Proofs.DeadStages810.Parallel.output581 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_57 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output581_def]
  kernel_rfl

theorem input582_eq : InitECandidate.Proofs.DeadStages810.Parallel.input582 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_79 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input582_def]
  kernel_rfl

theorem output582_eq : InitECandidate.Proofs.DeadStages810.Parallel.output582 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_56 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output582_def]
  kernel_rfl

theorem input583_eq : InitECandidate.Proofs.DeadStages810.Parallel.input583 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_81 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input583_def]
  simp only [input582_eq, input581_eq]
  kernel_rfl

theorem output583_eq : InitECandidate.Proofs.DeadStages810.Parallel.output583 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_58 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output583_def]
  simp only [output582_eq, output581_eq]
  kernel_rfl

theorem input584_eq : InitECandidate.Proofs.DeadStages810.Parallel.input584 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_76 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input584_def]
  kernel_rfl

theorem output584_eq : InitECandidate.Proofs.DeadStages810.Parallel.output584 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_53 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output584_def]
  kernel_rfl

theorem input585_eq : InitECandidate.Proofs.DeadStages810.Parallel.input585 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_75 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input585_def]
  kernel_rfl

theorem output585_eq : InitECandidate.Proofs.DeadStages810.Parallel.output585 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_52 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output585_def]
  kernel_rfl

theorem input586_eq : InitECandidate.Proofs.DeadStages810.Parallel.input586 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_77 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input586_def]
  simp only [input585_eq, input584_eq]
  kernel_rfl

theorem output586_eq : InitECandidate.Proofs.DeadStages810.Parallel.output586 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_54 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output586_def]
  simp only [output585_eq, output584_eq]
  kernel_rfl

theorem input587_eq : InitECandidate.Proofs.DeadStages810.Parallel.input587 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_72 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input587_def]
  kernel_rfl

theorem output587_eq : InitECandidate.Proofs.DeadStages810.Parallel.output587 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_49 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output587_def]
  kernel_rfl

theorem input588_eq : InitECandidate.Proofs.DeadStages810.Parallel.input588 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_71 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input588_def]
  kernel_rfl

theorem output588_eq : InitECandidate.Proofs.DeadStages810.Parallel.output588 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_48 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output588_def]
  kernel_rfl

theorem input589_eq : InitECandidate.Proofs.DeadStages810.Parallel.input589 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_73 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input589_def]
  simp only [input588_eq, input587_eq]
  kernel_rfl

theorem output589_eq : InitECandidate.Proofs.DeadStages810.Parallel.output589 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_50 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output589_def]
  simp only [output588_eq, output587_eq]
  kernel_rfl

theorem input590_eq : InitECandidate.Proofs.DeadStages810.Parallel.input590 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_68 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input590_def]
  kernel_rfl

theorem output590_eq : InitECandidate.Proofs.DeadStages810.Parallel.output590 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_45 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output590_def]
  kernel_rfl

theorem input591_eq : InitECandidate.Proofs.DeadStages810.Parallel.input591 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_67 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input591_def]
  kernel_rfl

theorem output591_eq : InitECandidate.Proofs.DeadStages810.Parallel.output591 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_44 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output591_def]
  kernel_rfl

theorem input592_eq : InitECandidate.Proofs.DeadStages810.Parallel.input592 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_69 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input592_def]
  simp only [input591_eq, input590_eq]
  kernel_rfl

theorem output592_eq : InitECandidate.Proofs.DeadStages810.Parallel.output592 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_46 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output592_def]
  simp only [output591_eq, output590_eq]
  kernel_rfl

theorem input593_eq : InitECandidate.Proofs.DeadStages810.Parallel.input593 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_64 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input593_def]
  kernel_rfl

theorem output593_eq : InitECandidate.Proofs.DeadStages810.Parallel.output593 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_41 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output593_def]
  kernel_rfl

theorem input594_eq : InitECandidate.Proofs.DeadStages810.Parallel.input594 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_63 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input594_def]
  kernel_rfl

theorem output594_eq : InitECandidate.Proofs.DeadStages810.Parallel.output594 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_40 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output594_def]
  kernel_rfl

theorem input595_eq : InitECandidate.Proofs.DeadStages810.Parallel.input595 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_65 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input595_def]
  simp only [input594_eq, input593_eq]
  kernel_rfl

theorem output595_eq : InitECandidate.Proofs.DeadStages810.Parallel.output595 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_42 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output595_def]
  simp only [output594_eq, output593_eq]
  kernel_rfl

theorem input596_eq : InitECandidate.Proofs.DeadStages810.Parallel.input596 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_29 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input596_def]
  kernel_rfl

theorem output596_eq : InitECandidate.Proofs.DeadStages810.Parallel.output596 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_17 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output596_def]
  kernel_rfl

theorem input597_eq : InitECandidate.Proofs.DeadStages810.Parallel.input597 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_57 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input597_def]
  kernel_rfl

theorem output597_eq : InitECandidate.Proofs.DeadStages810.Parallel.output597 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_34 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output597_def]
  kernel_rfl

theorem input598_eq : InitECandidate.Proofs.DeadStages810.Parallel.input598 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_35 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input598_def]
  kernel_rfl

theorem output598_eq : InitECandidate.Proofs.DeadStages810.Parallel.output598 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_21 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output598_def]
  kernel_rfl

theorem input599_eq : InitECandidate.Proofs.DeadStages810.Parallel.input599 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_58 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input599_def]
  simp only [input598_eq, input597_eq]
  kernel_rfl

theorem output599_eq : InitECandidate.Proofs.DeadStages810.Parallel.output599 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_35 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output599_def]
  simp only [output598_eq, output597_eq]
  kernel_rfl

theorem input600_eq : InitECandidate.Proofs.DeadStages810.Parallel.input600 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_34 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input600_def]
  kernel_rfl

theorem output600_eq : InitECandidate.Proofs.DeadStages810.Parallel.output600 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_20 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output600_def]
  kernel_rfl

theorem input601_eq : InitECandidate.Proofs.DeadStages810.Parallel.input601 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_59 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input601_def]
  simp only [input600_eq, input599_eq]
  kernel_rfl

theorem output601_eq : InitECandidate.Proofs.DeadStages810.Parallel.output601 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_36 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output601_def]
  simp only [output600_eq, output599_eq]
  kernel_rfl

theorem input602_eq : InitECandidate.Proofs.DeadStages810.Parallel.input602 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_33 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input602_def]
  kernel_rfl

theorem output602_eq : InitECandidate.Proofs.DeadStages810.Parallel.output602 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_19 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output602_def]
  kernel_rfl

theorem input603_eq : InitECandidate.Proofs.DeadStages810.Parallel.input603 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_60 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input603_def]
  simp only [input602_eq, input601_eq]
  kernel_rfl

theorem output603_eq : InitECandidate.Proofs.DeadStages810.Parallel.output603 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_37 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output603_def]
  simp only [output602_eq, output601_eq]
  kernel_rfl

theorem input604_eq : InitECandidate.Proofs.DeadStages810.Parallel.input604 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_31 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input604_def]
  kernel_rfl

theorem input605_eq : InitECandidate.Proofs.DeadStages810.Parallel.input605 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_29 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input605_def]
  kernel_rfl

theorem output605_eq : InitECandidate.Proofs.DeadStages810.Parallel.output605 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_17 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output605_def]
  kernel_rfl

theorem input606_eq : InitECandidate.Proofs.DeadStages810.Parallel.input606 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_26 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input606_def]
  kernel_rfl

theorem output606_eq : InitECandidate.Proofs.DeadStages810.Parallel.output606 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_15 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output606_def]
  kernel_rfl

theorem input607_eq : InitECandidate.Proofs.DeadStages810.Parallel.input607 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_2 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input607_def]
  kernel_rfl

theorem input608_eq : InitECandidate.Proofs.DeadStages810.Parallel.input608 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_27 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input608_def]
  simp only [input607_eq, input606_eq]
  kernel_rfl

theorem output608_eq : InitECandidate.Proofs.DeadStages810.Parallel.output608 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_15 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output608_def]
  simp only [output606_eq]

theorem input609_eq : InitECandidate.Proofs.DeadStages810.Parallel.input609 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input609_def]
  kernel_rfl

theorem output609_eq : InitECandidate.Proofs.DeadStages810.Parallel.output609 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_1 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output609_def]
  kernel_rfl

theorem input610_eq : InitECandidate.Proofs.DeadStages810.Parallel.input610 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_28 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input610_def]
  simp only [input609_eq, input608_eq]
  kernel_rfl

theorem output610_eq : InitECandidate.Proofs.DeadStages810.Parallel.output610 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_16 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output610_def]
  simp only [output609_eq, output608_eq]
  kernel_rfl

theorem input611_eq : InitECandidate.Proofs.DeadStages810.Parallel.input611 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_30 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input611_def]
  simp only [input610_eq, input605_eq]
  kernel_rfl

theorem output611_eq : InitECandidate.Proofs.DeadStages810.Parallel.output611 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_18 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output611_def]
  simp only [output610_eq, output605_eq]
  kernel_rfl

theorem input612_eq : InitECandidate.Proofs.DeadStages810.Parallel.input612 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_32 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input612_def]
  simp only [input611_eq, input604_eq]
  kernel_rfl

theorem output612_eq : InitECandidate.Proofs.DeadStages810.Parallel.output612 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_18 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output612_def]
  simp only [output611_eq]

theorem input613_eq : InitECandidate.Proofs.DeadStages810.Parallel.input613 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_61 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input613_def]
  simp only [input612_eq, input603_eq]
  kernel_rfl

theorem output613_eq : InitECandidate.Proofs.DeadStages810.Parallel.output613 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_38 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output613_def]
  simp only [output612_eq, output603_eq]
  kernel_rfl

theorem input614_eq : InitECandidate.Proofs.DeadStages810.Parallel.input614 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_62 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input614_def]
  simp only [input613_eq, input596_eq]
  kernel_rfl

theorem output614_eq : InitECandidate.Proofs.DeadStages810.Parallel.output614 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_39 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output614_def]
  simp only [output613_eq, output596_eq]
  kernel_rfl

theorem input615_eq : InitECandidate.Proofs.DeadStages810.Parallel.input615 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_66 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input615_def]
  simp only [input614_eq, input595_eq]
  kernel_rfl

theorem output615_eq : InitECandidate.Proofs.DeadStages810.Parallel.output615 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_43 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output615_def]
  simp only [output614_eq, output595_eq]
  kernel_rfl

theorem input616_eq : InitECandidate.Proofs.DeadStages810.Parallel.input616 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_70 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input616_def]
  simp only [input615_eq, input592_eq]
  kernel_rfl

theorem output616_eq : InitECandidate.Proofs.DeadStages810.Parallel.output616 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_47 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output616_def]
  simp only [output615_eq, output592_eq]
  kernel_rfl

theorem input617_eq : InitECandidate.Proofs.DeadStages810.Parallel.input617 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_74 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input617_def]
  simp only [input616_eq, input589_eq]
  kernel_rfl

theorem output617_eq : InitECandidate.Proofs.DeadStages810.Parallel.output617 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_51 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output617_def]
  simp only [output616_eq, output589_eq]
  kernel_rfl

theorem input618_eq : InitECandidate.Proofs.DeadStages810.Parallel.input618 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_78 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input618_def]
  simp only [input617_eq, input586_eq]
  kernel_rfl

theorem output618_eq : InitECandidate.Proofs.DeadStages810.Parallel.output618 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_55 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output618_def]
  simp only [output617_eq, output586_eq]
  kernel_rfl

theorem input619_eq : InitECandidate.Proofs.DeadStages810.Parallel.input619 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_82 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input619_def]
  simp only [input618_eq, input583_eq]
  kernel_rfl

theorem output619_eq : InitECandidate.Proofs.DeadStages810.Parallel.output619 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_59 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output619_def]
  simp only [output618_eq, output583_eq]
  kernel_rfl

theorem input620_eq : InitECandidate.Proofs.DeadStages810.Parallel.input620 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_86 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input620_def]
  simp only [input619_eq, input580_eq]
  kernel_rfl

theorem output620_eq : InitECandidate.Proofs.DeadStages810.Parallel.output620 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_63 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output620_def]
  simp only [output619_eq, output580_eq]
  kernel_rfl

theorem input621_eq : InitECandidate.Proofs.DeadStages810.Parallel.input621 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_90 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input621_def]
  simp only [input620_eq, input577_eq]
  kernel_rfl

theorem output621_eq : InitECandidate.Proofs.DeadStages810.Parallel.output621 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_67 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output621_def]
  simp only [output620_eq, output577_eq]
  kernel_rfl

theorem input622_eq : InitECandidate.Proofs.DeadStages810.Parallel.input622 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_94 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input622_def]
  simp only [input621_eq, input574_eq]
  kernel_rfl

theorem output622_eq : InitECandidate.Proofs.DeadStages810.Parallel.output622 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_71 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output622_def]
  simp only [output621_eq, output574_eq]
  kernel_rfl

theorem input623_eq : InitECandidate.Proofs.DeadStages810.Parallel.input623 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_98 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input623_def]
  simp only [input622_eq, input571_eq]
  kernel_rfl

theorem output623_eq : InitECandidate.Proofs.DeadStages810.Parallel.output623 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_75 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output623_def]
  simp only [output622_eq, output571_eq]
  kernel_rfl

theorem input624_eq : InitECandidate.Proofs.DeadStages810.Parallel.input624 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_102 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input624_def]
  simp only [input623_eq, input568_eq]
  kernel_rfl

theorem output624_eq : InitECandidate.Proofs.DeadStages810.Parallel.output624 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_79 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output624_def]
  simp only [output623_eq, output568_eq]
  kernel_rfl

theorem input625_eq : InitECandidate.Proofs.DeadStages810.Parallel.input625 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_106 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input625_def]
  simp only [input624_eq, input565_eq]
  kernel_rfl

theorem output625_eq : InitECandidate.Proofs.DeadStages810.Parallel.output625 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_83 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output625_def]
  simp only [output624_eq, output565_eq]
  kernel_rfl

theorem input626_eq : InitECandidate.Proofs.DeadStages810.Parallel.input626 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_110 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input626_def]
  simp only [input625_eq, input562_eq]
  kernel_rfl

theorem output626_eq : InitECandidate.Proofs.DeadStages810.Parallel.output626 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_87 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output626_def]
  simp only [output625_eq, output562_eq]
  kernel_rfl

theorem input627_eq : InitECandidate.Proofs.DeadStages810.Parallel.input627 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_114 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input627_def]
  simp only [input626_eq, input559_eq]
  kernel_rfl

theorem output627_eq : InitECandidate.Proofs.DeadStages810.Parallel.output627 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_91 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output627_def]
  simp only [output626_eq, output559_eq]
  kernel_rfl

theorem input628_eq : InitECandidate.Proofs.DeadStages810.Parallel.input628 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_118 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input628_def]
  simp only [input627_eq, input556_eq]
  kernel_rfl

theorem output628_eq : InitECandidate.Proofs.DeadStages810.Parallel.output628 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_95 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output628_def]
  simp only [output627_eq, output556_eq]
  kernel_rfl

theorem input629_eq : InitECandidate.Proofs.DeadStages810.Parallel.input629 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_122 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input629_def]
  simp only [input628_eq, input553_eq]
  kernel_rfl

theorem output629_eq : InitECandidate.Proofs.DeadStages810.Parallel.output629 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_99 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output629_def]
  simp only [output628_eq, output553_eq]
  kernel_rfl

theorem input630_eq : InitECandidate.Proofs.DeadStages810.Parallel.input630 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_126 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input630_def]
  simp only [input629_eq, input550_eq]
  kernel_rfl

theorem output630_eq : InitECandidate.Proofs.DeadStages810.Parallel.output630 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_103 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output630_def]
  simp only [output629_eq, output550_eq]
  kernel_rfl

theorem input631_eq : InitECandidate.Proofs.DeadStages810.Parallel.input631 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_130 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input631_def]
  simp only [input630_eq, input547_eq]
  kernel_rfl

theorem output631_eq : InitECandidate.Proofs.DeadStages810.Parallel.output631 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_107 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output631_def]
  simp only [output630_eq, output547_eq]
  kernel_rfl

theorem input632_eq : InitECandidate.Proofs.DeadStages810.Parallel.input632 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_134 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input632_def]
  simp only [input631_eq, input544_eq]
  kernel_rfl

theorem output632_eq : InitECandidate.Proofs.DeadStages810.Parallel.output632 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_111 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output632_def]
  simp only [output631_eq, output544_eq]
  kernel_rfl

theorem input633_eq : InitECandidate.Proofs.DeadStages810.Parallel.input633 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_136 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input633_def]
  simp only [input632_eq, input541_eq]
  kernel_rfl

theorem output633_eq : InitECandidate.Proofs.DeadStages810.Parallel.output633 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_113 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output633_def]
  simp only [output632_eq, output541_eq]
  kernel_rfl

theorem input634_eq : InitECandidate.Proofs.DeadStages810.Parallel.input634 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_138 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input634_def]
  simp only [input633_eq, input540_eq]
  kernel_rfl

theorem output634_eq : InitECandidate.Proofs.DeadStages810.Parallel.output634 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_115 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output634_def]
  simp only [output633_eq, output540_eq]
  kernel_rfl

theorem input635_eq : InitECandidate.Proofs.DeadStages810.Parallel.input635 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_140 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input635_def]
  simp only [input634_eq, input539_eq]
  kernel_rfl

theorem output635_eq : InitECandidate.Proofs.DeadStages810.Parallel.output635 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_117 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output635_def]
  simp only [output634_eq, output539_eq]
  kernel_rfl

theorem input636_eq : InitECandidate.Proofs.DeadStages810.Parallel.input636 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_142 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input636_def]
  simp only [input635_eq, input538_eq]
  kernel_rfl

theorem output636_eq : InitECandidate.Proofs.DeadStages810.Parallel.output636 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_119 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output636_def]
  simp only [output635_eq, output538_eq]
  kernel_rfl

theorem input637_eq : InitECandidate.Proofs.DeadStages810.Parallel.input637 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_144 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input637_def]
  simp only [input636_eq, input537_eq]
  kernel_rfl

theorem output637_eq : InitECandidate.Proofs.DeadStages810.Parallel.output637 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_121 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output637_def]
  simp only [output636_eq, output537_eq]
  kernel_rfl

theorem input638_eq : InitECandidate.Proofs.DeadStages810.Parallel.input638 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_146 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input638_def]
  simp only [input637_eq, input536_eq]
  kernel_rfl

theorem output638_eq : InitECandidate.Proofs.DeadStages810.Parallel.output638 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_123 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output638_def]
  simp only [output637_eq, output536_eq]
  kernel_rfl

theorem input639_eq : InitECandidate.Proofs.DeadStages810.Parallel.input639 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_148 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input639_def]
  simp only [input638_eq, input535_eq]
  kernel_rfl

theorem output639_eq : InitECandidate.Proofs.DeadStages810.Parallel.output639 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_125 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output639_def]
  simp only [output638_eq, output535_eq]
  kernel_rfl

theorem input640_eq : InitECandidate.Proofs.DeadStages810.Parallel.input640 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_150 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input640_def]
  simp only [input639_eq, input534_eq]
  kernel_rfl

theorem output640_eq : InitECandidate.Proofs.DeadStages810.Parallel.output640 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_127 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output640_def]
  simp only [output639_eq, output534_eq]
  kernel_rfl

theorem input641_eq : InitECandidate.Proofs.DeadStages810.Parallel.input641 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_152 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input641_def]
  simp only [input640_eq, input533_eq]
  kernel_rfl

theorem output641_eq : InitECandidate.Proofs.DeadStages810.Parallel.output641 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_129 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output641_def]
  simp only [output640_eq, output533_eq]
  kernel_rfl

theorem input642_eq : InitECandidate.Proofs.DeadStages810.Parallel.input642 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_154 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input642_def]
  simp only [input641_eq, input532_eq]
  kernel_rfl

theorem output642_eq : InitECandidate.Proofs.DeadStages810.Parallel.output642 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_131 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output642_def]
  simp only [output641_eq, output532_eq]
  kernel_rfl

theorem input643_eq : InitECandidate.Proofs.DeadStages810.Parallel.input643 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_156 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input643_def]
  simp only [input642_eq, input531_eq]
  kernel_rfl

theorem output643_eq : InitECandidate.Proofs.DeadStages810.Parallel.output643 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_133 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output643_def]
  simp only [output642_eq, output531_eq]
  kernel_rfl

theorem input644_eq : InitECandidate.Proofs.DeadStages810.Parallel.input644 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_158 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input644_def]
  simp only [input643_eq, input530_eq]
  kernel_rfl

theorem output644_eq : InitECandidate.Proofs.DeadStages810.Parallel.output644 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_135 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output644_def]
  simp only [output643_eq, output530_eq]
  kernel_rfl

theorem input645_eq : InitECandidate.Proofs.DeadStages810.Parallel.input645 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_160 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input645_def]
  simp only [input644_eq, input529_eq]
  kernel_rfl

theorem output645_eq : InitECandidate.Proofs.DeadStages810.Parallel.output645 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_137 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output645_def]
  simp only [output644_eq, output529_eq]
  kernel_rfl

theorem input646_eq : InitECandidate.Proofs.DeadStages810.Parallel.input646 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_162 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input646_def]
  simp only [input645_eq, input528_eq]
  kernel_rfl

theorem output646_eq : InitECandidate.Proofs.DeadStages810.Parallel.output646 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_139 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output646_def]
  simp only [output645_eq, output528_eq]
  kernel_rfl

theorem input647_eq : InitECandidate.Proofs.DeadStages810.Parallel.input647 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_166 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input647_def]
  simp only [input646_eq, input527_eq]
  kernel_rfl

theorem output647_eq : InitECandidate.Proofs.DeadStages810.Parallel.output647 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_143 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output647_def]
  simp only [output646_eq, output527_eq]
  kernel_rfl

theorem input648_eq : InitECandidate.Proofs.DeadStages810.Parallel.input648 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_168 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input648_def]
  simp only [input647_eq, input524_eq]
  kernel_rfl

theorem output648_eq : InitECandidate.Proofs.DeadStages810.Parallel.output648 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_145 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output648_def]
  simp only [output647_eq, output524_eq]
  kernel_rfl

theorem input649_eq : InitECandidate.Proofs.DeadStages810.Parallel.input649 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_172 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input649_def]
  simp only [input648_eq, input523_eq]
  kernel_rfl

theorem output649_eq : InitECandidate.Proofs.DeadStages810.Parallel.output649 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_149 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output649_def]
  simp only [output648_eq, output523_eq]
  kernel_rfl

theorem input650_eq : InitECandidate.Proofs.DeadStages810.Parallel.input650 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_174 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input650_def]
  simp only [input649_eq, input520_eq]
  kernel_rfl

theorem output650_eq : InitECandidate.Proofs.DeadStages810.Parallel.output650 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_151 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output650_def]
  simp only [output649_eq, output520_eq]
  kernel_rfl

theorem input651_eq : InitECandidate.Proofs.DeadStages810.Parallel.input651 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_178 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input651_def]
  simp only [input650_eq, input519_eq]
  kernel_rfl

theorem output651_eq : InitECandidate.Proofs.DeadStages810.Parallel.output651 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_155 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output651_def]
  simp only [output650_eq, output519_eq]
  kernel_rfl

theorem input652_eq : InitECandidate.Proofs.DeadStages810.Parallel.input652 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_180 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input652_def]
  simp only [input651_eq, input516_eq]
  kernel_rfl

theorem output652_eq : InitECandidate.Proofs.DeadStages810.Parallel.output652 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_157 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output652_def]
  simp only [output651_eq, output516_eq]
  kernel_rfl

theorem input653_eq : InitECandidate.Proofs.DeadStages810.Parallel.input653 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_184 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input653_def]
  simp only [input652_eq, input515_eq]
  kernel_rfl

theorem output653_eq : InitECandidate.Proofs.DeadStages810.Parallel.output653 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_161 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output653_def]
  simp only [output652_eq, output515_eq]
  kernel_rfl

theorem input654_eq : InitECandidate.Proofs.DeadStages810.Parallel.input654 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_186 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input654_def]
  simp only [input653_eq, input512_eq]
  kernel_rfl

theorem output654_eq : InitECandidate.Proofs.DeadStages810.Parallel.output654 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_163 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output654_def]
  simp only [output653_eq, output512_eq]
  kernel_rfl

theorem input655_eq : InitECandidate.Proofs.DeadStages810.Parallel.input655 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_190 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input655_def]
  simp only [input654_eq, input511_eq]
  kernel_rfl

theorem output655_eq : InitECandidate.Proofs.DeadStages810.Parallel.output655 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_167 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output655_def]
  simp only [output654_eq, output511_eq]
  kernel_rfl

theorem input656_eq : InitECandidate.Proofs.DeadStages810.Parallel.input656 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_192 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input656_def]
  simp only [input655_eq, input508_eq]
  kernel_rfl

theorem output656_eq : InitECandidate.Proofs.DeadStages810.Parallel.output656 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_169 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output656_def]
  simp only [output655_eq, output508_eq]
  kernel_rfl

theorem input657_eq : InitECandidate.Proofs.DeadStages810.Parallel.input657 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_196 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input657_def]
  simp only [input656_eq, input507_eq]
  kernel_rfl

theorem output657_eq : InitECandidate.Proofs.DeadStages810.Parallel.output657 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_173 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output657_def]
  simp only [output656_eq, output507_eq]
  kernel_rfl

theorem input658_eq : InitECandidate.Proofs.DeadStages810.Parallel.input658 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_198 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input658_def]
  simp only [input657_eq, input504_eq]
  kernel_rfl

theorem output658_eq : InitECandidate.Proofs.DeadStages810.Parallel.output658 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_175 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output658_def]
  simp only [output657_eq, output504_eq]
  kernel_rfl

theorem input659_eq : InitECandidate.Proofs.DeadStages810.Parallel.input659 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_199 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input659_def]
  simp only [input658_eq, input503_eq]
  kernel_rfl

theorem output659_eq : InitECandidate.Proofs.DeadStages810.Parallel.output659 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_176 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output659_def]
  simp only [output658_eq, output503_eq]
  kernel_rfl

theorem input660_eq : InitECandidate.Proofs.DeadStages810.Parallel.input660 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_414 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input660_def]
  simp only [input659_eq, input502_eq]
  kernel_rfl

theorem output660_eq : InitECandidate.Proofs.DeadStages810.Parallel.output660 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_331 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output660_def]
  simp only [output659_eq, output502_eq]
  kernel_rfl

theorem input661_eq : InitECandidate.Proofs.DeadStages810.Parallel.input661 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_415 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input661_def]
  simp only [input660_eq, input322_eq]
  kernel_rfl

theorem output661_eq : InitECandidate.Proofs.DeadStages810.Parallel.output661 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_332 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output661_def]
  simp only [output660_eq, output322_eq]
  kernel_rfl

theorem input662_eq : InitECandidate.Proofs.DeadStages810.Parallel.input662 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_425 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input662_def]
  simp only [input661_eq, input321_eq]
  kernel_rfl

theorem output662_eq : InitECandidate.Proofs.DeadStages810.Parallel.output662 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_342 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output662_def]
  simp only [output661_eq, output321_eq]
  kernel_rfl

theorem input663_eq : InitECandidate.Proofs.DeadStages810.Parallel.input663 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_427 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input663_def]
  simp only [input662_eq, input312_eq]
  kernel_rfl

theorem output663_eq : InitECandidate.Proofs.DeadStages810.Parallel.output663 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_342 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output663_def]
  simp only [output662_eq]

theorem input664_eq : InitECandidate.Proofs.DeadStages810.Parallel.input664 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_429 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input664_def]
  simp only [input663_eq, input311_eq]
  kernel_rfl

theorem output664_eq : InitECandidate.Proofs.DeadStages810.Parallel.output664 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_344 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output664_def]
  simp only [output663_eq, output311_eq]
  kernel_rfl

theorem input665_eq : InitECandidate.Proofs.DeadStages810.Parallel.input665 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_431 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input665_def]
  simp only [input664_eq, input310_eq]
  kernel_rfl

theorem output665_eq : InitECandidate.Proofs.DeadStages810.Parallel.output665 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_346 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output665_def]
  simp only [output664_eq, output310_eq]
  kernel_rfl

theorem input666_eq : InitECandidate.Proofs.DeadStages810.Parallel.input666 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_433 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input666_def]
  simp only [input665_eq, input309_eq]
  kernel_rfl

theorem output666_eq : InitECandidate.Proofs.DeadStages810.Parallel.output666 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_348 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output666_def]
  simp only [output665_eq, output309_eq]
  kernel_rfl

theorem input667_eq : InitECandidate.Proofs.DeadStages810.Parallel.input667 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_435 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input667_def]
  simp only [input666_eq, input308_eq]
  kernel_rfl

theorem output667_eq : InitECandidate.Proofs.DeadStages810.Parallel.output667 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_350 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output667_def]
  simp only [output666_eq, output308_eq]
  kernel_rfl

theorem input668_eq : InitECandidate.Proofs.DeadStages810.Parallel.input668 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_437 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input668_def]
  simp only [input667_eq, input307_eq]
  kernel_rfl

theorem output668_eq : InitECandidate.Proofs.DeadStages810.Parallel.output668 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_352 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output668_def]
  simp only [output667_eq, output307_eq]
  kernel_rfl

theorem input669_eq : InitECandidate.Proofs.DeadStages810.Parallel.input669 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_439 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input669_def]
  simp only [input668_eq, input306_eq]
  kernel_rfl

theorem output669_eq : InitECandidate.Proofs.DeadStages810.Parallel.output669 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_354 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output669_def]
  simp only [output668_eq, output306_eq]
  kernel_rfl

theorem input670_eq : InitECandidate.Proofs.DeadStages810.Parallel.input670 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_441 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input670_def]
  simp only [input669_eq, input305_eq]
  kernel_rfl

theorem output670_eq : InitECandidate.Proofs.DeadStages810.Parallel.output670 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_356 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output670_def]
  simp only [output669_eq, output305_eq]
  kernel_rfl

theorem input671_eq : InitECandidate.Proofs.DeadStages810.Parallel.input671 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_490 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input671_def]
  simp only [input670_eq, input304_eq]
  kernel_rfl

theorem output671_eq : InitECandidate.Proofs.DeadStages810.Parallel.output671 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_396 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output671_def]
  simp only [output670_eq, output304_eq]
  kernel_rfl

theorem input672_eq : InitECandidate.Proofs.DeadStages810.Parallel.input672 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_491 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input672_def]
  simp only [input671_eq, input297_eq]
  kernel_rfl

theorem output672_eq : InitECandidate.Proofs.DeadStages810.Parallel.output672 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_397 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output672_def]
  simp only [output671_eq, output297_eq]
  kernel_rfl

theorem input673_eq : InitECandidate.Proofs.DeadStages810.Parallel.input673 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_503 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input673_def]
  simp only [input672_eq, input296_eq]
  kernel_rfl

theorem output673_eq : InitECandidate.Proofs.DeadStages810.Parallel.output673 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_409 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output673_def]
  simp only [output672_eq, output296_eq]
  kernel_rfl

theorem input674_eq : InitECandidate.Proofs.DeadStages810.Parallel.input674 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_505 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input674_def]
  simp only [input673_eq, input285_eq]
  kernel_rfl

theorem output674_eq : InitECandidate.Proofs.DeadStages810.Parallel.output674 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_409 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output674_def]
  simp only [output673_eq]

theorem input675_eq : InitECandidate.Proofs.DeadStages810.Parallel.input675 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_507 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input675_def]
  simp only [input674_eq, input284_eq]
  kernel_rfl

theorem output675_eq : InitECandidate.Proofs.DeadStages810.Parallel.output675 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_411 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output675_def]
  simp only [output674_eq, output284_eq]
  kernel_rfl

theorem input676_eq : InitECandidate.Proofs.DeadStages810.Parallel.input676 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_509 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input676_def]
  simp only [input675_eq, input283_eq]
  kernel_rfl

theorem output676_eq : InitECandidate.Proofs.DeadStages810.Parallel.output676 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_413 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output676_def]
  simp only [output675_eq, output283_eq]
  kernel_rfl

theorem input677_eq : InitECandidate.Proofs.DeadStages810.Parallel.input677 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_511 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input677_def]
  simp only [input676_eq, input282_eq]
  kernel_rfl

theorem output677_eq : InitECandidate.Proofs.DeadStages810.Parallel.output677 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_415 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output677_def]
  simp only [output676_eq, output282_eq]
  kernel_rfl

theorem input678_eq : InitECandidate.Proofs.DeadStages810.Parallel.input678 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_513 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input678_def]
  simp only [input677_eq, input281_eq]
  kernel_rfl

theorem output678_eq : InitECandidate.Proofs.DeadStages810.Parallel.output678 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_417 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output678_def]
  simp only [output677_eq, output281_eq]
  kernel_rfl

theorem input679_eq : InitECandidate.Proofs.DeadStages810.Parallel.input679 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_515 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input679_def]
  simp only [input678_eq, input280_eq]
  kernel_rfl

theorem output679_eq : InitECandidate.Proofs.DeadStages810.Parallel.output679 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_419 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output679_def]
  simp only [output678_eq, output280_eq]
  kernel_rfl

theorem input680_eq : InitECandidate.Proofs.DeadStages810.Parallel.input680 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_517 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input680_def]
  simp only [input679_eq, input279_eq]
  kernel_rfl

theorem output680_eq : InitECandidate.Proofs.DeadStages810.Parallel.output680 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_421 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output680_def]
  simp only [output679_eq, output279_eq]
  kernel_rfl

theorem input681_eq : InitECandidate.Proofs.DeadStages810.Parallel.input681 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_519 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input681_def]
  simp only [input680_eq, input278_eq]
  kernel_rfl

theorem output681_eq : InitECandidate.Proofs.DeadStages810.Parallel.output681 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_423 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output681_def]
  simp only [output680_eq, output278_eq]
  kernel_rfl

theorem input682_eq : InitECandidate.Proofs.DeadStages810.Parallel.input682 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_568 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input682_def]
  simp only [input681_eq, input277_eq]
  kernel_rfl

theorem output682_eq : InitECandidate.Proofs.DeadStages810.Parallel.output682 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_463 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output682_def]
  simp only [output681_eq, output277_eq]
  kernel_rfl

theorem input683_eq : InitECandidate.Proofs.DeadStages810.Parallel.input683 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_569 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input683_def]
  simp only [input682_eq, input270_eq]
  kernel_rfl

theorem output683_eq : InitECandidate.Proofs.DeadStages810.Parallel.output683 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_464 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output683_def]
  simp only [output682_eq, output270_eq]
  kernel_rfl

theorem input684_eq : InitECandidate.Proofs.DeadStages810.Parallel.input684 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_581 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input684_def]
  simp only [input683_eq, input269_eq]
  kernel_rfl

theorem output684_eq : InitECandidate.Proofs.DeadStages810.Parallel.output684 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_476 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output684_def]
  simp only [output683_eq, output269_eq]
  kernel_rfl

theorem input685_eq : InitECandidate.Proofs.DeadStages810.Parallel.input685 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_583 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input685_def]
  simp only [input684_eq, input258_eq]
  kernel_rfl

theorem output685_eq : InitECandidate.Proofs.DeadStages810.Parallel.output685 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_476 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output685_def]
  simp only [output684_eq]

theorem input686_eq : InitECandidate.Proofs.DeadStages810.Parallel.input686 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_585 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input686_def]
  simp only [input685_eq, input257_eq]
  kernel_rfl

theorem output686_eq : InitECandidate.Proofs.DeadStages810.Parallel.output686 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_478 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output686_def]
  simp only [output685_eq, output257_eq]
  kernel_rfl

theorem input687_eq : InitECandidate.Proofs.DeadStages810.Parallel.input687 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_587 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input687_def]
  simp only [input686_eq, input256_eq]
  kernel_rfl

theorem output687_eq : InitECandidate.Proofs.DeadStages810.Parallel.output687 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_480 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output687_def]
  simp only [output686_eq, output256_eq]
  kernel_rfl

theorem input688_eq : InitECandidate.Proofs.DeadStages810.Parallel.input688 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_589 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input688_def]
  simp only [input687_eq, input255_eq]
  kernel_rfl

theorem output688_eq : InitECandidate.Proofs.DeadStages810.Parallel.output688 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_482 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output688_def]
  simp only [output687_eq, output255_eq]
  kernel_rfl

theorem input689_eq : InitECandidate.Proofs.DeadStages810.Parallel.input689 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_591 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input689_def]
  simp only [input688_eq, input254_eq]
  kernel_rfl

theorem output689_eq : InitECandidate.Proofs.DeadStages810.Parallel.output689 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_484 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output689_def]
  simp only [output688_eq, output254_eq]
  kernel_rfl

theorem input690_eq : InitECandidate.Proofs.DeadStages810.Parallel.input690 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_593 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input690_def]
  simp only [input689_eq, input253_eq]
  kernel_rfl

theorem output690_eq : InitECandidate.Proofs.DeadStages810.Parallel.output690 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_486 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output690_def]
  simp only [output689_eq, output253_eq]
  kernel_rfl

theorem input691_eq : InitECandidate.Proofs.DeadStages810.Parallel.input691 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_595 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input691_def]
  simp only [input690_eq, input252_eq]
  kernel_rfl

theorem output691_eq : InitECandidate.Proofs.DeadStages810.Parallel.output691 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_488 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output691_def]
  simp only [output690_eq, output252_eq]
  kernel_rfl

theorem input692_eq : InitECandidate.Proofs.DeadStages810.Parallel.input692 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_597 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input692_def]
  simp only [input691_eq, input251_eq]
  kernel_rfl

theorem output692_eq : InitECandidate.Proofs.DeadStages810.Parallel.output692 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_490 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output692_def]
  simp only [output691_eq, output251_eq]
  kernel_rfl

theorem input693_eq : InitECandidate.Proofs.DeadStages810.Parallel.input693 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_646 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input693_def]
  simp only [input692_eq, input250_eq]
  kernel_rfl

theorem output693_eq : InitECandidate.Proofs.DeadStages810.Parallel.output693 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_530 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output693_def]
  simp only [output692_eq, output250_eq]
  kernel_rfl

theorem input694_eq : InitECandidate.Proofs.DeadStages810.Parallel.input694 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_647 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input694_def]
  simp only [input693_eq, input243_eq]
  kernel_rfl

theorem output694_eq : InitECandidate.Proofs.DeadStages810.Parallel.output694 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_531 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output694_def]
  simp only [output693_eq, output243_eq]
  kernel_rfl

theorem input695_eq : InitECandidate.Proofs.DeadStages810.Parallel.input695 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_659 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input695_def]
  simp only [input694_eq, input242_eq]
  kernel_rfl

theorem output695_eq : InitECandidate.Proofs.DeadStages810.Parallel.output695 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_543 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output695_def]
  simp only [output694_eq, output242_eq]
  kernel_rfl

theorem input696_eq : InitECandidate.Proofs.DeadStages810.Parallel.input696 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_661 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input696_def]
  simp only [input695_eq, input231_eq]
  kernel_rfl

theorem output696_eq : InitECandidate.Proofs.DeadStages810.Parallel.output696 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_543 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output696_def]
  simp only [output695_eq]

theorem input697_eq : InitECandidate.Proofs.DeadStages810.Parallel.input697 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_663 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input697_def]
  simp only [input696_eq, input230_eq]
  kernel_rfl

theorem output697_eq : InitECandidate.Proofs.DeadStages810.Parallel.output697 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_545 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output697_def]
  simp only [output696_eq, output230_eq]
  kernel_rfl

theorem input698_eq : InitECandidate.Proofs.DeadStages810.Parallel.input698 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_665 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input698_def]
  simp only [input697_eq, input229_eq]
  kernel_rfl

theorem output698_eq : InitECandidate.Proofs.DeadStages810.Parallel.output698 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_547 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output698_def]
  simp only [output697_eq, output229_eq]
  kernel_rfl

theorem input699_eq : InitECandidate.Proofs.DeadStages810.Parallel.input699 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_667 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input699_def]
  simp only [input698_eq, input228_eq]
  kernel_rfl

theorem output699_eq : InitECandidate.Proofs.DeadStages810.Parallel.output699 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_549 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output699_def]
  simp only [output698_eq, output228_eq]
  kernel_rfl

theorem input700_eq : InitECandidate.Proofs.DeadStages810.Parallel.input700 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_669 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input700_def]
  simp only [input699_eq, input227_eq]
  kernel_rfl

theorem output700_eq : InitECandidate.Proofs.DeadStages810.Parallel.output700 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_551 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output700_def]
  simp only [output699_eq, output227_eq]
  kernel_rfl

theorem input701_eq : InitECandidate.Proofs.DeadStages810.Parallel.input701 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_671 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input701_def]
  simp only [input700_eq, input226_eq]
  kernel_rfl

theorem output701_eq : InitECandidate.Proofs.DeadStages810.Parallel.output701 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_553 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output701_def]
  simp only [output700_eq, output226_eq]
  kernel_rfl

theorem input702_eq : InitECandidate.Proofs.DeadStages810.Parallel.input702 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_673 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input702_def]
  simp only [input701_eq, input225_eq]
  kernel_rfl

theorem output702_eq : InitECandidate.Proofs.DeadStages810.Parallel.output702 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_555 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output702_def]
  simp only [output701_eq, output225_eq]
  kernel_rfl

theorem input703_eq : InitECandidate.Proofs.DeadStages810.Parallel.input703 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_675 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input703_def]
  simp only [input702_eq, input224_eq]
  kernel_rfl

theorem output703_eq : InitECandidate.Proofs.DeadStages810.Parallel.output703 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_557 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output703_def]
  simp only [output702_eq, output224_eq]
  kernel_rfl

theorem input704_eq : InitECandidate.Proofs.DeadStages810.Parallel.input704 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_724 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input704_def]
  simp only [input703_eq, input223_eq]
  kernel_rfl

theorem output704_eq : InitECandidate.Proofs.DeadStages810.Parallel.output704 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_597 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output704_def]
  simp only [output703_eq, output223_eq]
  kernel_rfl

theorem input705_eq : InitECandidate.Proofs.DeadStages810.Parallel.input705 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_725 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input705_def]
  simp only [input704_eq, input216_eq]
  kernel_rfl

theorem output705_eq : InitECandidate.Proofs.DeadStages810.Parallel.output705 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_598 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output705_def]
  simp only [output704_eq, output216_eq]
  kernel_rfl

theorem input706_eq : InitECandidate.Proofs.DeadStages810.Parallel.input706 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_727 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input706_def]
  simp only [input705_eq, input215_eq]
  kernel_rfl

theorem output706_eq : InitECandidate.Proofs.DeadStages810.Parallel.output706 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_600 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output706_def]
  simp only [output705_eq, output215_eq]
  kernel_rfl

theorem input707_eq : InitECandidate.Proofs.DeadStages810.Parallel.input707 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_729 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input707_def]
  simp only [input706_eq, input214_eq]
  kernel_rfl

theorem output707_eq : InitECandidate.Proofs.DeadStages810.Parallel.output707 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_602 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output707_def]
  simp only [output706_eq, output214_eq]
  kernel_rfl

theorem input708_eq : InitECandidate.Proofs.DeadStages810.Parallel.input708 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_731 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input708_def]
  simp only [input707_eq, input213_eq]
  kernel_rfl

theorem output708_eq : InitECandidate.Proofs.DeadStages810.Parallel.output708 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_604 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output708_def]
  simp only [output707_eq, output213_eq]
  kernel_rfl

theorem input709_eq : InitECandidate.Proofs.DeadStages810.Parallel.input709 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_733 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input709_def]
  simp only [input708_eq, input212_eq]
  kernel_rfl

theorem output709_eq : InitECandidate.Proofs.DeadStages810.Parallel.output709 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_606 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output709_def]
  simp only [output708_eq, output212_eq]
  kernel_rfl

theorem input710_eq : InitECandidate.Proofs.DeadStages810.Parallel.input710 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_735 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input710_def]
  simp only [input709_eq, input211_eq]
  kernel_rfl

theorem output710_eq : InitECandidate.Proofs.DeadStages810.Parallel.output710 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_608 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output710_def]
  simp only [output709_eq, output211_eq]
  kernel_rfl

theorem input711_eq : InitECandidate.Proofs.DeadStages810.Parallel.input711 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_737 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input711_def]
  simp only [input710_eq, input210_eq]
  kernel_rfl

theorem output711_eq : InitECandidate.Proofs.DeadStages810.Parallel.output711 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_610 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output711_def]
  simp only [output710_eq, output210_eq]
  kernel_rfl

theorem input712_eq : InitECandidate.Proofs.DeadStages810.Parallel.input712 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_739 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input712_def]
  simp only [input711_eq, input209_eq]
  kernel_rfl

theorem output712_eq : InitECandidate.Proofs.DeadStages810.Parallel.output712 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_612 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output712_def]
  simp only [output711_eq, output209_eq]
  kernel_rfl

theorem input713_eq : InitECandidate.Proofs.DeadStages810.Parallel.input713 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_741 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input713_def]
  simp only [input712_eq, input208_eq]
  kernel_rfl

theorem output713_eq : InitECandidate.Proofs.DeadStages810.Parallel.output713 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_614 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output713_def]
  simp only [output712_eq, output208_eq]
  kernel_rfl

theorem input714_eq : InitECandidate.Proofs.DeadStages810.Parallel.input714 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_743 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input714_def]
  simp only [input713_eq, input207_eq]
  kernel_rfl

theorem output714_eq : InitECandidate.Proofs.DeadStages810.Parallel.output714 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_616 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output714_def]
  simp only [output713_eq, output207_eq]
  kernel_rfl

theorem input715_eq : InitECandidate.Proofs.DeadStages810.Parallel.input715 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_745 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input715_def]
  simp only [input714_eq, input206_eq]
  kernel_rfl

theorem output715_eq : InitECandidate.Proofs.DeadStages810.Parallel.output715 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_618 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output715_def]
  simp only [output714_eq, output206_eq]
  kernel_rfl

theorem input716_eq : InitECandidate.Proofs.DeadStages810.Parallel.input716 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_747 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input716_def]
  simp only [input715_eq, input205_eq]
  kernel_rfl

theorem output716_eq : InitECandidate.Proofs.DeadStages810.Parallel.output716 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_620 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output716_def]
  simp only [output715_eq, output205_eq]
  kernel_rfl

theorem input717_eq : InitECandidate.Proofs.DeadStages810.Parallel.input717 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_749 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input717_def]
  simp only [input716_eq, input204_eq]
  kernel_rfl

theorem output717_eq : InitECandidate.Proofs.DeadStages810.Parallel.output717 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_622 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output717_def]
  simp only [output716_eq, output204_eq]
  kernel_rfl

theorem input718_eq : InitECandidate.Proofs.DeadStages810.Parallel.input718 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_796 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input718_def]
  simp only [input717_eq, input203_eq]
  kernel_rfl

theorem output718_eq : InitECandidate.Proofs.DeadStages810.Parallel.output718 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_660 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output718_def]
  simp only [output717_eq, output203_eq]
  kernel_rfl

theorem input719_eq : InitECandidate.Proofs.DeadStages810.Parallel.input719 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_797 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input719_def]
  simp only [input718_eq, input198_eq]
  kernel_rfl

theorem output719_eq : InitECandidate.Proofs.DeadStages810.Parallel.output719 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_661 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output719_def]
  simp only [output718_eq, output198_eq]
  kernel_rfl

theorem input720_eq : InitECandidate.Proofs.DeadStages810.Parallel.input720 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_799 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input720_def]
  simp only [input719_eq, input197_eq]
  kernel_rfl

theorem output720_eq : InitECandidate.Proofs.DeadStages810.Parallel.output720 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_663 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output720_def]
  simp only [output719_eq, output197_eq]
  kernel_rfl

theorem input721_eq : InitECandidate.Proofs.DeadStages810.Parallel.input721 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_801 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input721_def]
  simp only [input720_eq, input196_eq]
  kernel_rfl

theorem output721_eq : InitECandidate.Proofs.DeadStages810.Parallel.output721 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_665 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output721_def]
  simp only [output720_eq, output196_eq]
  kernel_rfl

theorem input722_eq : InitECandidate.Proofs.DeadStages810.Parallel.input722 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_803 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input722_def]
  simp only [input721_eq, input195_eq]
  kernel_rfl

theorem output722_eq : InitECandidate.Proofs.DeadStages810.Parallel.output722 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_667 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output722_def]
  simp only [output721_eq, output195_eq]
  kernel_rfl

theorem input723_eq : InitECandidate.Proofs.DeadStages810.Parallel.input723 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_805 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input723_def]
  simp only [input722_eq, input194_eq]
  kernel_rfl

theorem output723_eq : InitECandidate.Proofs.DeadStages810.Parallel.output723 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_669 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output723_def]
  simp only [output722_eq, output194_eq]
  kernel_rfl

theorem input724_eq : InitECandidate.Proofs.DeadStages810.Parallel.input724 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_807 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input724_def]
  simp only [input723_eq, input193_eq]
  kernel_rfl

theorem output724_eq : InitECandidate.Proofs.DeadStages810.Parallel.output724 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_671 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output724_def]
  simp only [output723_eq, output193_eq]
  kernel_rfl

theorem input725_eq : InitECandidate.Proofs.DeadStages810.Parallel.input725 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_809 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input725_def]
  simp only [input724_eq, input192_eq]
  kernel_rfl

theorem output725_eq : InitECandidate.Proofs.DeadStages810.Parallel.output725 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_673 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output725_def]
  simp only [output724_eq, output192_eq]
  kernel_rfl

theorem input726_eq : InitECandidate.Proofs.DeadStages810.Parallel.input726 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_811 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input726_def]
  simp only [input725_eq, input191_eq]
  kernel_rfl

theorem output726_eq : InitECandidate.Proofs.DeadStages810.Parallel.output726 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_675 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output726_def]
  simp only [output725_eq, output191_eq]
  kernel_rfl

theorem input727_eq : InitECandidate.Proofs.DeadStages810.Parallel.input727 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_813 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input727_def]
  simp only [input726_eq, input190_eq]
  kernel_rfl

theorem output727_eq : InitECandidate.Proofs.DeadStages810.Parallel.output727 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_677 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output727_def]
  simp only [output726_eq, output190_eq]
  kernel_rfl

theorem input728_eq : InitECandidate.Proofs.DeadStages810.Parallel.input728 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_815 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input728_def]
  simp only [input727_eq, input189_eq]
  kernel_rfl

theorem output728_eq : InitECandidate.Proofs.DeadStages810.Parallel.output728 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_679 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output728_def]
  simp only [output727_eq, output189_eq]
  kernel_rfl

theorem input729_eq : InitECandidate.Proofs.DeadStages810.Parallel.input729 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_817 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input729_def]
  simp only [input728_eq, input188_eq]
  kernel_rfl

theorem output729_eq : InitECandidate.Proofs.DeadStages810.Parallel.output729 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_681 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output729_def]
  simp only [output728_eq, output188_eq]
  kernel_rfl

theorem input730_eq : InitECandidate.Proofs.DeadStages810.Parallel.input730 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_819 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input730_def]
  simp only [input729_eq, input187_eq]
  kernel_rfl

theorem output730_eq : InitECandidate.Proofs.DeadStages810.Parallel.output730 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_683 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output730_def]
  simp only [output729_eq, output187_eq]
  kernel_rfl

theorem input731_eq : InitECandidate.Proofs.DeadStages810.Parallel.input731 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_821 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input731_def]
  simp only [input730_eq, input186_eq]
  kernel_rfl

theorem output731_eq : InitECandidate.Proofs.DeadStages810.Parallel.output731 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_685 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output731_def]
  simp only [output730_eq, output186_eq]
  kernel_rfl

theorem input732_eq : InitECandidate.Proofs.DeadStages810.Parallel.input732 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_868 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input732_def]
  simp only [input731_eq, input185_eq]
  kernel_rfl

theorem output732_eq : InitECandidate.Proofs.DeadStages810.Parallel.output732 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_723 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output732_def]
  simp only [output731_eq, output185_eq]
  kernel_rfl

theorem input733_eq : InitECandidate.Proofs.DeadStages810.Parallel.input733 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_869 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input733_def]
  simp only [input732_eq, input180_eq]
  kernel_rfl

theorem output733_eq : InitECandidate.Proofs.DeadStages810.Parallel.output733 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_724 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output733_def]
  simp only [output732_eq, output180_eq]
  kernel_rfl

theorem input734_eq : InitECandidate.Proofs.DeadStages810.Parallel.input734 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_871 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input734_def]
  simp only [input733_eq, input179_eq]
  kernel_rfl

theorem output734_eq : InitECandidate.Proofs.DeadStages810.Parallel.output734 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_726 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output734_def]
  simp only [output733_eq, output179_eq]
  kernel_rfl

theorem input735_eq : InitECandidate.Proofs.DeadStages810.Parallel.input735 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_873 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input735_def]
  simp only [input734_eq, input178_eq]
  kernel_rfl

theorem output735_eq : InitECandidate.Proofs.DeadStages810.Parallel.output735 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_728 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output735_def]
  simp only [output734_eq, output178_eq]
  kernel_rfl

theorem input736_eq : InitECandidate.Proofs.DeadStages810.Parallel.input736 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_875 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input736_def]
  simp only [input735_eq, input177_eq]
  kernel_rfl

theorem output736_eq : InitECandidate.Proofs.DeadStages810.Parallel.output736 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_730 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output736_def]
  simp only [output735_eq, output177_eq]
  kernel_rfl

theorem input737_eq : InitECandidate.Proofs.DeadStages810.Parallel.input737 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_877 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input737_def]
  simp only [input736_eq, input176_eq]
  kernel_rfl

theorem output737_eq : InitECandidate.Proofs.DeadStages810.Parallel.output737 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_732 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output737_def]
  simp only [output736_eq, output176_eq]
  kernel_rfl

theorem input738_eq : InitECandidate.Proofs.DeadStages810.Parallel.input738 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_879 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input738_def]
  simp only [input737_eq, input175_eq]
  kernel_rfl

theorem output738_eq : InitECandidate.Proofs.DeadStages810.Parallel.output738 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_734 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output738_def]
  simp only [output737_eq, output175_eq]
  kernel_rfl

theorem input739_eq : InitECandidate.Proofs.DeadStages810.Parallel.input739 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_881 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input739_def]
  simp only [input738_eq, input174_eq]
  kernel_rfl

theorem output739_eq : InitECandidate.Proofs.DeadStages810.Parallel.output739 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_736 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output739_def]
  simp only [output738_eq, output174_eq]
  kernel_rfl

theorem input740_eq : InitECandidate.Proofs.DeadStages810.Parallel.input740 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_883 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input740_def]
  simp only [input739_eq, input173_eq]
  kernel_rfl

theorem output740_eq : InitECandidate.Proofs.DeadStages810.Parallel.output740 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_738 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output740_def]
  simp only [output739_eq, output173_eq]
  kernel_rfl

theorem input741_eq : InitECandidate.Proofs.DeadStages810.Parallel.input741 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_885 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input741_def]
  simp only [input740_eq, input172_eq]
  kernel_rfl

theorem output741_eq : InitECandidate.Proofs.DeadStages810.Parallel.output741 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_740 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output741_def]
  simp only [output740_eq, output172_eq]
  kernel_rfl

theorem input742_eq : InitECandidate.Proofs.DeadStages810.Parallel.input742 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_887 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input742_def]
  simp only [input741_eq, input171_eq]
  kernel_rfl

theorem output742_eq : InitECandidate.Proofs.DeadStages810.Parallel.output742 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_742 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output742_def]
  simp only [output741_eq, output171_eq]
  kernel_rfl

theorem input743_eq : InitECandidate.Proofs.DeadStages810.Parallel.input743 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_889 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input743_def]
  simp only [input742_eq, input170_eq]
  kernel_rfl

theorem output743_eq : InitECandidate.Proofs.DeadStages810.Parallel.output743 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_744 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output743_def]
  simp only [output742_eq, output170_eq]
  kernel_rfl

theorem input744_eq : InitECandidate.Proofs.DeadStages810.Parallel.input744 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_891 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input744_def]
  simp only [input743_eq, input169_eq]
  kernel_rfl

theorem output744_eq : InitECandidate.Proofs.DeadStages810.Parallel.output744 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_746 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output744_def]
  simp only [output743_eq, output169_eq]
  kernel_rfl

theorem input745_eq : InitECandidate.Proofs.DeadStages810.Parallel.input745 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_893 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input745_def]
  simp only [input744_eq, input168_eq]
  kernel_rfl

theorem output745_eq : InitECandidate.Proofs.DeadStages810.Parallel.output745 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_748 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output745_def]
  simp only [output744_eq, output168_eq]
  kernel_rfl

theorem input746_eq : InitECandidate.Proofs.DeadStages810.Parallel.input746 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_940 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input746_def]
  simp only [input745_eq, input167_eq]
  kernel_rfl

theorem output746_eq : InitECandidate.Proofs.DeadStages810.Parallel.output746 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_786 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output746_def]
  simp only [output745_eq, output167_eq]
  kernel_rfl

theorem input747_eq : InitECandidate.Proofs.DeadStages810.Parallel.input747 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_941 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input747_def]
  simp only [input746_eq, input162_eq]
  kernel_rfl

theorem output747_eq : InitECandidate.Proofs.DeadStages810.Parallel.output747 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_787 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output747_def]
  simp only [output746_eq, output162_eq]
  kernel_rfl

theorem input748_eq : InitECandidate.Proofs.DeadStages810.Parallel.input748 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_943 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input748_def]
  simp only [input747_eq, input161_eq]
  kernel_rfl

theorem output748_eq : InitECandidate.Proofs.DeadStages810.Parallel.output748 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_789 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output748_def]
  simp only [output747_eq, output161_eq]
  kernel_rfl

theorem input749_eq : InitECandidate.Proofs.DeadStages810.Parallel.input749 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_945 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input749_def]
  simp only [input748_eq, input160_eq]
  kernel_rfl

theorem output749_eq : InitECandidate.Proofs.DeadStages810.Parallel.output749 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_791 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output749_def]
  simp only [output748_eq, output160_eq]
  kernel_rfl

theorem input750_eq : InitECandidate.Proofs.DeadStages810.Parallel.input750 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_947 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input750_def]
  simp only [input749_eq, input159_eq]
  kernel_rfl

theorem output750_eq : InitECandidate.Proofs.DeadStages810.Parallel.output750 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_793 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output750_def]
  simp only [output749_eq, output159_eq]
  kernel_rfl

theorem input751_eq : InitECandidate.Proofs.DeadStages810.Parallel.input751 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_949 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input751_def]
  simp only [input750_eq, input158_eq]
  kernel_rfl

theorem output751_eq : InitECandidate.Proofs.DeadStages810.Parallel.output751 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_795 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output751_def]
  simp only [output750_eq, output158_eq]
  kernel_rfl

theorem input752_eq : InitECandidate.Proofs.DeadStages810.Parallel.input752 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_951 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input752_def]
  simp only [input751_eq, input157_eq]
  kernel_rfl

theorem output752_eq : InitECandidate.Proofs.DeadStages810.Parallel.output752 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_797 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output752_def]
  simp only [output751_eq, output157_eq]
  kernel_rfl

theorem input753_eq : InitECandidate.Proofs.DeadStages810.Parallel.input753 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_953 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input753_def]
  simp only [input752_eq, input156_eq]
  kernel_rfl

theorem output753_eq : InitECandidate.Proofs.DeadStages810.Parallel.output753 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_799 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output753_def]
  simp only [output752_eq, output156_eq]
  kernel_rfl

theorem input754_eq : InitECandidate.Proofs.DeadStages810.Parallel.input754 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_955 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input754_def]
  simp only [input753_eq, input155_eq]
  kernel_rfl

theorem output754_eq : InitECandidate.Proofs.DeadStages810.Parallel.output754 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_801 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output754_def]
  simp only [output753_eq, output155_eq]
  kernel_rfl

theorem input755_eq : InitECandidate.Proofs.DeadStages810.Parallel.input755 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_957 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input755_def]
  simp only [input754_eq, input154_eq]
  kernel_rfl

theorem output755_eq : InitECandidate.Proofs.DeadStages810.Parallel.output755 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_803 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output755_def]
  simp only [output754_eq, output154_eq]
  kernel_rfl

theorem input756_eq : InitECandidate.Proofs.DeadStages810.Parallel.input756 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_959 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input756_def]
  simp only [input755_eq, input153_eq]
  kernel_rfl

theorem output756_eq : InitECandidate.Proofs.DeadStages810.Parallel.output756 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_805 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output756_def]
  simp only [output755_eq, output153_eq]
  kernel_rfl

theorem input757_eq : InitECandidate.Proofs.DeadStages810.Parallel.input757 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_961 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input757_def]
  simp only [input756_eq, input152_eq]
  kernel_rfl

theorem output757_eq : InitECandidate.Proofs.DeadStages810.Parallel.output757 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_807 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output757_def]
  simp only [output756_eq, output152_eq]
  kernel_rfl

theorem input758_eq : InitECandidate.Proofs.DeadStages810.Parallel.input758 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_963 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input758_def]
  simp only [input757_eq, input151_eq]
  kernel_rfl

theorem output758_eq : InitECandidate.Proofs.DeadStages810.Parallel.output758 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_809 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output758_def]
  simp only [output757_eq, output151_eq]
  kernel_rfl

theorem input759_eq : InitECandidate.Proofs.DeadStages810.Parallel.input759 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_965 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input759_def]
  simp only [input758_eq, input150_eq]
  kernel_rfl

theorem output759_eq : InitECandidate.Proofs.DeadStages810.Parallel.output759 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_811 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output759_def]
  simp only [output758_eq, output150_eq]
  kernel_rfl

theorem input760_eq : InitECandidate.Proofs.DeadStages810.Parallel.input760 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1012 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input760_def]
  simp only [input759_eq, input149_eq]
  kernel_rfl

theorem output760_eq : InitECandidate.Proofs.DeadStages810.Parallel.output760 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_849 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output760_def]
  simp only [output759_eq, output149_eq]
  kernel_rfl

theorem input761_eq : InitECandidate.Proofs.DeadStages810.Parallel.input761 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1013 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input761_def]
  simp only [input760_eq, input144_eq]
  kernel_rfl

theorem output761_eq : InitECandidate.Proofs.DeadStages810.Parallel.output761 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_850 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output761_def]
  simp only [output760_eq, output144_eq]
  kernel_rfl

theorem input762_eq : InitECandidate.Proofs.DeadStages810.Parallel.input762 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1015 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input762_def]
  simp only [input761_eq, input143_eq]
  kernel_rfl

theorem output762_eq : InitECandidate.Proofs.DeadStages810.Parallel.output762 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_852 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output762_def]
  simp only [output761_eq, output143_eq]
  kernel_rfl

theorem input763_eq : InitECandidate.Proofs.DeadStages810.Parallel.input763 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1017 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input763_def]
  simp only [input762_eq, input142_eq]
  kernel_rfl

theorem output763_eq : InitECandidate.Proofs.DeadStages810.Parallel.output763 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_854 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output763_def]
  simp only [output762_eq, output142_eq]
  kernel_rfl

theorem input764_eq : InitECandidate.Proofs.DeadStages810.Parallel.input764 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1019 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input764_def]
  simp only [input763_eq, input141_eq]
  kernel_rfl

theorem output764_eq : InitECandidate.Proofs.DeadStages810.Parallel.output764 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_856 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output764_def]
  simp only [output763_eq, output141_eq]
  kernel_rfl

theorem input765_eq : InitECandidate.Proofs.DeadStages810.Parallel.input765 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1021 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input765_def]
  simp only [input764_eq, input140_eq]
  kernel_rfl

theorem output765_eq : InitECandidate.Proofs.DeadStages810.Parallel.output765 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_858 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output765_def]
  simp only [output764_eq, output140_eq]
  kernel_rfl

theorem input766_eq : InitECandidate.Proofs.DeadStages810.Parallel.input766 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1023 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input766_def]
  simp only [input765_eq, input139_eq]
  kernel_rfl

theorem output766_eq : InitECandidate.Proofs.DeadStages810.Parallel.output766 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_860 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output766_def]
  simp only [output765_eq, output139_eq]
  kernel_rfl

theorem input767_eq : InitECandidate.Proofs.DeadStages810.Parallel.input767 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_2_1025 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.input767_def]
  simp only [input766_eq, input138_eq]
  kernel_rfl

theorem output767_eq : InitECandidate.Proofs.DeadStages810.Parallel.output767 =
    InitECandidate.Proofs.WordStages.Parallel810.word810_3_862 := by
  rw [InitECandidate.Proofs.DeadStages810.Parallel.output767_def]
  simp only [output766_eq, output138_eq]
  kernel_rfl

#print axioms output767_eq
end InitECandidate.Proofs.WordStages.Parallel810.AgreementsParallel
