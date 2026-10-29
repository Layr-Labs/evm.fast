import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel79.Data2
import InitECandidate.Proofs.WordStages.Parallel79.Data3
import InitECandidate.Proofs.DeadStages79.Parallel.Data.Chunk002
import InitECandidate.Proofs.WordStages.Parallel79.AgreementsParallel.Chunk001

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.WordStages.Parallel79.AgreementsParallel
theorem input512_eq : InitECandidate.Proofs.DeadStages79.Parallel.input512 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1162 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input512_def]
  simp only [input511_eq, input510_eq]
  kernel_rfl

theorem output512_eq : InitECandidate.Proofs.DeadStages79.Parallel.output512 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_678 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output512_def]
  simp only [output511_eq, output510_eq]
  kernel_rfl

theorem input513_eq : InitECandidate.Proofs.DeadStages79.Parallel.input513 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1156 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input513_def]
  kernel_rfl

theorem input514_eq : InitECandidate.Proofs.DeadStages79.Parallel.input514 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input514_def]
  kernel_rfl

theorem output514_eq : InitECandidate.Proofs.DeadStages79.Parallel.output514 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output514_def]
  kernel_rfl

theorem input515_eq : InitECandidate.Proofs.DeadStages79.Parallel.input515 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1154 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input515_def]
  kernel_rfl

theorem input516_eq : InitECandidate.Proofs.DeadStages79.Parallel.input516 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1155 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input516_def]
  simp only [input515_eq, input514_eq]
  kernel_rfl

theorem output516_eq : InitECandidate.Proofs.DeadStages79.Parallel.output516 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output516_def]
  simp only [output514_eq]

theorem input517_eq : InitECandidate.Proofs.DeadStages79.Parallel.input517 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1157 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input517_def]
  simp only [input516_eq, input513_eq]
  kernel_rfl

theorem output517_eq : InitECandidate.Proofs.DeadStages79.Parallel.output517 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output517_def]
  simp only [output516_eq]

theorem input518_eq : InitECandidate.Proofs.DeadStages79.Parallel.input518 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1163 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input518_def]
  simp only [input517_eq, input512_eq]
  kernel_rfl

theorem output518_eq : InitECandidate.Proofs.DeadStages79.Parallel.output518 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_679 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output518_def]
  simp only [output517_eq, output512_eq]
  kernel_rfl

theorem input519_eq : InitECandidate.Proofs.DeadStages79.Parallel.input519 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1165 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input519_def]
  simp only [input518_eq, input507_eq]
  kernel_rfl

theorem output519_eq : InitECandidate.Proofs.DeadStages79.Parallel.output519 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_681 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output519_def]
  simp only [output518_eq, output507_eq]
  kernel_rfl

theorem input520_eq : InitECandidate.Proofs.DeadStages79.Parallel.input520 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1171 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input520_def]
  simp only [input519_eq, input506_eq]
  kernel_rfl

theorem output520_eq : InitECandidate.Proofs.DeadStages79.Parallel.output520 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_687 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output520_def]
  simp only [output519_eq, output506_eq]
  kernel_rfl

theorem input521_eq : InitECandidate.Proofs.DeadStages79.Parallel.input521 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1173 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input521_def]
  simp only [input520_eq, input501_eq]
  kernel_rfl

theorem output521_eq : InitECandidate.Proofs.DeadStages79.Parallel.output521 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_689 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output521_def]
  simp only [output520_eq, output501_eq]
  kernel_rfl

theorem input522_eq : InitECandidate.Proofs.DeadStages79.Parallel.input522 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1175 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input522_def]
  simp only [input521_eq, input500_eq]
  kernel_rfl

theorem output522_eq : InitECandidate.Proofs.DeadStages79.Parallel.output522 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_691 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output522_def]
  simp only [output521_eq, output500_eq]
  kernel_rfl

theorem input523_eq : InitECandidate.Proofs.DeadStages79.Parallel.input523 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1177 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input523_def]
  simp only [input522_eq, input499_eq]
  kernel_rfl

theorem output523_eq : InitECandidate.Proofs.DeadStages79.Parallel.output523 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_693 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output523_def]
  simp only [output522_eq, output499_eq]
  kernel_rfl

theorem input524_eq : InitECandidate.Proofs.DeadStages79.Parallel.input524 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1204 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input524_def]
  simp only [input523_eq, input498_eq]
  kernel_rfl

theorem output524_eq : InitECandidate.Proofs.DeadStages79.Parallel.output524 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_702 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output524_def]
  simp only [output523_eq, output498_eq]
  kernel_rfl

theorem input525_eq : InitECandidate.Proofs.DeadStages79.Parallel.input525 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1205 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input525_def]
  simp only [input524_eq, input467_eq]
  kernel_rfl

theorem output525_eq : InitECandidate.Proofs.DeadStages79.Parallel.output525 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_703 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output525_def]
  simp only [output524_eq, output467_eq]
  kernel_rfl

theorem input526_eq : InitECandidate.Proofs.DeadStages79.Parallel.input526 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1213 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input526_def]
  simp only [input525_eq, input466_eq]
  kernel_rfl

theorem output526_eq : InitECandidate.Proofs.DeadStages79.Parallel.output526 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_711 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output526_def]
  simp only [output525_eq, output466_eq]
  kernel_rfl

theorem input527_eq : InitECandidate.Proofs.DeadStages79.Parallel.input527 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1215 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input527_def]
  simp only [input526_eq, input459_eq]
  kernel_rfl

theorem output527_eq : InitECandidate.Proofs.DeadStages79.Parallel.output527 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_713 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output527_def]
  simp only [output526_eq, output459_eq]
  kernel_rfl

theorem input528_eq : InitECandidate.Proofs.DeadStages79.Parallel.input528 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1223 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input528_def]
  simp only [input527_eq, input458_eq]
  kernel_rfl

theorem output528_eq : InitECandidate.Proofs.DeadStages79.Parallel.output528 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_721 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output528_def]
  simp only [output527_eq, output458_eq]
  kernel_rfl

theorem input529_eq : InitECandidate.Proofs.DeadStages79.Parallel.input529 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1225 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input529_def]
  simp only [input528_eq, input451_eq]
  kernel_rfl

theorem output529_eq : InitECandidate.Proofs.DeadStages79.Parallel.output529 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_723 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output529_def]
  simp only [output528_eq, output451_eq]
  kernel_rfl

theorem input530_eq : InitECandidate.Proofs.DeadStages79.Parallel.input530 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1227 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input530_def]
  simp only [input529_eq, input450_eq]
  kernel_rfl

theorem output530_eq : InitECandidate.Proofs.DeadStages79.Parallel.output530 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_725 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output530_def]
  simp only [output529_eq, output450_eq]
  kernel_rfl

theorem input531_eq : InitECandidate.Proofs.DeadStages79.Parallel.input531 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1229 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input531_def]
  simp only [input530_eq, input449_eq]
  kernel_rfl

theorem output531_eq : InitECandidate.Proofs.DeadStages79.Parallel.output531 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_727 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output531_def]
  simp only [output530_eq, output449_eq]
  kernel_rfl

theorem input532_eq : InitECandidate.Proofs.DeadStages79.Parallel.input532 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1251 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input532_def]
  simp only [input531_eq, input448_eq]
  kernel_rfl

theorem output532_eq : InitECandidate.Proofs.DeadStages79.Parallel.output532 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_735 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output532_def]
  simp only [output531_eq, output448_eq]
  kernel_rfl

theorem input533_eq : InitECandidate.Proofs.DeadStages79.Parallel.input533 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1252 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input533_def]
  simp only [input532_eq, input421_eq]
  kernel_rfl

theorem output533_eq : InitECandidate.Proofs.DeadStages79.Parallel.output533 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_736 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output533_def]
  simp only [output532_eq, output421_eq]
  kernel_rfl

theorem input534_eq : InitECandidate.Proofs.DeadStages79.Parallel.input534 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1260 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input534_def]
  simp only [input533_eq, input420_eq]
  kernel_rfl

theorem output534_eq : InitECandidate.Proofs.DeadStages79.Parallel.output534 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_744 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output534_def]
  simp only [output533_eq, output420_eq]
  kernel_rfl

theorem input535_eq : InitECandidate.Proofs.DeadStages79.Parallel.input535 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1262 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input535_def]
  simp only [input534_eq, input413_eq]
  kernel_rfl

theorem output535_eq : InitECandidate.Proofs.DeadStages79.Parallel.output535 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_746 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output535_def]
  simp only [output534_eq, output413_eq]
  kernel_rfl

theorem input536_eq : InitECandidate.Proofs.DeadStages79.Parallel.input536 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1270 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input536_def]
  simp only [input535_eq, input412_eq]
  kernel_rfl

theorem output536_eq : InitECandidate.Proofs.DeadStages79.Parallel.output536 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_754 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output536_def]
  simp only [output535_eq, output412_eq]
  kernel_rfl

theorem input537_eq : InitECandidate.Proofs.DeadStages79.Parallel.input537 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1272 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input537_def]
  simp only [input536_eq, input405_eq]
  kernel_rfl

theorem output537_eq : InitECandidate.Proofs.DeadStages79.Parallel.output537 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_756 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output537_def]
  simp only [output536_eq, output405_eq]
  kernel_rfl

theorem input538_eq : InitECandidate.Proofs.DeadStages79.Parallel.input538 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1274 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input538_def]
  simp only [input537_eq, input404_eq]
  kernel_rfl

theorem output538_eq : InitECandidate.Proofs.DeadStages79.Parallel.output538 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_758 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output538_def]
  simp only [output537_eq, output404_eq]
  kernel_rfl

theorem input539_eq : InitECandidate.Proofs.DeadStages79.Parallel.input539 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1276 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input539_def]
  simp only [input538_eq, input403_eq]
  kernel_rfl

theorem output539_eq : InitECandidate.Proofs.DeadStages79.Parallel.output539 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_760 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output539_def]
  simp only [output538_eq, output403_eq]
  kernel_rfl

theorem input540_eq : InitECandidate.Proofs.DeadStages79.Parallel.input540 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1298 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input540_def]
  simp only [input539_eq, input402_eq]
  kernel_rfl

theorem output540_eq : InitECandidate.Proofs.DeadStages79.Parallel.output540 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_768 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output540_def]
  simp only [output539_eq, output402_eq]
  kernel_rfl

theorem input541_eq : InitECandidate.Proofs.DeadStages79.Parallel.input541 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1299 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input541_def]
  simp only [input540_eq, input375_eq]
  kernel_rfl

theorem output541_eq : InitECandidate.Proofs.DeadStages79.Parallel.output541 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_769 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output541_def]
  simp only [output540_eq, output375_eq]
  kernel_rfl

theorem input542_eq : InitECandidate.Proofs.DeadStages79.Parallel.input542 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1307 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input542_def]
  simp only [input541_eq, input374_eq]
  kernel_rfl

theorem output542_eq : InitECandidate.Proofs.DeadStages79.Parallel.output542 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_777 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output542_def]
  simp only [output541_eq, output374_eq]
  kernel_rfl

theorem input543_eq : InitECandidate.Proofs.DeadStages79.Parallel.input543 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1309 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input543_def]
  simp only [input542_eq, input367_eq]
  kernel_rfl

theorem output543_eq : InitECandidate.Proofs.DeadStages79.Parallel.output543 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_779 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output543_def]
  simp only [output542_eq, output367_eq]
  kernel_rfl

theorem input544_eq : InitECandidate.Proofs.DeadStages79.Parallel.input544 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1317 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input544_def]
  simp only [input543_eq, input366_eq]
  kernel_rfl

theorem output544_eq : InitECandidate.Proofs.DeadStages79.Parallel.output544 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_787 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output544_def]
  simp only [output543_eq, output366_eq]
  kernel_rfl

theorem input545_eq : InitECandidate.Proofs.DeadStages79.Parallel.input545 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1319 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input545_def]
  simp only [input544_eq, input359_eq]
  kernel_rfl

theorem output545_eq : InitECandidate.Proofs.DeadStages79.Parallel.output545 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_789 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output545_def]
  simp only [output544_eq, output359_eq]
  kernel_rfl

theorem input546_eq : InitECandidate.Proofs.DeadStages79.Parallel.input546 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1321 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input546_def]
  simp only [input545_eq, input358_eq]
  kernel_rfl

theorem output546_eq : InitECandidate.Proofs.DeadStages79.Parallel.output546 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_791 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output546_def]
  simp only [output545_eq, output358_eq]
  kernel_rfl

theorem input547_eq : InitECandidate.Proofs.DeadStages79.Parallel.input547 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1323 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input547_def]
  simp only [input546_eq, input357_eq]
  kernel_rfl

theorem output547_eq : InitECandidate.Proofs.DeadStages79.Parallel.output547 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_793 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output547_def]
  simp only [output546_eq, output357_eq]
  kernel_rfl

theorem input548_eq : InitECandidate.Proofs.DeadStages79.Parallel.input548 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1345 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input548_def]
  simp only [input547_eq, input356_eq]
  kernel_rfl

theorem output548_eq : InitECandidate.Proofs.DeadStages79.Parallel.output548 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_801 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output548_def]
  simp only [output547_eq, output356_eq]
  kernel_rfl

theorem input549_eq : InitECandidate.Proofs.DeadStages79.Parallel.input549 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1346 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input549_def]
  simp only [input548_eq, input329_eq]
  kernel_rfl

theorem output549_eq : InitECandidate.Proofs.DeadStages79.Parallel.output549 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_802 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output549_def]
  simp only [output548_eq, output329_eq]
  kernel_rfl

theorem input550_eq : InitECandidate.Proofs.DeadStages79.Parallel.input550 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1354 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input550_def]
  simp only [input549_eq, input328_eq]
  kernel_rfl

theorem output550_eq : InitECandidate.Proofs.DeadStages79.Parallel.output550 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_810 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output550_def]
  simp only [output549_eq, output328_eq]
  kernel_rfl

theorem input551_eq : InitECandidate.Proofs.DeadStages79.Parallel.input551 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1356 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input551_def]
  simp only [input550_eq, input321_eq]
  kernel_rfl

theorem output551_eq : InitECandidate.Proofs.DeadStages79.Parallel.output551 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_812 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output551_def]
  simp only [output550_eq, output321_eq]
  kernel_rfl

theorem input552_eq : InitECandidate.Proofs.DeadStages79.Parallel.input552 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1364 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input552_def]
  simp only [input551_eq, input320_eq]
  kernel_rfl

theorem output552_eq : InitECandidate.Proofs.DeadStages79.Parallel.output552 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_820 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output552_def]
  simp only [output551_eq, output320_eq]
  kernel_rfl

theorem input553_eq : InitECandidate.Proofs.DeadStages79.Parallel.input553 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1366 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input553_def]
  simp only [input552_eq, input313_eq]
  kernel_rfl

theorem output553_eq : InitECandidate.Proofs.DeadStages79.Parallel.output553 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_822 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output553_def]
  simp only [output552_eq, output313_eq]
  kernel_rfl

theorem input554_eq : InitECandidate.Proofs.DeadStages79.Parallel.input554 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1368 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input554_def]
  simp only [input553_eq, input312_eq]
  kernel_rfl

theorem output554_eq : InitECandidate.Proofs.DeadStages79.Parallel.output554 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_824 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output554_def]
  simp only [output553_eq, output312_eq]
  kernel_rfl

theorem input555_eq : InitECandidate.Proofs.DeadStages79.Parallel.input555 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1370 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input555_def]
  simp only [input554_eq, input311_eq]
  kernel_rfl

theorem output555_eq : InitECandidate.Proofs.DeadStages79.Parallel.output555 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_826 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output555_def]
  simp only [output554_eq, output311_eq]
  kernel_rfl

theorem input556_eq : InitECandidate.Proofs.DeadStages79.Parallel.input556 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1392 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input556_def]
  simp only [input555_eq, input310_eq]
  kernel_rfl

theorem output556_eq : InitECandidate.Proofs.DeadStages79.Parallel.output556 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_834 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output556_def]
  simp only [output555_eq, output310_eq]
  kernel_rfl

theorem input557_eq : InitECandidate.Proofs.DeadStages79.Parallel.input557 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1393 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input557_def]
  simp only [input556_eq, input283_eq]
  kernel_rfl

theorem output557_eq : InitECandidate.Proofs.DeadStages79.Parallel.output557 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_835 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output557_def]
  simp only [output556_eq, output283_eq]
  kernel_rfl

theorem input558_eq : InitECandidate.Proofs.DeadStages79.Parallel.input558 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1401 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input558_def]
  simp only [input557_eq, input282_eq]
  kernel_rfl

theorem output558_eq : InitECandidate.Proofs.DeadStages79.Parallel.output558 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_843 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output558_def]
  simp only [output557_eq, output282_eq]
  kernel_rfl

theorem input559_eq : InitECandidate.Proofs.DeadStages79.Parallel.input559 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1403 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input559_def]
  simp only [input558_eq, input275_eq]
  kernel_rfl

theorem output559_eq : InitECandidate.Proofs.DeadStages79.Parallel.output559 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_845 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output559_def]
  simp only [output558_eq, output275_eq]
  kernel_rfl

theorem input560_eq : InitECandidate.Proofs.DeadStages79.Parallel.input560 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1411 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input560_def]
  simp only [input559_eq, input274_eq]
  kernel_rfl

theorem output560_eq : InitECandidate.Proofs.DeadStages79.Parallel.output560 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_853 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output560_def]
  simp only [output559_eq, output274_eq]
  kernel_rfl

theorem input561_eq : InitECandidate.Proofs.DeadStages79.Parallel.input561 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1413 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input561_def]
  simp only [input560_eq, input267_eq]
  kernel_rfl

theorem output561_eq : InitECandidate.Proofs.DeadStages79.Parallel.output561 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_855 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output561_def]
  simp only [output560_eq, output267_eq]
  kernel_rfl

theorem input562_eq : InitECandidate.Proofs.DeadStages79.Parallel.input562 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1415 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input562_def]
  simp only [input561_eq, input266_eq]
  kernel_rfl

theorem output562_eq : InitECandidate.Proofs.DeadStages79.Parallel.output562 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_857 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output562_def]
  simp only [output561_eq, output266_eq]
  kernel_rfl

theorem input563_eq : InitECandidate.Proofs.DeadStages79.Parallel.input563 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1417 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input563_def]
  simp only [input562_eq, input265_eq]
  kernel_rfl

theorem output563_eq : InitECandidate.Proofs.DeadStages79.Parallel.output563 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_859 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output563_def]
  simp only [output562_eq, output265_eq]
  kernel_rfl

theorem input564_eq : InitECandidate.Proofs.DeadStages79.Parallel.input564 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1439 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input564_def]
  simp only [input563_eq, input264_eq]
  kernel_rfl

theorem output564_eq : InitECandidate.Proofs.DeadStages79.Parallel.output564 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_867 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output564_def]
  simp only [output563_eq, output264_eq]
  kernel_rfl

theorem input565_eq : InitECandidate.Proofs.DeadStages79.Parallel.input565 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1440 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input565_def]
  simp only [input564_eq, input237_eq]
  kernel_rfl

theorem output565_eq : InitECandidate.Proofs.DeadStages79.Parallel.output565 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_868 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output565_def]
  simp only [output564_eq, output237_eq]
  kernel_rfl

theorem input566_eq : InitECandidate.Proofs.DeadStages79.Parallel.input566 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1448 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input566_def]
  simp only [input565_eq, input236_eq]
  kernel_rfl

theorem output566_eq : InitECandidate.Proofs.DeadStages79.Parallel.output566 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_876 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output566_def]
  simp only [output565_eq, output236_eq]
  kernel_rfl

theorem input567_eq : InitECandidate.Proofs.DeadStages79.Parallel.input567 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1450 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input567_def]
  simp only [input566_eq, input229_eq]
  kernel_rfl

theorem output567_eq : InitECandidate.Proofs.DeadStages79.Parallel.output567 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_878 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output567_def]
  simp only [output566_eq, output229_eq]
  kernel_rfl

theorem input568_eq : InitECandidate.Proofs.DeadStages79.Parallel.input568 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1458 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input568_def]
  simp only [input567_eq, input228_eq]
  kernel_rfl

theorem output568_eq : InitECandidate.Proofs.DeadStages79.Parallel.output568 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_886 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output568_def]
  simp only [output567_eq, output228_eq]
  kernel_rfl

theorem input569_eq : InitECandidate.Proofs.DeadStages79.Parallel.input569 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1460 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input569_def]
  simp only [input568_eq, input221_eq]
  kernel_rfl

theorem output569_eq : InitECandidate.Proofs.DeadStages79.Parallel.output569 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_888 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output569_def]
  simp only [output568_eq, output221_eq]
  kernel_rfl

theorem input570_eq : InitECandidate.Proofs.DeadStages79.Parallel.input570 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1462 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input570_def]
  simp only [input569_eq, input220_eq]
  kernel_rfl

theorem output570_eq : InitECandidate.Proofs.DeadStages79.Parallel.output570 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_890 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output570_def]
  simp only [output569_eq, output220_eq]
  kernel_rfl

theorem input571_eq : InitECandidate.Proofs.DeadStages79.Parallel.input571 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1464 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input571_def]
  simp only [input570_eq, input219_eq]
  kernel_rfl

theorem output571_eq : InitECandidate.Proofs.DeadStages79.Parallel.output571 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_892 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output571_def]
  simp only [output570_eq, output219_eq]
  kernel_rfl

theorem input572_eq : InitECandidate.Proofs.DeadStages79.Parallel.input572 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1486 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input572_def]
  simp only [input571_eq, input218_eq]
  kernel_rfl

theorem output572_eq : InitECandidate.Proofs.DeadStages79.Parallel.output572 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_900 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output572_def]
  simp only [output571_eq, output218_eq]
  kernel_rfl

theorem input573_eq : InitECandidate.Proofs.DeadStages79.Parallel.input573 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1487 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input573_def]
  simp only [input572_eq, input191_eq]
  kernel_rfl

theorem output573_eq : InitECandidate.Proofs.DeadStages79.Parallel.output573 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_901 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output573_def]
  simp only [output572_eq, output191_eq]
  kernel_rfl

theorem input574_eq : InitECandidate.Proofs.DeadStages79.Parallel.input574 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1495 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input574_def]
  simp only [input573_eq, input190_eq]
  kernel_rfl

theorem output574_eq : InitECandidate.Proofs.DeadStages79.Parallel.output574 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_909 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output574_def]
  simp only [output573_eq, output190_eq]
  kernel_rfl

theorem input575_eq : InitECandidate.Proofs.DeadStages79.Parallel.input575 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1497 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input575_def]
  simp only [input574_eq, input183_eq]
  kernel_rfl

theorem output575_eq : InitECandidate.Proofs.DeadStages79.Parallel.output575 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_911 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output575_def]
  simp only [output574_eq, output183_eq]
  kernel_rfl

theorem input576_eq : InitECandidate.Proofs.DeadStages79.Parallel.input576 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1505 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input576_def]
  simp only [input575_eq, input182_eq]
  kernel_rfl

theorem output576_eq : InitECandidate.Proofs.DeadStages79.Parallel.output576 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_919 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output576_def]
  simp only [output575_eq, output182_eq]
  kernel_rfl

theorem input577_eq : InitECandidate.Proofs.DeadStages79.Parallel.input577 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1507 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input577_def]
  simp only [input576_eq, input175_eq]
  kernel_rfl

theorem output577_eq : InitECandidate.Proofs.DeadStages79.Parallel.output577 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_921 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output577_def]
  simp only [output576_eq, output175_eq]
  kernel_rfl

theorem input578_eq : InitECandidate.Proofs.DeadStages79.Parallel.input578 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1509 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input578_def]
  simp only [input577_eq, input174_eq]
  kernel_rfl

theorem output578_eq : InitECandidate.Proofs.DeadStages79.Parallel.output578 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_923 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output578_def]
  simp only [output577_eq, output174_eq]
  kernel_rfl

theorem input579_eq : InitECandidate.Proofs.DeadStages79.Parallel.input579 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1511 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input579_def]
  simp only [input578_eq, input173_eq]
  kernel_rfl

theorem output579_eq : InitECandidate.Proofs.DeadStages79.Parallel.output579 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_925 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output579_def]
  simp only [output578_eq, output173_eq]
  kernel_rfl

theorem input580_eq : InitECandidate.Proofs.DeadStages79.Parallel.input580 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1533 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input580_def]
  simp only [input579_eq, input172_eq]
  kernel_rfl

theorem output580_eq : InitECandidate.Proofs.DeadStages79.Parallel.output580 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_933 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output580_def]
  simp only [output579_eq, output172_eq]
  kernel_rfl

theorem input581_eq : InitECandidate.Proofs.DeadStages79.Parallel.input581 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1534 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input581_def]
  simp only [input580_eq, input145_eq]
  kernel_rfl

theorem output581_eq : InitECandidate.Proofs.DeadStages79.Parallel.output581 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_934 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output581_def]
  simp only [output580_eq, output145_eq]
  kernel_rfl

theorem input582_eq : InitECandidate.Proofs.DeadStages79.Parallel.input582 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1538 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input582_def]
  simp only [input581_eq, input144_eq]
  kernel_rfl

theorem output582_eq : InitECandidate.Proofs.DeadStages79.Parallel.output582 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_938 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output582_def]
  simp only [output581_eq, output144_eq]
  kernel_rfl

theorem input583_eq : InitECandidate.Proofs.DeadStages79.Parallel.input583 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1540 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input583_def]
  simp only [input582_eq, input141_eq]
  kernel_rfl

theorem output583_eq : InitECandidate.Proofs.DeadStages79.Parallel.output583 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_940 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output583_def]
  simp only [output582_eq, output141_eq]
  kernel_rfl

theorem input584_eq : InitECandidate.Proofs.DeadStages79.Parallel.input584 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1543 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input584_def]
  simp only [input583_eq, input140_eq]
  kernel_rfl

theorem output584_eq : InitECandidate.Proofs.DeadStages79.Parallel.output584 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_943 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output584_def]
  simp only [output583_eq, output140_eq]
  kernel_rfl

theorem input585_eq : InitECandidate.Proofs.DeadStages79.Parallel.input585 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1554 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input585_def]
  simp only [input584_eq, input137_eq]
  kernel_rfl

theorem output585_eq : InitECandidate.Proofs.DeadStages79.Parallel.output585 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_945 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output585_def]
  simp only [output584_eq, output137_eq]
  kernel_rfl

theorem input586_eq : InitECandidate.Proofs.DeadStages79.Parallel.input586 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1569 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input586_def]
  kernel_rfl

theorem input587_eq : InitECandidate.Proofs.DeadStages79.Parallel.input587 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1567 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input587_def]
  kernel_rfl

theorem input588_eq : InitECandidate.Proofs.DeadStages79.Parallel.input588 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1565 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input588_def]
  kernel_rfl

theorem input589_eq : InitECandidate.Proofs.DeadStages79.Parallel.input589 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1563 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input589_def]
  kernel_rfl

theorem input590_eq : InitECandidate.Proofs.DeadStages79.Parallel.input590 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input590_def]
  kernel_rfl

theorem input591_eq : InitECandidate.Proofs.DeadStages79.Parallel.input591 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1564 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input591_def]
  simp only [input590_eq, input589_eq]
  kernel_rfl

theorem input592_eq : InitECandidate.Proofs.DeadStages79.Parallel.input592 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1566 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input592_def]
  simp only [input591_eq, input588_eq]
  kernel_rfl

theorem input593_eq : InitECandidate.Proofs.DeadStages79.Parallel.input593 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1568 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input593_def]
  simp only [input592_eq, input587_eq]
  kernel_rfl

theorem input594_eq : InitECandidate.Proofs.DeadStages79.Parallel.input594 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1570 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input594_def]
  simp only [input593_eq, input586_eq]
  kernel_rfl

theorem input595_eq : InitECandidate.Proofs.DeadStages79.Parallel.input595 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1562 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input595_def]
  kernel_rfl

theorem output595_eq : InitECandidate.Proofs.DeadStages79.Parallel.output595 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_949 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output595_def]
  kernel_rfl

theorem input596_eq : InitECandidate.Proofs.DeadStages79.Parallel.input596 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1571 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input596_def]
  simp only [input595_eq, input594_eq]
  kernel_rfl

theorem output596_eq : InitECandidate.Proofs.DeadStages79.Parallel.output596 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_949 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output596_def]
  simp only [output595_eq]

theorem input597_eq : InitECandidate.Proofs.DeadStages79.Parallel.input597 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_999 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input597_def]
  kernel_rfl

theorem output597_eq : InitECandidate.Proofs.DeadStages79.Parallel.output597 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_588 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output597_def]
  kernel_rfl

theorem input598_eq : InitECandidate.Proofs.DeadStages79.Parallel.input598 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1559 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input598_def]
  kernel_rfl

theorem output598_eq : InitECandidate.Proofs.DeadStages79.Parallel.output598 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_946 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output598_def]
  kernel_rfl

theorem input599_eq : InitECandidate.Proofs.DeadStages79.Parallel.input599 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1560 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input599_def]
  simp only [input598_eq, input597_eq]
  kernel_rfl

theorem output599_eq : InitECandidate.Proofs.DeadStages79.Parallel.output599 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_947 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output599_def]
  simp only [output598_eq, output597_eq]
  kernel_rfl

theorem input600_eq : InitECandidate.Proofs.DeadStages79.Parallel.input600 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1557 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input600_def]
  kernel_rfl

theorem input601_eq : InitECandidate.Proofs.DeadStages79.Parallel.input601 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input601_def]
  kernel_rfl

theorem output601_eq : InitECandidate.Proofs.DeadStages79.Parallel.output601 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output601_def]
  kernel_rfl

theorem input602_eq : InitECandidate.Proofs.DeadStages79.Parallel.input602 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1555 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input602_def]
  kernel_rfl

theorem input603_eq : InitECandidate.Proofs.DeadStages79.Parallel.input603 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1556 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input603_def]
  simp only [input602_eq, input601_eq]
  kernel_rfl

theorem output603_eq : InitECandidate.Proofs.DeadStages79.Parallel.output603 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output603_def]
  simp only [output601_eq]

theorem input604_eq : InitECandidate.Proofs.DeadStages79.Parallel.input604 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1558 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input604_def]
  simp only [input603_eq, input600_eq]
  kernel_rfl

theorem output604_eq : InitECandidate.Proofs.DeadStages79.Parallel.output604 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output604_def]
  simp only [output603_eq]

theorem input605_eq : InitECandidate.Proofs.DeadStages79.Parallel.input605 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1561 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input605_def]
  simp only [input604_eq, input599_eq]
  kernel_rfl

theorem output605_eq : InitECandidate.Proofs.DeadStages79.Parallel.output605 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_948 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output605_def]
  simp only [output604_eq, output599_eq]
  kernel_rfl

theorem input606_eq : InitECandidate.Proofs.DeadStages79.Parallel.input606 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1572 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input606_def]
  simp only [input605_eq, input596_eq]
  kernel_rfl

theorem output606_eq : InitECandidate.Proofs.DeadStages79.Parallel.output606 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_950 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output606_def]
  simp only [output605_eq, output596_eq]
  kernel_rfl

theorem input607_eq : InitECandidate.Proofs.DeadStages79.Parallel.input607 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1573 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input607_def]
  simp only [input585_eq, input606_eq]
  kernel_rfl

theorem output607_eq : InitECandidate.Proofs.DeadStages79.Parallel.output607 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_951 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output607_def]
  simp only [output585_eq, output606_eq]
  kernel_rfl

theorem input608_eq : InitECandidate.Proofs.DeadStages79.Parallel.input608 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1151 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input608_def]
  kernel_rfl

theorem output608_eq : InitECandidate.Proofs.DeadStages79.Parallel.output608 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_671 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output608_def]
  kernel_rfl

theorem input609_eq : InitECandidate.Proofs.DeadStages79.Parallel.input609 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1150 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input609_def]
  kernel_rfl

theorem output609_eq : InitECandidate.Proofs.DeadStages79.Parallel.output609 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_670 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output609_def]
  kernel_rfl

theorem input610_eq : InitECandidate.Proofs.DeadStages79.Parallel.input610 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1152 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input610_def]
  simp only [input609_eq, input608_eq]
  kernel_rfl

theorem output610_eq : InitECandidate.Proofs.DeadStages79.Parallel.output610 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_672 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output610_def]
  simp only [output609_eq, output608_eq]
  kernel_rfl

theorem input611_eq : InitECandidate.Proofs.DeadStages79.Parallel.input611 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1149 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input611_def]
  kernel_rfl

theorem output611_eq : InitECandidate.Proofs.DeadStages79.Parallel.output611 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_669 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output611_def]
  kernel_rfl

theorem input612_eq : InitECandidate.Proofs.DeadStages79.Parallel.input612 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1153 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input612_def]
  simp only [input611_eq, input610_eq]
  kernel_rfl

theorem output612_eq : InitECandidate.Proofs.DeadStages79.Parallel.output612 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_673 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output612_def]
  simp only [output611_eq, output610_eq]
  kernel_rfl

theorem input613_eq : InitECandidate.Proofs.DeadStages79.Parallel.input613 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1574 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input613_def]
  simp only [input612_eq, input607_eq]
  kernel_rfl

theorem output613_eq : InitECandidate.Proofs.DeadStages79.Parallel.output613 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_952 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output613_def]
  simp only [output612_eq, output607_eq]
  kernel_rfl

theorem input614_eq : InitECandidate.Proofs.DeadStages79.Parallel.input614 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1575 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input614_def]
  simp only [input613_eq, input126_eq]
  kernel_rfl

theorem output614_eq : InitECandidate.Proofs.DeadStages79.Parallel.output614 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_953 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output614_def]
  simp only [output613_eq, output126_eq]
  kernel_rfl

theorem input615_eq : InitECandidate.Proofs.DeadStages79.Parallel.input615 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1577 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input615_def]
  simp only [input614_eq, input125_eq]
  kernel_rfl

theorem output615_eq : InitECandidate.Proofs.DeadStages79.Parallel.output615 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_955 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output615_def]
  simp only [output614_eq, output125_eq]
  kernel_rfl

theorem input616_eq : InitECandidate.Proofs.DeadStages79.Parallel.input616 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1578 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input616_def]
  simp only [input615_eq]
  kernel_rfl

theorem output616_eq : InitECandidate.Proofs.DeadStages79.Parallel.output616 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_956 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output616_def]
  simp only [output615_eq]
  kernel_rfl

theorem input617_eq : InitECandidate.Proofs.DeadStages79.Parallel.input617 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1147 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input617_def]
  kernel_rfl

theorem output617_eq : InitECandidate.Proofs.DeadStages79.Parallel.output617 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_668 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output617_def]
  kernel_rfl

theorem input618_eq : InitECandidate.Proofs.DeadStages79.Parallel.input618 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input618_def]
  kernel_rfl

theorem input619_eq : InitECandidate.Proofs.DeadStages79.Parallel.input619 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1148 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input619_def]
  simp only [input618_eq, input617_eq]
  kernel_rfl

theorem output619_eq : InitECandidate.Proofs.DeadStages79.Parallel.output619 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_668 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output619_def]
  simp only [output617_eq]

theorem input620_eq : InitECandidate.Proofs.DeadStages79.Parallel.input620 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1579 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input620_def]
  simp only [input619_eq, input616_eq]
  kernel_rfl

theorem output620_eq : InitECandidate.Proofs.DeadStages79.Parallel.output620 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_957 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output620_def]
  simp only [output619_eq, output616_eq]
  kernel_rfl

theorem input621_eq : InitECandidate.Proofs.DeadStages79.Parallel.input621 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input621_def]
  kernel_rfl

theorem output621_eq : InitECandidate.Proofs.DeadStages79.Parallel.output621 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output621_def]
  kernel_rfl

theorem input622_eq : InitECandidate.Proofs.DeadStages79.Parallel.input622 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input622_def]
  kernel_rfl

theorem output622_eq : InitECandidate.Proofs.DeadStages79.Parallel.output622 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output622_def]
  kernel_rfl

theorem input623_eq : InitECandidate.Proofs.DeadStages79.Parallel.input623 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1122 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input623_def]
  kernel_rfl

theorem input624_eq : InitECandidate.Proofs.DeadStages79.Parallel.input624 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1120 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input624_def]
  kernel_rfl

theorem input625_eq : InitECandidate.Proofs.DeadStages79.Parallel.input625 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1118 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input625_def]
  kernel_rfl

theorem input626_eq : InitECandidate.Proofs.DeadStages79.Parallel.input626 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1116 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input626_def]
  kernel_rfl

theorem input627_eq : InitECandidate.Proofs.DeadStages79.Parallel.input627 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1114 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input627_def]
  kernel_rfl

theorem input628_eq : InitECandidate.Proofs.DeadStages79.Parallel.input628 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input628_def]
  kernel_rfl

theorem input629_eq : InitECandidate.Proofs.DeadStages79.Parallel.input629 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1115 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input629_def]
  simp only [input628_eq, input627_eq]
  kernel_rfl

theorem input630_eq : InitECandidate.Proofs.DeadStages79.Parallel.input630 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1117 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input630_def]
  simp only [input629_eq, input626_eq]
  kernel_rfl

theorem input631_eq : InitECandidate.Proofs.DeadStages79.Parallel.input631 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1119 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input631_def]
  simp only [input630_eq, input625_eq]
  kernel_rfl

theorem input632_eq : InitECandidate.Proofs.DeadStages79.Parallel.input632 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1121 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input632_def]
  simp only [input631_eq, input624_eq]
  kernel_rfl

theorem input633_eq : InitECandidate.Proofs.DeadStages79.Parallel.input633 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1123 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input633_def]
  simp only [input632_eq, input623_eq]
  kernel_rfl

theorem input634_eq : InitECandidate.Proofs.DeadStages79.Parallel.input634 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1113 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input634_def]
  kernel_rfl

theorem output634_eq : InitECandidate.Proofs.DeadStages79.Parallel.output634 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_660 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output634_def]
  kernel_rfl

theorem input635_eq : InitECandidate.Proofs.DeadStages79.Parallel.input635 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1124 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input635_def]
  simp only [input634_eq, input633_eq]
  kernel_rfl

theorem output635_eq : InitECandidate.Proofs.DeadStages79.Parallel.output635 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_660 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output635_def]
  simp only [output634_eq]

theorem input636_eq : InitECandidate.Proofs.DeadStages79.Parallel.input636 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input636_def]
  kernel_rfl

theorem output636_eq : InitECandidate.Proofs.DeadStages79.Parallel.output636 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output636_def]
  kernel_rfl

theorem input637_eq : InitECandidate.Proofs.DeadStages79.Parallel.input637 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1107 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input637_def]
  kernel_rfl

theorem output637_eq : InitECandidate.Proofs.DeadStages79.Parallel.output637 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_654 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output637_def]
  kernel_rfl

theorem input638_eq : InitECandidate.Proofs.DeadStages79.Parallel.input638 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input638_def]
  kernel_rfl

theorem output638_eq : InitECandidate.Proofs.DeadStages79.Parallel.output638 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output638_def]
  kernel_rfl

theorem input639_eq : InitECandidate.Proofs.DeadStages79.Parallel.input639 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1086 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input639_def]
  kernel_rfl

theorem input640_eq : InitECandidate.Proofs.DeadStages79.Parallel.input640 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1084 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input640_def]
  kernel_rfl

theorem input641_eq : InitECandidate.Proofs.DeadStages79.Parallel.input641 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input641_def]
  kernel_rfl

theorem input642_eq : InitECandidate.Proofs.DeadStages79.Parallel.input642 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1085 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input642_def]
  simp only [input641_eq, input640_eq]
  kernel_rfl

theorem input643_eq : InitECandidate.Proofs.DeadStages79.Parallel.input643 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1087 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input643_def]
  simp only [input642_eq, input639_eq]
  kernel_rfl

theorem input644_eq : InitECandidate.Proofs.DeadStages79.Parallel.input644 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1083 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input644_def]
  kernel_rfl

theorem output644_eq : InitECandidate.Proofs.DeadStages79.Parallel.output644 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_644 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output644_def]
  kernel_rfl

theorem input645_eq : InitECandidate.Proofs.DeadStages79.Parallel.input645 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1088 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input645_def]
  simp only [input644_eq, input643_eq]
  kernel_rfl

theorem output645_eq : InitECandidate.Proofs.DeadStages79.Parallel.output645 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_644 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output645_def]
  simp only [output644_eq]

theorem input646_eq : InitECandidate.Proofs.DeadStages79.Parallel.input646 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_984 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input646_def]
  kernel_rfl

theorem output646_eq : InitECandidate.Proofs.DeadStages79.Parallel.output646 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_582 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output646_def]
  kernel_rfl

theorem input647_eq : InitECandidate.Proofs.DeadStages79.Parallel.input647 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1080 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input647_def]
  kernel_rfl

theorem output647_eq : InitECandidate.Proofs.DeadStages79.Parallel.output647 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_641 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output647_def]
  kernel_rfl

theorem input648_eq : InitECandidate.Proofs.DeadStages79.Parallel.input648 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1081 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input648_def]
  simp only [input647_eq, input646_eq]
  kernel_rfl

theorem output648_eq : InitECandidate.Proofs.DeadStages79.Parallel.output648 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_642 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output648_def]
  simp only [output647_eq, output646_eq]
  kernel_rfl

theorem input649_eq : InitECandidate.Proofs.DeadStages79.Parallel.input649 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1078 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input649_def]
  kernel_rfl

theorem output649_eq : InitECandidate.Proofs.DeadStages79.Parallel.output649 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_639 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output649_def]
  kernel_rfl

theorem input650_eq : InitECandidate.Proofs.DeadStages79.Parallel.input650 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1075 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input650_def]
  kernel_rfl

theorem output650_eq : InitECandidate.Proofs.DeadStages79.Parallel.output650 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_636 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output650_def]
  kernel_rfl

theorem input651_eq : InitECandidate.Proofs.DeadStages79.Parallel.input651 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1074 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input651_def]
  kernel_rfl

theorem output651_eq : InitECandidate.Proofs.DeadStages79.Parallel.output651 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_635 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output651_def]
  kernel_rfl

theorem input652_eq : InitECandidate.Proofs.DeadStages79.Parallel.input652 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1076 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input652_def]
  simp only [input651_eq, input650_eq]
  kernel_rfl

theorem output652_eq : InitECandidate.Proofs.DeadStages79.Parallel.output652 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_637 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output652_def]
  simp only [output651_eq, output650_eq]
  kernel_rfl

theorem input653_eq : InitECandidate.Proofs.DeadStages79.Parallel.input653 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input653_def]
  kernel_rfl

theorem output653_eq : InitECandidate.Proofs.DeadStages79.Parallel.output653 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output653_def]
  kernel_rfl

theorem input654_eq : InitECandidate.Proofs.DeadStages79.Parallel.input654 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1069 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input654_def]
  kernel_rfl

theorem input655_eq : InitECandidate.Proofs.DeadStages79.Parallel.input655 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input655_def]
  kernel_rfl

theorem output655_eq : InitECandidate.Proofs.DeadStages79.Parallel.output655 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output655_def]
  kernel_rfl

theorem input656_eq : InitECandidate.Proofs.DeadStages79.Parallel.input656 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1067 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input656_def]
  kernel_rfl

theorem input657_eq : InitECandidate.Proofs.DeadStages79.Parallel.input657 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1068 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input657_def]
  simp only [input656_eq, input655_eq]
  kernel_rfl

theorem output657_eq : InitECandidate.Proofs.DeadStages79.Parallel.output657 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output657_def]
  simp only [output655_eq]

theorem input658_eq : InitECandidate.Proofs.DeadStages79.Parallel.input658 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1070 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input658_def]
  simp only [input657_eq, input654_eq]
  kernel_rfl

theorem output658_eq : InitECandidate.Proofs.DeadStages79.Parallel.output658 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output658_def]
  simp only [output657_eq]

theorem input659_eq : InitECandidate.Proofs.DeadStages79.Parallel.input659 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1057 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input659_def]
  kernel_rfl

theorem input660_eq : InitECandidate.Proofs.DeadStages79.Parallel.input660 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input660_def]
  kernel_rfl

theorem input661_eq : InitECandidate.Proofs.DeadStages79.Parallel.input661 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1058 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input661_def]
  simp only [input660_eq, input659_eq]
  kernel_rfl

theorem input662_eq : InitECandidate.Proofs.DeadStages79.Parallel.input662 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1056 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input662_def]
  kernel_rfl

theorem input663_eq : InitECandidate.Proofs.DeadStages79.Parallel.input663 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1059 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input663_def]
  simp only [input662_eq, input661_eq]
  kernel_rfl

theorem input664_eq : InitECandidate.Proofs.DeadStages79.Parallel.input664 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1053 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input664_def]
  kernel_rfl

theorem output664_eq : InitECandidate.Proofs.DeadStages79.Parallel.output664 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_628 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output664_def]
  kernel_rfl

theorem input665_eq : InitECandidate.Proofs.DeadStages79.Parallel.input665 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1052 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input665_def]
  kernel_rfl

theorem output665_eq : InitECandidate.Proofs.DeadStages79.Parallel.output665 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_627 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output665_def]
  kernel_rfl

theorem input666_eq : InitECandidate.Proofs.DeadStages79.Parallel.input666 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1054 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input666_def]
  simp only [input665_eq, input664_eq]
  kernel_rfl

theorem output666_eq : InitECandidate.Proofs.DeadStages79.Parallel.output666 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_629 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output666_def]
  simp only [output665_eq, output664_eq]
  kernel_rfl

theorem input667_eq : InitECandidate.Proofs.DeadStages79.Parallel.input667 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1050 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input667_def]
  kernel_rfl

theorem output667_eq : InitECandidate.Proofs.DeadStages79.Parallel.output667 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_625 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output667_def]
  kernel_rfl

theorem input668_eq : InitECandidate.Proofs.DeadStages79.Parallel.input668 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1048 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input668_def]
  kernel_rfl

theorem input669_eq : InitECandidate.Proofs.DeadStages79.Parallel.input669 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input669_def]
  kernel_rfl

theorem output669_eq : InitECandidate.Proofs.DeadStages79.Parallel.output669 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output669_def]
  kernel_rfl

theorem input670_eq : InitECandidate.Proofs.DeadStages79.Parallel.input670 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1046 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input670_def]
  kernel_rfl

theorem input671_eq : InitECandidate.Proofs.DeadStages79.Parallel.input671 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1047 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input671_def]
  simp only [input670_eq, input669_eq]
  kernel_rfl

theorem output671_eq : InitECandidate.Proofs.DeadStages79.Parallel.output671 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output671_def]
  simp only [output669_eq]

theorem input672_eq : InitECandidate.Proofs.DeadStages79.Parallel.input672 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1049 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input672_def]
  simp only [input671_eq, input668_eq]
  kernel_rfl

theorem output672_eq : InitECandidate.Proofs.DeadStages79.Parallel.output672 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output672_def]
  simp only [output671_eq]

theorem input673_eq : InitECandidate.Proofs.DeadStages79.Parallel.input673 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1051 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input673_def]
  simp only [input672_eq, input667_eq]
  kernel_rfl

theorem output673_eq : InitECandidate.Proofs.DeadStages79.Parallel.output673 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_626 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output673_def]
  simp only [output672_eq, output667_eq]
  kernel_rfl

theorem input674_eq : InitECandidate.Proofs.DeadStages79.Parallel.input674 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1055 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input674_def]
  simp only [input673_eq, input666_eq]
  kernel_rfl

theorem output674_eq : InitECandidate.Proofs.DeadStages79.Parallel.output674 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_630 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output674_def]
  simp only [output673_eq, output666_eq]
  kernel_rfl

theorem input675_eq : InitECandidate.Proofs.DeadStages79.Parallel.input675 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1060 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input675_def]
  simp only [input674_eq, input663_eq]
  kernel_rfl

theorem output675_eq : InitECandidate.Proofs.DeadStages79.Parallel.output675 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_630 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output675_def]
  simp only [output674_eq]

theorem input676_eq : InitECandidate.Proofs.DeadStages79.Parallel.input676 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1062 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input676_def]
  kernel_rfl

theorem output676_eq : InitECandidate.Proofs.DeadStages79.Parallel.output676 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output676_def]
  kernel_rfl

theorem input677_eq : InitECandidate.Proofs.DeadStages79.Parallel.input677 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input677_def]
  kernel_rfl

theorem input678_eq : InitECandidate.Proofs.DeadStages79.Parallel.input678 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1063 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input678_def]
  simp only [input677_eq, input676_eq]
  kernel_rfl

theorem output678_eq : InitECandidate.Proofs.DeadStages79.Parallel.output678 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output678_def]
  simp only [output676_eq]

theorem input679_eq : InitECandidate.Proofs.DeadStages79.Parallel.input679 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1061 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input679_def]
  kernel_rfl

theorem input680_eq : InitECandidate.Proofs.DeadStages79.Parallel.input680 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1064 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input680_def]
  simp only [input679_eq, input678_eq]
  kernel_rfl

theorem output680_eq : InitECandidate.Proofs.DeadStages79.Parallel.output680 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output680_def]
  simp only [output678_eq]

theorem input681_eq : InitECandidate.Proofs.DeadStages79.Parallel.input681 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input681_def]
  kernel_rfl

theorem input682_eq : InitECandidate.Proofs.DeadStages79.Parallel.input682 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1065 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input682_def]
  simp only [input681_eq, input680_eq]
  kernel_rfl

theorem output682_eq : InitECandidate.Proofs.DeadStages79.Parallel.output682 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output682_def]
  simp only [output680_eq]

theorem input683_eq : InitECandidate.Proofs.DeadStages79.Parallel.input683 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1066 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input683_def]
  simp only [input675_eq, input682_eq]
  kernel_rfl

theorem output683_eq : InitECandidate.Proofs.DeadStages79.Parallel.output683 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_631 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output683_def]
  simp only [output675_eq, output682_eq]
  kernel_rfl

theorem input684_eq : InitECandidate.Proofs.DeadStages79.Parallel.input684 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1071 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input684_def]
  simp only [input683_eq, input658_eq]
  kernel_rfl

theorem output684_eq : InitECandidate.Proofs.DeadStages79.Parallel.output684 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_632 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output684_def]
  simp only [output683_eq, output658_eq]
  kernel_rfl

theorem input685_eq : InitECandidate.Proofs.DeadStages79.Parallel.input685 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1043 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input685_def]
  kernel_rfl

theorem output685_eq : InitECandidate.Proofs.DeadStages79.Parallel.output685 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_622 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output685_def]
  kernel_rfl

theorem input686_eq : InitECandidate.Proofs.DeadStages79.Parallel.input686 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1040 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input686_def]
  kernel_rfl

theorem output686_eq : InitECandidate.Proofs.DeadStages79.Parallel.output686 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_619 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output686_def]
  kernel_rfl

theorem input687_eq : InitECandidate.Proofs.DeadStages79.Parallel.input687 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1039 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input687_def]
  kernel_rfl

theorem output687_eq : InitECandidate.Proofs.DeadStages79.Parallel.output687 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_618 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output687_def]
  kernel_rfl

theorem input688_eq : InitECandidate.Proofs.DeadStages79.Parallel.input688 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1041 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input688_def]
  simp only [input687_eq, input686_eq]
  kernel_rfl

theorem output688_eq : InitECandidate.Proofs.DeadStages79.Parallel.output688 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_620 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output688_def]
  simp only [output687_eq, output686_eq]
  kernel_rfl

theorem input689_eq : InitECandidate.Proofs.DeadStages79.Parallel.input689 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1038 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input689_def]
  kernel_rfl

theorem output689_eq : InitECandidate.Proofs.DeadStages79.Parallel.output689 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_617 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output689_def]
  kernel_rfl

theorem input690_eq : InitECandidate.Proofs.DeadStages79.Parallel.input690 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1042 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input690_def]
  simp only [input689_eq, input688_eq]
  kernel_rfl

theorem output690_eq : InitECandidate.Proofs.DeadStages79.Parallel.output690 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_621 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output690_def]
  simp only [output689_eq, output688_eq]
  kernel_rfl

theorem input691_eq : InitECandidate.Proofs.DeadStages79.Parallel.input691 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1044 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input691_def]
  simp only [input690_eq, input685_eq]
  kernel_rfl

theorem output691_eq : InitECandidate.Proofs.DeadStages79.Parallel.output691 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_623 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output691_def]
  simp only [output690_eq, output685_eq]
  kernel_rfl

theorem input692_eq : InitECandidate.Proofs.DeadStages79.Parallel.input692 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1035 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input692_def]
  kernel_rfl

theorem output692_eq : InitECandidate.Proofs.DeadStages79.Parallel.output692 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_614 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output692_def]
  kernel_rfl

theorem input693_eq : InitECandidate.Proofs.DeadStages79.Parallel.input693 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1032 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input693_def]
  kernel_rfl

theorem output693_eq : InitECandidate.Proofs.DeadStages79.Parallel.output693 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_611 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output693_def]
  kernel_rfl

theorem input694_eq : InitECandidate.Proofs.DeadStages79.Parallel.input694 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1031 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input694_def]
  kernel_rfl

theorem output694_eq : InitECandidate.Proofs.DeadStages79.Parallel.output694 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_610 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output694_def]
  kernel_rfl

theorem input695_eq : InitECandidate.Proofs.DeadStages79.Parallel.input695 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1033 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input695_def]
  simp only [input694_eq, input693_eq]
  kernel_rfl

theorem output695_eq : InitECandidate.Proofs.DeadStages79.Parallel.output695 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_612 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output695_def]
  simp only [output694_eq, output693_eq]
  kernel_rfl

theorem input696_eq : InitECandidate.Proofs.DeadStages79.Parallel.input696 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1030 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input696_def]
  kernel_rfl

theorem output696_eq : InitECandidate.Proofs.DeadStages79.Parallel.output696 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_609 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output696_def]
  kernel_rfl

theorem input697_eq : InitECandidate.Proofs.DeadStages79.Parallel.input697 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1034 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input697_def]
  simp only [input696_eq, input695_eq]
  kernel_rfl

theorem output697_eq : InitECandidate.Proofs.DeadStages79.Parallel.output697 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_613 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output697_def]
  simp only [output696_eq, output695_eq]
  kernel_rfl

theorem input698_eq : InitECandidate.Proofs.DeadStages79.Parallel.input698 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1036 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input698_def]
  simp only [input697_eq, input692_eq]
  kernel_rfl

theorem output698_eq : InitECandidate.Proofs.DeadStages79.Parallel.output698 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_615 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output698_def]
  simp only [output697_eq, output692_eq]
  kernel_rfl

theorem input699_eq : InitECandidate.Proofs.DeadStages79.Parallel.input699 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1028 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input699_def]
  kernel_rfl

theorem input700_eq : InitECandidate.Proofs.DeadStages79.Parallel.input700 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input700_def]
  kernel_rfl

theorem output700_eq : InitECandidate.Proofs.DeadStages79.Parallel.output700 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output700_def]
  kernel_rfl

theorem input701_eq : InitECandidate.Proofs.DeadStages79.Parallel.input701 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1026 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input701_def]
  kernel_rfl

theorem input702_eq : InitECandidate.Proofs.DeadStages79.Parallel.input702 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1027 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input702_def]
  simp only [input701_eq, input700_eq]
  kernel_rfl

theorem output702_eq : InitECandidate.Proofs.DeadStages79.Parallel.output702 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output702_def]
  simp only [output700_eq]

theorem input703_eq : InitECandidate.Proofs.DeadStages79.Parallel.input703 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1029 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input703_def]
  simp only [input702_eq, input699_eq]
  kernel_rfl

theorem output703_eq : InitECandidate.Proofs.DeadStages79.Parallel.output703 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output703_def]
  simp only [output702_eq]

theorem input704_eq : InitECandidate.Proofs.DeadStages79.Parallel.input704 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1037 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input704_def]
  simp only [input703_eq, input698_eq]
  kernel_rfl

theorem output704_eq : InitECandidate.Proofs.DeadStages79.Parallel.output704 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_616 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output704_def]
  simp only [output703_eq, output698_eq]
  kernel_rfl

theorem input705_eq : InitECandidate.Proofs.DeadStages79.Parallel.input705 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1045 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input705_def]
  simp only [input704_eq, input691_eq]
  kernel_rfl

theorem output705_eq : InitECandidate.Proofs.DeadStages79.Parallel.output705 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_624 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output705_def]
  simp only [output704_eq, output691_eq]
  kernel_rfl

theorem input706_eq : InitECandidate.Proofs.DeadStages79.Parallel.input706 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1072 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input706_def]
  simp only [input705_eq, input684_eq]
  kernel_rfl

theorem output706_eq : InitECandidate.Proofs.DeadStages79.Parallel.output706 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_633 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output706_def]
  simp only [output705_eq, output684_eq]
  kernel_rfl

theorem input707_eq : InitECandidate.Proofs.DeadStages79.Parallel.input707 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1073 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input707_def]
  simp only [input706_eq, input653_eq]
  kernel_rfl

theorem output707_eq : InitECandidate.Proofs.DeadStages79.Parallel.output707 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_634 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output707_def]
  simp only [output706_eq, output653_eq]
  kernel_rfl

theorem input708_eq : InitECandidate.Proofs.DeadStages79.Parallel.input708 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1077 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input708_def]
  simp only [input707_eq, input652_eq]
  kernel_rfl

theorem output708_eq : InitECandidate.Proofs.DeadStages79.Parallel.output708 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_638 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output708_def]
  simp only [output707_eq, output652_eq]
  kernel_rfl

theorem input709_eq : InitECandidate.Proofs.DeadStages79.Parallel.input709 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1079 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input709_def]
  simp only [input708_eq, input649_eq]
  kernel_rfl

theorem output709_eq : InitECandidate.Proofs.DeadStages79.Parallel.output709 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_640 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output709_def]
  simp only [output708_eq, output649_eq]
  kernel_rfl

theorem input710_eq : InitECandidate.Proofs.DeadStages79.Parallel.input710 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1082 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input710_def]
  simp only [input709_eq, input648_eq]
  kernel_rfl

theorem output710_eq : InitECandidate.Proofs.DeadStages79.Parallel.output710 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_643 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output710_def]
  simp only [output709_eq, output648_eq]
  kernel_rfl

theorem input711_eq : InitECandidate.Proofs.DeadStages79.Parallel.input711 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1089 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input711_def]
  simp only [input710_eq, input645_eq]
  kernel_rfl

theorem output711_eq : InitECandidate.Proofs.DeadStages79.Parallel.output711 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_645 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output711_def]
  simp only [output710_eq, output645_eq]
  kernel_rfl

theorem input712_eq : InitECandidate.Proofs.DeadStages79.Parallel.input712 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1100 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input712_def]
  kernel_rfl

theorem input713_eq : InitECandidate.Proofs.DeadStages79.Parallel.input713 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1098 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input713_def]
  kernel_rfl

theorem input714_eq : InitECandidate.Proofs.DeadStages79.Parallel.input714 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input714_def]
  kernel_rfl

theorem input715_eq : InitECandidate.Proofs.DeadStages79.Parallel.input715 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1099 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input715_def]
  simp only [input714_eq, input713_eq]
  kernel_rfl

theorem input716_eq : InitECandidate.Proofs.DeadStages79.Parallel.input716 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1101 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input716_def]
  simp only [input715_eq, input712_eq]
  kernel_rfl

theorem input717_eq : InitECandidate.Proofs.DeadStages79.Parallel.input717 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1097 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input717_def]
  kernel_rfl

theorem output717_eq : InitECandidate.Proofs.DeadStages79.Parallel.output717 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_649 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output717_def]
  kernel_rfl

theorem input718_eq : InitECandidate.Proofs.DeadStages79.Parallel.input718 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1102 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input718_def]
  simp only [input717_eq, input716_eq]
  kernel_rfl

theorem output718_eq : InitECandidate.Proofs.DeadStages79.Parallel.output718 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_649 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output718_def]
  simp only [output717_eq]

theorem input719_eq : InitECandidate.Proofs.DeadStages79.Parallel.input719 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_999 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input719_def]
  kernel_rfl

theorem output719_eq : InitECandidate.Proofs.DeadStages79.Parallel.output719 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_588 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output719_def]
  kernel_rfl

theorem input720_eq : InitECandidate.Proofs.DeadStages79.Parallel.input720 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1094 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input720_def]
  kernel_rfl

theorem output720_eq : InitECandidate.Proofs.DeadStages79.Parallel.output720 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_646 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output720_def]
  kernel_rfl

theorem input721_eq : InitECandidate.Proofs.DeadStages79.Parallel.input721 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1095 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input721_def]
  simp only [input720_eq, input719_eq]
  kernel_rfl

theorem output721_eq : InitECandidate.Proofs.DeadStages79.Parallel.output721 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_647 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output721_def]
  simp only [output720_eq, output719_eq]
  kernel_rfl

theorem input722_eq : InitECandidate.Proofs.DeadStages79.Parallel.input722 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1092 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input722_def]
  kernel_rfl

theorem input723_eq : InitECandidate.Proofs.DeadStages79.Parallel.input723 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input723_def]
  kernel_rfl

theorem output723_eq : InitECandidate.Proofs.DeadStages79.Parallel.output723 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output723_def]
  kernel_rfl

theorem input724_eq : InitECandidate.Proofs.DeadStages79.Parallel.input724 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1090 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input724_def]
  kernel_rfl

theorem input725_eq : InitECandidate.Proofs.DeadStages79.Parallel.input725 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1091 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input725_def]
  simp only [input724_eq, input723_eq]
  kernel_rfl

theorem output725_eq : InitECandidate.Proofs.DeadStages79.Parallel.output725 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output725_def]
  simp only [output723_eq]

theorem input726_eq : InitECandidate.Proofs.DeadStages79.Parallel.input726 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1093 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input726_def]
  simp only [input725_eq, input722_eq]
  kernel_rfl

theorem output726_eq : InitECandidate.Proofs.DeadStages79.Parallel.output726 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output726_def]
  simp only [output725_eq]

theorem input727_eq : InitECandidate.Proofs.DeadStages79.Parallel.input727 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1096 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input727_def]
  simp only [input726_eq, input721_eq]
  kernel_rfl

theorem output727_eq : InitECandidate.Proofs.DeadStages79.Parallel.output727 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_648 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output727_def]
  simp only [output726_eq, output721_eq]
  kernel_rfl

theorem input728_eq : InitECandidate.Proofs.DeadStages79.Parallel.input728 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1103 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input728_def]
  simp only [input727_eq, input718_eq]
  kernel_rfl

theorem output728_eq : InitECandidate.Proofs.DeadStages79.Parallel.output728 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_650 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output728_def]
  simp only [output727_eq, output718_eq]
  kernel_rfl

theorem input729_eq : InitECandidate.Proofs.DeadStages79.Parallel.input729 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1104 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input729_def]
  simp only [input711_eq, input728_eq]
  kernel_rfl

theorem output729_eq : InitECandidate.Proofs.DeadStages79.Parallel.output729 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_651 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output729_def]
  simp only [output711_eq, output728_eq]
  kernel_rfl

theorem input730_eq : InitECandidate.Proofs.DeadStages79.Parallel.input730 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1023 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input730_def]
  kernel_rfl

theorem output730_eq : InitECandidate.Proofs.DeadStages79.Parallel.output730 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_606 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output730_def]
  kernel_rfl

theorem input731_eq : InitECandidate.Proofs.DeadStages79.Parallel.input731 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1022 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input731_def]
  kernel_rfl

theorem output731_eq : InitECandidate.Proofs.DeadStages79.Parallel.output731 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_605 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output731_def]
  kernel_rfl

theorem input732_eq : InitECandidate.Proofs.DeadStages79.Parallel.input732 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1024 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input732_def]
  simp only [input731_eq, input730_eq]
  kernel_rfl

theorem output732_eq : InitECandidate.Proofs.DeadStages79.Parallel.output732 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_607 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output732_def]
  simp only [output731_eq, output730_eq]
  kernel_rfl

theorem input733_eq : InitECandidate.Proofs.DeadStages79.Parallel.input733 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1021 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input733_def]
  kernel_rfl

theorem output733_eq : InitECandidate.Proofs.DeadStages79.Parallel.output733 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_604 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output733_def]
  kernel_rfl

theorem input734_eq : InitECandidate.Proofs.DeadStages79.Parallel.input734 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1025 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input734_def]
  simp only [input733_eq, input732_eq]
  kernel_rfl

theorem output734_eq : InitECandidate.Proofs.DeadStages79.Parallel.output734 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_608 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output734_def]
  simp only [output733_eq, output732_eq]
  kernel_rfl

theorem input735_eq : InitECandidate.Proofs.DeadStages79.Parallel.input735 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1105 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input735_def]
  simp only [input734_eq, input729_eq]
  kernel_rfl

theorem output735_eq : InitECandidate.Proofs.DeadStages79.Parallel.output735 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_652 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output735_def]
  simp only [output734_eq, output729_eq]
  kernel_rfl

theorem input736_eq : InitECandidate.Proofs.DeadStages79.Parallel.input736 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1106 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input736_def]
  simp only [input735_eq, input638_eq]
  kernel_rfl

theorem output736_eq : InitECandidate.Proofs.DeadStages79.Parallel.output736 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_653 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output736_def]
  simp only [output735_eq, output638_eq]
  kernel_rfl

theorem input737_eq : InitECandidate.Proofs.DeadStages79.Parallel.input737 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1108 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input737_def]
  simp only [input736_eq, input637_eq]
  kernel_rfl

theorem output737_eq : InitECandidate.Proofs.DeadStages79.Parallel.output737 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_655 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output737_def]
  simp only [output736_eq, output637_eq]
  kernel_rfl

theorem input738_eq : InitECandidate.Proofs.DeadStages79.Parallel.input738 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1109 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input738_def]
  simp only [input737_eq]
  kernel_rfl

theorem output738_eq : InitECandidate.Proofs.DeadStages79.Parallel.output738 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_656 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output738_def]
  simp only [output737_eq]
  kernel_rfl

theorem input739_eq : InitECandidate.Proofs.DeadStages79.Parallel.input739 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1019 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input739_def]
  kernel_rfl

theorem output739_eq : InitECandidate.Proofs.DeadStages79.Parallel.output739 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_603 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output739_def]
  kernel_rfl

theorem input740_eq : InitECandidate.Proofs.DeadStages79.Parallel.input740 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input740_def]
  kernel_rfl

theorem input741_eq : InitECandidate.Proofs.DeadStages79.Parallel.input741 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1020 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input741_def]
  simp only [input740_eq, input739_eq]
  kernel_rfl

theorem output741_eq : InitECandidate.Proofs.DeadStages79.Parallel.output741 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_603 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output741_def]
  simp only [output739_eq]

theorem input742_eq : InitECandidate.Proofs.DeadStages79.Parallel.input742 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1110 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input742_def]
  simp only [input741_eq, input738_eq]
  kernel_rfl

theorem output742_eq : InitECandidate.Proofs.DeadStages79.Parallel.output742 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_657 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output742_def]
  simp only [output741_eq, output738_eq]
  kernel_rfl

theorem input743_eq : InitECandidate.Proofs.DeadStages79.Parallel.input743 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input743_def]
  kernel_rfl

theorem output743_eq : InitECandidate.Proofs.DeadStages79.Parallel.output743 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output743_def]
  kernel_rfl

theorem input744_eq : InitECandidate.Proofs.DeadStages79.Parallel.input744 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input744_def]
  kernel_rfl

theorem output744_eq : InitECandidate.Proofs.DeadStages79.Parallel.output744 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output744_def]
  kernel_rfl

theorem input745_eq : InitECandidate.Proofs.DeadStages79.Parallel.input745 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1012 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input745_def]
  kernel_rfl

theorem output745_eq : InitECandidate.Proofs.DeadStages79.Parallel.output745 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_596 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output745_def]
  kernel_rfl

theorem input746_eq : InitECandidate.Proofs.DeadStages79.Parallel.input746 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input746_def]
  kernel_rfl

theorem output746_eq : InitECandidate.Proofs.DeadStages79.Parallel.output746 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output746_def]
  kernel_rfl

theorem input747_eq : InitECandidate.Proofs.DeadStages79.Parallel.input747 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_990 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input747_def]
  kernel_rfl

theorem input748_eq : InitECandidate.Proofs.DeadStages79.Parallel.input748 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_988 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input748_def]
  kernel_rfl

theorem input749_eq : InitECandidate.Proofs.DeadStages79.Parallel.input749 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input749_def]
  kernel_rfl

theorem input750_eq : InitECandidate.Proofs.DeadStages79.Parallel.input750 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_989 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input750_def]
  simp only [input749_eq, input748_eq]
  kernel_rfl

theorem input751_eq : InitECandidate.Proofs.DeadStages79.Parallel.input751 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_991 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input751_def]
  simp only [input750_eq, input747_eq]
  kernel_rfl

theorem input752_eq : InitECandidate.Proofs.DeadStages79.Parallel.input752 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_987 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input752_def]
  kernel_rfl

theorem output752_eq : InitECandidate.Proofs.DeadStages79.Parallel.output752 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_585 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output752_def]
  kernel_rfl

theorem input753_eq : InitECandidate.Proofs.DeadStages79.Parallel.input753 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_992 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input753_def]
  simp only [input752_eq, input751_eq]
  kernel_rfl

theorem output753_eq : InitECandidate.Proofs.DeadStages79.Parallel.output753 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_585 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output753_def]
  simp only [output752_eq]

theorem input754_eq : InitECandidate.Proofs.DeadStages79.Parallel.input754 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_984 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input754_def]
  kernel_rfl

theorem output754_eq : InitECandidate.Proofs.DeadStages79.Parallel.output754 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_582 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output754_def]
  kernel_rfl

theorem input755_eq : InitECandidate.Proofs.DeadStages79.Parallel.input755 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_983 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input755_def]
  kernel_rfl

theorem output755_eq : InitECandidate.Proofs.DeadStages79.Parallel.output755 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_581 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output755_def]
  kernel_rfl

theorem input756_eq : InitECandidate.Proofs.DeadStages79.Parallel.input756 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_985 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input756_def]
  simp only [input755_eq, input754_eq]
  kernel_rfl

theorem output756_eq : InitECandidate.Proofs.DeadStages79.Parallel.output756 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_583 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output756_def]
  simp only [output755_eq, output754_eq]
  kernel_rfl

theorem input757_eq : InitECandidate.Proofs.DeadStages79.Parallel.input757 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_981 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input757_def]
  kernel_rfl

theorem output757_eq : InitECandidate.Proofs.DeadStages79.Parallel.output757 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_579 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output757_def]
  kernel_rfl

theorem input758_eq : InitECandidate.Proofs.DeadStages79.Parallel.input758 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_978 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input758_def]
  kernel_rfl

theorem output758_eq : InitECandidate.Proofs.DeadStages79.Parallel.output758 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_576 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output758_def]
  kernel_rfl

theorem input759_eq : InitECandidate.Proofs.DeadStages79.Parallel.input759 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_977 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input759_def]
  kernel_rfl

theorem output759_eq : InitECandidate.Proofs.DeadStages79.Parallel.output759 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_575 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output759_def]
  kernel_rfl

theorem input760_eq : InitECandidate.Proofs.DeadStages79.Parallel.input760 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_979 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input760_def]
  simp only [input759_eq, input758_eq]
  kernel_rfl

theorem output760_eq : InitECandidate.Proofs.DeadStages79.Parallel.output760 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_577 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output760_def]
  simp only [output759_eq, output758_eq]
  kernel_rfl

theorem input761_eq : InitECandidate.Proofs.DeadStages79.Parallel.input761 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input761_def]
  kernel_rfl

theorem output761_eq : InitECandidate.Proofs.DeadStages79.Parallel.output761 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output761_def]
  kernel_rfl

theorem input762_eq : InitECandidate.Proofs.DeadStages79.Parallel.input762 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_972 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input762_def]
  kernel_rfl

theorem input763_eq : InitECandidate.Proofs.DeadStages79.Parallel.input763 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input763_def]
  kernel_rfl

theorem output763_eq : InitECandidate.Proofs.DeadStages79.Parallel.output763 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output763_def]
  kernel_rfl

theorem input764_eq : InitECandidate.Proofs.DeadStages79.Parallel.input764 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_970 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input764_def]
  kernel_rfl

theorem input765_eq : InitECandidate.Proofs.DeadStages79.Parallel.input765 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_971 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input765_def]
  simp only [input764_eq, input763_eq]
  kernel_rfl

theorem output765_eq : InitECandidate.Proofs.DeadStages79.Parallel.output765 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output765_def]
  simp only [output763_eq]

theorem input766_eq : InitECandidate.Proofs.DeadStages79.Parallel.input766 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_973 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input766_def]
  simp only [input765_eq, input762_eq]
  kernel_rfl

theorem output766_eq : InitECandidate.Proofs.DeadStages79.Parallel.output766 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output766_def]
  simp only [output765_eq]

theorem input767_eq : InitECandidate.Proofs.DeadStages79.Parallel.input767 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input767_def]
  kernel_rfl

#print axioms input767_eq
end InitECandidate.Proofs.WordStages.Parallel79.AgreementsParallel
