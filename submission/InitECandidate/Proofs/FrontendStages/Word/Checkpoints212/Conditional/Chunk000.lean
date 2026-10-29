import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints212.Data.Chunk000
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints212
theorem node0_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_0 (276, 2) = (output0, (276, 2)) := by
  rw [output0_def]
  kernel_rfl

theorem node1_conditional
    (child0 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_0 (276, 2) = (output0, (276, 2))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 2) = (output1, (276, 2)) := by
  rw [output1_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child0

theorem node2_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_2 (276, 2) = (output2, (276, 2)) := by
  rw [output2_def]
  kernel_rfl

theorem node3_conditional
    (child2 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_2 (276, 2) = (output2, (276, 2))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_3 (276, 2) = (output3, (276, 2)) := by
  rw [output3_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2

theorem node4_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_4 (276, 2) = (output4, (276, 2)) := by
  rw [output4_def]
  kernel_rfl

theorem node5_conditional
    (child4 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_4 (276, 2) = (output4, (276, 2))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_5 (276, 2) = (output5, (276, 2)) := by
  rw [output5_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4

theorem node6_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_8 (276, 2) = (output6, (276, 4)) := by
  rw [output6_def]
  kernel_rfl

theorem node7_conditional
    (child6 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_8 (276, 2) = (output6, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_9 (276, 2) = (output7, (276, 4)) := by
  rw [output7_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child6

theorem node8_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_0 (276, 4) = (output8, (276, 4)) := by
  rw [output8_def]
  kernel_rfl

theorem node9_conditional
    (child8 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_0 (276, 4) = (output8, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 4) = (output9, (276, 4)) := by
  rw [output9_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child8

theorem node10_conditional
    (child7 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_9 (276, 2) = (output7, (276, 4)))
    (child9 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 4) = (output9, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_10 (276, 2) = (output10, (276, 4)) := by
  rw [output10_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child7 child9

theorem node11_conditional
    (child10 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_10 (276, 2) = (output10, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_11 (276, 2) = (output11, (276, 4)) := by
  rw [output11_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10

theorem node12_conditional
    (child5 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_5 (276, 2) = (output5, (276, 2)))
    (child11 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_11 (276, 2) = (output11, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_12 (276, 2) = (output12, (276, 4)) := by
  rw [output12_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child5 child11

theorem node13_conditional
    (child12 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_12 (276, 2) = (output12, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_13 (276, 2) = (output13, (276, 4)) := by
  rw [output13_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child12

theorem node14_conditional
    (child3 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_3 (276, 2) = (output3, (276, 2)))
    (child13 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_13 (276, 2) = (output13, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_14 (276, 2) = (output14, (276, 4)) := by
  rw [output14_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child3 child13

theorem node15_conditional
    (child14 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_14 (276, 2) = (output14, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_15 (276, 2) = (output15, (276, 4)) := by
  rw [output15_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child14

theorem node16_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_16 (276, 4) = (output16, (276, 4)) := by
  rw [output16_def]
  kernel_rfl

theorem node17_conditional
    (child16 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_16 (276, 4) = (output16, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_17 (276, 4) = (output17, (276, 4)) := by
  rw [output17_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child16

theorem node18_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_18 (276, 4) = (output18, (276, 4)) := by
  rw [output18_def]
  kernel_rfl

theorem node19_conditional
    (child18 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_18 (276, 4) = (output18, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_19 (276, 4) = (output19, (276, 4)) := by
  rw [output19_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child18

theorem node20_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_20 (276, 4) = (output20, (276, 4)) := by
  rw [output20_def]
  kernel_rfl

theorem node21_conditional
    (child20 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_20 (276, 4) = (output20, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_21 (276, 4) = (output21, (276, 4)) := by
  rw [output21_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child20

theorem node22_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_22 (276, 4) = (output22, (276, 4)) := by
  rw [output22_def]
  kernel_rfl

theorem node23_conditional
    (child22 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_22 (276, 4) = (output22, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_23 (276, 4) = (output23, (276, 4)) := by
  rw [output23_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child22

theorem node24_conditional
    (child21 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_21 (276, 4) = (output21, (276, 4)))
    (child23 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_23 (276, 4) = (output23, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_24 (276, 4) = (output24, (276, 4)) := by
  rw [output24_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child21 child23

theorem node25_conditional
    (child24 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_24 (276, 4) = (output24, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_25 (276, 4) = (output25, (276, 4)) := by
  rw [output25_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child24

theorem node26_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_26 (276, 4) = (output26, (276, 4)) := by
  rw [output26_def]
  kernel_rfl

theorem node27_conditional
    (child26 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_26 (276, 4) = (output26, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_27 (276, 4) = (output27, (276, 4)) := by
  rw [output27_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child26

theorem node28_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_28 (276, 4) = (output28, (276, 4)) := by
  rw [output28_def]
  kernel_rfl

theorem node29_conditional
    (child28 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_28 (276, 4) = (output28, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_29 (276, 4) = (output29, (276, 4)) := by
  rw [output29_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child28

theorem node30_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_30 (276, 4) = (output30, (276, 4)) := by
  rw [output30_def]
  kernel_rfl

theorem node31_conditional
    (child30 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_30 (276, 4) = (output30, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_31 (276, 4) = (output31, (276, 4)) := by
  rw [output31_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child30

theorem node32_conditional
    (child31 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_31 (276, 4) = (output31, (276, 4)))
    (child9 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 4) = (output9, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_32 (276, 4) = (output32, (276, 4)) := by
  rw [output32_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child31 child9

theorem node33_conditional
    (child32 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_32 (276, 4) = (output32, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_33 (276, 4) = (output33, (276, 4)) := by
  rw [output33_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child32

theorem node34_conditional
    (child33 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_33 (276, 4) = (output33, (276, 4)))
    (child9 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 4) = (output9, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_34 (276, 4) = (output34, (276, 4)) := by
  rw [output34_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child33 child9

theorem node35_conditional
    (child34 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_34 (276, 4) = (output34, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_35 (276, 4) = (output35, (276, 4)) := by
  rw [output35_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child34

theorem node36_conditional
    (child29 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_29 (276, 4) = (output29, (276, 4)))
    (child35 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_35 (276, 4) = (output35, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_36 (276, 4) = (output36, (276, 4)) := by
  rw [output36_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child29 child35

theorem node37_conditional
    (child36 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_36 (276, 4) = (output36, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_37 (276, 4) = (output37, (276, 4)) := by
  rw [output37_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child36

theorem node38_conditional
    (child9 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 4) = (output9, (276, 4)))
    (child37 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_37 (276, 4) = (output37, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_38 (276, 4) = (output38, (276, 4)) := by
  rw [output38_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child9 child37

theorem node39_conditional
    (child38 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_38 (276, 4) = (output38, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_39 (276, 4) = (output39, (276, 4)) := by
  rw [output39_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child38

theorem node40_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_40 (276, 4) = (output40, (276, 4)) := by
  rw [output40_def]
  kernel_rfl

theorem node41_conditional
    (child40 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_40 (276, 4) = (output40, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_41 (276, 4) = (output41, (276, 4)) := by
  rw [output41_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child40

theorem node42_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_6 (276, 4) = (output42, (276, 4)) := by
  rw [output42_def]
  kernel_rfl

theorem node43_conditional
    (child42 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_6 (276, 4) = (output42, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_7 (276, 4) = (output43, (276, 4)) := by
  rw [output43_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child42

theorem node44_conditional
    (child41 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_41 (276, 4) = (output41, (276, 4)))
    (child43 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_7 (276, 4) = (output43, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_42 (276, 4) = (output44, (276, 4)) := by
  rw [output44_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child41 child43

theorem node45_conditional
    (child44 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_42 (276, 4) = (output44, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_43 (276, 4) = (output45, (276, 4)) := by
  rw [output45_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child44

theorem node46_conditional
    (child39 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_39 (276, 4) = (output39, (276, 4)))
    (child45 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_43 (276, 4) = (output45, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_44 (276, 4) = (output46, (276, 4)) := by
  rw [output46_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child39 child45

theorem node47_conditional
    (child46 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_44 (276, 4) = (output46, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_45 (276, 4) = (output47, (276, 4)) := by
  rw [output47_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child46

theorem node48_conditional
    (child47 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_45 (276, 4) = (output47, (276, 4)))
    (child9 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 4) = (output9, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_46 (276, 4) = (output48, (276, 4)) := by
  rw [output48_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child47 child9

theorem node49_conditional
    (child48 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_46 (276, 4) = (output48, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_47 (276, 4) = (output49, (276, 4)) := by
  rw [output49_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child48

theorem node50_conditional
    (child49 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_47 (276, 4) = (output49, (276, 4)))
    (child9 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 4) = (output9, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_48 (276, 4) = (output50, (276, 4)) := by
  rw [output50_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child49 child9

theorem node51_conditional
    (child50 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_48 (276, 4) = (output50, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_49 (276, 4) = (output51, (276, 4)) := by
  rw [output51_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child50

theorem node52_conditional
    (child27 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_27 (276, 4) = (output27, (276, 4)))
    (child51 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_49 (276, 4) = (output51, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_50 (276, 4) = (output52, (276, 4)) := by
  rw [output52_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child27 child51

theorem node53_conditional
    (child52 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_50 (276, 4) = (output52, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_51 (276, 4) = (output53, (276, 4)) := by
  rw [output53_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child52

theorem node54_conditional
    (child25 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_25 (276, 4) = (output25, (276, 4)))
    (child53 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_51 (276, 4) = (output53, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_52 (276, 4) = (output54, (276, 4)) := by
  rw [output54_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child25 child53

theorem node55_conditional
    (child54 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_52 (276, 4) = (output54, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_53 (276, 4) = (output55, (276, 4)) := by
  rw [output55_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child54

theorem node56_conditional
    (child19 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_19 (276, 4) = (output19, (276, 4)))
    (child55 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_53 (276, 4) = (output55, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_54 (276, 4) = (output56, (276, 4)) := by
  rw [output56_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child19 child55

theorem node57_conditional
    (child56 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_54 (276, 4) = (output56, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_55 (276, 4) = (output57, (276, 4)) := by
  rw [output57_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child56

theorem node58_conditional
    (child17 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_17 (276, 4) = (output17, (276, 4)))
    (child57 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_55 (276, 4) = (output57, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_56 (276, 4) = (output58, (276, 4)) := by
  rw [output58_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child17 child57

theorem node59_conditional
    (child58 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_56 (276, 4) = (output58, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_57 (276, 4) = (output59, (276, 4)) := by
  rw [output59_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child58

theorem node60_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_58 (276, 4) = (output60, (276, 4)) := by
  rw [output60_def]
  kernel_rfl

theorem node61_conditional
    (child60 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_58 (276, 4) = (output60, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_59 (276, 4) = (output61, (276, 4)) := by
  rw [output61_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child60

theorem node62_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_60 (276, 4) = (output62, (276, 4)) := by
  rw [output62_def]
  kernel_rfl

theorem node63_conditional
    (child62 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_60 (276, 4) = (output62, (276, 4))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_61 (276, 4) = (output63, (276, 4)) := by
  rw [output63_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child62

theorem node64_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_64 (276, 4) = (output64, (276, 6)) := by
  rw [output64_def]
  kernel_rfl

theorem node65_conditional
    (child64 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_64 (276, 4) = (output64, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_65 (276, 4) = (output65, (276, 6)) := by
  rw [output65_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child64

theorem node66_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_0 (276, 6) = (output66, (276, 6)) := by
  rw [output66_def]
  kernel_rfl

theorem node67_conditional
    (child66 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_0 (276, 6) = (output66, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 6) = (output67, (276, 6)) := by
  rw [output67_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child66

theorem node68_conditional
    (child65 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_65 (276, 4) = (output65, (276, 6)))
    (child67 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 6) = (output67, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_66 (276, 4) = (output68, (276, 6)) := by
  rw [output68_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child65 child67

theorem node69_conditional
    (child68 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_66 (276, 4) = (output68, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_67 (276, 4) = (output69, (276, 6)) := by
  rw [output69_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child68

theorem node70_conditional
    (child63 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_61 (276, 4) = (output63, (276, 4)))
    (child69 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_67 (276, 4) = (output69, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_68 (276, 4) = (output70, (276, 6)) := by
  rw [output70_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child63 child69

theorem node71_conditional
    (child70 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_68 (276, 4) = (output70, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_69 (276, 4) = (output71, (276, 6)) := by
  rw [output71_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child70

theorem node72_conditional
    (child61 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_59 (276, 4) = (output61, (276, 4)))
    (child71 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_69 (276, 4) = (output71, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_70 (276, 4) = (output72, (276, 6)) := by
  rw [output72_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child61 child71

theorem node73_conditional
    (child72 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_70 (276, 4) = (output72, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_71 (276, 4) = (output73, (276, 6)) := by
  rw [output73_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child72

theorem node74_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_72 (276, 6) = (output74, (276, 6)) := by
  rw [output74_def]
  kernel_rfl

theorem node75_conditional
    (child74 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_72 (276, 6) = (output74, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_73 (276, 6) = (output75, (276, 6)) := by
  rw [output75_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child74

theorem node76_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_26 (276, 6) = (output76, (276, 6)) := by
  rw [output76_def]
  kernel_rfl

theorem node77_conditional
    (child76 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_26 (276, 6) = (output76, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_27 (276, 6) = (output77, (276, 6)) := by
  rw [output77_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child76

theorem node78_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_74 (276, 6) = (output78, (276, 6)) := by
  rw [output78_def]
  kernel_rfl

theorem node79_conditional
    (child78 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_74 (276, 6) = (output78, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_75 (276, 6) = (output79, (276, 6)) := by
  rw [output79_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child78

theorem node80_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_76 (276, 6) = (output80, (276, 6)) := by
  rw [output80_def]
  kernel_rfl

theorem node81_conditional
    (child80 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_76 (276, 6) = (output80, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_77 (276, 6) = (output81, (276, 6)) := by
  rw [output81_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child80

theorem node82_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_78 (276, 6) = (output82, (276, 6)) := by
  rw [output82_def]
  kernel_rfl

theorem node83_conditional
    (child82 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_78 (276, 6) = (output82, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_79 (276, 6) = (output83, (276, 6)) := by
  rw [output83_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child82

theorem node84_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_80 (276, 6) = (output84, (276, 6)) := by
  rw [output84_def]
  kernel_rfl

theorem node85_conditional
    (child84 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_80 (276, 6) = (output84, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_81 (276, 6) = (output85, (276, 6)) := by
  rw [output85_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child84

theorem node86_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_82 (276, 6) = (output86, (276, 6)) := by
  rw [output86_def]
  kernel_rfl

theorem node87_conditional
    (child86 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_82 (276, 6) = (output86, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_83 (276, 6) = (output87, (276, 6)) := by
  rw [output87_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child86

theorem node88_conditional
    (child85 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_81 (276, 6) = (output85, (276, 6)))
    (child87 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_83 (276, 6) = (output87, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_84 (276, 6) = (output88, (276, 6)) := by
  rw [output88_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child85 child87

theorem node89_conditional
    (child88 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_84 (276, 6) = (output88, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_85 (276, 6) = (output89, (276, 6)) := by
  rw [output89_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child88

theorem node90_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_86 (276, 6) = (output90, (276, 6)) := by
  rw [output90_def]
  kernel_rfl

theorem node91_conditional
    (child90 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_86 (276, 6) = (output90, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_87 (276, 6) = (output91, (276, 6)) := by
  rw [output91_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child90

theorem node92_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_88 (276, 6) = (output92, (276, 6)) := by
  rw [output92_def]
  kernel_rfl

theorem node93_conditional
    (child92 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_88 (276, 6) = (output92, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_89 (276, 6) = (output93, (276, 6)) := by
  rw [output93_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child92

theorem node94_conditional
    (child93 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_89 (276, 6) = (output93, (276, 6)))
    (child67 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 6) = (output67, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_90 (276, 6) = (output94, (276, 6)) := by
  rw [output94_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child93 child67

theorem node95_conditional
    (child94 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_90 (276, 6) = (output94, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_91 (276, 6) = (output95, (276, 6)) := by
  rw [output95_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child94

theorem node96_conditional
    (child95 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_91 (276, 6) = (output95, (276, 6)))
    (child67 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 6) = (output67, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_92 (276, 6) = (output96, (276, 6)) := by
  rw [output96_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child95 child67

theorem node97_conditional
    (child96 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_92 (276, 6) = (output96, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_93 (276, 6) = (output97, (276, 6)) := by
  rw [output97_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child96

theorem node98_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_94 (276, 6) = (output98, (276, 6)) := by
  rw [output98_def]
  kernel_rfl

theorem node99_conditional
    (child98 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_94 (276, 6) = (output98, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_95 (276, 6) = (output99, (276, 6)) := by
  rw [output99_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child98

theorem node100_conditional
    (child85 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_81 (276, 6) = (output85, (276, 6)))
    (child87 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_83 (276, 6) = (output87, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_96 (276, 6) = (output100, (276, 6)) := by
  rw [output100_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child85 child87

theorem node101_conditional
    (child100 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_96 (276, 6) = (output100, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_97 (276, 6) = (output101, (276, 6)) := by
  rw [output101_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child100

theorem node102_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_98 (276, 6) = (output102, (276, 6)) := by
  rw [output102_def]
  kernel_rfl

theorem node103_conditional
    (child102 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_98 (276, 6) = (output102, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_99 (276, 6) = (output103, (276, 6)) := by
  rw [output103_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child102

theorem node104_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_100 (276, 6) = (output104, (276, 6)) := by
  rw [output104_def]
  kernel_rfl

theorem node105_conditional
    (child104 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_100 (276, 6) = (output104, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_101 (276, 6) = (output105, (276, 6)) := by
  rw [output105_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child104

theorem node106_conditional
    (child105 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_101 (276, 6) = (output105, (276, 6)))
    (child67 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 6) = (output67, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_102 (276, 6) = (output106, (276, 6)) := by
  rw [output106_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child105 child67

theorem node107_conditional
    (child106 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_102 (276, 6) = (output106, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_103 (276, 6) = (output107, (276, 6)) := by
  rw [output107_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child106

theorem node108_conditional
    (child107 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_103 (276, 6) = (output107, (276, 6)))
    (child67 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 6) = (output67, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_104 (276, 6) = (output108, (276, 6)) := by
  rw [output108_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child107 child67

theorem node109_conditional
    (child108 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_104 (276, 6) = (output108, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_105 (276, 6) = (output109, (276, 6)) := by
  rw [output109_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child108

theorem node110_conditional
    (child103 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_99 (276, 6) = (output103, (276, 6)))
    (child109 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_105 (276, 6) = (output109, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_106 (276, 6) = (output110, (276, 6)) := by
  rw [output110_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child103 child109

theorem node111_conditional
    (child110 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_106 (276, 6) = (output110, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_107 (276, 6) = (output111, (276, 6)) := by
  rw [output111_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child110

theorem node112_conditional
    (child67 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 6) = (output67, (276, 6)))
    (child111 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_107 (276, 6) = (output111, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_108 (276, 6) = (output112, (276, 6)) := by
  rw [output112_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child67 child111

theorem node113_conditional
    (child112 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_108 (276, 6) = (output112, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_109 (276, 6) = (output113, (276, 6)) := by
  rw [output113_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child112

theorem node114_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_110 (276, 6) = (output114, (276, 6)) := by
  rw [output114_def]
  kernel_rfl

theorem node115_conditional
    (child114 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_110 (276, 6) = (output114, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_111 (276, 6) = (output115, (276, 6)) := by
  rw [output115_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child114

theorem node116_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_112 (276, 6) = (output116, (276, 6)) := by
  rw [output116_def]
  kernel_rfl

theorem node117_conditional
    (child116 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_112 (276, 6) = (output116, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_113 (276, 6) = (output117, (276, 6)) := by
  rw [output117_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child116

theorem node118_conditional
    (child115 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_111 (276, 6) = (output115, (276, 6)))
    (child117 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_113 (276, 6) = (output117, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_114 (276, 6) = (output118, (276, 6)) := by
  rw [output118_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child115 child117

theorem node119_conditional
    (child118 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_114 (276, 6) = (output118, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_115 (276, 6) = (output119, (276, 6)) := by
  rw [output119_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child118

theorem node120_conditional
    (child113 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_109 (276, 6) = (output113, (276, 6)))
    (child119 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_115 (276, 6) = (output119, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_116 (276, 6) = (output120, (276, 6)) := by
  rw [output120_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child113 child119

theorem node121_conditional
    (child120 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_116 (276, 6) = (output120, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_117 (276, 6) = (output121, (276, 6)) := by
  rw [output121_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child120

theorem node122_conditional
    (child121 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_117 (276, 6) = (output121, (276, 6)))
    (child67 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 6) = (output67, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_118 (276, 6) = (output122, (276, 6)) := by
  rw [output122_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child121 child67

theorem node123_conditional
    (child122 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_118 (276, 6) = (output122, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_119 (276, 6) = (output123, (276, 6)) := by
  rw [output123_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child122

theorem node124_conditional
    (child123 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_119 (276, 6) = (output123, (276, 6)))
    (child67 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 6) = (output67, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_120 (276, 6) = (output124, (276, 6)) := by
  rw [output124_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child123 child67

theorem node125_conditional
    (child124 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_120 (276, 6) = (output124, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_121 (276, 6) = (output125, (276, 6)) := by
  rw [output125_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child124

theorem node126_conditional
    (child91 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_87 (276, 6) = (output91, (276, 6)))
    (child125 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_121 (276, 6) = (output125, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_122 (276, 6) = (output126, (276, 6)) := by
  rw [output126_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child91 child125

theorem node127_conditional
    (child126 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_122 (276, 6) = (output126, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_123 (276, 6) = (output127, (276, 6)) := by
  rw [output127_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child126

theorem node128_conditional
    (child101 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_97 (276, 6) = (output101, (276, 6)))
    (child127 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_123 (276, 6) = (output127, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_124 (276, 6) = (output128, (276, 6)) := by
  rw [output128_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child101 child127

theorem node129_conditional
    (child128 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_124 (276, 6) = (output128, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_125 (276, 6) = (output129, (276, 6)) := by
  rw [output129_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child128

theorem node130_conditional
    (child99 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_95 (276, 6) = (output99, (276, 6)))
    (child129 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_125 (276, 6) = (output129, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_126 (276, 6) = (output130, (276, 6)) := by
  rw [output130_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child99 child129

theorem node131_conditional
    (child130 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_126 (276, 6) = (output130, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_127 (276, 6) = (output131, (276, 6)) := by
  rw [output131_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child130

theorem node132_conditional
    (child81 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_77 (276, 6) = (output81, (276, 6)))
    (child131 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_127 (276, 6) = (output131, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_128 (276, 6) = (output132, (276, 6)) := by
  rw [output132_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child81 child131

theorem node133_conditional
    (child132 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_128 (276, 6) = (output132, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_129 (276, 6) = (output133, (276, 6)) := by
  rw [output133_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child132

theorem node134_conditional
    (child97 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_93 (276, 6) = (output97, (276, 6)))
    (child133 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_129 (276, 6) = (output133, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_130 (276, 6) = (output134, (276, 6)) := by
  rw [output134_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child97 child133

theorem node135_conditional
    (child134 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_130 (276, 6) = (output134, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_131 (276, 6) = (output135, (276, 6)) := by
  rw [output135_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child134

theorem node136_conditional
    (child135 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_131 (276, 6) = (output135, (276, 6)))
    (child67 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 6) = (output67, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_132 (276, 6) = (output136, (276, 6)) := by
  rw [output136_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child135 child67

theorem node137_conditional
    (child136 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_132 (276, 6) = (output136, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_133 (276, 6) = (output137, (276, 6)) := by
  rw [output137_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child136

theorem node138_conditional
    (child91 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_87 (276, 6) = (output91, (276, 6)))
    (child137 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_133 (276, 6) = (output137, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_134 (276, 6) = (output138, (276, 6)) := by
  rw [output138_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child91 child137

theorem node139_conditional
    (child138 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_134 (276, 6) = (output138, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_135 (276, 6) = (output139, (276, 6)) := by
  rw [output139_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child138

theorem node140_conditional
    (child89 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_85 (276, 6) = (output89, (276, 6)))
    (child139 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_135 (276, 6) = (output139, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_136 (276, 6) = (output140, (276, 6)) := by
  rw [output140_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child89 child139

theorem node141_conditional
    (child140 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_136 (276, 6) = (output140, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_137 (276, 6) = (output141, (276, 6)) := by
  rw [output141_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child140

theorem node142_conditional
    (child83 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_79 (276, 6) = (output83, (276, 6)))
    (child141 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_137 (276, 6) = (output141, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_138 (276, 6) = (output142, (276, 6)) := by
  rw [output142_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child83 child141

theorem node143_conditional
    (child142 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_138 (276, 6) = (output142, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_139 (276, 6) = (output143, (276, 6)) := by
  rw [output143_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child142

theorem node144_conditional
    (child81 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_77 (276, 6) = (output81, (276, 6)))
    (child143 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_139 (276, 6) = (output143, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_140 (276, 6) = (output144, (276, 6)) := by
  rw [output144_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child81 child143

theorem node145_conditional
    (child144 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_140 (276, 6) = (output144, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_141 (276, 6) = (output145, (276, 6)) := by
  rw [output145_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child144

theorem node146_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_142 (276, 6) = (output146, (276, 6)) := by
  rw [output146_def]
  kernel_rfl

theorem node147_conditional
    (child146 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_142 (276, 6) = (output146, (276, 6))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_143 (276, 6) = (output147, (276, 6)) := by
  rw [output147_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child146

theorem node148_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_146 (276, 6) = (output148, (276, 8)) := by
  rw [output148_def]
  kernel_rfl

theorem node149_conditional
    (child148 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_146 (276, 6) = (output148, (276, 8))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_147 (276, 6) = (output149, (276, 8)) := by
  rw [output149_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child148

theorem node150_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_0 (276, 8) = (output150, (276, 8)) := by
  rw [output150_def]
  kernel_rfl

theorem node151_conditional
    (child150 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_0 (276, 8) = (output150, (276, 8))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 8) = (output151, (276, 8)) := by
  rw [output151_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child150

theorem node152_conditional
    (child149 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_147 (276, 6) = (output149, (276, 8)))
    (child151 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 8) = (output151, (276, 8))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_148 (276, 6) = (output152, (276, 8)) := by
  rw [output152_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child149 child151

theorem node153_conditional
    (child152 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_148 (276, 6) = (output152, (276, 8))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_149 (276, 6) = (output153, (276, 8)) := by
  rw [output153_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child152

theorem node154_conditional
    (child147 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_143 (276, 6) = (output147, (276, 6)))
    (child153 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_149 (276, 6) = (output153, (276, 8))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_150 (276, 6) = (output154, (276, 8)) := by
  rw [output154_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child147 child153

theorem node155_conditional
    (child154 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_150 (276, 6) = (output154, (276, 8))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_151 (276, 6) = (output155, (276, 8)) := by
  rw [output155_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child154

theorem node156_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_152 (276, 8) = (output156, (276, 8)) := by
  rw [output156_def]
  kernel_rfl

theorem node157_conditional
    (child156 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_152 (276, 8) = (output156, (276, 8))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_153 (276, 8) = (output157, (276, 8)) := by
  rw [output157_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child156

theorem node158_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_154 (276, 8) = (output158, (276, 8)) := by
  rw [output158_def]
  kernel_rfl

theorem node159_conditional
    (child158 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_154 (276, 8) = (output158, (276, 8))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_155 (276, 8) = (output159, (276, 8)) := by
  rw [output159_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child158

theorem node160_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_156 (276, 8) = (output160, (276, 8)) := by
  rw [output160_def]
  kernel_rfl

theorem node161_conditional
    (child160 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_156 (276, 8) = (output160, (276, 8))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_157 (276, 8) = (output161, (276, 8)) := by
  rw [output161_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child160

theorem node162_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_158 (276, 8) = (output162, (276, 8)) := by
  rw [output162_def]
  kernel_rfl

theorem node163_conditional
    (child162 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_158 (276, 8) = (output162, (276, 8))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_159 (276, 8) = (output163, (276, 8)) := by
  rw [output163_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child162

theorem node164_conditional
    (child163 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_159 (276, 8) = (output163, (276, 8)))
    (child151 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 8) = (output151, (276, 8))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_160 (276, 8) = (output164, (276, 8)) := by
  rw [output164_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child163 child151

theorem node165_conditional
    (child164 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_160 (276, 8) = (output164, (276, 8))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_161 (276, 8) = (output165, (276, 8)) := by
  rw [output165_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child164

theorem node166_conditional
    (child161 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_157 (276, 8) = (output161, (276, 8)))
    (child165 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_161 (276, 8) = (output165, (276, 8))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_162 (276, 8) = (output166, (276, 8)) := by
  rw [output166_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child161 child165

theorem node167_conditional
    (child166 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_162 (276, 8) = (output166, (276, 8))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_163 (276, 8) = (output167, (276, 8)) := by
  rw [output167_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child166

theorem node168_conditional
    (child167 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_163 (276, 8) = (output167, (276, 8)))
    (child151 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 8) = (output151, (276, 8))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_164 (276, 8) = (output168, (276, 8)) := by
  rw [output168_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child167 child151

theorem node169_conditional
    (child168 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_164 (276, 8) = (output168, (276, 8))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_165 (276, 8) = (output169, (276, 8)) := by
  rw [output169_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child168

theorem node170_conditional
    (child159 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_155 (276, 8) = (output159, (276, 8)))
    (child169 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_165 (276, 8) = (output169, (276, 8))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_166 (276, 8) = (output170, (276, 8)) := by
  rw [output170_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child159 child169

theorem node171_conditional
    (child170 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_166 (276, 8) = (output170, (276, 8))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_167 (276, 8) = (output171, (276, 8)) := by
  rw [output171_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child170

theorem node172_conditional
    (child151 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 8) = (output151, (276, 8)))
    (child171 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_167 (276, 8) = (output171, (276, 8))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_168 (276, 8) = (output172, (276, 8)) := by
  rw [output172_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child151 child171

theorem node173_conditional
    (child172 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_168 (276, 8) = (output172, (276, 8))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_169 (276, 8) = (output173, (276, 8)) := by
  rw [output173_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child172

theorem node174_conditional
    (child157 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_153 (276, 8) = (output157, (276, 8)))
    (child173 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_169 (276, 8) = (output173, (276, 8))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_170 (276, 8) = (output174, (276, 8)) := by
  rw [output174_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child157 child173

theorem node175_conditional
    (child174 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_170 (276, 8) = (output174, (276, 8))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_171 (276, 8) = (output175, (276, 8)) := by
  rw [output175_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child174

theorem node176_conditional
    (child151 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 8) = (output151, (276, 8)))
    (child175 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_171 (276, 8) = (output175, (276, 8))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_172 (276, 8) = (output176, (276, 8)) := by
  rw [output176_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child151 child175

theorem node177_conditional
    (child176 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_172 (276, 8) = (output176, (276, 8))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_173 (276, 8) = (output177, (276, 8)) := by
  rw [output177_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child176

theorem node178_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_174 (276, 8) = (output178, (276, 8)) := by
  rw [output178_def]
  kernel_rfl

theorem node179_conditional
    (child178 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_174 (276, 8) = (output178, (276, 8))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_175 (276, 8) = (output179, (276, 8)) := by
  rw [output179_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child178

theorem node180_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_176 (276, 8) = (output180, (276, 8)) := by
  rw [output180_def]
  kernel_rfl

theorem node181_conditional
    (child180 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_176 (276, 8) = (output180, (276, 8))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_177 (276, 8) = (output181, (276, 8)) := by
  rw [output181_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child180

theorem node182_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_178 (276, 8) = (output182, (276, 8)) := by
  rw [output182_def]
  kernel_rfl

theorem node183_conditional
    (child182 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_178 (276, 8) = (output182, (276, 8))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_179 (276, 8) = (output183, (276, 8)) := by
  rw [output183_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child182

theorem node184_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_182 (276, 8) = (output184, (276, 10)) := by
  rw [output184_def]
  kernel_rfl

theorem node185_conditional
    (child184 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_182 (276, 8) = (output184, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_183 (276, 8) = (output185, (276, 10)) := by
  rw [output185_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child184

theorem node186_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_0 (276, 10) = (output186, (276, 10)) := by
  rw [output186_def]
  kernel_rfl

theorem node187_conditional
    (child186 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_0 (276, 10) = (output186, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 10) = (output187, (276, 10)) := by
  rw [output187_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child186

theorem node188_conditional
    (child185 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_183 (276, 8) = (output185, (276, 10)))
    (child187 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 10) = (output187, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_184 (276, 8) = (output188, (276, 10)) := by
  rw [output188_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child185 child187

theorem node189_conditional
    (child188 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_184 (276, 8) = (output188, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_185 (276, 8) = (output189, (276, 10)) := by
  rw [output189_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child188

theorem node190_conditional
    (child183 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_179 (276, 8) = (output183, (276, 8)))
    (child189 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_185 (276, 8) = (output189, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_186 (276, 8) = (output190, (276, 10)) := by
  rw [output190_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child183 child189

theorem node191_conditional
    (child190 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_186 (276, 8) = (output190, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_187 (276, 8) = (output191, (276, 10)) := by
  rw [output191_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child190

theorem node192_conditional
    (child181 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_177 (276, 8) = (output181, (276, 8)))
    (child191 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_187 (276, 8) = (output191, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_188 (276, 8) = (output192, (276, 10)) := by
  rw [output192_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child181 child191

theorem node193_conditional
    (child192 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_188 (276, 8) = (output192, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_189 (276, 8) = (output193, (276, 10)) := by
  rw [output193_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child192

theorem node194_conditional
    (child179 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_175 (276, 8) = (output179, (276, 8)))
    (child193 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_189 (276, 8) = (output193, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_190 (276, 8) = (output194, (276, 10)) := by
  rw [output194_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child179 child193

theorem node195_conditional
    (child194 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_190 (276, 8) = (output194, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_191 (276, 8) = (output195, (276, 10)) := by
  rw [output195_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child194

theorem node196_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_192 (276, 10) = (output196, (276, 10)) := by
  rw [output196_def]
  kernel_rfl

theorem node197_conditional
    (child196 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_192 (276, 10) = (output196, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_193 (276, 10) = (output197, (276, 10)) := by
  rw [output197_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child196

theorem node198_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_86 (276, 10) = (output198, (276, 10)) := by
  rw [output198_def]
  kernel_rfl

theorem node199_conditional
    (child198 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_86 (276, 10) = (output198, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_87 (276, 10) = (output199, (276, 10)) := by
  rw [output199_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child198

theorem node200_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_194 (276, 10) = (output200, (276, 10)) := by
  rw [output200_def]
  kernel_rfl

theorem node201_conditional
    (child200 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_194 (276, 10) = (output200, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_195 (276, 10) = (output201, (276, 10)) := by
  rw [output201_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child200

theorem node202_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_196 (276, 10) = (output202, (276, 10)) := by
  rw [output202_def]
  kernel_rfl

theorem node203_conditional
    (child202 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_196 (276, 10) = (output202, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_197 (276, 10) = (output203, (276, 10)) := by
  rw [output203_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child202

theorem node204_conditional
    (child203 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_197 (276, 10) = (output203, (276, 10)))
    (child187 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 10) = (output187, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_198 (276, 10) = (output204, (276, 10)) := by
  rw [output204_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child203 child187

theorem node205_conditional
    (child204 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_198 (276, 10) = (output204, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_199 (276, 10) = (output205, (276, 10)) := by
  rw [output205_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child204

theorem node206_conditional
    (child201 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_195 (276, 10) = (output201, (276, 10)))
    (child205 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_199 (276, 10) = (output205, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_200 (276, 10) = (output206, (276, 10)) := by
  rw [output206_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child201 child205

theorem node207_conditional
    (child206 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_200 (276, 10) = (output206, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_201 (276, 10) = (output207, (276, 10)) := by
  rw [output207_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child206

theorem node208_conditional
    (child207 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_201 (276, 10) = (output207, (276, 10)))
    (child187 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 10) = (output187, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_202 (276, 10) = (output208, (276, 10)) := by
  rw [output208_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child207 child187

theorem node209_conditional
    (child208 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_202 (276, 10) = (output208, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_203 (276, 10) = (output209, (276, 10)) := by
  rw [output209_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child208

theorem node210_conditional
    (child199 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_87 (276, 10) = (output199, (276, 10)))
    (child209 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_203 (276, 10) = (output209, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_204 (276, 10) = (output210, (276, 10)) := by
  rw [output210_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child199 child209

theorem node211_conditional
    (child210 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_204 (276, 10) = (output210, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_205 (276, 10) = (output211, (276, 10)) := by
  rw [output211_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child210

theorem node212_conditional
    (child187 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 10) = (output187, (276, 10)))
    (child211 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_205 (276, 10) = (output211, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_206 (276, 10) = (output212, (276, 10)) := by
  rw [output212_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child187 child211

theorem node213_conditional
    (child212 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_206 (276, 10) = (output212, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_207 (276, 10) = (output213, (276, 10)) := by
  rw [output213_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child212

theorem node214_conditional
    (child197 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_193 (276, 10) = (output197, (276, 10)))
    (child213 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_207 (276, 10) = (output213, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_208 (276, 10) = (output214, (276, 10)) := by
  rw [output214_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child197 child213

theorem node215_conditional
    (child214 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_208 (276, 10) = (output214, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_209 (276, 10) = (output215, (276, 10)) := by
  rw [output215_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child214

theorem node216_conditional
    (child187 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 10) = (output187, (276, 10)))
    (child215 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_209 (276, 10) = (output215, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_210 (276, 10) = (output216, (276, 10)) := by
  rw [output216_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child187 child215

theorem node217_conditional
    (child216 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_210 (276, 10) = (output216, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_211 (276, 10) = (output217, (276, 10)) := by
  rw [output217_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child216

theorem node218_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_174 (276, 10) = (output218, (276, 10)) := by
  rw [output218_def]
  kernel_rfl

theorem node219_conditional
    (child218 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_174 (276, 10) = (output218, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_175 (276, 10) = (output219, (276, 10)) := by
  rw [output219_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child218

theorem node220_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_212 (276, 10) = (output220, (276, 10)) := by
  rw [output220_def]
  kernel_rfl

theorem node221_conditional
    (child220 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_212 (276, 10) = (output220, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_213 (276, 10) = (output221, (276, 10)) := by
  rw [output221_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child220

theorem node222_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_178 (276, 10) = (output222, (276, 10)) := by
  rw [output222_def]
  kernel_rfl

theorem node223_conditional
    (child222 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_178 (276, 10) = (output222, (276, 10))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_179 (276, 10) = (output223, (276, 10)) := by
  rw [output223_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child222

theorem node224_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_182 (276, 10) = (output224, (276, 12)) := by
  rw [output224_def]
  kernel_rfl

theorem node225_conditional
    (child224 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_182 (276, 10) = (output224, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_183 (276, 10) = (output225, (276, 12)) := by
  rw [output225_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child224

theorem node226_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_0 (276, 12) = (output226, (276, 12)) := by
  rw [output226_def]
  kernel_rfl

theorem node227_conditional
    (child226 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_0 (276, 12) = (output226, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 12) = (output227, (276, 12)) := by
  rw [output227_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child226

theorem node228_conditional
    (child225 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_183 (276, 10) = (output225, (276, 12)))
    (child227 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 12) = (output227, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_184 (276, 10) = (output228, (276, 12)) := by
  rw [output228_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child225 child227

theorem node229_conditional
    (child228 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_184 (276, 10) = (output228, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_185 (276, 10) = (output229, (276, 12)) := by
  rw [output229_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child228

theorem node230_conditional
    (child223 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_179 (276, 10) = (output223, (276, 10)))
    (child229 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_185 (276, 10) = (output229, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_186 (276, 10) = (output230, (276, 12)) := by
  rw [output230_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child223 child229

theorem node231_conditional
    (child230 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_186 (276, 10) = (output230, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_187 (276, 10) = (output231, (276, 12)) := by
  rw [output231_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child230

theorem node232_conditional
    (child221 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_213 (276, 10) = (output221, (276, 10)))
    (child231 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_187 (276, 10) = (output231, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_214 (276, 10) = (output232, (276, 12)) := by
  rw [output232_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child221 child231

theorem node233_conditional
    (child232 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_214 (276, 10) = (output232, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_215 (276, 10) = (output233, (276, 12)) := by
  rw [output233_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child232

theorem node234_conditional
    (child219 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_175 (276, 10) = (output219, (276, 10)))
    (child233 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_215 (276, 10) = (output233, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_216 (276, 10) = (output234, (276, 12)) := by
  rw [output234_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child219 child233

theorem node235_conditional
    (child234 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_216 (276, 10) = (output234, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_217 (276, 10) = (output235, (276, 12)) := by
  rw [output235_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child234

theorem node236_conditional
    (child217 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_211 (276, 10) = (output217, (276, 10)))
    (child235 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_217 (276, 10) = (output235, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_218 (276, 10) = (output236, (276, 12)) := by
  rw [output236_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child217 child235

theorem node237_conditional
    (child236 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_218 (276, 10) = (output236, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_219 (276, 10) = (output237, (276, 12)) := by
  rw [output237_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child236

theorem node238_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_220 (276, 12) = (output238, (276, 12)) := by
  rw [output238_def]
  kernel_rfl

theorem node239_conditional
    (child238 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_220 (276, 12) = (output238, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_221 (276, 12) = (output239, (276, 12)) := by
  rw [output239_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child238

theorem node240_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_86 (276, 12) = (output240, (276, 12)) := by
  rw [output240_def]
  kernel_rfl

theorem node241_conditional
    (child240 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_86 (276, 12) = (output240, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_87 (276, 12) = (output241, (276, 12)) := by
  rw [output241_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child240

theorem node242_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_194 (276, 12) = (output242, (276, 12)) := by
  rw [output242_def]
  kernel_rfl

theorem node243_conditional
    (child242 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_194 (276, 12) = (output242, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_195 (276, 12) = (output243, (276, 12)) := by
  rw [output243_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child242

theorem node244_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_196 (276, 12) = (output244, (276, 12)) := by
  rw [output244_def]
  kernel_rfl

theorem node245_conditional
    (child244 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_196 (276, 12) = (output244, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_197 (276, 12) = (output245, (276, 12)) := by
  rw [output245_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child244

theorem node246_conditional
    (child245 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_197 (276, 12) = (output245, (276, 12)))
    (child227 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 12) = (output227, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_198 (276, 12) = (output246, (276, 12)) := by
  rw [output246_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child245 child227

theorem node247_conditional
    (child246 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_198 (276, 12) = (output246, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_199 (276, 12) = (output247, (276, 12)) := by
  rw [output247_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child246

theorem node248_conditional
    (child243 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_195 (276, 12) = (output243, (276, 12)))
    (child247 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_199 (276, 12) = (output247, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_200 (276, 12) = (output248, (276, 12)) := by
  rw [output248_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child243 child247

theorem node249_conditional
    (child248 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_200 (276, 12) = (output248, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_201 (276, 12) = (output249, (276, 12)) := by
  rw [output249_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child248

theorem node250_conditional
    (child249 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_201 (276, 12) = (output249, (276, 12)))
    (child227 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 12) = (output227, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_202 (276, 12) = (output250, (276, 12)) := by
  rw [output250_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child249 child227

theorem node251_conditional
    (child250 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_202 (276, 12) = (output250, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_203 (276, 12) = (output251, (276, 12)) := by
  rw [output251_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child250

theorem node252_conditional
    (child241 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_87 (276, 12) = (output241, (276, 12)))
    (child251 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_203 (276, 12) = (output251, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_204 (276, 12) = (output252, (276, 12)) := by
  rw [output252_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child241 child251

theorem node253_conditional
    (child252 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_204 (276, 12) = (output252, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_205 (276, 12) = (output253, (276, 12)) := by
  rw [output253_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child252

theorem node254_conditional
    (child227 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 12) = (output227, (276, 12)))
    (child253 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_205 (276, 12) = (output253, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_206 (276, 12) = (output254, (276, 12)) := by
  rw [output254_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child227 child253

theorem node255_conditional
    (child254 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_206 (276, 12) = (output254, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_207 (276, 12) = (output255, (276, 12)) := by
  rw [output255_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child254

theorem node256_conditional
    (child239 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_221 (276, 12) = (output239, (276, 12)))
    (child255 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_207 (276, 12) = (output255, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_222 (276, 12) = (output256, (276, 12)) := by
  rw [output256_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child239 child255

theorem node257_conditional
    (child256 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_222 (276, 12) = (output256, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_223 (276, 12) = (output257, (276, 12)) := by
  rw [output257_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child256

theorem node258_conditional
    (child227 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 12) = (output227, (276, 12)))
    (child257 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_223 (276, 12) = (output257, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_224 (276, 12) = (output258, (276, 12)) := by
  rw [output258_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child227 child257

theorem node259_conditional
    (child258 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_224 (276, 12) = (output258, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_225 (276, 12) = (output259, (276, 12)) := by
  rw [output259_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child258

theorem node260_conditional
    (child237 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_219 (276, 10) = (output237, (276, 12)))
    (child259 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_225 (276, 12) = (output259, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_226 (276, 10) = (output260, (276, 12)) := by
  rw [output260_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child237 child259

theorem node261_conditional
    (child260 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_226 (276, 10) = (output260, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_227 (276, 10) = (output261, (276, 12)) := by
  rw [output261_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child260

theorem node262_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_174 (276, 12) = (output262, (276, 12)) := by
  rw [output262_def]
  kernel_rfl

theorem node263_conditional
    (child262 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_174 (276, 12) = (output262, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_175 (276, 12) = (output263, (276, 12)) := by
  rw [output263_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child262

theorem node264_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_228 (276, 12) = (output264, (276, 12)) := by
  rw [output264_def]
  kernel_rfl

theorem node265_conditional
    (child264 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_228 (276, 12) = (output264, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_229 (276, 12) = (output265, (276, 12)) := by
  rw [output265_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child264

theorem node266_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_230 (276, 12) = (output266, (276, 12)) := by
  rw [output266_def]
  kernel_rfl

theorem node267_conditional
    (child266 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_230 (276, 12) = (output266, (276, 12))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_231 (276, 12) = (output267, (276, 12)) := by
  rw [output267_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child266

theorem node268_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_182 (276, 12) = (output268, (276, 14)) := by
  rw [output268_def]
  kernel_rfl

theorem node269_conditional
    (child268 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_182 (276, 12) = (output268, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_183 (276, 12) = (output269, (276, 14)) := by
  rw [output269_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child268

theorem node270_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_0 (276, 14) = (output270, (276, 14)) := by
  rw [output270_def]
  kernel_rfl

theorem node271_conditional
    (child270 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_0 (276, 14) = (output270, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 14) = (output271, (276, 14)) := by
  rw [output271_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child270

theorem node272_conditional
    (child269 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_183 (276, 12) = (output269, (276, 14)))
    (child271 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 14) = (output271, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_184 (276, 12) = (output272, (276, 14)) := by
  rw [output272_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child269 child271

theorem node273_conditional
    (child272 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_184 (276, 12) = (output272, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_185 (276, 12) = (output273, (276, 14)) := by
  rw [output273_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child272

theorem node274_conditional
    (child267 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_231 (276, 12) = (output267, (276, 12)))
    (child273 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_185 (276, 12) = (output273, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_232 (276, 12) = (output274, (276, 14)) := by
  rw [output274_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child267 child273

theorem node275_conditional
    (child274 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_232 (276, 12) = (output274, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_233 (276, 12) = (output275, (276, 14)) := by
  rw [output275_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child274

theorem node276_conditional
    (child265 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_229 (276, 12) = (output265, (276, 12)))
    (child275 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_233 (276, 12) = (output275, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_234 (276, 12) = (output276, (276, 14)) := by
  rw [output276_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child265 child275

theorem node277_conditional
    (child276 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_234 (276, 12) = (output276, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_235 (276, 12) = (output277, (276, 14)) := by
  rw [output277_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child276

theorem node278_conditional
    (child263 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_175 (276, 12) = (output263, (276, 12)))
    (child277 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_235 (276, 12) = (output277, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_236 (276, 12) = (output278, (276, 14)) := by
  rw [output278_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child263 child277

theorem node279_conditional
    (child278 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_236 (276, 12) = (output278, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_237 (276, 12) = (output279, (276, 14)) := by
  rw [output279_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child278

theorem node280_conditional
    (child261 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_227 (276, 10) = (output261, (276, 12)))
    (child279 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_237 (276, 12) = (output279, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_238 (276, 10) = (output280, (276, 14)) := by
  rw [output280_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child261 child279

theorem node281_conditional
    (child280 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_238 (276, 10) = (output280, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_239 (276, 10) = (output281, (276, 14)) := by
  rw [output281_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child280

theorem node282_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_240 (276, 14) = (output282, (276, 14)) := by
  rw [output282_def]
  kernel_rfl

theorem node283_conditional
    (child282 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_240 (276, 14) = (output282, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_241 (276, 14) = (output283, (276, 14)) := by
  rw [output283_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child282

theorem node284_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_86 (276, 14) = (output284, (276, 14)) := by
  rw [output284_def]
  kernel_rfl

theorem node285_conditional
    (child284 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_86 (276, 14) = (output284, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_87 (276, 14) = (output285, (276, 14)) := by
  rw [output285_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child284

theorem node286_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_194 (276, 14) = (output286, (276, 14)) := by
  rw [output286_def]
  kernel_rfl

theorem node287_conditional
    (child286 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_194 (276, 14) = (output286, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_195 (276, 14) = (output287, (276, 14)) := by
  rw [output287_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child286

theorem node288_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_196 (276, 14) = (output288, (276, 14)) := by
  rw [output288_def]
  kernel_rfl

theorem node289_conditional
    (child288 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_196 (276, 14) = (output288, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_197 (276, 14) = (output289, (276, 14)) := by
  rw [output289_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child288

theorem node290_conditional
    (child289 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_197 (276, 14) = (output289, (276, 14)))
    (child271 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 14) = (output271, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_198 (276, 14) = (output290, (276, 14)) := by
  rw [output290_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child289 child271

theorem node291_conditional
    (child290 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_198 (276, 14) = (output290, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_199 (276, 14) = (output291, (276, 14)) := by
  rw [output291_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child290

theorem node292_conditional
    (child287 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_195 (276, 14) = (output287, (276, 14)))
    (child291 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_199 (276, 14) = (output291, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_200 (276, 14) = (output292, (276, 14)) := by
  rw [output292_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child287 child291

theorem node293_conditional
    (child292 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_200 (276, 14) = (output292, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_201 (276, 14) = (output293, (276, 14)) := by
  rw [output293_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child292

theorem node294_conditional
    (child293 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_201 (276, 14) = (output293, (276, 14)))
    (child271 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 14) = (output271, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_202 (276, 14) = (output294, (276, 14)) := by
  rw [output294_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child293 child271

theorem node295_conditional
    (child294 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_202 (276, 14) = (output294, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_203 (276, 14) = (output295, (276, 14)) := by
  rw [output295_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child294

theorem node296_conditional
    (child285 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_87 (276, 14) = (output285, (276, 14)))
    (child295 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_203 (276, 14) = (output295, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_204 (276, 14) = (output296, (276, 14)) := by
  rw [output296_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child285 child295

theorem node297_conditional
    (child296 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_204 (276, 14) = (output296, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_205 (276, 14) = (output297, (276, 14)) := by
  rw [output297_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child296

theorem node298_conditional
    (child271 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 14) = (output271, (276, 14)))
    (child297 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_205 (276, 14) = (output297, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_206 (276, 14) = (output298, (276, 14)) := by
  rw [output298_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child271 child297

theorem node299_conditional
    (child298 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_206 (276, 14) = (output298, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_207 (276, 14) = (output299, (276, 14)) := by
  rw [output299_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child298

theorem node300_conditional
    (child283 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_241 (276, 14) = (output283, (276, 14)))
    (child299 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_207 (276, 14) = (output299, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_242 (276, 14) = (output300, (276, 14)) := by
  rw [output300_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child283 child299

theorem node301_conditional
    (child300 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_242 (276, 14) = (output300, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_243 (276, 14) = (output301, (276, 14)) := by
  rw [output301_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child300

theorem node302_conditional
    (child271 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 14) = (output271, (276, 14)))
    (child301 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_243 (276, 14) = (output301, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_244 (276, 14) = (output302, (276, 14)) := by
  rw [output302_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child271 child301

theorem node303_conditional
    (child302 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_244 (276, 14) = (output302, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_245 (276, 14) = (output303, (276, 14)) := by
  rw [output303_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child302

theorem node304_conditional
    (child281 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_239 (276, 10) = (output281, (276, 14)))
    (child303 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_245 (276, 14) = (output303, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_246 (276, 10) = (output304, (276, 14)) := by
  rw [output304_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child281 child303

theorem node305_conditional
    (child304 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_246 (276, 10) = (output304, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_247 (276, 10) = (output305, (276, 14)) := by
  rw [output305_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child304

theorem node306_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_174 (276, 14) = (output306, (276, 14)) := by
  rw [output306_def]
  kernel_rfl

theorem node307_conditional
    (child306 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_174 (276, 14) = (output306, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_175 (276, 14) = (output307, (276, 14)) := by
  rw [output307_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child306

theorem node308_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_248 (276, 14) = (output308, (276, 14)) := by
  rw [output308_def]
  kernel_rfl

theorem node309_conditional
    (child308 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_248 (276, 14) = (output308, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_249 (276, 14) = (output309, (276, 14)) := by
  rw [output309_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child308

theorem node310_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_178 (276, 14) = (output310, (276, 14)) := by
  rw [output310_def]
  kernel_rfl

theorem node311_conditional
    (child310 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_178 (276, 14) = (output310, (276, 14))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_179 (276, 14) = (output311, (276, 14)) := by
  rw [output311_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child310

theorem node312_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_182 (276, 14) = (output312, (276, 16)) := by
  rw [output312_def]
  kernel_rfl

theorem node313_conditional
    (child312 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_182 (276, 14) = (output312, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_183 (276, 14) = (output313, (276, 16)) := by
  rw [output313_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child312

theorem node314_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_0 (276, 16) = (output314, (276, 16)) := by
  rw [output314_def]
  kernel_rfl

theorem node315_conditional
    (child314 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_0 (276, 16) = (output314, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 16) = (output315, (276, 16)) := by
  rw [output315_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child314

theorem node316_conditional
    (child313 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_183 (276, 14) = (output313, (276, 16)))
    (child315 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 16) = (output315, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_184 (276, 14) = (output316, (276, 16)) := by
  rw [output316_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child313 child315

theorem node317_conditional
    (child316 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_184 (276, 14) = (output316, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_185 (276, 14) = (output317, (276, 16)) := by
  rw [output317_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child316

theorem node318_conditional
    (child311 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_179 (276, 14) = (output311, (276, 14)))
    (child317 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_185 (276, 14) = (output317, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_186 (276, 14) = (output318, (276, 16)) := by
  rw [output318_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child311 child317

theorem node319_conditional
    (child318 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_186 (276, 14) = (output318, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_187 (276, 14) = (output319, (276, 16)) := by
  rw [output319_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child318

theorem node320_conditional
    (child309 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_249 (276, 14) = (output309, (276, 14)))
    (child319 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_187 (276, 14) = (output319, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_250 (276, 14) = (output320, (276, 16)) := by
  rw [output320_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child309 child319

theorem node321_conditional
    (child320 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_250 (276, 14) = (output320, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_251 (276, 14) = (output321, (276, 16)) := by
  rw [output321_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child320

theorem node322_conditional
    (child307 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_175 (276, 14) = (output307, (276, 14)))
    (child321 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_251 (276, 14) = (output321, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_252 (276, 14) = (output322, (276, 16)) := by
  rw [output322_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child307 child321

theorem node323_conditional
    (child322 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_252 (276, 14) = (output322, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_253 (276, 14) = (output323, (276, 16)) := by
  rw [output323_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child322

theorem node324_conditional
    (child305 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_247 (276, 10) = (output305, (276, 14)))
    (child323 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_253 (276, 14) = (output323, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_254 (276, 10) = (output324, (276, 16)) := by
  rw [output324_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child305 child323

theorem node325_conditional
    (child324 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_254 (276, 10) = (output324, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_255 (276, 10) = (output325, (276, 16)) := by
  rw [output325_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child324

theorem node326_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_256 (276, 16) = (output326, (276, 16)) := by
  rw [output326_def]
  kernel_rfl

theorem node327_conditional
    (child326 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_256 (276, 16) = (output326, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_257 (276, 16) = (output327, (276, 16)) := by
  rw [output327_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child326

theorem node328_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_86 (276, 16) = (output328, (276, 16)) := by
  rw [output328_def]
  kernel_rfl

theorem node329_conditional
    (child328 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_86 (276, 16) = (output328, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_87 (276, 16) = (output329, (276, 16)) := by
  rw [output329_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child328

theorem node330_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_194 (276, 16) = (output330, (276, 16)) := by
  rw [output330_def]
  kernel_rfl

theorem node331_conditional
    (child330 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_194 (276, 16) = (output330, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_195 (276, 16) = (output331, (276, 16)) := by
  rw [output331_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child330

theorem node332_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_196 (276, 16) = (output332, (276, 16)) := by
  rw [output332_def]
  kernel_rfl

theorem node333_conditional
    (child332 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_196 (276, 16) = (output332, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_197 (276, 16) = (output333, (276, 16)) := by
  rw [output333_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child332

theorem node334_conditional
    (child333 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_197 (276, 16) = (output333, (276, 16)))
    (child315 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 16) = (output315, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_198 (276, 16) = (output334, (276, 16)) := by
  rw [output334_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child333 child315

theorem node335_conditional
    (child334 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_198 (276, 16) = (output334, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_199 (276, 16) = (output335, (276, 16)) := by
  rw [output335_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child334

theorem node336_conditional
    (child331 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_195 (276, 16) = (output331, (276, 16)))
    (child335 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_199 (276, 16) = (output335, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_200 (276, 16) = (output336, (276, 16)) := by
  rw [output336_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child331 child335

theorem node337_conditional
    (child336 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_200 (276, 16) = (output336, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_201 (276, 16) = (output337, (276, 16)) := by
  rw [output337_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child336

theorem node338_conditional
    (child337 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_201 (276, 16) = (output337, (276, 16)))
    (child315 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 16) = (output315, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_202 (276, 16) = (output338, (276, 16)) := by
  rw [output338_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child337 child315

theorem node339_conditional
    (child338 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_202 (276, 16) = (output338, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_203 (276, 16) = (output339, (276, 16)) := by
  rw [output339_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child338

theorem node340_conditional
    (child329 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_87 (276, 16) = (output329, (276, 16)))
    (child339 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_203 (276, 16) = (output339, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_204 (276, 16) = (output340, (276, 16)) := by
  rw [output340_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child329 child339

theorem node341_conditional
    (child340 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_204 (276, 16) = (output340, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_205 (276, 16) = (output341, (276, 16)) := by
  rw [output341_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child340

theorem node342_conditional
    (child315 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 16) = (output315, (276, 16)))
    (child341 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_205 (276, 16) = (output341, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_206 (276, 16) = (output342, (276, 16)) := by
  rw [output342_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child315 child341

theorem node343_conditional
    (child342 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_206 (276, 16) = (output342, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_207 (276, 16) = (output343, (276, 16)) := by
  rw [output343_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child342

theorem node344_conditional
    (child327 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_257 (276, 16) = (output327, (276, 16)))
    (child343 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_207 (276, 16) = (output343, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_258 (276, 16) = (output344, (276, 16)) := by
  rw [output344_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child327 child343

theorem node345_conditional
    (child344 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_258 (276, 16) = (output344, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_259 (276, 16) = (output345, (276, 16)) := by
  rw [output345_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child344

theorem node346_conditional
    (child315 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 16) = (output315, (276, 16)))
    (child345 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_259 (276, 16) = (output345, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_260 (276, 16) = (output346, (276, 16)) := by
  rw [output346_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child315 child345

theorem node347_conditional
    (child346 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_260 (276, 16) = (output346, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_261 (276, 16) = (output347, (276, 16)) := by
  rw [output347_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child346

theorem node348_conditional
    (child325 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_255 (276, 10) = (output325, (276, 16)))
    (child347 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_261 (276, 16) = (output347, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_262 (276, 10) = (output348, (276, 16)) := by
  rw [output348_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child325 child347

theorem node349_conditional
    (child348 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_262 (276, 10) = (output348, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_263 (276, 10) = (output349, (276, 16)) := by
  rw [output349_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child348

theorem node350_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_174 (276, 16) = (output350, (276, 16)) := by
  rw [output350_def]
  kernel_rfl

theorem node351_conditional
    (child350 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_174 (276, 16) = (output350, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_175 (276, 16) = (output351, (276, 16)) := by
  rw [output351_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child350

theorem node352_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_264 (276, 16) = (output352, (276, 16)) := by
  rw [output352_def]
  kernel_rfl

theorem node353_conditional
    (child352 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_264 (276, 16) = (output352, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_265 (276, 16) = (output353, (276, 16)) := by
  rw [output353_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child352

theorem node354_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_178 (276, 16) = (output354, (276, 16)) := by
  rw [output354_def]
  kernel_rfl

theorem node355_conditional
    (child354 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_178 (276, 16) = (output354, (276, 16))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_179 (276, 16) = (output355, (276, 16)) := by
  rw [output355_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child354

theorem node356_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_182 (276, 16) = (output356, (276, 18)) := by
  rw [output356_def]
  kernel_rfl

theorem node357_conditional
    (child356 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_182 (276, 16) = (output356, (276, 18))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_183 (276, 16) = (output357, (276, 18)) := by
  rw [output357_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child356

theorem node358_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_0 (276, 18) = (output358, (276, 18)) := by
  rw [output358_def]
  kernel_rfl

theorem node359_conditional
    (child358 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_0 (276, 18) = (output358, (276, 18))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 18) = (output359, (276, 18)) := by
  rw [output359_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child358

theorem node360_conditional
    (child357 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_183 (276, 16) = (output357, (276, 18)))
    (child359 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 18) = (output359, (276, 18))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_184 (276, 16) = (output360, (276, 18)) := by
  rw [output360_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child357 child359

theorem node361_conditional
    (child360 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_184 (276, 16) = (output360, (276, 18))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_185 (276, 16) = (output361, (276, 18)) := by
  rw [output361_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child360

theorem node362_conditional
    (child355 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_179 (276, 16) = (output355, (276, 16)))
    (child361 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_185 (276, 16) = (output361, (276, 18))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_186 (276, 16) = (output362, (276, 18)) := by
  rw [output362_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child355 child361

theorem node363_conditional
    (child362 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_186 (276, 16) = (output362, (276, 18))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_187 (276, 16) = (output363, (276, 18)) := by
  rw [output363_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child362

theorem node364_conditional
    (child353 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_265 (276, 16) = (output353, (276, 16)))
    (child363 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_187 (276, 16) = (output363, (276, 18))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_266 (276, 16) = (output364, (276, 18)) := by
  rw [output364_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child353 child363

theorem node365_conditional
    (child364 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_266 (276, 16) = (output364, (276, 18))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_267 (276, 16) = (output365, (276, 18)) := by
  rw [output365_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child364

theorem node366_conditional
    (child351 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_175 (276, 16) = (output351, (276, 16)))
    (child365 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_267 (276, 16) = (output365, (276, 18))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_268 (276, 16) = (output366, (276, 18)) := by
  rw [output366_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child351 child365

theorem node367_conditional
    (child366 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_268 (276, 16) = (output366, (276, 18))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_269 (276, 16) = (output367, (276, 18)) := by
  rw [output367_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child366

theorem node368_conditional
    (child349 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_263 (276, 10) = (output349, (276, 16)))
    (child367 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_269 (276, 16) = (output367, (276, 18))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_270 (276, 10) = (output368, (276, 18)) := by
  rw [output368_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child349 child367

theorem node369_conditional
    (child368 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_270 (276, 10) = (output368, (276, 18))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_271 (276, 10) = (output369, (276, 18)) := by
  rw [output369_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child368

theorem node370_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_272 (276, 18) = (output370, (276, 18)) := by
  rw [output370_def]
  kernel_rfl

theorem node371_conditional
    (child370 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_272 (276, 18) = (output370, (276, 18))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_273 (276, 18) = (output371, (276, 18)) := by
  rw [output371_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child370

theorem node372_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_86 (276, 18) = (output372, (276, 18)) := by
  rw [output372_def]
  kernel_rfl

theorem node373_conditional
    (child372 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_86 (276, 18) = (output372, (276, 18))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_87 (276, 18) = (output373, (276, 18)) := by
  rw [output373_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child372

theorem node374_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_194 (276, 18) = (output374, (276, 18)) := by
  rw [output374_def]
  kernel_rfl

theorem node375_conditional
    (child374 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_194 (276, 18) = (output374, (276, 18))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_195 (276, 18) = (output375, (276, 18)) := by
  rw [output375_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child374

theorem node376_conditional : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_196 (276, 18) = (output376, (276, 18)) := by
  rw [output376_def]
  kernel_rfl

theorem node377_conditional
    (child376 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_196 (276, 18) = (output376, (276, 18))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_197 (276, 18) = (output377, (276, 18)) := by
  rw [output377_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child376

theorem node378_conditional
    (child377 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_197 (276, 18) = (output377, (276, 18)))
    (child359 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 18) = (output359, (276, 18))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_198 (276, 18) = (output378, (276, 18)) := by
  rw [output378_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child377 child359

theorem node379_conditional
    (child378 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_198 (276, 18) = (output378, (276, 18))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_199 (276, 18) = (output379, (276, 18)) := by
  rw [output379_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child378

theorem node380_conditional
    (child375 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_195 (276, 18) = (output375, (276, 18)))
    (child379 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_199 (276, 18) = (output379, (276, 18))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_200 (276, 18) = (output380, (276, 18)) := by
  rw [output380_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child375 child379

theorem node381_conditional
    (child380 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_200 (276, 18) = (output380, (276, 18))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_201 (276, 18) = (output381, (276, 18)) := by
  rw [output381_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child380

theorem node382_conditional
    (child381 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_201 (276, 18) = (output381, (276, 18)))
    (child359 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_1 (276, 18) = (output359, (276, 18))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_202 (276, 18) = (output382, (276, 18)) := by
  rw [output382_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child381 child359

theorem node383_conditional
    (child382 : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_202 (276, 18) = (output382, (276, 18))) : Flapjack.LoopToWord.compHOL Word.context212
    Loop.loopBody212_203 (276, 18) = (output383, (276, 18)) := by
  rw [output383_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child382

#print axioms node383_conditional
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints212
