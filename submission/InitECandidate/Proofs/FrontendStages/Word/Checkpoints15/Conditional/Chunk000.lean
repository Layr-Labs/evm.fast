import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints15.Data.Chunk000
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints15
theorem node0_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_0 (79, 2) = (output0, (79, 2)) := by
  rw [output0_def]
  kernel_rfl

theorem node1_conditional
    (child0 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_0 (79, 2) = (output0, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2)) := by
  rw [output1_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child0

theorem node2_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_2 (79, 2) = (output2, (79, 2)) := by
  rw [output2_def]
  kernel_rfl

theorem node3_conditional
    (child2 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_2 (79, 2) = (output2, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_3 (79, 2) = (output3, (79, 2)) := by
  rw [output3_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child2

theorem node4_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_4 (79, 2) = (output4, (79, 2)) := by
  rw [output4_def]
  kernel_rfl

theorem node5_conditional
    (child4 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_4 (79, 2) = (output4, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_5 (79, 2) = (output5, (79, 2)) := by
  rw [output5_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child4

theorem node6_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_6 (79, 2) = (output6, (79, 2)) := by
  rw [output6_def]
  kernel_rfl

theorem node7_conditional
    (child6 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_6 (79, 2) = (output6, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_7 (79, 2) = (output7, (79, 2)) := by
  rw [output7_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child6

theorem node8_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_8 (79, 2) = (output8, (79, 2)) := by
  rw [output8_def]
  kernel_rfl

theorem node9_conditional
    (child8 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_8 (79, 2) = (output8, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_9 (79, 2) = (output9, (79, 2)) := by
  rw [output9_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child8

theorem node10_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_10 (79, 2) = (output10, (79, 2)) := by
  rw [output10_def]
  kernel_rfl

theorem node11_conditional
    (child10 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_10 (79, 2) = (output10, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_11 (79, 2) = (output11, (79, 2)) := by
  rw [output11_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child10

theorem node12_conditional
    (child9 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_9 (79, 2) = (output9, (79, 2)))
    (child11 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_11 (79, 2) = (output11, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_12 (79, 2) = (output12, (79, 2)) := by
  rw [output12_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child9 child11

theorem node13_conditional
    (child12 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_12 (79, 2) = (output12, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_13 (79, 2) = (output13, (79, 2)) := by
  rw [output13_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child12

theorem node14_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_14 (79, 2) = (output14, (79, 2)) := by
  rw [output14_def]
  kernel_rfl

theorem node15_conditional
    (child14 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_14 (79, 2) = (output14, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_15 (79, 2) = (output15, (79, 2)) := by
  rw [output15_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child14

theorem node16_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_16 (79, 2) = (output16, (79, 2)) := by
  rw [output16_def]
  kernel_rfl

theorem node17_conditional
    (child16 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_16 (79, 2) = (output16, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_17 (79, 2) = (output17, (79, 2)) := by
  rw [output17_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child16

theorem node18_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_18 (79, 2) = (output18, (79, 2)) := by
  rw [output18_def]
  kernel_rfl

theorem node19_conditional
    (child18 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_18 (79, 2) = (output18, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_19 (79, 2) = (output19, (79, 2)) := by
  rw [output19_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child18

theorem node20_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_20 (79, 2) = (output20, (79, 2)) := by
  rw [output20_def]
  kernel_rfl

theorem node21_conditional
    (child20 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_20 (79, 2) = (output20, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_21 (79, 2) = (output21, (79, 2)) := by
  rw [output21_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child20

theorem node22_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_22 (79, 2) = (output22, (79, 2)) := by
  rw [output22_def]
  kernel_rfl

theorem node23_conditional
    (child22 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_22 (79, 2) = (output22, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_23 (79, 2) = (output23, (79, 2)) := by
  rw [output23_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child22

theorem node24_conditional
    (child9 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_9 (79, 2) = (output9, (79, 2)))
    (child11 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_11 (79, 2) = (output11, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_24 (79, 2) = (output24, (79, 2)) := by
  rw [output24_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child9 child11

theorem node25_conditional
    (child24 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_24 (79, 2) = (output24, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_25 (79, 2) = (output25, (79, 2)) := by
  rw [output25_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child24

theorem node26_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_26 (79, 2) = (output26, (79, 2)) := by
  rw [output26_def]
  kernel_rfl

theorem node27_conditional
    (child26 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_26 (79, 2) = (output26, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_27 (79, 2) = (output27, (79, 2)) := by
  rw [output27_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child26

theorem node28_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_28 (79, 2) = (output28, (79, 2)) := by
  rw [output28_def]
  kernel_rfl

theorem node29_conditional
    (child28 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_28 (79, 2) = (output28, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_29 (79, 2) = (output29, (79, 2)) := by
  rw [output29_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child28

theorem node30_conditional
    (child29 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_29 (79, 2) = (output29, (79, 2)))
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_30 (79, 2) = (output30, (79, 2)) := by
  rw [output30_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child29 child1

theorem node31_conditional
    (child30 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_30 (79, 2) = (output30, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_31 (79, 2) = (output31, (79, 2)) := by
  rw [output31_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child30

theorem node32_conditional
    (child27 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_27 (79, 2) = (output27, (79, 2)))
    (child31 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_31 (79, 2) = (output31, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_32 (79, 2) = (output32, (79, 2)) := by
  rw [output32_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child27 child31

theorem node33_conditional
    (child32 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_32 (79, 2) = (output32, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_33 (79, 2) = (output33, (79, 2)) := by
  rw [output33_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child32

theorem node34_conditional
    (child33 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_33 (79, 2) = (output33, (79, 2)))
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_34 (79, 2) = (output34, (79, 2)) := by
  rw [output34_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child33 child1

theorem node35_conditional
    (child34 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_34 (79, 2) = (output34, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_35 (79, 2) = (output35, (79, 2)) := by
  rw [output35_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child34

theorem node36_conditional
    (child35 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_35 (79, 2) = (output35, (79, 2)))
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_36 (79, 2) = (output36, (79, 2)) := by
  rw [output36_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child35 child1

theorem node37_conditional
    (child36 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_36 (79, 2) = (output36, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_37 (79, 2) = (output37, (79, 2)) := by
  rw [output37_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child36

theorem node38_conditional
    (child15 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_15 (79, 2) = (output15, (79, 2)))
    (child37 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_37 (79, 2) = (output37, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_38 (79, 2) = (output38, (79, 2)) := by
  rw [output38_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child15 child37

theorem node39_conditional
    (child38 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_38 (79, 2) = (output38, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_39 (79, 2) = (output39, (79, 2)) := by
  rw [output39_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child38

theorem node40_conditional
    (child25 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_25 (79, 2) = (output25, (79, 2)))
    (child39 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_39 (79, 2) = (output39, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_40 (79, 2) = (output40, (79, 2)) := by
  rw [output40_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child25 child39

theorem node41_conditional
    (child40 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_40 (79, 2) = (output40, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_41 (79, 2) = (output41, (79, 2)) := by
  rw [output41_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child40

theorem node42_conditional
    (child23 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_23 (79, 2) = (output23, (79, 2)))
    (child41 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_41 (79, 2) = (output41, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_42 (79, 2) = (output42, (79, 2)) := by
  rw [output42_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child23 child41

theorem node43_conditional
    (child42 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_42 (79, 2) = (output42, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_43 (79, 2) = (output43, (79, 2)) := by
  rw [output43_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child42

theorem node44_conditional
    (child21 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_21 (79, 2) = (output21, (79, 2)))
    (child43 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_43 (79, 2) = (output43, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_44 (79, 2) = (output44, (79, 2)) := by
  rw [output44_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child21 child43

theorem node45_conditional
    (child44 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_44 (79, 2) = (output44, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_45 (79, 2) = (output45, (79, 2)) := by
  rw [output45_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child44

theorem node46_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_46 (79, 2) = (output46, (79, 2)) := by
  rw [output46_def]
  kernel_rfl

theorem node47_conditional
    (child46 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_46 (79, 2) = (output46, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_47 (79, 2) = (output47, (79, 2)) := by
  rw [output47_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child46

theorem node48_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_48 (79, 2) = (output48, (79, 2)) := by
  rw [output48_def]
  kernel_rfl

theorem node49_conditional
    (child48 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_48 (79, 2) = (output48, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_49 (79, 2) = (output49, (79, 2)) := by
  rw [output49_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child48

theorem node50_conditional
    (child49 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_49 (79, 2) = (output49, (79, 2)))
    (child41 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_41 (79, 2) = (output41, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_50 (79, 2) = (output50, (79, 2)) := by
  rw [output50_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child49 child41

theorem node51_conditional
    (child50 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_50 (79, 2) = (output50, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_51 (79, 2) = (output51, (79, 2)) := by
  rw [output51_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child50

theorem node52_conditional
    (child47 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_47 (79, 2) = (output47, (79, 2)))
    (child51 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_51 (79, 2) = (output51, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_52 (79, 2) = (output52, (79, 2)) := by
  rw [output52_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child47 child51

theorem node53_conditional
    (child52 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_52 (79, 2) = (output52, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_53 (79, 2) = (output53, (79, 2)) := by
  rw [output53_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child52

theorem node54_conditional
    (child45 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_45 (79, 2) = (output45, (79, 2)))
    (child53 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_53 (79, 2) = (output53, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_54 (79, 2) = (output54, (79, 2)) := by
  rw [output54_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child45 child53

theorem node55_conditional
    (child54 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_54 (79, 2) = (output54, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_55 (79, 2) = (output55, (79, 2)) := by
  rw [output55_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child54

theorem node56_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_56 (79, 2) = (output56, (79, 2)) := by
  rw [output56_def]
  kernel_rfl

theorem node57_conditional
    (child56 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_56 (79, 2) = (output56, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_57 (79, 2) = (output57, (79, 2)) := by
  rw [output57_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child56

theorem node58_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_58 (79, 2) = (output58, (79, 2)) := by
  rw [output58_def]
  kernel_rfl

theorem node59_conditional
    (child58 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_58 (79, 2) = (output58, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_59 (79, 2) = (output59, (79, 2)) := by
  rw [output59_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child58

theorem node60_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_60 (79, 2) = (output60, (79, 2)) := by
  rw [output60_def]
  kernel_rfl

theorem node61_conditional
    (child60 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_60 (79, 2) = (output60, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_61 (79, 2) = (output61, (79, 2)) := by
  rw [output61_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child60

theorem node62_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_62 (79, 2) = (output62, (79, 2)) := by
  rw [output62_def]
  kernel_rfl

theorem node63_conditional
    (child62 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_62 (79, 2) = (output62, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_63 (79, 2) = (output63, (79, 2)) := by
  rw [output63_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child62

theorem node64_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_64 (79, 2) = (output64, (79, 2)) := by
  rw [output64_def]
  kernel_rfl

theorem node65_conditional
    (child64 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_64 (79, 2) = (output64, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_65 (79, 2) = (output65, (79, 2)) := by
  rw [output65_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child64

theorem node66_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_66 (79, 2) = (output66, (79, 2)) := by
  rw [output66_def]
  kernel_rfl

theorem node67_conditional
    (child66 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_66 (79, 2) = (output66, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_67 (79, 2) = (output67, (79, 2)) := by
  rw [output67_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child66

theorem node68_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_68 (79, 2) = (output68, (79, 2)) := by
  rw [output68_def]
  kernel_rfl

theorem node69_conditional
    (child68 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_68 (79, 2) = (output68, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_69 (79, 2) = (output69, (79, 2)) := by
  rw [output69_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child68

theorem node70_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_70 (79, 2) = (output70, (79, 2)) := by
  rw [output70_def]
  kernel_rfl

theorem node71_conditional
    (child70 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_70 (79, 2) = (output70, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_71 (79, 2) = (output71, (79, 2)) := by
  rw [output71_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child70

theorem node72_conditional
    (child69 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_69 (79, 2) = (output69, (79, 2)))
    (child71 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_71 (79, 2) = (output71, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_72 (79, 2) = (output72, (79, 2)) := by
  rw [output72_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child69 child71

theorem node73_conditional
    (child72 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_72 (79, 2) = (output72, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_73 (79, 2) = (output73, (79, 2)) := by
  rw [output73_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child72

theorem node74_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_74 (79, 2) = (output74, (79, 2)) := by
  rw [output74_def]
  kernel_rfl

theorem node75_conditional
    (child74 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_74 (79, 2) = (output74, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_75 (79, 2) = (output75, (79, 2)) := by
  rw [output75_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child74

theorem node76_conditional
    (child33 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_33 (79, 2) = (output33, (79, 2)))
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_76 (79, 2) = (output76, (79, 2)) := by
  rw [output76_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child33 child1

theorem node77_conditional
    (child76 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_76 (79, 2) = (output76, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_77 (79, 2) = (output77, (79, 2)) := by
  rw [output77_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child76

theorem node78_conditional
    (child77 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_77 (79, 2) = (output77, (79, 2)))
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_78 (79, 2) = (output78, (79, 2)) := by
  rw [output78_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child77 child1

theorem node79_conditional
    (child78 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_78 (79, 2) = (output78, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_79 (79, 2) = (output79, (79, 2)) := by
  rw [output79_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child78

theorem node80_conditional
    (child75 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_75 (79, 2) = (output75, (79, 2)))
    (child79 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_79 (79, 2) = (output79, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_80 (79, 2) = (output80, (79, 2)) := by
  rw [output80_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child75 child79

theorem node81_conditional
    (child80 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_80 (79, 2) = (output80, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_81 (79, 2) = (output81, (79, 2)) := by
  rw [output81_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child80

theorem node82_conditional
    (child73 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_73 (79, 2) = (output73, (79, 2)))
    (child81 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_81 (79, 2) = (output81, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_82 (79, 2) = (output82, (79, 2)) := by
  rw [output82_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child73 child81

theorem node83_conditional
    (child82 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_82 (79, 2) = (output82, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_83 (79, 2) = (output83, (79, 2)) := by
  rw [output83_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child82

theorem node84_conditional
    (child67 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_67 (79, 2) = (output67, (79, 2)))
    (child83 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_83 (79, 2) = (output83, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_84 (79, 2) = (output84, (79, 2)) := by
  rw [output84_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child67 child83

theorem node85_conditional
    (child84 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_84 (79, 2) = (output84, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_85 (79, 2) = (output85, (79, 2)) := by
  rw [output85_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child84

theorem node86_conditional
    (child65 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_65 (79, 2) = (output65, (79, 2)))
    (child85 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_85 (79, 2) = (output85, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_86 (79, 2) = (output86, (79, 2)) := by
  rw [output86_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child65 child85

theorem node87_conditional
    (child86 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_86 (79, 2) = (output86, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_87 (79, 2) = (output87, (79, 2)) := by
  rw [output87_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child86

theorem node88_conditional
    (child63 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_63 (79, 2) = (output63, (79, 2)))
    (child87 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_87 (79, 2) = (output87, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_88 (79, 2) = (output88, (79, 2)) := by
  rw [output88_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child63 child87

theorem node89_conditional
    (child88 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_88 (79, 2) = (output88, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_89 (79, 2) = (output89, (79, 2)) := by
  rw [output89_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child88

theorem node90_conditional
    (child61 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_61 (79, 2) = (output61, (79, 2)))
    (child89 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_89 (79, 2) = (output89, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_90 (79, 2) = (output90, (79, 2)) := by
  rw [output90_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child61 child89

theorem node91_conditional
    (child90 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_90 (79, 2) = (output90, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_91 (79, 2) = (output91, (79, 2)) := by
  rw [output91_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child90

theorem node92_conditional
    (child59 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_59 (79, 2) = (output59, (79, 2)))
    (child91 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_91 (79, 2) = (output91, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_92 (79, 2) = (output92, (79, 2)) := by
  rw [output92_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child59 child91

theorem node93_conditional
    (child92 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_92 (79, 2) = (output92, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_93 (79, 2) = (output93, (79, 2)) := by
  rw [output93_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child92

theorem node94_conditional
    (child57 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_57 (79, 2) = (output57, (79, 2)))
    (child93 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_93 (79, 2) = (output93, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_94 (79, 2) = (output94, (79, 2)) := by
  rw [output94_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child57 child93

theorem node95_conditional
    (child94 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_94 (79, 2) = (output94, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_95 (79, 2) = (output95, (79, 2)) := by
  rw [output95_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child94

theorem node96_conditional
    (child55 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_55 (79, 2) = (output55, (79, 2)))
    (child95 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_95 (79, 2) = (output95, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_96 (79, 2) = (output96, (79, 2)) := by
  rw [output96_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child55 child95

theorem node97_conditional
    (child96 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_96 (79, 2) = (output96, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_97 (79, 2) = (output97, (79, 2)) := by
  rw [output97_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child96

theorem node98_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_98 (79, 2) = (output98, (79, 2)) := by
  rw [output98_def]
  kernel_rfl

theorem node99_conditional
    (child98 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_98 (79, 2) = (output98, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_99 (79, 2) = (output99, (79, 2)) := by
  rw [output99_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child98

theorem node100_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_100 (79, 2) = (output100, (79, 2)) := by
  rw [output100_def]
  kernel_rfl

theorem node101_conditional
    (child100 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_100 (79, 2) = (output100, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_101 (79, 2) = (output101, (79, 2)) := by
  rw [output101_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child100

theorem node102_conditional
    (child101 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_101 (79, 2) = (output101, (79, 2)))
    (child89 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_89 (79, 2) = (output89, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_102 (79, 2) = (output102, (79, 2)) := by
  rw [output102_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child101 child89

theorem node103_conditional
    (child102 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_102 (79, 2) = (output102, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_103 (79, 2) = (output103, (79, 2)) := by
  rw [output103_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child102

theorem node104_conditional
    (child59 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_59 (79, 2) = (output59, (79, 2)))
    (child103 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_103 (79, 2) = (output103, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_104 (79, 2) = (output104, (79, 2)) := by
  rw [output104_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child59 child103

theorem node105_conditional
    (child104 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_104 (79, 2) = (output104, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_105 (79, 2) = (output105, (79, 2)) := by
  rw [output105_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child104

theorem node106_conditional
    (child99 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_99 (79, 2) = (output99, (79, 2)))
    (child105 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_105 (79, 2) = (output105, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_106 (79, 2) = (output106, (79, 2)) := by
  rw [output106_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child99 child105

theorem node107_conditional
    (child106 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_106 (79, 2) = (output106, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_107 (79, 2) = (output107, (79, 2)) := by
  rw [output107_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child106

theorem node108_conditional
    (child97 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_97 (79, 2) = (output97, (79, 2)))
    (child107 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_107 (79, 2) = (output107, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_108 (79, 2) = (output108, (79, 2)) := by
  rw [output108_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child97 child107

theorem node109_conditional
    (child108 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_108 (79, 2) = (output108, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_109 (79, 2) = (output109, (79, 2)) := by
  rw [output109_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child108

theorem node110_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_110 (79, 2) = (output110, (79, 2)) := by
  rw [output110_def]
  kernel_rfl

theorem node111_conditional
    (child110 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_110 (79, 2) = (output110, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_111 (79, 2) = (output111, (79, 2)) := by
  rw [output111_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child110

theorem node112_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_112 (79, 2) = (output112, (79, 2)) := by
  rw [output112_def]
  kernel_rfl

theorem node113_conditional
    (child112 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_112 (79, 2) = (output112, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_113 (79, 2) = (output113, (79, 2)) := by
  rw [output113_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child112

theorem node114_conditional
    (child113 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_113 (79, 2) = (output113, (79, 2)))
    (child89 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_89 (79, 2) = (output89, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_114 (79, 2) = (output114, (79, 2)) := by
  rw [output114_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child113 child89

theorem node115_conditional
    (child114 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_114 (79, 2) = (output114, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_115 (79, 2) = (output115, (79, 2)) := by
  rw [output115_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child114

theorem node116_conditional
    (child59 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_59 (79, 2) = (output59, (79, 2)))
    (child115 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_115 (79, 2) = (output115, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_116 (79, 2) = (output116, (79, 2)) := by
  rw [output116_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child59 child115

theorem node117_conditional
    (child116 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_116 (79, 2) = (output116, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_117 (79, 2) = (output117, (79, 2)) := by
  rw [output117_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child116

theorem node118_conditional
    (child111 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_111 (79, 2) = (output111, (79, 2)))
    (child117 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_117 (79, 2) = (output117, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_118 (79, 2) = (output118, (79, 2)) := by
  rw [output118_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child111 child117

theorem node119_conditional
    (child118 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_118 (79, 2) = (output118, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_119 (79, 2) = (output119, (79, 2)) := by
  rw [output119_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child118

theorem node120_conditional
    (child109 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_109 (79, 2) = (output109, (79, 2)))
    (child119 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_119 (79, 2) = (output119, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_120 (79, 2) = (output120, (79, 2)) := by
  rw [output120_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child109 child119

theorem node121_conditional
    (child120 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_120 (79, 2) = (output120, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_121 (79, 2) = (output121, (79, 2)) := by
  rw [output121_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child120

theorem node122_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_122 (79, 2) = (output122, (79, 2)) := by
  rw [output122_def]
  kernel_rfl

theorem node123_conditional
    (child122 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_122 (79, 2) = (output122, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_123 (79, 2) = (output123, (79, 2)) := by
  rw [output123_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child122

theorem node124_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_124 (79, 2) = (output124, (79, 2)) := by
  rw [output124_def]
  kernel_rfl

theorem node125_conditional
    (child124 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_124 (79, 2) = (output124, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_125 (79, 2) = (output125, (79, 2)) := by
  rw [output125_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child124

theorem node126_conditional
    (child69 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_69 (79, 2) = (output69, (79, 2)))
    (child71 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_71 (79, 2) = (output71, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_126 (79, 2) = (output126, (79, 2)) := by
  rw [output126_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child69 child71

theorem node127_conditional
    (child126 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_126 (79, 2) = (output126, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_127 (79, 2) = (output127, (79, 2)) := by
  rw [output127_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child126

theorem node128_conditional
    (child33 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_33 (79, 2) = (output33, (79, 2)))
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_128 (79, 2) = (output128, (79, 2)) := by
  rw [output128_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child33 child1

theorem node129_conditional
    (child128 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_128 (79, 2) = (output128, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_129 (79, 2) = (output129, (79, 2)) := by
  rw [output129_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child128

theorem node130_conditional
    (child129 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_129 (79, 2) = (output129, (79, 2)))
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_130 (79, 2) = (output130, (79, 2)) := by
  rw [output130_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child129 child1

theorem node131_conditional
    (child130 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_130 (79, 2) = (output130, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_131 (79, 2) = (output131, (79, 2)) := by
  rw [output131_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child130

theorem node132_conditional
    (child75 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_75 (79, 2) = (output75, (79, 2)))
    (child131 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_131 (79, 2) = (output131, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_132 (79, 2) = (output132, (79, 2)) := by
  rw [output132_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child75 child131

theorem node133_conditional
    (child132 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_132 (79, 2) = (output132, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_133 (79, 2) = (output133, (79, 2)) := by
  rw [output133_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child132

theorem node134_conditional
    (child127 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_127 (79, 2) = (output127, (79, 2)))
    (child133 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_133 (79, 2) = (output133, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_134 (79, 2) = (output134, (79, 2)) := by
  rw [output134_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child127 child133

theorem node135_conditional
    (child134 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_134 (79, 2) = (output134, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_135 (79, 2) = (output135, (79, 2)) := by
  rw [output135_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child134

theorem node136_conditional
    (child67 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_67 (79, 2) = (output67, (79, 2)))
    (child135 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_135 (79, 2) = (output135, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_136 (79, 2) = (output136, (79, 2)) := by
  rw [output136_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child67 child135

theorem node137_conditional
    (child136 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_136 (79, 2) = (output136, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_137 (79, 2) = (output137, (79, 2)) := by
  rw [output137_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child136

theorem node138_conditional
    (child65 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_65 (79, 2) = (output65, (79, 2)))
    (child137 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_137 (79, 2) = (output137, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_138 (79, 2) = (output138, (79, 2)) := by
  rw [output138_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child65 child137

theorem node139_conditional
    (child138 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_138 (79, 2) = (output138, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_139 (79, 2) = (output139, (79, 2)) := by
  rw [output139_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child138

theorem node140_conditional
    (child63 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_63 (79, 2) = (output63, (79, 2)))
    (child139 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_139 (79, 2) = (output139, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_140 (79, 2) = (output140, (79, 2)) := by
  rw [output140_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child63 child139

theorem node141_conditional
    (child140 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_140 (79, 2) = (output140, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_141 (79, 2) = (output141, (79, 2)) := by
  rw [output141_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child140

theorem node142_conditional
    (child125 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_125 (79, 2) = (output125, (79, 2)))
    (child141 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_141 (79, 2) = (output141, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_142 (79, 2) = (output142, (79, 2)) := by
  rw [output142_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child125 child141

theorem node143_conditional
    (child142 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_142 (79, 2) = (output142, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_143 (79, 2) = (output143, (79, 2)) := by
  rw [output143_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child142

theorem node144_conditional
    (child59 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_59 (79, 2) = (output59, (79, 2)))
    (child143 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_143 (79, 2) = (output143, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_144 (79, 2) = (output144, (79, 2)) := by
  rw [output144_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child59 child143

theorem node145_conditional
    (child144 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_144 (79, 2) = (output144, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_145 (79, 2) = (output145, (79, 2)) := by
  rw [output145_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child144

theorem node146_conditional
    (child123 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_123 (79, 2) = (output123, (79, 2)))
    (child145 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_145 (79, 2) = (output145, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_146 (79, 2) = (output146, (79, 2)) := by
  rw [output146_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child123 child145

theorem node147_conditional
    (child146 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_146 (79, 2) = (output146, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_147 (79, 2) = (output147, (79, 2)) := by
  rw [output147_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child146

theorem node148_conditional
    (child121 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_121 (79, 2) = (output121, (79, 2)))
    (child147 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_147 (79, 2) = (output147, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_148 (79, 2) = (output148, (79, 2)) := by
  rw [output148_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child121 child147

theorem node149_conditional
    (child148 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_148 (79, 2) = (output148, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_149 (79, 2) = (output149, (79, 2)) := by
  rw [output149_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child148

theorem node150_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_150 (79, 2) = (output150, (79, 2)) := by
  rw [output150_def]
  kernel_rfl

theorem node151_conditional
    (child150 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_150 (79, 2) = (output150, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_151 (79, 2) = (output151, (79, 2)) := by
  rw [output151_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child150

theorem node152_conditional
    (child151 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_151 (79, 2) = (output151, (79, 2)))
    (child31 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_31 (79, 2) = (output31, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_152 (79, 2) = (output152, (79, 2)) := by
  rw [output152_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child151 child31

theorem node153_conditional
    (child152 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_152 (79, 2) = (output152, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_153 (79, 2) = (output153, (79, 2)) := by
  rw [output153_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child152

theorem node154_conditional
    (child149 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_149 (79, 2) = (output149, (79, 2)))
    (child153 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_153 (79, 2) = (output153, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_154 (79, 2) = (output154, (79, 2)) := by
  rw [output154_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child149 child153

theorem node155_conditional
    (child154 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_154 (79, 2) = (output154, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_155 (79, 2) = (output155, (79, 2)) := by
  rw [output155_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child154

theorem node156_conditional
    (child155 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_155 (79, 2) = (output155, (79, 2)))
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_156 (79, 2) = (output156, (79, 2)) := by
  rw [output156_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child155 child1

theorem node157_conditional
    (child156 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_156 (79, 2) = (output156, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_157 (79, 2) = (output157, (79, 2)) := by
  rw [output157_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child156

theorem node158_conditional
    (child157 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_157 (79, 2) = (output157, (79, 2)))
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_158 (79, 2) = (output158, (79, 2)) := by
  rw [output158_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child157 child1

theorem node159_conditional
    (child158 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_158 (79, 2) = (output158, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_159 (79, 2) = (output159, (79, 2)) := by
  rw [output159_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child158

theorem node160_conditional
    (child15 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_15 (79, 2) = (output15, (79, 2)))
    (child159 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_159 (79, 2) = (output159, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_160 (79, 2) = (output160, (79, 2)) := by
  rw [output160_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child15 child159

theorem node161_conditional
    (child160 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_160 (79, 2) = (output160, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_161 (79, 2) = (output161, (79, 2)) := by
  rw [output161_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child160

theorem node162_conditional
    (child13 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_13 (79, 2) = (output13, (79, 2)))
    (child161 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_161 (79, 2) = (output161, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_162 (79, 2) = (output162, (79, 2)) := by
  rw [output162_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child13 child161

theorem node163_conditional
    (child162 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_162 (79, 2) = (output162, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_163 (79, 2) = (output163, (79, 2)) := by
  rw [output163_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child162

theorem node164_conditional
    (child19 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_19 (79, 2) = (output19, (79, 2)))
    (child163 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_163 (79, 2) = (output163, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_164 (79, 2) = (output164, (79, 2)) := by
  rw [output164_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child19 child163

theorem node165_conditional
    (child164 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_164 (79, 2) = (output164, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_165 (79, 2) = (output165, (79, 2)) := by
  rw [output165_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child164

theorem node166_conditional
    (child17 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_17 (79, 2) = (output17, (79, 2)))
    (child165 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_165 (79, 2) = (output165, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_166 (79, 2) = (output166, (79, 2)) := by
  rw [output166_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child17 child165

theorem node167_conditional
    (child166 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_166 (79, 2) = (output166, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_167 (79, 2) = (output167, (79, 2)) := by
  rw [output167_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child166

theorem node168_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_168 (79, 2) = (output168, (79, 2)) := by
  rw [output168_def]
  kernel_rfl

theorem node169_conditional
    (child168 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_168 (79, 2) = (output168, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_169 (79, 2) = (output169, (79, 2)) := by
  rw [output169_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child168

theorem node170_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_170 (79, 2) = (output170, (79, 2)) := by
  rw [output170_def]
  kernel_rfl

theorem node171_conditional
    (child170 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_170 (79, 2) = (output170, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_171 (79, 2) = (output171, (79, 2)) := by
  rw [output171_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child170

theorem node172_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_172 (79, 2) = (output172, (79, 2)) := by
  rw [output172_def]
  kernel_rfl

theorem node173_conditional
    (child172 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_172 (79, 2) = (output172, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_173 (79, 2) = (output173, (79, 2)) := by
  rw [output173_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child172

theorem node174_conditional
    (child173 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_173 (79, 2) = (output173, (79, 2)))
    (child41 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_41 (79, 2) = (output41, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_174 (79, 2) = (output174, (79, 2)) := by
  rw [output174_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child173 child41

theorem node175_conditional
    (child174 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_174 (79, 2) = (output174, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_175 (79, 2) = (output175, (79, 2)) := by
  rw [output175_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child174

theorem node176_conditional
    (child171 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_171 (79, 2) = (output171, (79, 2)))
    (child175 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_175 (79, 2) = (output175, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_176 (79, 2) = (output176, (79, 2)) := by
  rw [output176_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child171 child175

theorem node177_conditional
    (child176 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_176 (79, 2) = (output176, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_177 (79, 2) = (output177, (79, 2)) := by
  rw [output177_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child176

theorem node178_conditional
    (child55 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_55 (79, 2) = (output55, (79, 2)))
    (child177 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_177 (79, 2) = (output177, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_178 (79, 2) = (output178, (79, 2)) := by
  rw [output178_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child55 child177

theorem node179_conditional
    (child178 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_178 (79, 2) = (output178, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_179 (79, 2) = (output179, (79, 2)) := by
  rw [output179_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child178

theorem node180_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_180 (79, 2) = (output180, (79, 2)) := by
  rw [output180_def]
  kernel_rfl

theorem node181_conditional
    (child180 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_180 (79, 2) = (output180, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_181 (79, 2) = (output181, (79, 2)) := by
  rw [output181_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child180

theorem node182_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_182 (79, 2) = (output182, (79, 2)) := by
  rw [output182_def]
  kernel_rfl

theorem node183_conditional
    (child182 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_182 (79, 2) = (output182, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_183 (79, 2) = (output183, (79, 2)) := by
  rw [output183_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child182

theorem node184_conditional
    (child9 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_9 (79, 2) = (output9, (79, 2)))
    (child11 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_11 (79, 2) = (output11, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_184 (79, 2) = (output184, (79, 2)) := by
  rw [output184_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child9 child11

theorem node185_conditional
    (child184 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_184 (79, 2) = (output184, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_185 (79, 2) = (output185, (79, 2)) := by
  rw [output185_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child184

theorem node186_conditional
    (child33 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_33 (79, 2) = (output33, (79, 2)))
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_186 (79, 2) = (output186, (79, 2)) := by
  rw [output186_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child33 child1

theorem node187_conditional
    (child186 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_186 (79, 2) = (output186, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_187 (79, 2) = (output187, (79, 2)) := by
  rw [output187_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child186

theorem node188_conditional
    (child187 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_187 (79, 2) = (output187, (79, 2)))
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_188 (79, 2) = (output188, (79, 2)) := by
  rw [output188_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child187 child1

theorem node189_conditional
    (child188 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_188 (79, 2) = (output188, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_189 (79, 2) = (output189, (79, 2)) := by
  rw [output189_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child188

theorem node190_conditional
    (child15 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_15 (79, 2) = (output15, (79, 2)))
    (child189 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_189 (79, 2) = (output189, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_190 (79, 2) = (output190, (79, 2)) := by
  rw [output190_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child15 child189

theorem node191_conditional
    (child190 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_190 (79, 2) = (output190, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_191 (79, 2) = (output191, (79, 2)) := by
  rw [output191_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child190

theorem node192_conditional
    (child185 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_185 (79, 2) = (output185, (79, 2)))
    (child191 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_191 (79, 2) = (output191, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_192 (79, 2) = (output192, (79, 2)) := by
  rw [output192_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child185 child191

theorem node193_conditional
    (child192 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_192 (79, 2) = (output192, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_193 (79, 2) = (output193, (79, 2)) := by
  rw [output193_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child192

theorem node194_conditional
    (child183 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_183 (79, 2) = (output183, (79, 2)))
    (child193 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_193 (79, 2) = (output193, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_194 (79, 2) = (output194, (79, 2)) := by
  rw [output194_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child183 child193

theorem node195_conditional
    (child194 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_194 (79, 2) = (output194, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_195 (79, 2) = (output195, (79, 2)) := by
  rw [output195_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child194

theorem node196_conditional
    (child181 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_181 (79, 2) = (output181, (79, 2)))
    (child195 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_195 (79, 2) = (output195, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_196 (79, 2) = (output196, (79, 2)) := by
  rw [output196_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child181 child195

theorem node197_conditional
    (child196 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_196 (79, 2) = (output196, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_197 (79, 2) = (output197, (79, 2)) := by
  rw [output197_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child196

theorem node198_conditional
    (child179 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_179 (79, 2) = (output179, (79, 2)))
    (child197 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_197 (79, 2) = (output197, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_198 (79, 2) = (output198, (79, 2)) := by
  rw [output198_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child179 child197

theorem node199_conditional
    (child198 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_198 (79, 2) = (output198, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_199 (79, 2) = (output199, (79, 2)) := by
  rw [output199_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child198

theorem node200_conditional
    (child199 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_199 (79, 2) = (output199, (79, 2)))
    (child153 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_153 (79, 2) = (output153, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_200 (79, 2) = (output200, (79, 2)) := by
  rw [output200_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child199 child153

theorem node201_conditional
    (child200 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_200 (79, 2) = (output200, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_201 (79, 2) = (output201, (79, 2)) := by
  rw [output201_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child200

theorem node202_conditional
    (child201 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_201 (79, 2) = (output201, (79, 2)))
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_202 (79, 2) = (output202, (79, 2)) := by
  rw [output202_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child201 child1

theorem node203_conditional
    (child202 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_202 (79, 2) = (output202, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_203 (79, 2) = (output203, (79, 2)) := by
  rw [output203_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child202

theorem node204_conditional
    (child203 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_203 (79, 2) = (output203, (79, 2)))
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_204 (79, 2) = (output204, (79, 2)) := by
  rw [output204_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child203 child1

theorem node205_conditional
    (child204 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_204 (79, 2) = (output204, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_205 (79, 2) = (output205, (79, 2)) := by
  rw [output205_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child204

theorem node206_conditional
    (child15 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_15 (79, 2) = (output15, (79, 2)))
    (child205 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_205 (79, 2) = (output205, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_206 (79, 2) = (output206, (79, 2)) := by
  rw [output206_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child15 child205

theorem node207_conditional
    (child206 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_206 (79, 2) = (output206, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_207 (79, 2) = (output207, (79, 2)) := by
  rw [output207_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child206

theorem node208_conditional
    (child13 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_13 (79, 2) = (output13, (79, 2)))
    (child207 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_207 (79, 2) = (output207, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_208 (79, 2) = (output208, (79, 2)) := by
  rw [output208_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child13 child207

theorem node209_conditional
    (child208 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_208 (79, 2) = (output208, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_209 (79, 2) = (output209, (79, 2)) := by
  rw [output209_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child208

theorem node210_conditional
    (child169 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_169 (79, 2) = (output169, (79, 2)))
    (child209 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_209 (79, 2) = (output209, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_210 (79, 2) = (output210, (79, 2)) := by
  rw [output210_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child169 child209

theorem node211_conditional
    (child210 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_210 (79, 2) = (output210, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_211 (79, 2) = (output211, (79, 2)) := by
  rw [output211_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child210

theorem node212_conditional
    (child17 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_17 (79, 2) = (output17, (79, 2)))
    (child211 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_211 (79, 2) = (output211, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_212 (79, 2) = (output212, (79, 2)) := by
  rw [output212_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child17 child211

theorem node213_conditional
    (child212 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_212 (79, 2) = (output212, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_213 (79, 2) = (output213, (79, 2)) := by
  rw [output213_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child212

theorem node214_conditional
    (child167 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_167 (79, 2) = (output167, (79, 2)))
    (child213 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_213 (79, 2) = (output213, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_214 (79, 2) = (output214, (79, 2)) := by
  rw [output214_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child167 child213

theorem node215_conditional
    (child214 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_214 (79, 2) = (output214, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_215 (79, 2) = (output215, (79, 2)) := by
  rw [output215_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child214

theorem node216_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_216 (79, 2) = (output216, (79, 2)) := by
  rw [output216_def]
  kernel_rfl

theorem node217_conditional
    (child216 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_216 (79, 2) = (output216, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_217 (79, 2) = (output217, (79, 2)) := by
  rw [output217_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child216

theorem node218_conditional
    (child183 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_183 (79, 2) = (output183, (79, 2)))
    (child41 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_41 (79, 2) = (output41, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_218 (79, 2) = (output218, (79, 2)) := by
  rw [output218_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child183 child41

theorem node219_conditional
    (child218 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_218 (79, 2) = (output218, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_219 (79, 2) = (output219, (79, 2)) := by
  rw [output219_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child218

theorem node220_conditional
    (child181 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_181 (79, 2) = (output181, (79, 2)))
    (child219 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_219 (79, 2) = (output219, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_220 (79, 2) = (output220, (79, 2)) := by
  rw [output220_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child181 child219

theorem node221_conditional
    (child220 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_220 (79, 2) = (output220, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_221 (79, 2) = (output221, (79, 2)) := by
  rw [output221_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child220

theorem node222_conditional
    (child179 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_179 (79, 2) = (output179, (79, 2)))
    (child221 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_221 (79, 2) = (output221, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_222 (79, 2) = (output222, (79, 2)) := by
  rw [output222_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child179 child221

theorem node223_conditional
    (child222 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_222 (79, 2) = (output222, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_223 (79, 2) = (output223, (79, 2)) := by
  rw [output223_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child222

theorem node224_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_224 (79, 2) = (output224, (79, 2)) := by
  rw [output224_def]
  kernel_rfl

theorem node225_conditional
    (child224 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_224 (79, 2) = (output224, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_225 (79, 2) = (output225, (79, 2)) := by
  rw [output225_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child224

theorem node226_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_226 (79, 2) = (output226, (79, 2)) := by
  rw [output226_def]
  kernel_rfl

theorem node227_conditional
    (child226 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_226 (79, 2) = (output226, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_227 (79, 2) = (output227, (79, 2)) := by
  rw [output227_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child226

theorem node228_conditional
    (child227 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_227 (79, 2) = (output227, (79, 2)))
    (child41 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_41 (79, 2) = (output41, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_228 (79, 2) = (output228, (79, 2)) := by
  rw [output228_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child227 child41

theorem node229_conditional
    (child228 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_228 (79, 2) = (output228, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_229 (79, 2) = (output229, (79, 2)) := by
  rw [output229_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child228

theorem node230_conditional
    (child225 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_225 (79, 2) = (output225, (79, 2)))
    (child229 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_229 (79, 2) = (output229, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_230 (79, 2) = (output230, (79, 2)) := by
  rw [output230_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child225 child229

theorem node231_conditional
    (child230 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_230 (79, 2) = (output230, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_231 (79, 2) = (output231, (79, 2)) := by
  rw [output231_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child230

theorem node232_conditional
    (child223 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_223 (79, 2) = (output223, (79, 2)))
    (child231 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_231 (79, 2) = (output231, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_232 (79, 2) = (output232, (79, 2)) := by
  rw [output232_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child223 child231

theorem node233_conditional
    (child232 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_232 (79, 2) = (output232, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_233 (79, 2) = (output233, (79, 2)) := by
  rw [output233_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child232

theorem node234_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_234 (79, 2) = (output234, (79, 2)) := by
  rw [output234_def]
  kernel_rfl

theorem node235_conditional
    (child234 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_234 (79, 2) = (output234, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_235 (79, 2) = (output235, (79, 2)) := by
  rw [output235_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child234

theorem node236_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_236 (79, 2) = (output236, (79, 2)) := by
  rw [output236_def]
  kernel_rfl

theorem node237_conditional
    (child236 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_236 (79, 2) = (output236, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_237 (79, 2) = (output237, (79, 2)) := by
  rw [output237_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child236

theorem node238_conditional
    (child237 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_237 (79, 2) = (output237, (79, 2)))
    (child41 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_41 (79, 2) = (output41, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_238 (79, 2) = (output238, (79, 2)) := by
  rw [output238_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child237 child41

theorem node239_conditional
    (child238 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_238 (79, 2) = (output238, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_239 (79, 2) = (output239, (79, 2)) := by
  rw [output239_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child238

theorem node240_conditional
    (child235 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_235 (79, 2) = (output235, (79, 2)))
    (child239 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_239 (79, 2) = (output239, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_240 (79, 2) = (output240, (79, 2)) := by
  rw [output240_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child235 child239

theorem node241_conditional
    (child240 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_240 (79, 2) = (output240, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_241 (79, 2) = (output241, (79, 2)) := by
  rw [output241_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child240

theorem node242_conditional
    (child233 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_233 (79, 2) = (output233, (79, 2)))
    (child241 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_241 (79, 2) = (output241, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_242 (79, 2) = (output242, (79, 2)) := by
  rw [output242_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child233 child241

theorem node243_conditional
    (child242 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_242 (79, 2) = (output242, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_243 (79, 2) = (output243, (79, 2)) := by
  rw [output243_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child242

theorem node244_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_244 (79, 2) = (output244, (79, 2)) := by
  rw [output244_def]
  kernel_rfl

theorem node245_conditional
    (child244 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_244 (79, 2) = (output244, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_245 (79, 2) = (output245, (79, 2)) := by
  rw [output245_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child244

theorem node246_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_246 (79, 2) = (output246, (79, 2)) := by
  rw [output246_def]
  kernel_rfl

theorem node247_conditional
    (child246 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_246 (79, 2) = (output246, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_247 (79, 2) = (output247, (79, 2)) := by
  rw [output247_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child246

theorem node248_conditional
    (child247 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_247 (79, 2) = (output247, (79, 2)))
    (child89 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_89 (79, 2) = (output89, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_248 (79, 2) = (output248, (79, 2)) := by
  rw [output248_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child247 child89

theorem node249_conditional
    (child248 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_248 (79, 2) = (output248, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_249 (79, 2) = (output249, (79, 2)) := by
  rw [output249_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child248

theorem node250_conditional
    (child59 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_59 (79, 2) = (output59, (79, 2)))
    (child249 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_249 (79, 2) = (output249, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_250 (79, 2) = (output250, (79, 2)) := by
  rw [output250_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child59 child249

theorem node251_conditional
    (child250 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_250 (79, 2) = (output250, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_251 (79, 2) = (output251, (79, 2)) := by
  rw [output251_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child250

theorem node252_conditional
    (child245 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_245 (79, 2) = (output245, (79, 2)))
    (child251 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_251 (79, 2) = (output251, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_252 (79, 2) = (output252, (79, 2)) := by
  rw [output252_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child245 child251

theorem node253_conditional
    (child252 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_252 (79, 2) = (output252, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_253 (79, 2) = (output253, (79, 2)) := by
  rw [output253_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child252

theorem node254_conditional
    (child243 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_243 (79, 2) = (output243, (79, 2)))
    (child253 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_253 (79, 2) = (output253, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_254 (79, 2) = (output254, (79, 2)) := by
  rw [output254_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child243 child253

theorem node255_conditional
    (child254 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_254 (79, 2) = (output254, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_255 (79, 2) = (output255, (79, 2)) := by
  rw [output255_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child254

theorem node256_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_256 (79, 2) = (output256, (79, 2)) := by
  rw [output256_def]
  kernel_rfl

theorem node257_conditional
    (child256 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_256 (79, 2) = (output256, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_257 (79, 2) = (output257, (79, 2)) := by
  rw [output257_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child256

theorem node258_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_258 (79, 2) = (output258, (79, 2)) := by
  rw [output258_def]
  kernel_rfl

theorem node259_conditional
    (child258 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_258 (79, 2) = (output258, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_259 (79, 2) = (output259, (79, 2)) := by
  rw [output259_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child258

theorem node260_conditional
    (child259 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_259 (79, 2) = (output259, (79, 2)))
    (child89 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_89 (79, 2) = (output89, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_260 (79, 2) = (output260, (79, 2)) := by
  rw [output260_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child259 child89

theorem node261_conditional
    (child260 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_260 (79, 2) = (output260, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_261 (79, 2) = (output261, (79, 2)) := by
  rw [output261_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child260

theorem node262_conditional
    (child59 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_59 (79, 2) = (output59, (79, 2)))
    (child261 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_261 (79, 2) = (output261, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_262 (79, 2) = (output262, (79, 2)) := by
  rw [output262_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child59 child261

theorem node263_conditional
    (child262 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_262 (79, 2) = (output262, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_263 (79, 2) = (output263, (79, 2)) := by
  rw [output263_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child262

theorem node264_conditional
    (child257 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_257 (79, 2) = (output257, (79, 2)))
    (child263 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_263 (79, 2) = (output263, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_264 (79, 2) = (output264, (79, 2)) := by
  rw [output264_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child257 child263

theorem node265_conditional
    (child264 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_264 (79, 2) = (output264, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_265 (79, 2) = (output265, (79, 2)) := by
  rw [output265_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child264

theorem node266_conditional
    (child255 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_255 (79, 2) = (output255, (79, 2)))
    (child265 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_265 (79, 2) = (output265, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_266 (79, 2) = (output266, (79, 2)) := by
  rw [output266_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child255 child265

theorem node267_conditional
    (child266 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_266 (79, 2) = (output266, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_267 (79, 2) = (output267, (79, 2)) := by
  rw [output267_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child266

theorem node268_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_268 (79, 2) = (output268, (79, 2)) := by
  rw [output268_def]
  kernel_rfl

theorem node269_conditional
    (child268 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_268 (79, 2) = (output268, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_269 (79, 2) = (output269, (79, 2)) := by
  rw [output269_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child268

theorem node270_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_270 (79, 2) = (output270, (79, 2)) := by
  rw [output270_def]
  kernel_rfl

theorem node271_conditional
    (child270 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_270 (79, 2) = (output270, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_271 (79, 2) = (output271, (79, 2)) := by
  rw [output271_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child270

theorem node272_conditional
    (child271 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_271 (79, 2) = (output271, (79, 2)))
    (child89 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_89 (79, 2) = (output89, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_272 (79, 2) = (output272, (79, 2)) := by
  rw [output272_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child271 child89

theorem node273_conditional
    (child272 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_272 (79, 2) = (output272, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_273 (79, 2) = (output273, (79, 2)) := by
  rw [output273_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child272

theorem node274_conditional
    (child59 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_59 (79, 2) = (output59, (79, 2)))
    (child273 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_273 (79, 2) = (output273, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_274 (79, 2) = (output274, (79, 2)) := by
  rw [output274_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child59 child273

theorem node275_conditional
    (child274 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_274 (79, 2) = (output274, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_275 (79, 2) = (output275, (79, 2)) := by
  rw [output275_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child274

theorem node276_conditional
    (child269 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_269 (79, 2) = (output269, (79, 2)))
    (child275 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_275 (79, 2) = (output275, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_276 (79, 2) = (output276, (79, 2)) := by
  rw [output276_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child269 child275

theorem node277_conditional
    (child276 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_276 (79, 2) = (output276, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_277 (79, 2) = (output277, (79, 2)) := by
  rw [output277_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child276

theorem node278_conditional
    (child267 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_267 (79, 2) = (output267, (79, 2)))
    (child277 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_277 (79, 2) = (output277, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_278 (79, 2) = (output278, (79, 2)) := by
  rw [output278_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child267 child277

theorem node279_conditional
    (child278 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_278 (79, 2) = (output278, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_279 (79, 2) = (output279, (79, 2)) := by
  rw [output279_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child278

theorem node280_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_280 (79, 2) = (output280, (79, 2)) := by
  rw [output280_def]
  kernel_rfl

theorem node281_conditional
    (child280 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_280 (79, 2) = (output280, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_281 (79, 2) = (output281, (79, 2)) := by
  rw [output281_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child280

theorem node282_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_282 (79, 2) = (output282, (79, 2)) := by
  rw [output282_def]
  kernel_rfl

theorem node283_conditional
    (child282 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_282 (79, 2) = (output282, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_283 (79, 2) = (output283, (79, 2)) := by
  rw [output283_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child282

theorem node284_conditional
    (child283 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_283 (79, 2) = (output283, (79, 2)))
    (child141 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_141 (79, 2) = (output141, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_284 (79, 2) = (output284, (79, 2)) := by
  rw [output284_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child283 child141

theorem node285_conditional
    (child284 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_284 (79, 2) = (output284, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_285 (79, 2) = (output285, (79, 2)) := by
  rw [output285_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child284

theorem node286_conditional
    (child59 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_59 (79, 2) = (output59, (79, 2)))
    (child285 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_285 (79, 2) = (output285, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_286 (79, 2) = (output286, (79, 2)) := by
  rw [output286_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child59 child285

theorem node287_conditional
    (child286 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_286 (79, 2) = (output286, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_287 (79, 2) = (output287, (79, 2)) := by
  rw [output287_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child286

theorem node288_conditional
    (child281 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_281 (79, 2) = (output281, (79, 2)))
    (child287 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_287 (79, 2) = (output287, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_288 (79, 2) = (output288, (79, 2)) := by
  rw [output288_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child281 child287

theorem node289_conditional
    (child288 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_288 (79, 2) = (output288, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_289 (79, 2) = (output289, (79, 2)) := by
  rw [output289_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child288

theorem node290_conditional
    (child279 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_279 (79, 2) = (output279, (79, 2)))
    (child289 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_289 (79, 2) = (output289, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_290 (79, 2) = (output290, (79, 2)) := by
  rw [output290_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child279 child289

theorem node291_conditional
    (child290 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_290 (79, 2) = (output290, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_291 (79, 2) = (output291, (79, 2)) := by
  rw [output291_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child290

theorem node292_conditional
    (child291 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_291 (79, 2) = (output291, (79, 2)))
    (child153 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_153 (79, 2) = (output153, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_292 (79, 2) = (output292, (79, 2)) := by
  rw [output292_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child291 child153

theorem node293_conditional
    (child292 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_292 (79, 2) = (output292, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_293 (79, 2) = (output293, (79, 2)) := by
  rw [output293_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child292

theorem node294_conditional
    (child293 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_293 (79, 2) = (output293, (79, 2)))
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_294 (79, 2) = (output294, (79, 2)) := by
  rw [output294_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child293 child1

theorem node295_conditional
    (child294 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_294 (79, 2) = (output294, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_295 (79, 2) = (output295, (79, 2)) := by
  rw [output295_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child294

theorem node296_conditional
    (child295 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_295 (79, 2) = (output295, (79, 2)))
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_296 (79, 2) = (output296, (79, 2)) := by
  rw [output296_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child295 child1

theorem node297_conditional
    (child296 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_296 (79, 2) = (output296, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_297 (79, 2) = (output297, (79, 2)) := by
  rw [output297_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child296

theorem node298_conditional
    (child15 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_15 (79, 2) = (output15, (79, 2)))
    (child297 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_297 (79, 2) = (output297, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_298 (79, 2) = (output298, (79, 2)) := by
  rw [output298_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child15 child297

theorem node299_conditional
    (child298 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_298 (79, 2) = (output298, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_299 (79, 2) = (output299, (79, 2)) := by
  rw [output299_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child298

theorem node300_conditional
    (child13 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_13 (79, 2) = (output13, (79, 2)))
    (child299 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_299 (79, 2) = (output299, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_300 (79, 2) = (output300, (79, 2)) := by
  rw [output300_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child13 child299

theorem node301_conditional
    (child300 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_300 (79, 2) = (output300, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_301 (79, 2) = (output301, (79, 2)) := by
  rw [output301_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child300

theorem node302_conditional
    (child217 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_217 (79, 2) = (output217, (79, 2)))
    (child301 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_301 (79, 2) = (output301, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_302 (79, 2) = (output302, (79, 2)) := by
  rw [output302_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child217 child301

theorem node303_conditional
    (child302 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_302 (79, 2) = (output302, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_303 (79, 2) = (output303, (79, 2)) := by
  rw [output303_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child302

theorem node304_conditional
    (child17 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_17 (79, 2) = (output17, (79, 2)))
    (child303 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_303 (79, 2) = (output303, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_304 (79, 2) = (output304, (79, 2)) := by
  rw [output304_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child17 child303

theorem node305_conditional
    (child304 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_304 (79, 2) = (output304, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_305 (79, 2) = (output305, (79, 2)) := by
  rw [output305_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child304

theorem node306_conditional
    (child215 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_215 (79, 2) = (output215, (79, 2)))
    (child305 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_305 (79, 2) = (output305, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_306 (79, 2) = (output306, (79, 2)) := by
  rw [output306_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child215 child305

theorem node307_conditional
    (child306 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_306 (79, 2) = (output306, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_307 (79, 2) = (output307, (79, 2)) := by
  rw [output307_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child306

theorem node308_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_308 (79, 2) = (output308, (79, 2)) := by
  rw [output308_def]
  kernel_rfl

theorem node309_conditional
    (child308 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_308 (79, 2) = (output308, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_309 (79, 2) = (output309, (79, 2)) := by
  rw [output309_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child308

theorem node310_conditional
    (child9 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_9 (79, 2) = (output9, (79, 2)))
    (child11 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_11 (79, 2) = (output11, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_310 (79, 2) = (output310, (79, 2)) := by
  rw [output310_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child9 child11

theorem node311_conditional
    (child310 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_310 (79, 2) = (output310, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_311 (79, 2) = (output311, (79, 2)) := by
  rw [output311_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child310

theorem node312_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_312 (79, 2) = (output312, (79, 2)) := by
  rw [output312_def]
  kernel_rfl

theorem node313_conditional
    (child312 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_312 (79, 2) = (output312, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_313 (79, 2) = (output313, (79, 2)) := by
  rw [output313_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child312

theorem node314_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_314 (79, 2) = (output314, (79, 2)) := by
  rw [output314_def]
  kernel_rfl

theorem node315_conditional
    (child314 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_314 (79, 2) = (output314, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_315 (79, 2) = (output315, (79, 2)) := by
  rw [output315_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child314

theorem node316_conditional
    (child9 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_9 (79, 2) = (output9, (79, 2)))
    (child11 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_11 (79, 2) = (output11, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_316 (79, 2) = (output316, (79, 2)) := by
  rw [output316_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child9 child11

theorem node317_conditional
    (child316 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_316 (79, 2) = (output316, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_317 (79, 2) = (output317, (79, 2)) := by
  rw [output317_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child316

theorem node318_conditional
    (child33 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_33 (79, 2) = (output33, (79, 2)))
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_318 (79, 2) = (output318, (79, 2)) := by
  rw [output318_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child33 child1

theorem node319_conditional
    (child318 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_318 (79, 2) = (output318, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_319 (79, 2) = (output319, (79, 2)) := by
  rw [output319_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child318

theorem node320_conditional
    (child319 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_319 (79, 2) = (output319, (79, 2)))
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_320 (79, 2) = (output320, (79, 2)) := by
  rw [output320_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child319 child1

theorem node321_conditional
    (child320 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_320 (79, 2) = (output320, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_321 (79, 2) = (output321, (79, 2)) := by
  rw [output321_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child320

theorem node322_conditional
    (child15 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_15 (79, 2) = (output15, (79, 2)))
    (child321 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_321 (79, 2) = (output321, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_322 (79, 2) = (output322, (79, 2)) := by
  rw [output322_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child15 child321

theorem node323_conditional
    (child322 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_322 (79, 2) = (output322, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_323 (79, 2) = (output323, (79, 2)) := by
  rw [output323_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child322

theorem node324_conditional
    (child317 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_317 (79, 2) = (output317, (79, 2)))
    (child323 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_323 (79, 2) = (output323, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_324 (79, 2) = (output324, (79, 2)) := by
  rw [output324_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child317 child323

theorem node325_conditional
    (child324 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_324 (79, 2) = (output324, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_325 (79, 2) = (output325, (79, 2)) := by
  rw [output325_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child324

theorem node326_conditional
    (child315 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_315 (79, 2) = (output315, (79, 2)))
    (child325 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_325 (79, 2) = (output325, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_326 (79, 2) = (output326, (79, 2)) := by
  rw [output326_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child315 child325

theorem node327_conditional
    (child326 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_326 (79, 2) = (output326, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_327 (79, 2) = (output327, (79, 2)) := by
  rw [output327_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child326

theorem node328_conditional
    (child313 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_313 (79, 2) = (output313, (79, 2)))
    (child327 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_327 (79, 2) = (output327, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_328 (79, 2) = (output328, (79, 2)) := by
  rw [output328_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child313 child327

theorem node329_conditional
    (child328 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_328 (79, 2) = (output328, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_329 (79, 2) = (output329, (79, 2)) := by
  rw [output329_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child328

theorem node330_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_330 (79, 2) = (output330, (79, 2)) := by
  rw [output330_def]
  kernel_rfl

theorem node331_conditional
    (child330 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_330 (79, 2) = (output330, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_331 (79, 2) = (output331, (79, 2)) := by
  rw [output331_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child330

theorem node332_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_332 (79, 2) = (output332, (79, 2)) := by
  rw [output332_def]
  kernel_rfl

theorem node333_conditional
    (child332 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_332 (79, 2) = (output332, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_333 (79, 2) = (output333, (79, 2)) := by
  rw [output333_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child332

theorem node334_conditional
    (child333 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_333 (79, 2) = (output333, (79, 2)))
    (child325 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_325 (79, 2) = (output325, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_334 (79, 2) = (output334, (79, 2)) := by
  rw [output334_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child333 child325

theorem node335_conditional
    (child334 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_334 (79, 2) = (output334, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_335 (79, 2) = (output335, (79, 2)) := by
  rw [output335_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child334

theorem node336_conditional
    (child331 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_331 (79, 2) = (output331, (79, 2)))
    (child335 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_335 (79, 2) = (output335, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_336 (79, 2) = (output336, (79, 2)) := by
  rw [output336_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child331 child335

theorem node337_conditional
    (child336 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_336 (79, 2) = (output336, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_337 (79, 2) = (output337, (79, 2)) := by
  rw [output337_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child336

theorem node338_conditional
    (child329 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_329 (79, 2) = (output329, (79, 2)))
    (child337 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_337 (79, 2) = (output337, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_338 (79, 2) = (output338, (79, 2)) := by
  rw [output338_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child329 child337

theorem node339_conditional
    (child338 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_338 (79, 2) = (output338, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_339 (79, 2) = (output339, (79, 2)) := by
  rw [output339_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child338

theorem node340_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_340 (79, 2) = (output340, (79, 2)) := by
  rw [output340_def]
  kernel_rfl

theorem node341_conditional
    (child340 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_340 (79, 2) = (output340, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_341 (79, 2) = (output341, (79, 2)) := by
  rw [output341_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child340

theorem node342_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_342 (79, 2) = (output342, (79, 2)) := by
  rw [output342_def]
  kernel_rfl

theorem node343_conditional
    (child342 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_342 (79, 2) = (output342, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_343 (79, 2) = (output343, (79, 2)) := by
  rw [output343_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child342

theorem node344_conditional
    (child343 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_343 (79, 2) = (output343, (79, 2)))
    (child325 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_325 (79, 2) = (output325, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_344 (79, 2) = (output344, (79, 2)) := by
  rw [output344_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child343 child325

theorem node345_conditional
    (child344 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_344 (79, 2) = (output344, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_345 (79, 2) = (output345, (79, 2)) := by
  rw [output345_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child344

theorem node346_conditional
    (child341 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_341 (79, 2) = (output341, (79, 2)))
    (child345 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_345 (79, 2) = (output345, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_346 (79, 2) = (output346, (79, 2)) := by
  rw [output346_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child341 child345

theorem node347_conditional
    (child346 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_346 (79, 2) = (output346, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_347 (79, 2) = (output347, (79, 2)) := by
  rw [output347_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child346

theorem node348_conditional
    (child339 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_339 (79, 2) = (output339, (79, 2)))
    (child347 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_347 (79, 2) = (output347, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_348 (79, 2) = (output348, (79, 2)) := by
  rw [output348_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child339 child347

theorem node349_conditional
    (child348 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_348 (79, 2) = (output348, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_349 (79, 2) = (output349, (79, 2)) := by
  rw [output349_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child348

theorem node350_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_350 (79, 2) = (output350, (79, 2)) := by
  rw [output350_def]
  kernel_rfl

theorem node351_conditional
    (child350 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_350 (79, 2) = (output350, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_351 (79, 2) = (output351, (79, 2)) := by
  rw [output351_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child350

theorem node352_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_352 (79, 2) = (output352, (79, 2)) := by
  rw [output352_def]
  kernel_rfl

theorem node353_conditional
    (child352 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_352 (79, 2) = (output352, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_353 (79, 2) = (output353, (79, 2)) := by
  rw [output353_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child352

theorem node354_conditional
    (child353 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_353 (79, 2) = (output353, (79, 2)))
    (child325 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_325 (79, 2) = (output325, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_354 (79, 2) = (output354, (79, 2)) := by
  rw [output354_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child353 child325

theorem node355_conditional
    (child354 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_354 (79, 2) = (output354, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_355 (79, 2) = (output355, (79, 2)) := by
  rw [output355_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child354

theorem node356_conditional
    (child351 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_351 (79, 2) = (output351, (79, 2)))
    (child355 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_355 (79, 2) = (output355, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_356 (79, 2) = (output356, (79, 2)) := by
  rw [output356_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child351 child355

theorem node357_conditional
    (child356 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_356 (79, 2) = (output356, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_357 (79, 2) = (output357, (79, 2)) := by
  rw [output357_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child356

theorem node358_conditional
    (child349 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_349 (79, 2) = (output349, (79, 2)))
    (child357 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_357 (79, 2) = (output357, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_358 (79, 2) = (output358, (79, 2)) := by
  rw [output358_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child349 child357

theorem node359_conditional
    (child358 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_358 (79, 2) = (output358, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_359 (79, 2) = (output359, (79, 2)) := by
  rw [output359_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child358

theorem node360_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_360 (79, 2) = (output360, (79, 2)) := by
  rw [output360_def]
  kernel_rfl

theorem node361_conditional
    (child360 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_360 (79, 2) = (output360, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_361 (79, 2) = (output361, (79, 2)) := by
  rw [output361_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child360

theorem node362_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_362 (79, 2) = (output362, (79, 2)) := by
  rw [output362_def]
  kernel_rfl

theorem node363_conditional
    (child362 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_362 (79, 2) = (output362, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_363 (79, 2) = (output363, (79, 2)) := by
  rw [output363_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child362

theorem node364_conditional
    (child363 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_363 (79, 2) = (output363, (79, 2)))
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_364 (79, 2) = (output364, (79, 2)) := by
  rw [output364_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child363 child1

theorem node365_conditional
    (child364 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_364 (79, 2) = (output364, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_365 (79, 2) = (output365, (79, 2)) := by
  rw [output365_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child364

theorem node366_conditional
    (child365 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_365 (79, 2) = (output365, (79, 2)))
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_366 (79, 2) = (output366, (79, 2)) := by
  rw [output366_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child365 child1

theorem node367_conditional
    (child366 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_366 (79, 2) = (output366, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_367 (79, 2) = (output367, (79, 2)) := by
  rw [output367_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child366

theorem node368_conditional
    (child361 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_361 (79, 2) = (output361, (79, 2)))
    (child367 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_367 (79, 2) = (output367, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_368 (79, 2) = (output368, (79, 2)) := by
  rw [output368_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child361 child367

theorem node369_conditional
    (child368 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_368 (79, 2) = (output368, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_369 (79, 2) = (output369, (79, 2)) := by
  rw [output369_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child368

theorem node370_conditional
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2)))
    (child369 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_369 (79, 2) = (output369, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_370 (79, 2) = (output370, (79, 2)) := by
  rw [output370_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child1 child369

theorem node371_conditional
    (child370 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_370 (79, 2) = (output370, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_371 (79, 2) = (output371, (79, 2)) := by
  rw [output371_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child370

theorem node372_conditional
    (child359 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_359 (79, 2) = (output359, (79, 2)))
    (child371 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_371 (79, 2) = (output371, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_372 (79, 2) = (output372, (79, 2)) := by
  rw [output372_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child359 child371

theorem node373_conditional
    (child372 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_372 (79, 2) = (output372, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_373 (79, 2) = (output373, (79, 2)) := by
  rw [output373_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child372

theorem node374_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_374 (79, 2) = (output374, (79, 2)) := by
  rw [output374_def]
  kernel_rfl

theorem node375_conditional
    (child374 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_374 (79, 2) = (output374, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_375 (79, 2) = (output375, (79, 2)) := by
  rw [output375_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child374

theorem node376_conditional
    (child373 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_373 (79, 2) = (output373, (79, 2)))
    (child375 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_375 (79, 2) = (output375, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_376 (79, 2) = (output376, (79, 2)) := by
  rw [output376_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child373 child375

theorem node377_conditional
    (child376 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_376 (79, 2) = (output376, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_377 (79, 2) = (output377, (79, 2)) := by
  rw [output377_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child376

theorem node378_conditional : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_378 (79, 2) = (output378, (79, 2)) := by
  rw [output378_def]
  kernel_rfl

theorem node379_conditional
    (child378 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_378 (79, 2) = (output378, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_379 (79, 2) = (output379, (79, 2)) := by
  rw [output379_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child378

theorem node380_conditional
    (child377 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_377 (79, 2) = (output377, (79, 2)))
    (child379 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_379 (79, 2) = (output379, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_380 (79, 2) = (output380, (79, 2)) := by
  rw [output380_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_ite_checked _ _ _ _ _ _ _ _ _ _ _ _ child377 child379

theorem node381_conditional
    (child380 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_380 (79, 2) = (output380, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_381 (79, 2) = (output381, (79, 2)) := by
  rw [output381_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child380

theorem node382_conditional
    (child381 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_381 (79, 2) = (output381, (79, 2)))
    (child1 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_1 (79, 2) = (output1, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_382 (79, 2) = (output382, (79, 2)) := by
  rw [output382_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_seq_checked _ _ _ _ _ _ _ _ child381 child1

theorem node383_conditional
    (child382 : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_382 (79, 2) = (output382, (79, 2))) : Flapjack.LoopToWord.compHOL Word.context15
    Loop.loopBody15_383 (79, 2) = (output383, (79, 2)) := by
  rw [output383_def]
  exact InitECandidate.Proofs.LoopWordComputation.comp_mark_checked _ _ _ _ _ child382

#print axioms node383_conditional
end InitECandidate.Proofs.FrontendStages.Word.Checkpoints15
