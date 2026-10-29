import InitECandidate.Proofs.LoopWordComputation
import InitECandidate.Proofs.FrontendStages.Word.Variables533
import InitECandidate.Proofs.WordStages.Source597
import InitECandidate.Proofs.FrontendStages.Word.Checkpoints533.Data.Chunk009
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Word.Checkpoints533
@[irreducible, cbv_opaque] def output3840 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64))).val
theorem output3840_def : output3840 = (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)) := by
  unfold output3840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3841 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3840)).val
theorem output3841_def : output3841 = (output3840) := by
  unfold output3841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3842 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq (.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 4) output3839 output3841) .tick)).val
theorem output3842_def : output3842 = (.seq (.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 4) output3839 output3841) .tick) := by
  unfold output3842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3843 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3842)).val
theorem output3843_def : output3843 = (output3842) := by
  unfold output3843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3844 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10))).val
theorem output3844_def : output3844 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)) := by
  unfold output3844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3845 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3844)).val
theorem output3845_def : output3845 = (output3844) := by
  unfold output3845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3846 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some ([6], (Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln), Flapjack.WordLangProgHOL.skip, 597, 164)) (some 624) []
    (some (10, Flapjack.WordLangProgHOL.raise 10, 597, 165)))
  Flapjack.WordLangProgHOL.tick)).val
theorem output3846_def : output3846 = (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some ([6], (Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln), Flapjack.WordLangProgHOL.skip, 597, 164)) (some 624) []
    (some (10, Flapjack.WordLangProgHOL.raise 10, 597, 165)))
  Flapjack.WordLangProgHOL.tick) := by
  unfold output3846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3847 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3846)).val
theorem output3847_def : output3847 = (output3846) := by
  unfold output3847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3848 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3848_def : output3848 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3849 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3848)).val
theorem output3849_def : output3849 = (output3848) := by
  unfold output3849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3850 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3847 output3849)).val
theorem output3850_def : output3850 = (.seq output3847 output3849) := by
  unfold output3850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3851 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3850)).val
theorem output3851_def : output3851 = (output3850) := by
  unfold output3851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3852 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3803 output3851)).val
theorem output3852_def : output3852 = (.seq output3803 output3851) := by
  unfold output3852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3853 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3852)).val
theorem output3853_def : output3853 = (output3852) := by
  unfold output3853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3854 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3803 output3853)).val
theorem output3854_def : output3854 = (.seq output3803 output3853) := by
  unfold output3854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3855 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3854)).val
theorem output3855_def : output3855 = (output3854) := by
  unfold output3855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3856 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64))).val
theorem output3856_def : output3856 = (Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)) := by
  unfold output3856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3857 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3856)).val
theorem output3857_def : output3857 = (output3856) := by
  unfold output3857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3858 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 0 [6])).val
theorem output3858_def : output3858 = (Flapjack.WordLangProgHOL.return 0 [6]) := by
  unfold output3858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3859 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3858)).val
theorem output3859_def : output3859 = (output3858) := by
  unfold output3859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3860 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3859 output3849)).val
theorem output3860_def : output3860 = (.seq output3859 output3849) := by
  unfold output3860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3861 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3860)).val
theorem output3861_def : output3861 = (output3860) := by
  unfold output3861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3862 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3857 output3861)).val
theorem output3862_def : output3862 = (.seq output3857 output3861) := by
  unfold output3862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3863 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3862)).val
theorem output3863_def : output3863 = (output3862) := by
  unfold output3863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3864 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3855 output3863)).val
theorem output3864_def : output3864 = (.seq output3855 output3863) := by
  unfold output3864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3865 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3864)).val
theorem output3865_def : output3865 = (output3864) := by
  unfold output3865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3866 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq (.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) output3865 output3849) .tick)).val
theorem output3866_def : output3866 = (.seq (.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) output3865 output3849) .tick) := by
  unfold output3866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3867 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3866)).val
theorem output3867_def : output3867 = (output3866) := by
  unfold output3867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3868 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3867 output3849)).val
theorem output3868_def : output3868 = (.seq output3867 output3849) := by
  unfold output3868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3869 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3868)).val
theorem output3869_def : output3869 = (output3868) := by
  unfold output3869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3870 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3845 output3869)).val
theorem output3870_def : output3870 = (.seq output3845 output3869) := by
  unfold output3870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3871 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3870)).val
theorem output3871_def : output3871 = (output3870) := by
  unfold output3871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3872 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3843 output3871)).val
theorem output3872_def : output3872 = (.seq output3843 output3871) := by
  unfold output3872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3873 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3872)).val
theorem output3873_def : output3873 = (output3872) := by
  unfold output3873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3874 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3837 output3873)).val
theorem output3874_def : output3874 = (.seq output3837 output3873) := by
  unfold output3874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3875 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3874)).val
theorem output3875_def : output3875 = (output3874) := by
  unfold output3875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3876 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3835 output3875)).val
theorem output3876_def : output3876 = (.seq output3835 output3875) := by
  unfold output3876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3877 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3876)).val
theorem output3877_def : output3877 = (output3876) := by
  unfold output3877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3878 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3833 output3877)).val
theorem output3878_def : output3878 = (.seq output3833 output3877) := by
  unfold output3878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3879 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3878)).val
theorem output3879_def : output3879 = (output3878) := by
  unfold output3879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3880 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2))).val
theorem output3880_def : output3880 = (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)) := by
  unfold output3880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3881 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3880)).val
theorem output3881_def : output3881 = (output3880) := by
  unfold output3881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3882 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 243#64))).val
theorem output3882_def : output3882 = (Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 243#64)) := by
  unfold output3882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3883 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3882)).val
theorem output3883_def : output3883 = (output3882) := by
  unfold output3883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3884 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64))).val
theorem output3884_def : output3884 = (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)) := by
  unfold output3884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3885 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3884)).val
theorem output3885_def : output3885 = (output3884) := by
  unfold output3885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3886 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64))).val
theorem output3886_def : output3886 = (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)) := by
  unfold output3886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3887 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3886)).val
theorem output3887_def : output3887 = (output3886) := by
  unfold output3887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3888 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq (.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 4) output3885 output3887) .tick)).val
theorem output3888_def : output3888 = (.seq (.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 4) output3885 output3887) .tick) := by
  unfold output3888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3889 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3888)).val
theorem output3889_def : output3889 = (output3888) := by
  unfold output3889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3890 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10))).val
theorem output3890_def : output3890 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)) := by
  unfold output3890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3891 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3890)).val
theorem output3891_def : output3891 = (output3890) := by
  unfold output3891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3892 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some ([6], (Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln), Flapjack.WordLangProgHOL.skip, 597, 166)) (some 588) []
    (some (10, Flapjack.WordLangProgHOL.raise 10, 597, 167)))
  Flapjack.WordLangProgHOL.tick)).val
theorem output3892_def : output3892 = (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some ([6], (Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln), Flapjack.WordLangProgHOL.skip, 597, 166)) (some 588) []
    (some (10, Flapjack.WordLangProgHOL.raise 10, 597, 167)))
  Flapjack.WordLangProgHOL.tick) := by
  unfold output3892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3893 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3892)).val
theorem output3893_def : output3893 = (output3892) := by
  unfold output3893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3894 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3894_def : output3894 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3895 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3894)).val
theorem output3895_def : output3895 = (output3894) := by
  unfold output3895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3896 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3893 output3895)).val
theorem output3896_def : output3896 = (.seq output3893 output3895) := by
  unfold output3896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3897 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3896)).val
theorem output3897_def : output3897 = (output3896) := by
  unfold output3897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3898 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3849 output3897)).val
theorem output3898_def : output3898 = (.seq output3849 output3897) := by
  unfold output3898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3899 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3898)).val
theorem output3899_def : output3899 = (output3898) := by
  unfold output3899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3900 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3849 output3899)).val
theorem output3900_def : output3900 = (.seq output3849 output3899) := by
  unfold output3900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3901 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3900)).val
theorem output3901_def : output3901 = (output3900) := by
  unfold output3901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3902 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64))).val
theorem output3902_def : output3902 = (Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)) := by
  unfold output3902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3903 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3902)).val
theorem output3903_def : output3903 = (output3902) := by
  unfold output3903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3904 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 0 [6])).val
theorem output3904_def : output3904 = (Flapjack.WordLangProgHOL.return 0 [6]) := by
  unfold output3904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3905 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3904)).val
theorem output3905_def : output3905 = (output3904) := by
  unfold output3905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3906 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3905 output3895)).val
theorem output3906_def : output3906 = (.seq output3905 output3895) := by
  unfold output3906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3907 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3906)).val
theorem output3907_def : output3907 = (output3906) := by
  unfold output3907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3908 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3903 output3907)).val
theorem output3908_def : output3908 = (.seq output3903 output3907) := by
  unfold output3908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3909 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3908)).val
theorem output3909_def : output3909 = (output3908) := by
  unfold output3909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3910 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3901 output3909)).val
theorem output3910_def : output3910 = (.seq output3901 output3909) := by
  unfold output3910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3911 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3910)).val
theorem output3911_def : output3911 = (output3910) := by
  unfold output3911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3912 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq (.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) output3911 output3895) .tick)).val
theorem output3912_def : output3912 = (.seq (.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) output3911 output3895) .tick) := by
  unfold output3912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3913 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3912)).val
theorem output3913_def : output3913 = (output3912) := by
  unfold output3913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3914 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3913 output3895)).val
theorem output3914_def : output3914 = (.seq output3913 output3895) := by
  unfold output3914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3915 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3914)).val
theorem output3915_def : output3915 = (output3914) := by
  unfold output3915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3916 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3891 output3915)).val
theorem output3916_def : output3916 = (.seq output3891 output3915) := by
  unfold output3916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3917 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3916)).val
theorem output3917_def : output3917 = (output3916) := by
  unfold output3917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3918 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3889 output3917)).val
theorem output3918_def : output3918 = (.seq output3889 output3917) := by
  unfold output3918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3919 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3918)).val
theorem output3919_def : output3919 = (output3918) := by
  unfold output3919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3920 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3883 output3919)).val
theorem output3920_def : output3920 = (.seq output3883 output3919) := by
  unfold output3920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3921 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3920)).val
theorem output3921_def : output3921 = (output3920) := by
  unfold output3921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3922 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3881 output3921)).val
theorem output3922_def : output3922 = (.seq output3881 output3921) := by
  unfold output3922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3923 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3922)).val
theorem output3923_def : output3923 = (output3922) := by
  unfold output3923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3924 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3879 output3923)).val
theorem output3924_def : output3924 = (.seq output3879 output3923) := by
  unfold output3924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3925 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3924)).val
theorem output3925_def : output3925 = (output3924) := by
  unfold output3925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3926 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2))).val
theorem output3926_def : output3926 = (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)) := by
  unfold output3926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3927 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3926)).val
theorem output3927_def : output3927 = (output3926) := by
  unfold output3927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3928 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 244#64))).val
theorem output3928_def : output3928 = (Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 244#64)) := by
  unfold output3928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3929 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3928)).val
theorem output3929_def : output3929 = (output3928) := by
  unfold output3929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3930 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64))).val
theorem output3930_def : output3930 = (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)) := by
  unfold output3930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3931 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3930)).val
theorem output3931_def : output3931 = (output3930) := by
  unfold output3931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3932 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64))).val
theorem output3932_def : output3932 = (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)) := by
  unfold output3932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3933 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3932)).val
theorem output3933_def : output3933 = (output3932) := by
  unfold output3933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3934 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq (.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 4) output3931 output3933) .tick)).val
theorem output3934_def : output3934 = (.seq (.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 4) output3931 output3933) .tick) := by
  unfold output3934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3935 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3934)).val
theorem output3935_def : output3935 = (output3934) := by
  unfold output3935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3936 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10))).val
theorem output3936_def : output3936 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)) := by
  unfold output3936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3937 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3936)).val
theorem output3937_def : output3937 = (output3936) := by
  unfold output3937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3938 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some ([6], (Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln), Flapjack.WordLangProgHOL.skip, 597, 168)) (some 625) []
    (some (10, Flapjack.WordLangProgHOL.raise 10, 597, 169)))
  Flapjack.WordLangProgHOL.tick)).val
theorem output3938_def : output3938 = (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some ([6], (Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln), Flapjack.WordLangProgHOL.skip, 597, 168)) (some 625) []
    (some (10, Flapjack.WordLangProgHOL.raise 10, 597, 169)))
  Flapjack.WordLangProgHOL.tick) := by
  unfold output3938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3939 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3938)).val
theorem output3939_def : output3939 = (output3938) := by
  unfold output3939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3940 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3940_def : output3940 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3941 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3940)).val
theorem output3941_def : output3941 = (output3940) := by
  unfold output3941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3942 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3939 output3941)).val
theorem output3942_def : output3942 = (.seq output3939 output3941) := by
  unfold output3942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3943 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3942)).val
theorem output3943_def : output3943 = (output3942) := by
  unfold output3943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3944 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3895 output3943)).val
theorem output3944_def : output3944 = (.seq output3895 output3943) := by
  unfold output3944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3945 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3944)).val
theorem output3945_def : output3945 = (output3944) := by
  unfold output3945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3946 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3895 output3945)).val
theorem output3946_def : output3946 = (.seq output3895 output3945) := by
  unfold output3946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3947 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3946)).val
theorem output3947_def : output3947 = (output3946) := by
  unfold output3947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3948 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64))).val
theorem output3948_def : output3948 = (Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)) := by
  unfold output3948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3949 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3948)).val
theorem output3949_def : output3949 = (output3948) := by
  unfold output3949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3950 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 0 [6])).val
theorem output3950_def : output3950 = (Flapjack.WordLangProgHOL.return 0 [6]) := by
  unfold output3950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3951 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3950)).val
theorem output3951_def : output3951 = (output3950) := by
  unfold output3951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3952 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3951 output3941)).val
theorem output3952_def : output3952 = (.seq output3951 output3941) := by
  unfold output3952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3953 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3952)).val
theorem output3953_def : output3953 = (output3952) := by
  unfold output3953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3954 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3949 output3953)).val
theorem output3954_def : output3954 = (.seq output3949 output3953) := by
  unfold output3954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3955 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3954)).val
theorem output3955_def : output3955 = (output3954) := by
  unfold output3955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3956 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3947 output3955)).val
theorem output3956_def : output3956 = (.seq output3947 output3955) := by
  unfold output3956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3957 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3956)).val
theorem output3957_def : output3957 = (output3956) := by
  unfold output3957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3958 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq (.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) output3957 output3941) .tick)).val
theorem output3958_def : output3958 = (.seq (.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) output3957 output3941) .tick) := by
  unfold output3958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3959 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3958)).val
theorem output3959_def : output3959 = (output3958) := by
  unfold output3959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3960 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3959 output3941)).val
theorem output3960_def : output3960 = (.seq output3959 output3941) := by
  unfold output3960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3961 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3960)).val
theorem output3961_def : output3961 = (output3960) := by
  unfold output3961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3962 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3937 output3961)).val
theorem output3962_def : output3962 = (.seq output3937 output3961) := by
  unfold output3962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3963 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3962)).val
theorem output3963_def : output3963 = (output3962) := by
  unfold output3963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3964 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3935 output3963)).val
theorem output3964_def : output3964 = (.seq output3935 output3963) := by
  unfold output3964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3965 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3964)).val
theorem output3965_def : output3965 = (output3964) := by
  unfold output3965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3966 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3929 output3965)).val
theorem output3966_def : output3966 = (.seq output3929 output3965) := by
  unfold output3966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3967 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3966)).val
theorem output3967_def : output3967 = (output3966) := by
  unfold output3967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3968 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3927 output3967)).val
theorem output3968_def : output3968 = (.seq output3927 output3967) := by
  unfold output3968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3969 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3968)).val
theorem output3969_def : output3969 = (output3968) := by
  unfold output3969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3970 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3925 output3969)).val
theorem output3970_def : output3970 = (.seq output3925 output3969) := by
  unfold output3970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3971 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3970)).val
theorem output3971_def : output3971 = (output3970) := by
  unfold output3971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3972 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2))).val
theorem output3972_def : output3972 = (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)) := by
  unfold output3972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3973 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3972)).val
theorem output3973_def : output3973 = (output3972) := by
  unfold output3973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3974 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 245#64))).val
theorem output3974_def : output3974 = (Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 245#64)) := by
  unfold output3974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3975 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3974)).val
theorem output3975_def : output3975 = (output3974) := by
  unfold output3975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3976 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64))).val
theorem output3976_def : output3976 = (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)) := by
  unfold output3976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3977 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3976)).val
theorem output3977_def : output3977 = (output3976) := by
  unfold output3977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3978 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64))).val
theorem output3978_def : output3978 = (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)) := by
  unfold output3978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3979 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3978)).val
theorem output3979_def : output3979 = (output3978) := by
  unfold output3979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3980 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq (.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 4) output3977 output3979) .tick)).val
theorem output3980_def : output3980 = (.seq (.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 4) output3977 output3979) .tick) := by
  unfold output3980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3981 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3980)).val
theorem output3981_def : output3981 = (output3980) := by
  unfold output3981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3982 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10))).val
theorem output3982_def : output3982 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)) := by
  unfold output3982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3983 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3982)).val
theorem output3983_def : output3983 = (output3982) := by
  unfold output3983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3984 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some ([6], (Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln), Flapjack.WordLangProgHOL.skip, 597, 170)) (some 620) []
    (some (10, Flapjack.WordLangProgHOL.raise 10, 597, 171)))
  Flapjack.WordLangProgHOL.tick)).val
theorem output3984_def : output3984 = (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some ([6], (Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln), Flapjack.WordLangProgHOL.skip, 597, 170)) (some 620) []
    (some (10, Flapjack.WordLangProgHOL.raise 10, 597, 171)))
  Flapjack.WordLangProgHOL.tick) := by
  unfold output3984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3985 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3984)).val
theorem output3985_def : output3985 = (output3984) := by
  unfold output3985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3986 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3986_def : output3986 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3987 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3986)).val
theorem output3987_def : output3987 = (output3986) := by
  unfold output3987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3988 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3985 output3987)).val
theorem output3988_def : output3988 = (.seq output3985 output3987) := by
  unfold output3988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3989 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3988)).val
theorem output3989_def : output3989 = (output3988) := by
  unfold output3989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3990 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3941 output3989)).val
theorem output3990_def : output3990 = (.seq output3941 output3989) := by
  unfold output3990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3991 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3990)).val
theorem output3991_def : output3991 = (output3990) := by
  unfold output3991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3992 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3941 output3991)).val
theorem output3992_def : output3992 = (.seq output3941 output3991) := by
  unfold output3992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3993 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3992)).val
theorem output3993_def : output3993 = (output3992) := by
  unfold output3993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3994 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64))).val
theorem output3994_def : output3994 = (Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)) := by
  unfold output3994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3995 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3994)).val
theorem output3995_def : output3995 = (output3994) := by
  unfold output3995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3996 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 0 [6])).val
theorem output3996_def : output3996 = (Flapjack.WordLangProgHOL.return 0 [6]) := by
  unfold output3996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3997 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3996)).val
theorem output3997_def : output3997 = (output3996) := by
  unfold output3997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3998 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3997 output3987)).val
theorem output3998_def : output3998 = (.seq output3997 output3987) := by
  unfold output3998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output3999 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output3998)).val
theorem output3999_def : output3999 = (output3998) := by
  unfold output3999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4000 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3995 output3999)).val
theorem output4000_def : output4000 = (.seq output3995 output3999) := by
  unfold output4000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4001 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4000)).val
theorem output4001_def : output4001 = (output4000) := by
  unfold output4001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4002 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3993 output4001)).val
theorem output4002_def : output4002 = (.seq output3993 output4001) := by
  unfold output4002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4003 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4002)).val
theorem output4003_def : output4003 = (output4002) := by
  unfold output4003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4004 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq (.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) output4003 output3987) .tick)).val
theorem output4004_def : output4004 = (.seq (.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) output4003 output3987) .tick) := by
  unfold output4004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4005 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4004)).val
theorem output4005_def : output4005 = (output4004) := by
  unfold output4005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4006 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4005 output3987)).val
theorem output4006_def : output4006 = (.seq output4005 output3987) := by
  unfold output4006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4007 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4006)).val
theorem output4007_def : output4007 = (output4006) := by
  unfold output4007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4008 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3983 output4007)).val
theorem output4008_def : output4008 = (.seq output3983 output4007) := by
  unfold output4008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4009 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4008)).val
theorem output4009_def : output4009 = (output4008) := by
  unfold output4009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4010 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3981 output4009)).val
theorem output4010_def : output4010 = (.seq output3981 output4009) := by
  unfold output4010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4011 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4010)).val
theorem output4011_def : output4011 = (output4010) := by
  unfold output4011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4012 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3975 output4011)).val
theorem output4012_def : output4012 = (.seq output3975 output4011) := by
  unfold output4012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4013 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4012)).val
theorem output4013_def : output4013 = (output4012) := by
  unfold output4013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4014 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3973 output4013)).val
theorem output4014_def : output4014 = (.seq output3973 output4013) := by
  unfold output4014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4015 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4014)).val
theorem output4015_def : output4015 = (output4014) := by
  unfold output4015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4016 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3971 output4015)).val
theorem output4016_def : output4016 = (.seq output3971 output4015) := by
  unfold output4016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4017 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4016)).val
theorem output4017_def : output4017 = (output4016) := by
  unfold output4017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4018 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2))).val
theorem output4018_def : output4018 = (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)) := by
  unfold output4018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4019 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4018)).val
theorem output4019_def : output4019 = (output4018) := by
  unfold output4019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4020 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 250#64))).val
theorem output4020_def : output4020 = (Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 250#64)) := by
  unfold output4020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4021 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4020)).val
theorem output4021_def : output4021 = (output4020) := by
  unfold output4021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4022 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64))).val
theorem output4022_def : output4022 = (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)) := by
  unfold output4022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4023 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4022)).val
theorem output4023_def : output4023 = (output4022) := by
  unfold output4023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4024 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64))).val
theorem output4024_def : output4024 = (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)) := by
  unfold output4024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4025 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4024)).val
theorem output4025_def : output4025 = (output4024) := by
  unfold output4025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4026 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq (.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 4) output4023 output4025) .tick)).val
theorem output4026_def : output4026 = (.seq (.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 4) output4023 output4025) .tick) := by
  unfold output4026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4027 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4026)).val
theorem output4027_def : output4027 = (output4026) := by
  unfold output4027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4028 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10))).val
theorem output4028_def : output4028 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)) := by
  unfold output4028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4029 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4028)).val
theorem output4029_def : output4029 = (output4028) := by
  unfold output4029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4030 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some ([6], (Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln), Flapjack.WordLangProgHOL.skip, 597, 172)) (some 626) []
    (some (10, Flapjack.WordLangProgHOL.raise 10, 597, 173)))
  Flapjack.WordLangProgHOL.tick)).val
theorem output4030_def : output4030 = (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some ([6], (Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln), Flapjack.WordLangProgHOL.skip, 597, 172)) (some 626) []
    (some (10, Flapjack.WordLangProgHOL.raise 10, 597, 173)))
  Flapjack.WordLangProgHOL.tick) := by
  unfold output4030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4031 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4030)).val
theorem output4031_def : output4031 = (output4030) := by
  unfold output4031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4032 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4032_def : output4032 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4033 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4032)).val
theorem output4033_def : output4033 = (output4032) := by
  unfold output4033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4034 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4031 output4033)).val
theorem output4034_def : output4034 = (.seq output4031 output4033) := by
  unfold output4034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4035 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4034)).val
theorem output4035_def : output4035 = (output4034) := by
  unfold output4035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4036 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3987 output4035)).val
theorem output4036_def : output4036 = (.seq output3987 output4035) := by
  unfold output4036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4037 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4036)).val
theorem output4037_def : output4037 = (output4036) := by
  unfold output4037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4038 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output3987 output4037)).val
theorem output4038_def : output4038 = (.seq output3987 output4037) := by
  unfold output4038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4039 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4038)).val
theorem output4039_def : output4039 = (output4038) := by
  unfold output4039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4040 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64))).val
theorem output4040_def : output4040 = (Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)) := by
  unfold output4040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4041 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4040)).val
theorem output4041_def : output4041 = (output4040) := by
  unfold output4041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4042 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 0 [6])).val
theorem output4042_def : output4042 = (Flapjack.WordLangProgHOL.return 0 [6]) := by
  unfold output4042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4043 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4042)).val
theorem output4043_def : output4043 = (output4042) := by
  unfold output4043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4044 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4043 output4033)).val
theorem output4044_def : output4044 = (.seq output4043 output4033) := by
  unfold output4044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4045 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4044)).val
theorem output4045_def : output4045 = (output4044) := by
  unfold output4045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4046 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4041 output4045)).val
theorem output4046_def : output4046 = (.seq output4041 output4045) := by
  unfold output4046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4047 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4046)).val
theorem output4047_def : output4047 = (output4046) := by
  unfold output4047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4048 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4039 output4047)).val
theorem output4048_def : output4048 = (.seq output4039 output4047) := by
  unfold output4048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4049 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4048)).val
theorem output4049_def : output4049 = (output4048) := by
  unfold output4049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4050 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq (.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) output4049 output4033) .tick)).val
theorem output4050_def : output4050 = (.seq (.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) output4049 output4033) .tick) := by
  unfold output4050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4051 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4050)).val
theorem output4051_def : output4051 = (output4050) := by
  unfold output4051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4052 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4051 output4033)).val
theorem output4052_def : output4052 = (.seq output4051 output4033) := by
  unfold output4052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4053 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4052)).val
theorem output4053_def : output4053 = (output4052) := by
  unfold output4053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4054 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4029 output4053)).val
theorem output4054_def : output4054 = (.seq output4029 output4053) := by
  unfold output4054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4055 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4054)).val
theorem output4055_def : output4055 = (output4054) := by
  unfold output4055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4056 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4027 output4055)).val
theorem output4056_def : output4056 = (.seq output4027 output4055) := by
  unfold output4056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4057 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4056)).val
theorem output4057_def : output4057 = (output4056) := by
  unfold output4057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4058 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4021 output4057)).val
theorem output4058_def : output4058 = (.seq output4021 output4057) := by
  unfold output4058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4059 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4058)).val
theorem output4059_def : output4059 = (output4058) := by
  unfold output4059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4060 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4019 output4059)).val
theorem output4060_def : output4060 = (.seq output4019 output4059) := by
  unfold output4060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4061 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4060)).val
theorem output4061_def : output4061 = (output4060) := by
  unfold output4061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4062 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4017 output4061)).val
theorem output4062_def : output4062 = (.seq output4017 output4061) := by
  unfold output4062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4063 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4062)).val
theorem output4063_def : output4063 = (output4062) := by
  unfold output4063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4064 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2))).val
theorem output4064_def : output4064 = (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)) := by
  unfold output4064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4065 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4064)).val
theorem output4065_def : output4065 = (output4064) := by
  unfold output4065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4066 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 253#64))).val
theorem output4066_def : output4066 = (Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 253#64)) := by
  unfold output4066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4067 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4066)).val
theorem output4067_def : output4067 = (output4066) := by
  unfold output4067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4068 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64))).val
theorem output4068_def : output4068 = (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)) := by
  unfold output4068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4069 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4068)).val
theorem output4069_def : output4069 = (output4068) := by
  unfold output4069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4070 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64))).val
theorem output4070_def : output4070 = (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)) := by
  unfold output4070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4071 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4070)).val
theorem output4071_def : output4071 = (output4070) := by
  unfold output4071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4072 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq (.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 4) output4069 output4071) .tick)).val
theorem output4072_def : output4072 = (.seq (.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 4) output4069 output4071) .tick) := by
  unfold output4072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4073 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4072)).val
theorem output4073_def : output4073 = (output4072) := by
  unfold output4073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4074 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10))).val
theorem output4074_def : output4074 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)) := by
  unfold output4074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4075 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4074)).val
theorem output4075_def : output4075 = (output4074) := by
  unfold output4075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4076 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some ([6], (Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln), Flapjack.WordLangProgHOL.skip, 597, 174)) (some 589) []
    (some (10, Flapjack.WordLangProgHOL.raise 10, 597, 175)))
  Flapjack.WordLangProgHOL.tick)).val
theorem output4076_def : output4076 = (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some ([6], (Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln), Flapjack.WordLangProgHOL.skip, 597, 174)) (some 589) []
    (some (10, Flapjack.WordLangProgHOL.raise 10, 597, 175)))
  Flapjack.WordLangProgHOL.tick) := by
  unfold output4076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4077 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4076)).val
theorem output4077_def : output4077 = (output4076) := by
  unfold output4077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4078 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4078_def : output4078 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4079 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4078)).val
theorem output4079_def : output4079 = (output4078) := by
  unfold output4079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4080 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4077 output4079)).val
theorem output4080_def : output4080 = (.seq output4077 output4079) := by
  unfold output4080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4081 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4080)).val
theorem output4081_def : output4081 = (output4080) := by
  unfold output4081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4082 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4033 output4081)).val
theorem output4082_def : output4082 = (.seq output4033 output4081) := by
  unfold output4082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4083 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4082)).val
theorem output4083_def : output4083 = (output4082) := by
  unfold output4083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4084 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4033 output4083)).val
theorem output4084_def : output4084 = (.seq output4033 output4083) := by
  unfold output4084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4085 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4084)).val
theorem output4085_def : output4085 = (output4084) := by
  unfold output4085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4086 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64))).val
theorem output4086_def : output4086 = (Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)) := by
  unfold output4086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4087 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4086)).val
theorem output4087_def : output4087 = (output4086) := by
  unfold output4087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4088 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 0 [6])).val
theorem output4088_def : output4088 = (Flapjack.WordLangProgHOL.return 0 [6]) := by
  unfold output4088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4089 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4088)).val
theorem output4089_def : output4089 = (output4088) := by
  unfold output4089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4090 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4089 output4079)).val
theorem output4090_def : output4090 = (.seq output4089 output4079) := by
  unfold output4090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4091 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4090)).val
theorem output4091_def : output4091 = (output4090) := by
  unfold output4091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4092 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4087 output4091)).val
theorem output4092_def : output4092 = (.seq output4087 output4091) := by
  unfold output4092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4093 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4092)).val
theorem output4093_def : output4093 = (output4092) := by
  unfold output4093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4094 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4085 output4093)).val
theorem output4094_def : output4094 = (.seq output4085 output4093) := by
  unfold output4094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4095 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4094)).val
theorem output4095_def : output4095 = (output4094) := by
  unfold output4095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4096 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq (.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) output4095 output4079) .tick)).val
theorem output4096_def : output4096 = (.seq (.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) output4095 output4079) .tick) := by
  unfold output4096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4097 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4096)).val
theorem output4097_def : output4097 = (output4096) := by
  unfold output4097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4098 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4097 output4079)).val
theorem output4098_def : output4098 = (.seq output4097 output4079) := by
  unfold output4098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4099 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4098)).val
theorem output4099_def : output4099 = (output4098) := by
  unfold output4099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4100 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4075 output4099)).val
theorem output4100_def : output4100 = (.seq output4075 output4099) := by
  unfold output4100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4101 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4100)).val
theorem output4101_def : output4101 = (output4100) := by
  unfold output4101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4102 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4073 output4101)).val
theorem output4102_def : output4102 = (.seq output4073 output4101) := by
  unfold output4102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4103 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4102)).val
theorem output4103_def : output4103 = (output4102) := by
  unfold output4103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4104 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4067 output4103)).val
theorem output4104_def : output4104 = (.seq output4067 output4103) := by
  unfold output4104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4105 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4104)).val
theorem output4105_def : output4105 = (output4104) := by
  unfold output4105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4106 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4065 output4105)).val
theorem output4106_def : output4106 = (.seq output4065 output4105) := by
  unfold output4106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4107 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4106)).val
theorem output4107_def : output4107 = (output4106) := by
  unfold output4107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4108 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4063 output4107)).val
theorem output4108_def : output4108 = (.seq output4063 output4107) := by
  unfold output4108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4109 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4108)).val
theorem output4109_def : output4109 = (output4108) := by
  unfold output4109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4110 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2))).val
theorem output4110_def : output4110 = (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.var 2)) := by
  unfold output4110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4111 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4110)).val
theorem output4111_def : output4111 = (output4110) := by
  unfold output4111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4112 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 255#64))).val
theorem output4112_def : output4112 = (Flapjack.WordLangProgHOL.assign 4 (Flapjack.WordLangExpHOL.const 255#64)) := by
  unfold output4112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4113 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4112)).val
theorem output4113_def : output4113 = (output4112) := by
  unfold output4113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4114 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64))).val
theorem output4114_def : output4114 = (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 1#64)) := by
  unfold output4114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4115 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4114)).val
theorem output4115_def : output4115 = (output4114) := by
  unfold output4115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4116 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64))).val
theorem output4116_def : output4116 = (Flapjack.WordLangProgHOL.assign 10 (Flapjack.WordLangExpHOL.const 0#64)) := by
  unfold output4116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4117 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4116)).val
theorem output4117_def : output4117 = (output4116) := by
  unfold output4117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4118 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq (.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 4) output4115 output4117) .tick)).val
theorem output4118_def : output4118 = (.seq (.ite (Flapjack.Cmp.equal) 10 (Flapjack.WordRegImm.reg 4) output4115 output4117) .tick) := by
  unfold output4118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4119 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4118)).val
theorem output4119_def : output4119 = (output4118) := by
  unfold output4119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4120 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10))).val
theorem output4120_def : output4120 = (Flapjack.WordLangProgHOL.assign 8 (Flapjack.WordLangExpHOL.var 10)) := by
  unfold output4120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4121 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4120)).val
theorem output4121_def : output4121 = (output4120) := by
  unfold output4121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4122 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some ([6], (Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln), Flapjack.WordLangProgHOL.skip, 597, 176)) (some 590) []
    (some (10, Flapjack.WordLangProgHOL.raise 10, 597, 177)))
  Flapjack.WordLangProgHOL.tick)).val
theorem output4122_def : output4122 = (Flapjack.WordLangProgHOL.seq
  (Flapjack.WordLangProgHOL.call
    (some ([6], (Flapjack.Spt.ls PUnit.unit, Flapjack.Spt.ln), Flapjack.WordLangProgHOL.skip, 597, 176)) (some 590) []
    (some (10, Flapjack.WordLangProgHOL.raise 10, 597, 177)))
  Flapjack.WordLangProgHOL.tick) := by
  unfold output4122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4123 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4122)).val
theorem output4123_def : output4123 = (output4122) := by
  unfold output4123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4124 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4124_def : output4124 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4125 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4124)).val
theorem output4125_def : output4125 = (output4124) := by
  unfold output4125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4126 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4123 output4125)).val
theorem output4126_def : output4126 = (.seq output4123 output4125) := by
  unfold output4126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4127 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4126)).val
theorem output4127_def : output4127 = (output4126) := by
  unfold output4127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4128 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4079 output4127)).val
theorem output4128_def : output4128 = (.seq output4079 output4127) := by
  unfold output4128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4129 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4128)).val
theorem output4129_def : output4129 = (output4128) := by
  unfold output4129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4130 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4079 output4129)).val
theorem output4130_def : output4130 = (.seq output4079 output4129) := by
  unfold output4130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4131 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4130)).val
theorem output4131_def : output4131 = (output4130) := by
  unfold output4131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4132 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64))).val
theorem output4132_def : output4132 = (Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 0#64)) := by
  unfold output4132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4133 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4132)).val
theorem output4133_def : output4133 = (output4132) := by
  unfold output4133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4134 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 0 [6])).val
theorem output4134_def : output4134 = (Flapjack.WordLangProgHOL.return 0 [6]) := by
  unfold output4134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4135 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4134)).val
theorem output4135_def : output4135 = (output4134) := by
  unfold output4135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4136 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4135 output4125)).val
theorem output4136_def : output4136 = (.seq output4135 output4125) := by
  unfold output4136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4137 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4136)).val
theorem output4137_def : output4137 = (output4136) := by
  unfold output4137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4138 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4133 output4137)).val
theorem output4138_def : output4138 = (.seq output4133 output4137) := by
  unfold output4138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4139 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4138)).val
theorem output4139_def : output4139 = (output4138) := by
  unfold output4139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4140 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4131 output4139)).val
theorem output4140_def : output4140 = (.seq output4131 output4139) := by
  unfold output4140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4141 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4140)).val
theorem output4141_def : output4141 = (output4140) := by
  unfold output4141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4142 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq (.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) output4141 output4125) .tick)).val
theorem output4142_def : output4142 = (.seq (.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.WordRegImm.imm 0#64) output4141 output4125) .tick) := by
  unfold output4142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4143 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4142)).val
theorem output4143_def : output4143 = (output4142) := by
  unfold output4143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4144 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4143 output4125)).val
theorem output4144_def : output4144 = (.seq output4143 output4125) := by
  unfold output4144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4145 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4144)).val
theorem output4145_def : output4145 = (output4144) := by
  unfold output4145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4146 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4121 output4145)).val
theorem output4146_def : output4146 = (.seq output4121 output4145) := by
  unfold output4146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4147 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4146)).val
theorem output4147_def : output4147 = (output4146) := by
  unfold output4147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4148 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4119 output4147)).val
theorem output4148_def : output4148 = (.seq output4119 output4147) := by
  unfold output4148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4149 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4148)).val
theorem output4149_def : output4149 = (output4148) := by
  unfold output4149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4150 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4113 output4149)).val
theorem output4150_def : output4150 = (.seq output4113 output4149) := by
  unfold output4150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4151 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4150)).val
theorem output4151_def : output4151 = (output4150) := by
  unfold output4151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4152 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4111 output4151)).val
theorem output4152_def : output4152 = (.seq output4111 output4151) := by
  unfold output4152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4153 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4152)).val
theorem output4153_def : output4153 = (output4152) := by
  unfold output4153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4154 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4109 output4153)).val
theorem output4154_def : output4154 = (.seq output4109 output4153) := by
  unfold output4154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4155 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4154)).val
theorem output4155_def : output4155 = (output4154) := by
  unfold output4155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4156 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 5#64))).val
theorem output4156_def : output4156 = (Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 5#64)) := by
  unfold output4156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4157 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4156)).val
theorem output4157_def : output4157 = (output4156) := by
  unfold output4157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4158 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 6))).val
theorem output4158_def : output4158 = (Flapjack.WordLangProgHOL.set (Flapjack.WordStore.temp 0#5) (Flapjack.WordLangExpHOL.var 6)) := by
  unfold output4158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4159 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4158)).val
theorem output4159_def : output4159 = (output4158) := by
  unfold output4159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4160 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4159 output4125)).val
theorem output4160_def : output4160 = (.seq output4159 output4125) := by
  unfold output4160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4161 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4160)).val
theorem output4161_def : output4161 = (output4160) := by
  unfold output4161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4162 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4161 output4125)).val
theorem output4162_def : output4162 = (.seq output4161 output4125) := by
  unfold output4162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4163 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4162)).val
theorem output4163_def : output4163 = (output4162) := by
  unfold output4163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4164 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4157 output4163)).val
theorem output4164_def : output4164 = (.seq output4157 output4163) := by
  unfold output4164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4165 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4164)).val
theorem output4165_def : output4165 = (output4164) := by
  unfold output4165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4166 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4125 output4165)).val
theorem output4166_def : output4166 = (.seq output4125 output4165) := by
  unfold output4166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4167 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4166)).val
theorem output4167_def : output4167 = (output4166) := by
  unfold output4167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4168 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 8#64))).val
theorem output4168_def : output4168 = (Flapjack.WordLangProgHOL.assign 6 (Flapjack.WordLangExpHOL.const 8#64)) := by
  unfold output4168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4169 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4168)).val
theorem output4169_def : output4169 = (output4168) := by
  unfold output4169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4170 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.raise 6)).val
theorem output4170_def : output4170 = (Flapjack.WordLangProgHOL.raise 6) := by
  unfold output4170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4171 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4170)).val
theorem output4171_def : output4171 = (output4170) := by
  unfold output4171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4172 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4169 output4171)).val
theorem output4172_def : output4172 = (.seq output4169 output4171) := by
  unfold output4172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4173 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4172)).val
theorem output4173_def : output4173 = (output4172) := by
  unfold output4173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4174 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4167 output4173)).val
theorem output4174_def : output4174 = (.seq output4167 output4173) := by
  unfold output4174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4175 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4174)).val
theorem output4175_def : output4175 = (output4174) := by
  unfold output4175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4176 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4155 output4175)).val
theorem output4176_def : output4176 = (.seq output4155 output4175) := by
  unfold output4176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4177 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4176)).val
theorem output4177_def : output4177 = (output4176) := by
  unfold output4177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4178 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (.seq output4177 output4139)).val
theorem output4178_def : output4178 = (.seq output4177 output4139) := by
  unfold output4178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

@[irreducible, cbv_opaque] def output4179 : WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := WordLangProgHOL (BitVec 64)) (output4178)).val
theorem output4179_def : output4179 = (output4178) := by
  unfold output4179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _

end InitECandidate.Proofs.FrontendStages.Word.Checkpoints533
