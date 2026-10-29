import InitECandidate.Proofs.LoopWordComputation
import InitECandidate.Proofs.FrontendStages.Word.Variables176
import InitECandidate.Proofs.WordStages.Source240
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints176.Data.Chunk006
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints176
@[irreducible, cbv_opaque] def output2688 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2681 output2687)).val
theorem output2688_def : output2688 = (.seq output2681 output2687) := by
  unfold output2688
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2689 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2688)).val
theorem output2689_def : output2689 = (output2688) := by
  unfold output2689
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2690 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2689)).val
theorem output2690_def : output2690 = (.seq output119 output2689) := by
  unfold output2690
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2691 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2690)).val
theorem output2691_def : output2691 = (output2690) := by
  unfold output2691
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2692 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2679 output2691)).val
theorem output2692_def : output2692 = (.seq output2679 output2691) := by
  unfold output2692
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2693 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2692)).val
theorem output2693_def : output2693 = (output2692) := by
  unfold output2693
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2694 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1456#64]))).val
theorem output2694_def : output2694 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1456#64])) := by
  unfold output2694
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2695 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2694)).val
theorem output2695_def : output2695 = (output2694) := by
  unfold output2695
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2696 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6123628888509943429#64))).val
theorem output2696_def : output2696 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6123628888509943429#64)) := by
  unfold output2696
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2697 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2696)).val
theorem output2697_def : output2697 = (output2696) := by
  unfold output2697
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2698 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2697 output167)).val
theorem output2698_def : output2698 = (.seq output2697 output167) := by
  unfold output2698
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2699 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2698)).val
theorem output2699_def : output2699 = (output2698) := by
  unfold output2699
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2700 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2699)).val
theorem output2700_def : output2700 = (.seq output119 output2699) := by
  unfold output2700
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2701 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2700)).val
theorem output2701_def : output2701 = (output2700) := by
  unfold output2701
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2702 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2695 output2701)).val
theorem output2702_def : output2702 = (.seq output2695 output2701) := by
  unfold output2702
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2703 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2702)).val
theorem output2703_def : output2703 = (output2702) := by
  unfold output2703
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2704 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2703)).val
theorem output2704_def : output2704 = (.seq output119 output2703) := by
  unfold output2704
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2705 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2704)).val
theorem output2705_def : output2705 = (output2704) := by
  unfold output2705
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2706 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2693 output2705)).val
theorem output2706_def : output2706 = (.seq output2693 output2705) := by
  unfold output2706
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2707 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2706)).val
theorem output2707_def : output2707 = (output2706) := by
  unfold output2707
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2708 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1464#64]))).val
theorem output2708_def : output2708 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1464#64])) := by
  unfold output2708
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2709 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2708)).val
theorem output2709_def : output2709 = (output2708) := by
  unfold output2709
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2710 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5094693348458656889#64))).val
theorem output2710_def : output2710 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5094693348458656889#64)) := by
  unfold output2710
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2711 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2710)).val
theorem output2711_def : output2711 = (output2710) := by
  unfold output2711
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2712 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2711 output167)).val
theorem output2712_def : output2712 = (.seq output2711 output167) := by
  unfold output2712
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2713 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2712)).val
theorem output2713_def : output2713 = (output2712) := by
  unfold output2713
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2714 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2713)).val
theorem output2714_def : output2714 = (.seq output119 output2713) := by
  unfold output2714
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2715 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2714)).val
theorem output2715_def : output2715 = (output2714) := by
  unfold output2715
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2716 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2709 output2715)).val
theorem output2716_def : output2716 = (.seq output2709 output2715) := by
  unfold output2716
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2717 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2716)).val
theorem output2717_def : output2717 = (output2716) := by
  unfold output2717
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2718 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2717)).val
theorem output2718_def : output2718 = (.seq output119 output2717) := by
  unfold output2718
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2719 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2718)).val
theorem output2719_def : output2719 = (output2718) := by
  unfold output2719
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2720 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2707 output2719)).val
theorem output2720_def : output2720 = (.seq output2707 output2719) := by
  unfold output2720
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2721 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2720)).val
theorem output2721_def : output2721 = (output2720) := by
  unfold output2721
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2722 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1472#64]))).val
theorem output2722_def : output2722 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1472#64])) := by
  unfold output2722
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2723 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2722)).val
theorem output2723_def : output2723 = (output2722) := by
  unfold output2723
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2724 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6516980136051946547#64))).val
theorem output2724_def : output2724 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6516980136051946547#64)) := by
  unfold output2724
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2725 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2724)).val
theorem output2725_def : output2725 = (output2724) := by
  unfold output2725
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2726 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2725 output167)).val
theorem output2726_def : output2726 = (.seq output2725 output167) := by
  unfold output2726
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2727 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2726)).val
theorem output2727_def : output2727 = (output2726) := by
  unfold output2727
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2728 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2727)).val
theorem output2728_def : output2728 = (.seq output119 output2727) := by
  unfold output2728
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2729 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2728)).val
theorem output2729_def : output2729 = (output2728) := by
  unfold output2729
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2730 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2723 output2729)).val
theorem output2730_def : output2730 = (.seq output2723 output2729) := by
  unfold output2730
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2731 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2730)).val
theorem output2731_def : output2731 = (output2730) := by
  unfold output2731
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2732 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2731)).val
theorem output2732_def : output2732 = (.seq output119 output2731) := by
  unfold output2732
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2733 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2732)).val
theorem output2733_def : output2733 = (output2732) := by
  unfold output2733
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2734 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2721 output2733)).val
theorem output2734_def : output2734 = (.seq output2721 output2733) := by
  unfold output2734
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2735 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2734)).val
theorem output2735_def : output2735 = (output2734) := by
  unfold output2735
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2736 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1480#64]))).val
theorem output2736_def : output2736 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1480#64])) := by
  unfold output2736
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2737 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2736)).val
theorem output2737_def : output2737 = (output2736) := by
  unfold output2737
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2738 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 91644931610378662#64))).val
theorem output2738_def : output2738 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 91644931610378662#64)) := by
  unfold output2738
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2739 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2738)).val
theorem output2739_def : output2739 = (output2738) := by
  unfold output2739
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2740 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2739 output167)).val
theorem output2740_def : output2740 = (.seq output2739 output167) := by
  unfold output2740
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2741 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2740)).val
theorem output2741_def : output2741 = (output2740) := by
  unfold output2741
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2742 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2741)).val
theorem output2742_def : output2742 = (.seq output119 output2741) := by
  unfold output2742
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2743 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2742)).val
theorem output2743_def : output2743 = (output2742) := by
  unfold output2743
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2744 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2737 output2743)).val
theorem output2744_def : output2744 = (.seq output2737 output2743) := by
  unfold output2744
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2745 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2744)).val
theorem output2745_def : output2745 = (output2744) := by
  unfold output2745
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2746 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2745)).val
theorem output2746_def : output2746 = (.seq output119 output2745) := by
  unfold output2746
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2747 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2746)).val
theorem output2747_def : output2747 = (output2746) := by
  unfold output2747
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2748 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2735 output2747)).val
theorem output2748_def : output2748 = (.seq output2735 output2747) := by
  unfold output2748
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2749 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2748)).val
theorem output2749_def : output2749 = (output2748) := by
  unfold output2749
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2750 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1488#64]))).val
theorem output2750_def : output2750 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1488#64])) := by
  unfold output2750
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2751 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2750)).val
theorem output2751_def : output2751 = (output2750) := by
  unfold output2751
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2752 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15468643217874662509#64))).val
theorem output2752_def : output2752 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15468643217874662509#64)) := by
  unfold output2752
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2753 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2752)).val
theorem output2753_def : output2753 = (output2752) := by
  unfold output2753
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2754 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2753 output167)).val
theorem output2754_def : output2754 = (.seq output2753 output167) := by
  unfold output2754
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2755 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2754)).val
theorem output2755_def : output2755 = (output2754) := by
  unfold output2755
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2756 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2755)).val
theorem output2756_def : output2756 = (.seq output119 output2755) := by
  unfold output2756
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2757 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2756)).val
theorem output2757_def : output2757 = (output2756) := by
  unfold output2757
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2758 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2751 output2757)).val
theorem output2758_def : output2758 = (.seq output2751 output2757) := by
  unfold output2758
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2759 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2758)).val
theorem output2759_def : output2759 = (output2758) := by
  unfold output2759
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2760 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2759)).val
theorem output2760_def : output2760 = (.seq output119 output2759) := by
  unfold output2760
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2761 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2760)).val
theorem output2761_def : output2761 = (output2760) := by
  unfold output2761
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2762 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2749 output2761)).val
theorem output2762_def : output2762 = (.seq output2749 output2761) := by
  unfold output2762
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2763 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2762)).val
theorem output2763_def : output2763 = (output2762) := by
  unfold output2763
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2764 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1496#64]))).val
theorem output2764_def : output2764 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1496#64])) := by
  unfold output2764
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2765 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2764)).val
theorem output2765_def : output2765 = (output2764) := by
  unfold output2765
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2766 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6210536894189389677#64))).val
theorem output2766_def : output2766 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6210536894189389677#64)) := by
  unfold output2766
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2767 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2766)).val
theorem output2767_def : output2767 = (output2766) := by
  unfold output2767
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2768 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2767 output167)).val
theorem output2768_def : output2768 = (.seq output2767 output167) := by
  unfold output2768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2769 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2768)).val
theorem output2769_def : output2769 = (output2768) := by
  unfold output2769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2770 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2769)).val
theorem output2770_def : output2770 = (.seq output119 output2769) := by
  unfold output2770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2771 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2770)).val
theorem output2771_def : output2771 = (output2770) := by
  unfold output2771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2772 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2765 output2771)).val
theorem output2772_def : output2772 = (.seq output2765 output2771) := by
  unfold output2772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2773 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2772)).val
theorem output2773_def : output2773 = (output2772) := by
  unfold output2773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2774 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2773)).val
theorem output2774_def : output2774 = (.seq output119 output2773) := by
  unfold output2774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2775 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2774)).val
theorem output2775_def : output2775 = (output2774) := by
  unfold output2775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2776 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2763 output2775)).val
theorem output2776_def : output2776 = (.seq output2763 output2775) := by
  unfold output2776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2777 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2776)).val
theorem output2777_def : output2777 = (output2776) := by
  unfold output2777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2778 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1504#64]))).val
theorem output2778_def : output2778 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1504#64])) := by
  unfold output2778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2779 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2778)).val
theorem output2779_def : output2779 = (output2778) := by
  unfold output2779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2780 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17847289674800666119#64))).val
theorem output2780_def : output2780 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17847289674800666119#64)) := by
  unfold output2780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2781 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2780)).val
theorem output2781_def : output2781 = (output2780) := by
  unfold output2781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2782 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2781 output167)).val
theorem output2782_def : output2782 = (.seq output2781 output167) := by
  unfold output2782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2783 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2782)).val
theorem output2783_def : output2783 = (output2782) := by
  unfold output2783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2784 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2783)).val
theorem output2784_def : output2784 = (.seq output119 output2783) := by
  unfold output2784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2785 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2784)).val
theorem output2785_def : output2785 = (output2784) := by
  unfold output2785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2786 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2779 output2785)).val
theorem output2786_def : output2786 = (.seq output2779 output2785) := by
  unfold output2786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2787 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2786)).val
theorem output2787_def : output2787 = (output2786) := by
  unfold output2787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2788 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2787)).val
theorem output2788_def : output2788 = (.seq output119 output2787) := by
  unfold output2788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2789 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2788)).val
theorem output2789_def : output2789 = (output2788) := by
  unfold output2789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2790 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2777 output2789)).val
theorem output2790_def : output2790 = (.seq output2777 output2789) := by
  unfold output2790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2791 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2790)).val
theorem output2791_def : output2791 = (output2790) := by
  unfold output2791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2792 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1512#64]))).val
theorem output2792_def : output2792 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1512#64])) := by
  unfold output2792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2793 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2792)).val
theorem output2793_def : output2793 = (output2792) := by
  unfold output2793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2794 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3106964598684577348#64))).val
theorem output2794_def : output2794 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3106964598684577348#64)) := by
  unfold output2794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2795 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2794)).val
theorem output2795_def : output2795 = (output2794) := by
  unfold output2795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2796 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2795 output167)).val
theorem output2796_def : output2796 = (.seq output2795 output167) := by
  unfold output2796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2797 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2796)).val
theorem output2797_def : output2797 = (output2796) := by
  unfold output2797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2798 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2797)).val
theorem output2798_def : output2798 = (.seq output119 output2797) := by
  unfold output2798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2799 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2798)).val
theorem output2799_def : output2799 = (output2798) := by
  unfold output2799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2800 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2793 output2799)).val
theorem output2800_def : output2800 = (.seq output2793 output2799) := by
  unfold output2800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2801 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2800)).val
theorem output2801_def : output2801 = (output2800) := by
  unfold output2801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2802 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2801)).val
theorem output2802_def : output2802 = (.seq output119 output2801) := by
  unfold output2802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2803 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2802)).val
theorem output2803_def : output2803 = (output2802) := by
  unfold output2803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2804 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2791 output2803)).val
theorem output2804_def : output2804 = (.seq output2791 output2803) := by
  unfold output2804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2805 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2804)).val
theorem output2805_def : output2805 = (output2804) := by
  unfold output2805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2806 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1520#64]))).val
theorem output2806_def : output2806 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1520#64])) := by
  unfold output2806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2807 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2806)).val
theorem output2807_def : output2807 = (output2806) := by
  unfold output2807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2808 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8402432595930871483#64))).val
theorem output2808_def : output2808 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 8402432595930871483#64)) := by
  unfold output2808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2809 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2808)).val
theorem output2809_def : output2809 = (output2808) := by
  unfold output2809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2810 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2809 output167)).val
theorem output2810_def : output2810 = (.seq output2809 output167) := by
  unfold output2810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2811 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2810)).val
theorem output2811_def : output2811 = (output2810) := by
  unfold output2811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2812 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2811)).val
theorem output2812_def : output2812 = (.seq output119 output2811) := by
  unfold output2812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2813 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2812)).val
theorem output2813_def : output2813 = (output2812) := by
  unfold output2813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2814 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2807 output2813)).val
theorem output2814_def : output2814 = (.seq output2807 output2813) := by
  unfold output2814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2815 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2814)).val
theorem output2815_def : output2815 = (output2814) := by
  unfold output2815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2816 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2815)).val
theorem output2816_def : output2816 = (.seq output119 output2815) := by
  unfold output2816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2817 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2816)).val
theorem output2817_def : output2817 = (output2816) := by
  unfold output2817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2818 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2805 output2817)).val
theorem output2818_def : output2818 = (.seq output2805 output2817) := by
  unfold output2818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2819 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2818)).val
theorem output2819_def : output2819 = (output2818) := by
  unfold output2819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2820 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1528#64]))).val
theorem output2820_def : output2820 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1528#64])) := by
  unfold output2820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2821 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2820)).val
theorem output2821_def : output2821 = (output2820) := by
  unfold output2821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2822 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3207977348847941336#64))).val
theorem output2822_def : output2822 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3207977348847941336#64)) := by
  unfold output2822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2823 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2822)).val
theorem output2823_def : output2823 = (output2822) := by
  unfold output2823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2824 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2823 output167)).val
theorem output2824_def : output2824 = (.seq output2823 output167) := by
  unfold output2824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2825 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2824)).val
theorem output2825_def : output2825 = (output2824) := by
  unfold output2825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2826 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2825)).val
theorem output2826_def : output2826 = (.seq output119 output2825) := by
  unfold output2826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2827 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2826)).val
theorem output2827_def : output2827 = (output2826) := by
  unfold output2827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2828 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2821 output2827)).val
theorem output2828_def : output2828 = (.seq output2821 output2827) := by
  unfold output2828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2829 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2828)).val
theorem output2829_def : output2829 = (output2828) := by
  unfold output2829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2830 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2829)).val
theorem output2830_def : output2830 = (.seq output119 output2829) := by
  unfold output2830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2831 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2830)).val
theorem output2831_def : output2831 = (output2830) := by
  unfold output2831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2832 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2819 output2831)).val
theorem output2832_def : output2832 = (.seq output2819 output2831) := by
  unfold output2832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2833 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2832)).val
theorem output2833_def : output2833 = (output2832) := by
  unfold output2833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2834 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1536#64]))).val
theorem output2834_def : output2834 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1536#64])) := by
  unfold output2834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2835 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2834)).val
theorem output2835_def : output2835 = (output2834) := by
  unfold output2835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2836 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6118280012185379707#64))).val
theorem output2836_def : output2836 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6118280012185379707#64)) := by
  unfold output2836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2837 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2836)).val
theorem output2837_def : output2837 = (output2836) := by
  unfold output2837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2838 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2837 output167)).val
theorem output2838_def : output2838 = (.seq output2837 output167) := by
  unfold output2838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2839 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2838)).val
theorem output2839_def : output2839 = (output2838) := by
  unfold output2839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2840 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2839)).val
theorem output2840_def : output2840 = (.seq output119 output2839) := by
  unfold output2840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2841 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2840)).val
theorem output2841_def : output2841 = (output2840) := by
  unfold output2841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2842 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2835 output2841)).val
theorem output2842_def : output2842 = (.seq output2835 output2841) := by
  unfold output2842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2843 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2842)).val
theorem output2843_def : output2843 = (output2842) := by
  unfold output2843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2844 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2843)).val
theorem output2844_def : output2844 = (.seq output119 output2843) := by
  unfold output2844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2845 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2844)).val
theorem output2845_def : output2845 = (output2844) := by
  unfold output2845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2846 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2833 output2845)).val
theorem output2846_def : output2846 = (.seq output2833 output2845) := by
  unfold output2846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2847 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2846)).val
theorem output2847_def : output2847 = (output2846) := by
  unfold output2847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2848 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1544#64]))).val
theorem output2848_def : output2848 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1544#64])) := by
  unfold output2848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2849 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2848)).val
theorem output2849_def : output2849 = (output2848) := by
  unfold output2849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2850 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15554389263149372507#64))).val
theorem output2850_def : output2850 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15554389263149372507#64)) := by
  unfold output2850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2851 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2850)).val
theorem output2851_def : output2851 = (output2850) := by
  unfold output2851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2852 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2851 output167)).val
theorem output2852_def : output2852 = (.seq output2851 output167) := by
  unfold output2852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2853 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2852)).val
theorem output2853_def : output2853 = (output2852) := by
  unfold output2853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2854 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2853)).val
theorem output2854_def : output2854 = (.seq output119 output2853) := by
  unfold output2854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2855 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2854)).val
theorem output2855_def : output2855 = (output2854) := by
  unfold output2855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2856 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2849 output2855)).val
theorem output2856_def : output2856 = (.seq output2849 output2855) := by
  unfold output2856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2857 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2856)).val
theorem output2857_def : output2857 = (output2856) := by
  unfold output2857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2858 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2857)).val
theorem output2858_def : output2858 = (.seq output119 output2857) := by
  unfold output2858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2859 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2858)).val
theorem output2859_def : output2859 = (output2858) := by
  unfold output2859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2860 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2847 output2859)).val
theorem output2860_def : output2860 = (.seq output2847 output2859) := by
  unfold output2860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2861 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2860)).val
theorem output2861_def : output2861 = (output2860) := by
  unfold output2861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2862 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1552#64]))).val
theorem output2862_def : output2862 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1552#64])) := by
  unfold output2862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2863 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2862)).val
theorem output2863_def : output2863 = (output2862) := by
  unfold output2863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2864 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 825768116663620526#64))).val
theorem output2864_def : output2864 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 825768116663620526#64)) := by
  unfold output2864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2865 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2864)).val
theorem output2865_def : output2865 = (output2864) := by
  unfold output2865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2866 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2865 output167)).val
theorem output2866_def : output2866 = (.seq output2865 output167) := by
  unfold output2866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2867 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2866)).val
theorem output2867_def : output2867 = (output2866) := by
  unfold output2867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2868 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2867)).val
theorem output2868_def : output2868 = (.seq output119 output2867) := by
  unfold output2868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2869 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2868)).val
theorem output2869_def : output2869 = (output2868) := by
  unfold output2869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2870 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2863 output2869)).val
theorem output2870_def : output2870 = (.seq output2863 output2869) := by
  unfold output2870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2871 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2870)).val
theorem output2871_def : output2871 = (output2870) := by
  unfold output2871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2872 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2871)).val
theorem output2872_def : output2872 = (.seq output119 output2871) := by
  unfold output2872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2873 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2872)).val
theorem output2873_def : output2873 = (output2872) := by
  unfold output2873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2874 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2861 output2873)).val
theorem output2874_def : output2874 = (.seq output2861 output2873) := by
  unfold output2874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2875 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2874)).val
theorem output2875_def : output2875 = (output2874) := by
  unfold output2875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2876 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1560#64]))).val
theorem output2876_def : output2876 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1560#64])) := by
  unfold output2876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2877 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2876)).val
theorem output2877_def : output2877 = (output2876) := by
  unfold output2877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2878 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7259264309575870851#64))).val
theorem output2878_def : output2878 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7259264309575870851#64)) := by
  unfold output2878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2879 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2878)).val
theorem output2879_def : output2879 = (output2878) := by
  unfold output2879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2880 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2879 output167)).val
theorem output2880_def : output2880 = (.seq output2879 output167) := by
  unfold output2880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2881 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2880)).val
theorem output2881_def : output2881 = (output2880) := by
  unfold output2881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2882 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2881)).val
theorem output2882_def : output2882 = (.seq output119 output2881) := by
  unfold output2882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2883 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2882)).val
theorem output2883_def : output2883 = (output2882) := by
  unfold output2883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2884 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2877 output2883)).val
theorem output2884_def : output2884 = (.seq output2877 output2883) := by
  unfold output2884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2885 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2884)).val
theorem output2885_def : output2885 = (output2884) := by
  unfold output2885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2886 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2885)).val
theorem output2886_def : output2886 = (.seq output119 output2885) := by
  unfold output2886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2887 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2886)).val
theorem output2887_def : output2887 = (output2886) := by
  unfold output2887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2888 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2875 output2887)).val
theorem output2888_def : output2888 = (.seq output2875 output2887) := by
  unfold output2888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2889 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2888)).val
theorem output2889_def : output2889 = (output2888) := by
  unfold output2889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2890 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1568#64]))).val
theorem output2890_def : output2890 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1568#64])) := by
  unfold output2890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2891 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2890)).val
theorem output2891_def : output2891 = (output2890) := by
  unfold output2891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2892 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4116471800096853880#64))).val
theorem output2892_def : output2892 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 4116471800096853880#64)) := by
  unfold output2892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2893 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2892)).val
theorem output2893_def : output2893 = (output2892) := by
  unfold output2893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2894 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2893 output167)).val
theorem output2894_def : output2894 = (.seq output2893 output167) := by
  unfold output2894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2895 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2894)).val
theorem output2895_def : output2895 = (output2894) := by
  unfold output2895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2896 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2895)).val
theorem output2896_def : output2896 = (.seq output119 output2895) := by
  unfold output2896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2897 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2896)).val
theorem output2897_def : output2897 = (output2896) := by
  unfold output2897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2898 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2891 output2897)).val
theorem output2898_def : output2898 = (.seq output2891 output2897) := by
  unfold output2898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2899 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2898)).val
theorem output2899_def : output2899 = (output2898) := by
  unfold output2899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2900 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2899)).val
theorem output2900_def : output2900 = (.seq output119 output2899) := by
  unfold output2900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2901 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2900)).val
theorem output2901_def : output2901 = (output2900) := by
  unfold output2901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2902 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2889 output2901)).val
theorem output2902_def : output2902 = (.seq output2889 output2901) := by
  unfold output2902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2903 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2902)).val
theorem output2903_def : output2903 = (output2902) := by
  unfold output2903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2904 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1576#64]))).val
theorem output2904_def : output2904 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1576#64])) := by
  unfold output2904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2905 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2904)).val
theorem output2905_def : output2905 = (output2904) := by
  unfold output2905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2906 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3220628530898328474#64))).val
theorem output2906_def : output2906 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 3220628530898328474#64)) := by
  unfold output2906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2907 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2906)).val
theorem output2907_def : output2907 = (output2906) := by
  unfold output2907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2908 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2907 output167)).val
theorem output2908_def : output2908 = (.seq output2907 output167) := by
  unfold output2908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2909 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2908)).val
theorem output2909_def : output2909 = (output2908) := by
  unfold output2909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2910 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2909)).val
theorem output2910_def : output2910 = (.seq output119 output2909) := by
  unfold output2910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2911 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2910)).val
theorem output2911_def : output2911 = (output2910) := by
  unfold output2911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2912 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2905 output2911)).val
theorem output2912_def : output2912 = (.seq output2905 output2911) := by
  unfold output2912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2913 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2912)).val
theorem output2913_def : output2913 = (output2912) := by
  unfold output2913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2914 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2913)).val
theorem output2914_def : output2914 = (.seq output119 output2913) := by
  unfold output2914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2915 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2914)).val
theorem output2915_def : output2915 = (output2914) := by
  unfold output2915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2916 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2903 output2915)).val
theorem output2916_def : output2916 = (.seq output2903 output2915) := by
  unfold output2916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2917 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2916)).val
theorem output2917_def : output2917 = (output2916) := by
  unfold output2917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2918 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1584#64]))).val
theorem output2918_def : output2918 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1584#64])) := by
  unfold output2918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2919 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2918)).val
theorem output2919_def : output2919 = (output2918) := by
  unfold output2919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2920 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 785148066790290254#64))).val
theorem output2920_def : output2920 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 785148066790290254#64)) := by
  unfold output2920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2921 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2920)).val
theorem output2921_def : output2921 = (output2920) := by
  unfold output2921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2922 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2921 output167)).val
theorem output2922_def : output2922 = (.seq output2921 output167) := by
  unfold output2922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2923 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2922)).val
theorem output2923_def : output2923 = (output2922) := by
  unfold output2923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2924 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2923)).val
theorem output2924_def : output2924 = (.seq output119 output2923) := by
  unfold output2924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2925 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2924)).val
theorem output2925_def : output2925 = (output2924) := by
  unfold output2925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2926 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2919 output2925)).val
theorem output2926_def : output2926 = (.seq output2919 output2925) := by
  unfold output2926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2927 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2926)).val
theorem output2927_def : output2927 = (output2926) := by
  unfold output2927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2928 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2927)).val
theorem output2928_def : output2928 = (.seq output119 output2927) := by
  unfold output2928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2929 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2928)).val
theorem output2929_def : output2929 = (output2928) := by
  unfold output2929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2930 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2917 output2929)).val
theorem output2930_def : output2930 = (.seq output2917 output2929) := by
  unfold output2930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2931 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2930)).val
theorem output2931_def : output2931 = (output2930) := by
  unfold output2931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2932 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1592#64]))).val
theorem output2932_def : output2932 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1592#64])) := by
  unfold output2932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2933 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2932)).val
theorem output2933_def : output2933 = (output2932) := by
  unfold output2933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2934 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15859045307365574315#64))).val
theorem output2934_def : output2934 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 15859045307365574315#64)) := by
  unfold output2934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2935 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2934)).val
theorem output2935_def : output2935 = (output2934) := by
  unfold output2935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2936 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2935 output167)).val
theorem output2936_def : output2936 = (.seq output2935 output167) := by
  unfold output2936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2937 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2936)).val
theorem output2937_def : output2937 = (output2936) := by
  unfold output2937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2938 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2937)).val
theorem output2938_def : output2938 = (.seq output119 output2937) := by
  unfold output2938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2939 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2938)).val
theorem output2939_def : output2939 = (output2938) := by
  unfold output2939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2940 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2933 output2939)).val
theorem output2940_def : output2940 = (.seq output2933 output2939) := by
  unfold output2940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2941 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2940)).val
theorem output2941_def : output2941 = (output2940) := by
  unfold output2941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2942 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2941)).val
theorem output2942_def : output2942 = (.seq output119 output2941) := by
  unfold output2942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2943 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2942)).val
theorem output2943_def : output2943 = (output2942) := by
  unfold output2943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2944 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2931 output2943)).val
theorem output2944_def : output2944 = (.seq output2931 output2943) := by
  unfold output2944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2945 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2944)).val
theorem output2945_def : output2945 = (output2944) := by
  unfold output2945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2946 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1600#64]))).val
theorem output2946_def : output2946 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1600#64])) := by
  unfold output2946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2947 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2946)).val
theorem output2947_def : output2947 = (output2946) := by
  unfold output2947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2948 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10080850857162126312#64))).val
theorem output2948_def : output2948 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 10080850857162126312#64)) := by
  unfold output2948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2949 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2948)).val
theorem output2949_def : output2949 = (output2948) := by
  unfold output2949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2950 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2949 output167)).val
theorem output2950_def : output2950 = (.seq output2949 output167) := by
  unfold output2950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2951 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2950)).val
theorem output2951_def : output2951 = (output2950) := by
  unfold output2951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2952 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2951)).val
theorem output2952_def : output2952 = (.seq output119 output2951) := by
  unfold output2952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2953 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2952)).val
theorem output2953_def : output2953 = (output2952) := by
  unfold output2953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2954 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2947 output2953)).val
theorem output2954_def : output2954 = (.seq output2947 output2953) := by
  unfold output2954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2955 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2954)).val
theorem output2955_def : output2955 = (output2954) := by
  unfold output2955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2956 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2955)).val
theorem output2956_def : output2956 = (.seq output119 output2955) := by
  unfold output2956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2957 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2956)).val
theorem output2957_def : output2957 = (output2956) := by
  unfold output2957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2958 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2945 output2957)).val
theorem output2958_def : output2958 = (.seq output2945 output2957) := by
  unfold output2958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2959 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2958)).val
theorem output2959_def : output2959 = (output2958) := by
  unfold output2959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2960 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1608#64]))).val
theorem output2960_def : output2960 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1608#64])) := by
  unfold output2960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2961 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2960)).val
theorem output2961_def : output2961 = (output2960) := by
  unfold output2961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2962 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17473130183572900340#64))).val
theorem output2962_def : output2962 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 17473130183572900340#64)) := by
  unfold output2962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2963 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2962)).val
theorem output2963_def : output2963 = (output2962) := by
  unfold output2963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2964 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2963 output167)).val
theorem output2964_def : output2964 = (.seq output2963 output167) := by
  unfold output2964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2965 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2964)).val
theorem output2965_def : output2965 = (output2964) := by
  unfold output2965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2966 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2965)).val
theorem output2966_def : output2966 = (.seq output119 output2965) := by
  unfold output2966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2967 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2966)).val
theorem output2967_def : output2967 = (output2966) := by
  unfold output2967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2968 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2961 output2967)).val
theorem output2968_def : output2968 = (.seq output2961 output2967) := by
  unfold output2968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2969 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2968)).val
theorem output2969_def : output2969 = (output2968) := by
  unfold output2969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2970 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2969)).val
theorem output2970_def : output2970 = (.seq output119 output2969) := by
  unfold output2970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2971 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2970)).val
theorem output2971_def : output2971 = (output2970) := by
  unfold output2971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2972 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2959 output2971)).val
theorem output2972_def : output2972 = (.seq output2959 output2971) := by
  unfold output2972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2973 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2972)).val
theorem output2973_def : output2973 = (output2972) := by
  unfold output2973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2974 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1616#64]))).val
theorem output2974_def : output2974 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1616#64])) := by
  unfold output2974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2975 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2974)).val
theorem output2975_def : output2975 = (output2974) := by
  unfold output2975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2976 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5280875127751342706#64))).val
theorem output2976_def : output2976 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 5280875127751342706#64)) := by
  unfold output2976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2977 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2976)).val
theorem output2977_def : output2977 = (output2976) := by
  unfold output2977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2978 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2977 output167)).val
theorem output2978_def : output2978 = (.seq output2977 output167) := by
  unfold output2978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2979 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2978)).val
theorem output2979_def : output2979 = (output2978) := by
  unfold output2979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2980 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2979)).val
theorem output2980_def : output2980 = (.seq output119 output2979) := by
  unfold output2980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2981 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2980)).val
theorem output2981_def : output2981 = (output2980) := by
  unfold output2981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2982 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2975 output2981)).val
theorem output2982_def : output2982 = (.seq output2975 output2981) := by
  unfold output2982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2983 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2982)).val
theorem output2983_def : output2983 = (output2982) := by
  unfold output2983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2984 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2983)).val
theorem output2984_def : output2984 = (.seq output119 output2983) := by
  unfold output2984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2985 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2984)).val
theorem output2985_def : output2985 = (output2984) := by
  unfold output2985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2986 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2973 output2985)).val
theorem output2986_def : output2986 = (.seq output2973 output2985) := by
  unfold output2986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2987 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2986)).val
theorem output2987_def : output2987 = (output2986) := by
  unfold output2987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2988 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1624#64]))).val
theorem output2988_def : output2988 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1624#64])) := by
  unfold output2988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2989 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2988)).val
theorem output2989_def : output2989 = (output2988) := by
  unfold output2989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2990 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13478169855198869191#64))).val
theorem output2990_def : output2990 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 13478169855198869191#64)) := by
  unfold output2990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2991 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2990)).val
theorem output2991_def : output2991 = (output2990) := by
  unfold output2991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2992 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2991 output167)).val
theorem output2992_def : output2992 = (.seq output2991 output167) := by
  unfold output2992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2993 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2992)).val
theorem output2993_def : output2993 = (output2992) := by
  unfold output2993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2994 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2993)).val
theorem output2994_def : output2994 = (.seq output119 output2993) := by
  unfold output2994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2995 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2994)).val
theorem output2995_def : output2995 = (output2994) := by
  unfold output2995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2996 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2989 output2995)).val
theorem output2996_def : output2996 = (.seq output2989 output2995) := by
  unfold output2996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2997 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2996)).val
theorem output2997_def : output2997 = (output2996) := by
  unfold output2997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2998 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output2997)).val
theorem output2998_def : output2998 = (.seq output119 output2997) := by
  unfold output2998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output2999 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output2998)).val
theorem output2999_def : output2999 = (output2998) := by
  unfold output2999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3000 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output2987 output2999)).val
theorem output3000_def : output3000 = (.seq output2987 output2999) := by
  unfold output3000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3001 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3000)).val
theorem output3001_def : output3001 = (output3000) := by
  unfold output3001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3002 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1632#64]))).val
theorem output3002_def : output3002 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1632#64])) := by
  unfold output3002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3003 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3002)).val
theorem output3003_def : output3003 = (output3002) := by
  unfold output3003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3004 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1470386339905773104#64))).val
theorem output3004_def : output3004 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 1470386339905773104#64)) := by
  unfold output3004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3005 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3004)).val
theorem output3005_def : output3005 = (output3004) := by
  unfold output3005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3006 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3005 output167)).val
theorem output3006_def : output3006 = (.seq output3005 output167) := by
  unfold output3006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3007 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3006)).val
theorem output3007_def : output3007 = (output3006) := by
  unfold output3007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3008 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output3007)).val
theorem output3008_def : output3008 = (.seq output119 output3007) := by
  unfold output3008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3009 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3008)).val
theorem output3009_def : output3009 = (output3008) := by
  unfold output3009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3010 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3003 output3009)).val
theorem output3010_def : output3010 = (.seq output3003 output3009) := by
  unfold output3010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3011 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3010)).val
theorem output3011_def : output3011 = (output3010) := by
  unfold output3011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3012 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output3011)).val
theorem output3012_def : output3012 = (.seq output119 output3011) := by
  unfold output3012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3013 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3012)).val
theorem output3013_def : output3013 = (output3012) := by
  unfold output3013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3014 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3001 output3013)).val
theorem output3014_def : output3014 = (.seq output3001 output3013) := by
  unfold output3014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3015 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3014)).val
theorem output3015_def : output3015 = (output3014) := by
  unfold output3015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3016 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1640#64]))).val
theorem output3016_def : output3016 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1640#64])) := by
  unfold output3016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3017 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3016)).val
theorem output3017_def : output3017 = (output3016) := by
  unfold output3017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3018 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 18063838854675756281#64))).val
theorem output3018_def : output3018 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 18063838854675756281#64)) := by
  unfold output3018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3019 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3018)).val
theorem output3019_def : output3019 = (output3018) := by
  unfold output3019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3020 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3019 output167)).val
theorem output3020_def : output3020 = (.seq output3019 output167) := by
  unfold output3020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3021 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3020)).val
theorem output3021_def : output3021 = (output3020) := by
  unfold output3021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3022 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output3021)).val
theorem output3022_def : output3022 = (.seq output119 output3021) := by
  unfold output3022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3023 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3022)).val
theorem output3023_def : output3023 = (output3022) := by
  unfold output3023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3024 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3017 output3023)).val
theorem output3024_def : output3024 = (.seq output3017 output3023) := by
  unfold output3024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3025 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3024)).val
theorem output3025_def : output3025 = (output3024) := by
  unfold output3025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3026 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output3025)).val
theorem output3026_def : output3026 = (.seq output119 output3025) := by
  unfold output3026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3027 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3026)).val
theorem output3027_def : output3027 = (output3026) := by
  unfold output3027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3028 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3015 output3027)).val
theorem output3028_def : output3028 = (.seq output3015 output3027) := by
  unfold output3028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3029 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3028)).val
theorem output3029_def : output3029 = (output3028) := by
  unfold output3029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3030 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1648#64]))).val
theorem output3030_def : output3030 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1648#64])) := by
  unfold output3030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3031 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3030)).val
theorem output3031_def : output3031 = (output3030) := by
  unfold output3031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3032 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6581698550652646368#64))).val
theorem output3032_def : output3032 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 6581698550652646368#64)) := by
  unfold output3032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3033 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3032)).val
theorem output3033_def : output3033 = (output3032) := by
  unfold output3033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3034 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3033 output167)).val
theorem output3034_def : output3034 = (.seq output3033 output167) := by
  unfold output3034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3035 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3034)).val
theorem output3035_def : output3035 = (output3034) := by
  unfold output3035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3036 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output3035)).val
theorem output3036_def : output3036 = (.seq output119 output3035) := by
  unfold output3036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3037 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3036)).val
theorem output3037_def : output3037 = (output3036) := by
  unfold output3037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3038 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3031 output3037)).val
theorem output3038_def : output3038 = (.seq output3031 output3037) := by
  unfold output3038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3039 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3038)).val
theorem output3039_def : output3039 = (output3038) := by
  unfold output3039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3040 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output3039)).val
theorem output3040_def : output3040 = (.seq output119 output3039) := by
  unfold output3040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3041 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3040)).val
theorem output3041_def : output3041 = (output3040) := by
  unfold output3041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3042 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3029 output3041)).val
theorem output3042_def : output3042 = (.seq output3029 output3041) := by
  unfold output3042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3043 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3042)).val
theorem output3043_def : output3043 = (output3042) := by
  unfold output3043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3044 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1656#64]))).val
theorem output3044_def : output3044 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1656#64])) := by
  unfold output3044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3045 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3044)).val
theorem output3045_def : output3045 = (output3044) := by
  unfold output3045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3046 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 105682938938997452#64))).val
theorem output3046_def : output3046 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 105682938938997452#64)) := by
  unfold output3046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3047 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3046)).val
theorem output3047_def : output3047 = (output3046) := by
  unfold output3047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3048 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3047 output167)).val
theorem output3048_def : output3048 = (.seq output3047 output167) := by
  unfold output3048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3049 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3048)).val
theorem output3049_def : output3049 = (output3048) := by
  unfold output3049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3050 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output3049)).val
theorem output3050_def : output3050 = (.seq output119 output3049) := by
  unfold output3050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3051 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3050)).val
theorem output3051_def : output3051 = (output3050) := by
  unfold output3051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3052 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3045 output3051)).val
theorem output3052_def : output3052 = (.seq output3045 output3051) := by
  unfold output3052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3053 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3052)).val
theorem output3053_def : output3053 = (output3052) := by
  unfold output3053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3054 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output3053)).val
theorem output3054_def : output3054 = (.seq output119 output3053) := by
  unfold output3054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3055 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3054)).val
theorem output3055_def : output3055 = (output3054) := by
  unfold output3055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3056 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3043 output3055)).val
theorem output3056_def : output3056 = (.seq output3043 output3055) := by
  unfold output3056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3057 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3056)).val
theorem output3057_def : output3057 = (output3056) := by
  unfold output3057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3058 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1664#64]))).val
theorem output3058_def : output3058 = (Flapjack.WordLangProgHOL.assign 4
  (Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
    [Flapjack.WordLangExpHOL.load
        (Flapjack.WordLangExpHOL.op Flapjack.BinOp.sub
          [Flapjack.WordLangExpHOL.op Flapjack.BinOp.add
              [Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.currHeap,
                Flapjack.WordLangExpHOL.shift Flapjack.Shift.lsl
                  (Flapjack.WordLangExpHOL.lookup Flapjack.WordStore.heapLength) (Flapjack.WordLangExpHOL.const 1#64)],
            Flapjack.WordLangExpHOL.const 96#64]),
      Flapjack.WordLangExpHOL.const 1664#64])) := by
  unfold output3058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3059 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3058)).val
theorem output3059_def : output3059 = (output3058) := by
  unfold output3059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3060 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7315579702113888802#64))).val
theorem output3060_def : output3060 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.const 7315579702113888802#64)) := by
  unfold output3060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3061 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3060)).val
theorem output3061_def : output3061 = (output3060) := by
  unfold output3061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3062 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3061 output167)).val
theorem output3062_def : output3062 = (.seq output3061 output167) := by
  unfold output3062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3063 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3062)).val
theorem output3063_def : output3063 = (output3062) := by
  unfold output3063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3064 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output3063)).val
theorem output3064_def : output3064 = (.seq output119 output3063) := by
  unfold output3064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3065 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3064)).val
theorem output3065_def : output3065 = (output3064) := by
  unfold output3065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3066 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3059 output3065)).val
theorem output3066_def : output3066 = (.seq output3059 output3065) := by
  unfold output3066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3067 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3066)).val
theorem output3067_def : output3067 = (output3066) := by
  unfold output3067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3068 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output119 output3067)).val
theorem output3068_def : output3068 = (.seq output119 output3067) := by
  unfold output3068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3069 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3068)).val
theorem output3069_def : output3069 = (output3068) := by
  unfold output3069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3070 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3057 output3069)).val
theorem output3070_def : output3070 = (.seq output3057 output3069) := by
  unfold output3070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3071 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3070)).val
theorem output3071_def : output3071 = (output3070) := by
  unfold output3071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

end InitECandidate.Proofs.FrontendStages.Word.Checkpoints176
