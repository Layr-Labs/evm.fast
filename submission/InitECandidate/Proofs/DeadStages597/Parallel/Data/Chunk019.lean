import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadStages597.Parallel.Data.Chunk018
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages597.Parallel
@[irreducible, cbv_opaque] def input4864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4864_def : input4864 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4864_def : output4864 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4864_skip : Flapjack.WordAlloc.isSkip output4864 = true := by
  rw [output4864_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4864 input4863)).val
theorem input4865_def : input4865 = (.seq input4864 input4863) := by
  unfold input4865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4863)).val
theorem output4865_def : output4865 = (output4863) := by
  unfold output4865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4865_skip : Flapjack.WordAlloc.isSkip output4865 = false := by
  rw [output4865_def]
  exact output4863_skip


def value893 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 1265

def value894 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 1261 value893 input4854 input4865)).val
theorem input4866_def : input4866 = (.ite value15 1261 value893 input4854 input4865) := by
  unfold input4866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 1261 value893 output4854 output4865)).val
theorem output4866_def : output4866 = (.ite value15 1261 value893 output4854 output4865) := by
  unfold output4866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4866_skip : Flapjack.WordAlloc.isSkip output4866 = false := by
  rw [output4866_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4866 input4825)).val
theorem input4867_def : input4867 = (.seq input4866 input4825) := by
  unfold input4867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4866 output4825)).val
theorem output4867_def : output4867 = (.seq output4866 output4825) := by
  unfold output4867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4867_skip : Flapjack.WordAlloc.isSkip output4867 = false := by
  rw [output4867_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1265 19#64))).val
theorem input4868_def : input4868 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1265 19#64)) := by
  unfold input4868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1265 19#64))).val
theorem output4868_def : output4868 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1265 19#64)) := by
  unfold output4868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4868_skip : Flapjack.WordAlloc.isSkip output4868 = false := by
  rw [output4868_def]
  kernel_rfl


def value895 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1261, 1241)])).val
theorem input4869_def : input4869 = (Flapjack.WordLangProgHOL.move 0 [(1261, 1241)]) := by
  unfold input4869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1261, 1241)])).val
theorem output4869_def : output4869 = (Flapjack.WordLangProgHOL.move 0 [(1261, 1241)]) := by
  unfold output4869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4869_skip : Flapjack.WordAlloc.isSkip output4869 = false := by
  rw [output4869_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4870_def : input4870 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4870_def : output4870 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4870_skip : Flapjack.WordAlloc.isSkip output4870 = false := by
  rw [output4870_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1257 0#64))).val
theorem input4871_def : input4871 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1257 0#64)) := by
  unfold input4871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4871_def : output4871 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4871_skip : Flapjack.WordAlloc.isSkip output4871 = true := by
  rw [output4871_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4872_def : input4872 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4872_def : output4872 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4872_skip : Flapjack.WordAlloc.isSkip output4872 = false := by
  rw [output4872_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1253 0#64))).val
theorem input4873_def : input4873 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1253 0#64)) := by
  unfold input4873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4873_def : output4873 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4873_skip : Flapjack.WordAlloc.isSkip output4873 = true := by
  rw [output4873_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4873 input4872)).val
theorem input4874_def : input4874 = (.seq input4873 input4872) := by
  unfold input4874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4872)).val
theorem output4874_def : output4874 = (output4872) := by
  unfold output4874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4874_skip : Flapjack.WordAlloc.isSkip output4874 = false := by
  rw [output4874_def]
  exact output4872_skip


@[irreducible, cbv_opaque] def input4875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4874 input4871)).val
theorem input4875_def : input4875 = (.seq input4874 input4871) := by
  unfold input4875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4874)).val
theorem output4875_def : output4875 = (output4874) := by
  unfold output4875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4875_skip : Flapjack.WordAlloc.isSkip output4875 = false := by
  rw [output4875_def]
  exact output4874_skip


@[irreducible, cbv_opaque] def input4876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1249 0#64))).val
theorem input4876_def : input4876 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1249 0#64)) := by
  unfold input4876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4876_def : output4876 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4876_skip : Flapjack.WordAlloc.isSkip output4876 = true := by
  rw [output4876_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1245 0#64))).val
theorem input4877_def : input4877 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1245 0#64)) := by
  unfold input4877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4877_def : output4877 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4877_skip : Flapjack.WordAlloc.isSkip output4877 = true := by
  rw [output4877_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1241 0#64))).val
theorem input4878_def : input4878 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1241 0#64)) := by
  unfold input4878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1241 0#64))).val
theorem output4878_def : output4878 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1241 0#64)) := by
  unfold output4878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4878_skip : Flapjack.WordAlloc.isSkip output4878 = false := by
  rw [output4878_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4879_def : input4879 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4879_def : output4879 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4879_skip : Flapjack.WordAlloc.isSkip output4879 = true := by
  rw [output4879_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4879 input4878)).val
theorem input4880_def : input4880 = (.seq input4879 input4878) := by
  unfold input4880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4878)).val
theorem output4880_def : output4880 = (output4878) := by
  unfold output4880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4880_skip : Flapjack.WordAlloc.isSkip output4880 = false := by
  rw [output4880_def]
  exact output4878_skip


@[irreducible, cbv_opaque] def input4881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4880 input4877)).val
theorem input4881_def : input4881 = (.seq input4880 input4877) := by
  unfold input4881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4880)).val
theorem output4881_def : output4881 = (output4880) := by
  unfold output4881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4881_skip : Flapjack.WordAlloc.isSkip output4881 = false := by
  rw [output4881_def]
  exact output4880_skip


@[irreducible, cbv_opaque] def input4882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4881 input4876)).val
theorem input4882_def : input4882 = (.seq input4881 input4876) := by
  unfold input4882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4881)).val
theorem output4882_def : output4882 = (output4881) := by
  unfold output4882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4882_skip : Flapjack.WordAlloc.isSkip output4882 = false := by
  rw [output4882_def]
  exact output4881_skip


def value896 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1237, 1205), (1233, 1221), (1229, 1225)])).val
theorem input4883_def : input4883 = (Flapjack.WordLangProgHOL.move 1 [(1237, 1205), (1233, 1221), (1229, 1225)]) := by
  unfold input4883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1237, 1205)])).val
theorem output4883_def : output4883 = (Flapjack.WordLangProgHOL.move 1 [(1237, 1205)]) := by
  unfold output4883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4883_skip : Flapjack.WordAlloc.isSkip output4883 = false := by
  rw [output4883_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4883 input4882)).val
theorem input4884_def : input4884 = (.seq input4883 input4882) := by
  unfold input4884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4883 output4882)).val
theorem output4884_def : output4884 = (.seq output4883 output4882) := by
  unfold output4884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4884_skip : Flapjack.WordAlloc.isSkip output4884 = false := by
  rw [output4884_def]
  kernel_rfl


def value897 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 1205 [2])).val
theorem input4885_def : input4885 = (Flapjack.WordLangProgHOL.return 1205 [2]) := by
  unfold input4885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 1205 [2])).val
theorem output4885_def : output4885 = (Flapjack.WordLangProgHOL.return 1205 [2]) := by
  unfold output4885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4885_skip : Flapjack.WordAlloc.isSkip output4885 = false := by
  rw [output4885_def]
  kernel_rfl


def value898 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 1225)])).val
theorem input4886_def : input4886 = (Flapjack.WordLangProgHOL.move 0 [(2, 1225)]) := by
  unfold input4886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 1225)])).val
theorem output4886_def : output4886 = (Flapjack.WordLangProgHOL.move 0 [(2, 1225)]) := by
  unfold output4886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4886_skip : Flapjack.WordAlloc.isSkip output4886 = false := by
  rw [output4886_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4886 input4885)).val
theorem input4887_def : input4887 = (.seq input4886 input4885) := by
  unfold input4887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4886 output4885)).val
theorem output4887_def : output4887 = (.seq output4886 output4885) := by
  unfold output4887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4887_skip : Flapjack.WordAlloc.isSkip output4887 = false := by
  rw [output4887_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1225 0#64))).val
theorem input4888_def : input4888 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1225 0#64)) := by
  unfold input4888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1225 0#64))).val
theorem output4888_def : output4888 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1225 0#64)) := by
  unfold output4888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4888_skip : Flapjack.WordAlloc.isSkip output4888 = false := by
  rw [output4888_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4889_def : input4889 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4889_def : output4889 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4889_skip : Flapjack.WordAlloc.isSkip output4889 = false := by
  rw [output4889_def]
  kernel_rfl


def value899 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln))))

@[irreducible, cbv_opaque] def input4890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1205, 1199)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1209, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(1217, 1209)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1221 0#64)))),
      597, 30))
  (some 512) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1205, 1199)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1213, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1213)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1217 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(1221, 1213)]))),
      597, 31)))).val
theorem input4890_def : input4890 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1205, 1199)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1209, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(1217, 1209)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1221 0#64)))),
      597, 30))
  (some 512) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1205, 1199)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1213, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1213)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1217 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(1221, 1213)]))),
      597, 31))) := by
  unfold input4890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(1205, 1199)], 597, 30))
  (some 512) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1205, 1199)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1213, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1213)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 31)))).val
theorem output4890_def : output4890 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(1205, 1199)], 597, 30))
  (some 512) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1205, 1199)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1213, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1213)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 31))) := by
  unfold output4890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4890_skip : Flapjack.WordAlloc.isSkip output4890 = false := by
  rw [output4890_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input4891_def : input4891 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input4891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4891_def : output4891 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4891_skip : Flapjack.WordAlloc.isSkip output4891 = true := by
  rw [output4891_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4891 input4890)).val
theorem input4892_def : input4892 = (.seq input4891 input4890) := by
  unfold input4892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4890)).val
theorem output4892_def : output4892 = (output4890) := by
  unfold output4892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4892_skip : Flapjack.WordAlloc.isSkip output4892 = false := by
  rw [output4892_def]
  exact output4890_skip


def value900 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1199, 1157)])).val
theorem input4893_def : input4893 = (Flapjack.WordLangProgHOL.move 0 [(1199, 1157)]) := by
  unfold input4893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1199, 1157)])).val
theorem output4893_def : output4893 = (Flapjack.WordLangProgHOL.move 0 [(1199, 1157)]) := by
  unfold output4893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4893_skip : Flapjack.WordAlloc.isSkip output4893 = false := by
  rw [output4893_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4893 input4892)).val
theorem input4894_def : input4894 = (.seq input4893 input4892) := by
  unfold input4894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4893 output4892)).val
theorem output4894_def : output4894 = (.seq output4893 output4892) := by
  unfold output4894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4894_skip : Flapjack.WordAlloc.isSkip output4894 = false := by
  rw [output4894_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1193 1#64))).val
theorem input4895_def : input4895 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1193 1#64)) := by
  unfold input4895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4895_def : output4895 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4895_skip : Flapjack.WordAlloc.isSkip output4895 = true := by
  rw [output4895_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4896_def : input4896 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4896_def : output4896 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4896_skip : Flapjack.WordAlloc.isSkip output4896 = false := by
  rw [output4896_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1189 1#64))).val
theorem input4897_def : input4897 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1189 1#64)) := by
  unfold input4897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4897_def : output4897 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4897_skip : Flapjack.WordAlloc.isSkip output4897 = true := by
  rw [output4897_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4897 input4896)).val
theorem input4898_def : input4898 = (.seq input4897 input4896) := by
  unfold input4898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4896)).val
theorem output4898_def : output4898 = (output4896) := by
  unfold output4898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4898_skip : Flapjack.WordAlloc.isSkip output4898 = false := by
  rw [output4898_def]
  exact output4896_skip


@[irreducible, cbv_opaque] def input4899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4898 input4895)).val
theorem input4899_def : input4899 = (.seq input4898 input4895) := by
  unfold input4899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4898)).val
theorem output4899_def : output4899 = (output4898) := by
  unfold output4899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4899_skip : Flapjack.WordAlloc.isSkip output4899 = false := by
  rw [output4899_def]
  exact output4898_skip


@[irreducible, cbv_opaque] def input4900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4899 input4894)).val
theorem input4900_def : input4900 = (.seq input4899 input4894) := by
  unfold input4900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4899 output4894)).val
theorem output4900_def : output4900 = (.seq output4899 output4894) := by
  unfold output4900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4900_skip : Flapjack.WordAlloc.isSkip output4900 = false := by
  rw [output4900_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4900 input4889)).val
theorem input4901_def : input4901 = (.seq input4900 input4889) := by
  unfold input4901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4900 output4889)).val
theorem output4901_def : output4901 = (.seq output4900 output4889) := by
  unfold output4901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4901_skip : Flapjack.WordAlloc.isSkip output4901 = false := by
  rw [output4901_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4901 input4888)).val
theorem input4902_def : input4902 = (.seq input4901 input4888) := by
  unfold input4902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4901 output4888)).val
theorem output4902_def : output4902 = (.seq output4901 output4888) := by
  unfold output4902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4902_skip : Flapjack.WordAlloc.isSkip output4902 = false := by
  rw [output4902_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4902 input4887)).val
theorem input4903_def : input4903 = (.seq input4902 input4887) := by
  unfold input4903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4902 output4887)).val
theorem output4903_def : output4903 = (.seq output4902 output4887) := by
  unfold output4903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4903_skip : Flapjack.WordAlloc.isSkip output4903 = false := by
  rw [output4903_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4903 input4884)).val
theorem input4904_def : input4904 = (.seq input4903 input4884) := by
  unfold input4904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4903 output4884)).val
theorem output4904_def : output4904 = (.seq output4903 output4884) := by
  unfold output4904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4904_skip : Flapjack.WordAlloc.isSkip output4904 = false := by
  rw [output4904_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1249, 1177)])).val
theorem input4905_def : input4905 = (Flapjack.WordLangProgHOL.move 2 [(1249, 1177)]) := by
  unfold input4905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4905_def : output4905 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4905_skip : Flapjack.WordAlloc.isSkip output4905 = true := by
  rw [output4905_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1245, 1185)])).val
theorem input4906_def : input4906 = (Flapjack.WordLangProgHOL.move 2 [(1245, 1185)]) := by
  unfold input4906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4906_def : output4906 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4906_skip : Flapjack.WordAlloc.isSkip output4906 = true := by
  rw [output4906_def]
  kernel_rfl


def value901 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1241, 1181)])).val
theorem input4907_def : input4907 = (Flapjack.WordLangProgHOL.move 2 [(1241, 1181)]) := by
  unfold input4907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1241, 1181)])).val
theorem output4907_def : output4907 = (Flapjack.WordLangProgHOL.move 2 [(1241, 1181)]) := by
  unfold output4907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4907_skip : Flapjack.WordAlloc.isSkip output4907 = false := by
  rw [output4907_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4908_def : input4908 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4908_def : output4908 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4908_skip : Flapjack.WordAlloc.isSkip output4908 = true := by
  rw [output4908_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4908 input4907)).val
theorem input4909_def : input4909 = (.seq input4908 input4907) := by
  unfold input4909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4907)).val
theorem output4909_def : output4909 = (output4907) := by
  unfold output4909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4909_skip : Flapjack.WordAlloc.isSkip output4909 = false := by
  rw [output4909_def]
  exact output4907_skip


@[irreducible, cbv_opaque] def input4910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4909 input4906)).val
theorem input4910_def : input4910 = (.seq input4909 input4906) := by
  unfold input4910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4909)).val
theorem output4910_def : output4910 = (output4909) := by
  unfold output4910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4910_skip : Flapjack.WordAlloc.isSkip output4910 = false := by
  rw [output4910_def]
  exact output4909_skip


@[irreducible, cbv_opaque] def input4911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4910 input4905)).val
theorem input4911_def : input4911 = (.seq input4910 input4905) := by
  unfold input4911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4910)).val
theorem output4911_def : output4911 = (output4910) := by
  unfold output4911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4911_skip : Flapjack.WordAlloc.isSkip output4911 = false := by
  rw [output4911_def]
  exact output4910_skip


def value902 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1237, 1157), (1233, 1181), (1229, 1149)])).val
theorem input4912_def : input4912 = (Flapjack.WordLangProgHOL.move 2 [(1237, 1157), (1233, 1181), (1229, 1149)]) := by
  unfold input4912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1237, 1157)])).val
theorem output4912_def : output4912 = (Flapjack.WordLangProgHOL.move 2 [(1237, 1157)]) := by
  unfold output4912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4912_skip : Flapjack.WordAlloc.isSkip output4912 = false := by
  rw [output4912_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4912 input4911)).val
theorem input4913_def : input4913 = (.seq input4912 input4911) := by
  unfold input4913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4912 output4911)).val
theorem output4913_def : output4913 = (.seq output4912 output4911) := by
  unfold output4913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4913_skip : Flapjack.WordAlloc.isSkip output4913 = false := by
  rw [output4913_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4914_def : input4914 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4914_def : output4914 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4914_skip : Flapjack.WordAlloc.isSkip output4914 = true := by
  rw [output4914_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4914 input4913)).val
theorem input4915_def : input4915 = (.seq input4914 input4913) := by
  unfold input4915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4913)).val
theorem output4915_def : output4915 = (output4913) := by
  unfold output4915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4915_skip : Flapjack.WordAlloc.isSkip output4915 = false := by
  rw [output4915_def]
  exact output4913_skip


def value903 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 1185

def value904 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 1181 value903 input4904 input4915)).val
theorem input4916_def : input4916 = (.ite value15 1181 value903 input4904 input4915) := by
  unfold input4916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 1181 value903 output4904 output4915)).val
theorem output4916_def : output4916 = (.ite value15 1181 value903 output4904 output4915) := by
  unfold output4916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4916_skip : Flapjack.WordAlloc.isSkip output4916 = false := by
  rw [output4916_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4916 input4875)).val
theorem input4917_def : input4917 = (.seq input4916 input4875) := by
  unfold input4917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4916 output4875)).val
theorem output4917_def : output4917 = (.seq output4916 output4875) := by
  unfold output4917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4917_skip : Flapjack.WordAlloc.isSkip output4917 = false := by
  rw [output4917_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1185 18#64))).val
theorem input4918_def : input4918 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1185 18#64)) := by
  unfold input4918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1185 18#64))).val
theorem output4918_def : output4918 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1185 18#64)) := by
  unfold output4918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4918_skip : Flapjack.WordAlloc.isSkip output4918 = false := by
  rw [output4918_def]
  kernel_rfl


def value905 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1181, 1161)])).val
theorem input4919_def : input4919 = (Flapjack.WordLangProgHOL.move 0 [(1181, 1161)]) := by
  unfold input4919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1181, 1161)])).val
theorem output4919_def : output4919 = (Flapjack.WordLangProgHOL.move 0 [(1181, 1161)]) := by
  unfold output4919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4919_skip : Flapjack.WordAlloc.isSkip output4919 = false := by
  rw [output4919_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4920_def : input4920 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4920_def : output4920 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4920_skip : Flapjack.WordAlloc.isSkip output4920 = false := by
  rw [output4920_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1177 0#64))).val
theorem input4921_def : input4921 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1177 0#64)) := by
  unfold input4921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4921_def : output4921 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4921_skip : Flapjack.WordAlloc.isSkip output4921 = true := by
  rw [output4921_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4922_def : input4922 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4922_def : output4922 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4922_skip : Flapjack.WordAlloc.isSkip output4922 = false := by
  rw [output4922_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1173 0#64))).val
theorem input4923_def : input4923 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1173 0#64)) := by
  unfold input4923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4923_def : output4923 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4923_skip : Flapjack.WordAlloc.isSkip output4923 = true := by
  rw [output4923_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4923 input4922)).val
theorem input4924_def : input4924 = (.seq input4923 input4922) := by
  unfold input4924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4922)).val
theorem output4924_def : output4924 = (output4922) := by
  unfold output4924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4924_skip : Flapjack.WordAlloc.isSkip output4924 = false := by
  rw [output4924_def]
  exact output4922_skip


@[irreducible, cbv_opaque] def input4925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4924 input4921)).val
theorem input4925_def : input4925 = (.seq input4924 input4921) := by
  unfold input4925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4924)).val
theorem output4925_def : output4925 = (output4924) := by
  unfold output4925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4925_skip : Flapjack.WordAlloc.isSkip output4925 = false := by
  rw [output4925_def]
  exact output4924_skip


@[irreducible, cbv_opaque] def input4926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1169 0#64))).val
theorem input4926_def : input4926 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1169 0#64)) := by
  unfold input4926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4926_def : output4926 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4926_skip : Flapjack.WordAlloc.isSkip output4926 = true := by
  rw [output4926_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1165 0#64))).val
theorem input4927_def : input4927 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1165 0#64)) := by
  unfold input4927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4927_def : output4927 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4927_skip : Flapjack.WordAlloc.isSkip output4927 = true := by
  rw [output4927_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1161 0#64))).val
theorem input4928_def : input4928 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1161 0#64)) := by
  unfold input4928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1161 0#64))).val
theorem output4928_def : output4928 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1161 0#64)) := by
  unfold output4928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4928_skip : Flapjack.WordAlloc.isSkip output4928 = false := by
  rw [output4928_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4929_def : input4929 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4929_def : output4929 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4929_skip : Flapjack.WordAlloc.isSkip output4929 = true := by
  rw [output4929_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4929 input4928)).val
theorem input4930_def : input4930 = (.seq input4929 input4928) := by
  unfold input4930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4928)).val
theorem output4930_def : output4930 = (output4928) := by
  unfold output4930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4930_skip : Flapjack.WordAlloc.isSkip output4930 = false := by
  rw [output4930_def]
  exact output4928_skip


@[irreducible, cbv_opaque] def input4931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4930 input4927)).val
theorem input4931_def : input4931 = (.seq input4930 input4927) := by
  unfold input4931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4930)).val
theorem output4931_def : output4931 = (output4930) := by
  unfold output4931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4931_skip : Flapjack.WordAlloc.isSkip output4931 = false := by
  rw [output4931_def]
  exact output4930_skip


@[irreducible, cbv_opaque] def input4932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4931 input4926)).val
theorem input4932_def : input4932 = (.seq input4931 input4926) := by
  unfold input4932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4931)).val
theorem output4932_def : output4932 = (output4931) := by
  unfold output4932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4932_skip : Flapjack.WordAlloc.isSkip output4932 = false := by
  rw [output4932_def]
  exact output4931_skip


def value906 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1157, 1125), (1153, 1141), (1149, 1145)])).val
theorem input4933_def : input4933 = (Flapjack.WordLangProgHOL.move 1 [(1157, 1125), (1153, 1141), (1149, 1145)]) := by
  unfold input4933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1157, 1125)])).val
theorem output4933_def : output4933 = (Flapjack.WordLangProgHOL.move 1 [(1157, 1125)]) := by
  unfold output4933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4933_skip : Flapjack.WordAlloc.isSkip output4933 = false := by
  rw [output4933_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4933 input4932)).val
theorem input4934_def : input4934 = (.seq input4933 input4932) := by
  unfold input4934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4933 output4932)).val
theorem output4934_def : output4934 = (.seq output4933 output4932) := by
  unfold output4934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4934_skip : Flapjack.WordAlloc.isSkip output4934 = false := by
  rw [output4934_def]
  kernel_rfl


def value907 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 1125 [2])).val
theorem input4935_def : input4935 = (Flapjack.WordLangProgHOL.return 1125 [2]) := by
  unfold input4935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 1125 [2])).val
theorem output4935_def : output4935 = (Flapjack.WordLangProgHOL.return 1125 [2]) := by
  unfold output4935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4935_skip : Flapjack.WordAlloc.isSkip output4935 = false := by
  rw [output4935_def]
  kernel_rfl


def value908 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 1145)])).val
theorem input4936_def : input4936 = (Flapjack.WordLangProgHOL.move 0 [(2, 1145)]) := by
  unfold input4936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 1145)])).val
theorem output4936_def : output4936 = (Flapjack.WordLangProgHOL.move 0 [(2, 1145)]) := by
  unfold output4936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4936_skip : Flapjack.WordAlloc.isSkip output4936 = false := by
  rw [output4936_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4936 input4935)).val
theorem input4937_def : input4937 = (.seq input4936 input4935) := by
  unfold input4937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4936 output4935)).val
theorem output4937_def : output4937 = (.seq output4936 output4935) := by
  unfold output4937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4937_skip : Flapjack.WordAlloc.isSkip output4937 = false := by
  rw [output4937_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1145 0#64))).val
theorem input4938_def : input4938 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1145 0#64)) := by
  unfold input4938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1145 0#64))).val
theorem output4938_def : output4938 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1145 0#64)) := by
  unfold output4938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4938_skip : Flapjack.WordAlloc.isSkip output4938 = false := by
  rw [output4938_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4939_def : input4939 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4939_def : output4939 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4939_skip : Flapjack.WordAlloc.isSkip output4939 = false := by
  rw [output4939_def]
  kernel_rfl


def value909 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))))

@[irreducible, cbv_opaque] def input4940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1125, 1119)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1129, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(1137, 1129)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1141 0#64)))),
      597, 28))
  (some 511) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1125, 1119)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1133, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1133)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1137 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(1141, 1133)]))),
      597, 29)))).val
theorem input4940_def : input4940 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1125, 1119)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1129, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(1137, 1129)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1141 0#64)))),
      597, 28))
  (some 511) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1125, 1119)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1133, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1133)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1137 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(1141, 1133)]))),
      597, 29))) := by
  unfold input4940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(1125, 1119)], 597, 28))
  (some 511) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1125, 1119)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1133, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1133)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 29)))).val
theorem output4940_def : output4940 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(1125, 1119)], 597, 28))
  (some 511) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1125, 1119)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1133, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1133)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 29))) := by
  unfold output4940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4940_skip : Flapjack.WordAlloc.isSkip output4940 = false := by
  rw [output4940_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input4941_def : input4941 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input4941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4941_def : output4941 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4941_skip : Flapjack.WordAlloc.isSkip output4941 = true := by
  rw [output4941_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4941 input4940)).val
theorem input4942_def : input4942 = (.seq input4941 input4940) := by
  unfold input4942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4940)).val
theorem output4942_def : output4942 = (output4940) := by
  unfold output4942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4942_skip : Flapjack.WordAlloc.isSkip output4942 = false := by
  rw [output4942_def]
  exact output4940_skip


def value910 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1119, 1073)])).val
theorem input4943_def : input4943 = (Flapjack.WordLangProgHOL.move 0 [(1119, 1073)]) := by
  unfold input4943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1119, 1073)])).val
theorem output4943_def : output4943 = (Flapjack.WordLangProgHOL.move 0 [(1119, 1073)]) := by
  unfold output4943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4943_skip : Flapjack.WordAlloc.isSkip output4943 = false := by
  rw [output4943_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4943 input4942)).val
theorem input4944_def : input4944 = (.seq input4943 input4942) := by
  unfold input4944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4943 output4942)).val
theorem output4944_def : output4944 = (.seq output4943 output4942) := by
  unfold output4944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4944_skip : Flapjack.WordAlloc.isSkip output4944 = false := by
  rw [output4944_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1113 1#64))).val
theorem input4945_def : input4945 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1113 1#64)) := by
  unfold input4945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4945_def : output4945 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4945_skip : Flapjack.WordAlloc.isSkip output4945 = true := by
  rw [output4945_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4946_def : input4946 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4946_def : output4946 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4946_skip : Flapjack.WordAlloc.isSkip output4946 = false := by
  rw [output4946_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1109 1#64))).val
theorem input4947_def : input4947 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1109 1#64)) := by
  unfold input4947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4947_def : output4947 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4947_skip : Flapjack.WordAlloc.isSkip output4947 = true := by
  rw [output4947_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4947 input4946)).val
theorem input4948_def : input4948 = (.seq input4947 input4946) := by
  unfold input4948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4946)).val
theorem output4948_def : output4948 = (output4946) := by
  unfold output4948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4948_skip : Flapjack.WordAlloc.isSkip output4948 = false := by
  rw [output4948_def]
  exact output4946_skip


@[irreducible, cbv_opaque] def input4949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4948 input4945)).val
theorem input4949_def : input4949 = (.seq input4948 input4945) := by
  unfold input4949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4948)).val
theorem output4949_def : output4949 = (output4948) := by
  unfold output4949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4949_skip : Flapjack.WordAlloc.isSkip output4949 = false := by
  rw [output4949_def]
  exact output4948_skip


@[irreducible, cbv_opaque] def input4950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4949 input4944)).val
theorem input4950_def : input4950 = (.seq input4949 input4944) := by
  unfold input4950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4949 output4944)).val
theorem output4950_def : output4950 = (.seq output4949 output4944) := by
  unfold output4950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4950_skip : Flapjack.WordAlloc.isSkip output4950 = false := by
  rw [output4950_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4950 input4939)).val
theorem input4951_def : input4951 = (.seq input4950 input4939) := by
  unfold input4951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4950 output4939)).val
theorem output4951_def : output4951 = (.seq output4950 output4939) := by
  unfold output4951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4951_skip : Flapjack.WordAlloc.isSkip output4951 = false := by
  rw [output4951_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4951 input4938)).val
theorem input4952_def : input4952 = (.seq input4951 input4938) := by
  unfold input4952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4951 output4938)).val
theorem output4952_def : output4952 = (.seq output4951 output4938) := by
  unfold output4952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4952_skip : Flapjack.WordAlloc.isSkip output4952 = false := by
  rw [output4952_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4952 input4937)).val
theorem input4953_def : input4953 = (.seq input4952 input4937) := by
  unfold input4953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4952 output4937)).val
theorem output4953_def : output4953 = (.seq output4952 output4937) := by
  unfold output4953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4953_skip : Flapjack.WordAlloc.isSkip output4953 = false := by
  rw [output4953_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4953 input4934)).val
theorem input4954_def : input4954 = (.seq input4953 input4934) := by
  unfold input4954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4953 output4934)).val
theorem output4954_def : output4954 = (.seq output4953 output4934) := by
  unfold output4954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4954_skip : Flapjack.WordAlloc.isSkip output4954 = false := by
  rw [output4954_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1169, 1097)])).val
theorem input4955_def : input4955 = (Flapjack.WordLangProgHOL.move 2 [(1169, 1097)]) := by
  unfold input4955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4955_def : output4955 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4955_skip : Flapjack.WordAlloc.isSkip output4955 = true := by
  rw [output4955_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1165, 1105)])).val
theorem input4956_def : input4956 = (Flapjack.WordLangProgHOL.move 2 [(1165, 1105)]) := by
  unfold input4956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4956_def : output4956 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4956_skip : Flapjack.WordAlloc.isSkip output4956 = true := by
  rw [output4956_def]
  kernel_rfl


def value911 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1161, 1101)])).val
theorem input4957_def : input4957 = (Flapjack.WordLangProgHOL.move 2 [(1161, 1101)]) := by
  unfold input4957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1161, 1101)])).val
theorem output4957_def : output4957 = (Flapjack.WordLangProgHOL.move 2 [(1161, 1101)]) := by
  unfold output4957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4957_skip : Flapjack.WordAlloc.isSkip output4957 = false := by
  rw [output4957_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4958_def : input4958 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4958_def : output4958 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4958_skip : Flapjack.WordAlloc.isSkip output4958 = true := by
  rw [output4958_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4958 input4957)).val
theorem input4959_def : input4959 = (.seq input4958 input4957) := by
  unfold input4959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4957)).val
theorem output4959_def : output4959 = (output4957) := by
  unfold output4959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4959_skip : Flapjack.WordAlloc.isSkip output4959 = false := by
  rw [output4959_def]
  exact output4957_skip


@[irreducible, cbv_opaque] def input4960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4959 input4956)).val
theorem input4960_def : input4960 = (.seq input4959 input4956) := by
  unfold input4960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4959)).val
theorem output4960_def : output4960 = (output4959) := by
  unfold output4960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4960_skip : Flapjack.WordAlloc.isSkip output4960 = false := by
  rw [output4960_def]
  exact output4959_skip


@[irreducible, cbv_opaque] def input4961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4960 input4955)).val
theorem input4961_def : input4961 = (.seq input4960 input4955) := by
  unfold input4961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4960)).val
theorem output4961_def : output4961 = (output4960) := by
  unfold output4961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4961_skip : Flapjack.WordAlloc.isSkip output4961 = false := by
  rw [output4961_def]
  exact output4960_skip


def value912 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1157, 1073), (1153, 1101), (1149, 1077)])).val
theorem input4962_def : input4962 = (Flapjack.WordLangProgHOL.move 2 [(1157, 1073), (1153, 1101), (1149, 1077)]) := by
  unfold input4962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1157, 1073)])).val
theorem output4962_def : output4962 = (Flapjack.WordLangProgHOL.move 2 [(1157, 1073)]) := by
  unfold output4962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4962_skip : Flapjack.WordAlloc.isSkip output4962 = false := by
  rw [output4962_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4962 input4961)).val
theorem input4963_def : input4963 = (.seq input4962 input4961) := by
  unfold input4963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4962 output4961)).val
theorem output4963_def : output4963 = (.seq output4962 output4961) := by
  unfold output4963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4963_skip : Flapjack.WordAlloc.isSkip output4963 = false := by
  rw [output4963_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4964_def : input4964 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4964_def : output4964 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4964_skip : Flapjack.WordAlloc.isSkip output4964 = true := by
  rw [output4964_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4964 input4963)).val
theorem input4965_def : input4965 = (.seq input4964 input4963) := by
  unfold input4965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4963)).val
theorem output4965_def : output4965 = (output4963) := by
  unfold output4965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4965_skip : Flapjack.WordAlloc.isSkip output4965 = false := by
  rw [output4965_def]
  exact output4963_skip


def value913 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 1105

def value914 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 1101 value913 input4954 input4965)).val
theorem input4966_def : input4966 = (.ite value15 1101 value913 input4954 input4965) := by
  unfold input4966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 1101 value913 output4954 output4965)).val
theorem output4966_def : output4966 = (.ite value15 1101 value913 output4954 output4965) := by
  unfold output4966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4966_skip : Flapjack.WordAlloc.isSkip output4966 = false := by
  rw [output4966_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4966 input4925)).val
theorem input4967_def : input4967 = (.seq input4966 input4925) := by
  unfold input4967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4966 output4925)).val
theorem output4967_def : output4967 = (.seq output4966 output4925) := by
  unfold output4967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4967_skip : Flapjack.WordAlloc.isSkip output4967 = false := by
  rw [output4967_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1105 17#64))).val
theorem input4968_def : input4968 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1105 17#64)) := by
  unfold input4968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1105 17#64))).val
theorem output4968_def : output4968 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1105 17#64)) := by
  unfold output4968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4968_skip : Flapjack.WordAlloc.isSkip output4968 = false := by
  rw [output4968_def]
  kernel_rfl


def value915 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1101, 1081)])).val
theorem input4969_def : input4969 = (Flapjack.WordLangProgHOL.move 0 [(1101, 1081)]) := by
  unfold input4969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1101, 1081)])).val
theorem output4969_def : output4969 = (Flapjack.WordLangProgHOL.move 0 [(1101, 1081)]) := by
  unfold output4969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4969_skip : Flapjack.WordAlloc.isSkip output4969 = false := by
  rw [output4969_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4970_def : input4970 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4970_def : output4970 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4970_skip : Flapjack.WordAlloc.isSkip output4970 = false := by
  rw [output4970_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1097 0#64))).val
theorem input4971_def : input4971 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1097 0#64)) := by
  unfold input4971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4971_def : output4971 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4971_skip : Flapjack.WordAlloc.isSkip output4971 = true := by
  rw [output4971_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4972_def : input4972 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4972_def : output4972 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4972_skip : Flapjack.WordAlloc.isSkip output4972 = false := by
  rw [output4972_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1093 0#64))).val
theorem input4973_def : input4973 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1093 0#64)) := by
  unfold input4973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4973_def : output4973 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4973_skip : Flapjack.WordAlloc.isSkip output4973 = true := by
  rw [output4973_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4973 input4972)).val
theorem input4974_def : input4974 = (.seq input4973 input4972) := by
  unfold input4974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4972)).val
theorem output4974_def : output4974 = (output4972) := by
  unfold output4974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4974_skip : Flapjack.WordAlloc.isSkip output4974 = false := by
  rw [output4974_def]
  exact output4972_skip


@[irreducible, cbv_opaque] def input4975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4974 input4971)).val
theorem input4975_def : input4975 = (.seq input4974 input4971) := by
  unfold input4975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4974)).val
theorem output4975_def : output4975 = (output4974) := by
  unfold output4975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4975_skip : Flapjack.WordAlloc.isSkip output4975 = false := by
  rw [output4975_def]
  exact output4974_skip


@[irreducible, cbv_opaque] def input4976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1089 0#64))).val
theorem input4976_def : input4976 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1089 0#64)) := by
  unfold input4976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4976_def : output4976 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4976_skip : Flapjack.WordAlloc.isSkip output4976 = true := by
  rw [output4976_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1085 0#64))).val
theorem input4977_def : input4977 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1085 0#64)) := by
  unfold input4977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4977_def : output4977 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4977_skip : Flapjack.WordAlloc.isSkip output4977 = true := by
  rw [output4977_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1081 0#64))).val
theorem input4978_def : input4978 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1081 0#64)) := by
  unfold input4978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1081 0#64))).val
theorem output4978_def : output4978 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1081 0#64)) := by
  unfold output4978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4978_skip : Flapjack.WordAlloc.isSkip output4978 = false := by
  rw [output4978_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1077, 1065)])).val
theorem input4979_def : input4979 = (Flapjack.WordLangProgHOL.move 1 [(1077, 1065)]) := by
  unfold input4979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4979_def : output4979 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4979_skip : Flapjack.WordAlloc.isSkip output4979 = true := by
  rw [output4979_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input4980_def : input4980 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input4980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4980_def : output4980 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4980_skip : Flapjack.WordAlloc.isSkip output4980 = true := by
  rw [output4980_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4980 input4979)).val
theorem input4981_def : input4981 = (.seq input4980 input4979) := by
  unfold input4981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4979)).val
theorem output4981_def : output4981 = (output4979) := by
  unfold output4981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4981_skip : Flapjack.WordAlloc.isSkip output4981 = true := by
  rw [output4981_def]
  exact output4979_skip


@[irreducible, cbv_opaque] def input4982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4981 input4978)).val
theorem input4982_def : input4982 = (.seq input4981 input4978) := by
  unfold input4982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4978)).val
theorem output4982_def : output4982 = (output4978) := by
  unfold output4982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4982_skip : Flapjack.WordAlloc.isSkip output4982 = false := by
  rw [output4982_def]
  exact output4978_skip


@[irreducible, cbv_opaque] def input4983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4982 input4977)).val
theorem input4983_def : input4983 = (.seq input4982 input4977) := by
  unfold input4983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4982)).val
theorem output4983_def : output4983 = (output4982) := by
  unfold output4983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4983_skip : Flapjack.WordAlloc.isSkip output4983 = false := by
  rw [output4983_def]
  exact output4982_skip


@[irreducible, cbv_opaque] def input4984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4983 input4976)).val
theorem input4984_def : input4984 = (.seq input4983 input4976) := by
  unfold input4984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4983)).val
theorem output4984_def : output4984 = (output4983) := by
  unfold output4984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4984_skip : Flapjack.WordAlloc.isSkip output4984 = false := by
  rw [output4984_def]
  exact output4983_skip


def value916 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1073, 1045), (1069, 1061)])).val
theorem input4985_def : input4985 = (Flapjack.WordLangProgHOL.move 1 [(1073, 1045), (1069, 1061)]) := by
  unfold input4985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(1073, 1045)])).val
theorem output4985_def : output4985 = (Flapjack.WordLangProgHOL.move 1 [(1073, 1045)]) := by
  unfold output4985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4985_skip : Flapjack.WordAlloc.isSkip output4985 = false := by
  rw [output4985_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4985 input4984)).val
theorem input4986_def : input4986 = (.seq input4985 input4984) := by
  unfold input4986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4985 output4984)).val
theorem output4986_def : output4986 = (.seq output4985 output4984) := by
  unfold output4986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4986_skip : Flapjack.WordAlloc.isSkip output4986 = false := by
  rw [output4986_def]
  kernel_rfl


def value917 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 1045 [2])).val
theorem input4987_def : input4987 = (Flapjack.WordLangProgHOL.return 1045 [2]) := by
  unfold input4987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 1045 [2])).val
theorem output4987_def : output4987 = (Flapjack.WordLangProgHOL.return 1045 [2]) := by
  unfold output4987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4987_skip : Flapjack.WordAlloc.isSkip output4987 = false := by
  rw [output4987_def]
  kernel_rfl


def value918 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input4988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 1065)])).val
theorem input4988_def : input4988 = (Flapjack.WordLangProgHOL.move 0 [(2, 1065)]) := by
  unfold input4988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 1065)])).val
theorem output4988_def : output4988 = (Flapjack.WordLangProgHOL.move 0 [(2, 1065)]) := by
  unfold output4988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4988_skip : Flapjack.WordAlloc.isSkip output4988 = false := by
  rw [output4988_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4988 input4987)).val
theorem input4989_def : input4989 = (.seq input4988 input4987) := by
  unfold input4989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4988 output4987)).val
theorem output4989_def : output4989 = (.seq output4988 output4987) := by
  unfold output4989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4989_skip : Flapjack.WordAlloc.isSkip output4989 = false := by
  rw [output4989_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1065 0#64))).val
theorem input4990_def : input4990 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1065 0#64)) := by
  unfold input4990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1065 0#64))).val
theorem output4990_def : output4990 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1065 0#64)) := by
  unfold output4990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4990_skip : Flapjack.WordAlloc.isSkip output4990 = false := by
  rw [output4990_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4991_def : input4991 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4991_def : output4991 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4991_skip : Flapjack.WordAlloc.isSkip output4991 = false := by
  rw [output4991_def]
  kernel_rfl


def value919 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
          Flapjack.Spt.ln))))

@[irreducible, cbv_opaque] def input4992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1045, 1039)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1049, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(1057, 1049)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1061 0#64)))),
      597, 26))
  (some 510) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1045, 1039)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1053, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1053)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1057 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(1061, 1053)]))),
      597, 27)))).val
theorem input4992_def : input4992 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1045, 1039)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1049, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(1057, 1049)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1061 0#64)))),
      597, 26))
  (some 510) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1045, 1039)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1053, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1053)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1057 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(1061, 1053)]))),
      597, 27))) := by
  unfold input4992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(1045, 1039)], 597, 26))
  (some 510) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1045, 1039)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1053, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1053)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 27)))).val
theorem output4992_def : output4992 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(1045, 1039)], 597, 26))
  (some 510) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1045, 1039)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1053, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1053)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 27))) := by
  unfold output4992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4992_skip : Flapjack.WordAlloc.isSkip output4992 = false := by
  rw [output4992_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input4993_def : input4993 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input4993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4993_def : output4993 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4993_skip : Flapjack.WordAlloc.isSkip output4993 = true := by
  rw [output4993_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4993 input4992)).val
theorem input4994_def : input4994 = (.seq input4993 input4992) := by
  unfold input4994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4992)).val
theorem output4994_def : output4994 = (output4992) := by
  unfold output4994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4994_skip : Flapjack.WordAlloc.isSkip output4994 = false := by
  rw [output4994_def]
  exact output4992_skip


@[irreducible, cbv_opaque] def input4995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1039, 13)])).val
theorem input4995_def : input4995 = (Flapjack.WordLangProgHOL.move 0 [(1039, 13)]) := by
  unfold input4995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1039, 13)])).val
theorem output4995_def : output4995 = (Flapjack.WordLangProgHOL.move 0 [(1039, 13)]) := by
  unfold output4995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4995_skip : Flapjack.WordAlloc.isSkip output4995 = false := by
  rw [output4995_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4995 input4994)).val
theorem input4996_def : input4996 = (.seq input4995 input4994) := by
  unfold input4996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output4995 output4994)).val
theorem output4996_def : output4996 = (.seq output4995 output4994) := by
  unfold output4996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4996_skip : Flapjack.WordAlloc.isSkip output4996 = false := by
  rw [output4996_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1033 1#64))).val
theorem input4997_def : input4997 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1033 1#64)) := by
  unfold input4997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4997_def : output4997 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4997_skip : Flapjack.WordAlloc.isSkip output4997 = true := by
  rw [output4997_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input4998_def : input4998 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input4998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output4998_def : output4998 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output4998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4998_skip : Flapjack.WordAlloc.isSkip output4998 = false := by
  rw [output4998_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input4999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1029 1#64))).val
theorem input4999_def : input4999 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1029 1#64)) := by
  unfold input4999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output4999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output4999_def : output4999 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output4999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output4999_skip : Flapjack.WordAlloc.isSkip output4999 = true := by
  rw [output4999_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input4999 input4998)).val
theorem input5000_def : input5000 = (.seq input4999 input4998) := by
  unfold input5000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output4998)).val
theorem output5000_def : output5000 = (output4998) := by
  unfold output5000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5000_skip : Flapjack.WordAlloc.isSkip output5000 = false := by
  rw [output5000_def]
  exact output4998_skip


@[irreducible, cbv_opaque] def input5001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5000 input4997)).val
theorem input5001_def : input5001 = (.seq input5000 input4997) := by
  unfold input5001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output5000)).val
theorem output5001_def : output5001 = (output5000) := by
  unfold output5001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5001_skip : Flapjack.WordAlloc.isSkip output5001 = false := by
  rw [output5001_def]
  exact output5000_skip


@[irreducible, cbv_opaque] def input5002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5001 input4996)).val
theorem input5002_def : input5002 = (.seq input5001 input4996) := by
  unfold input5002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5001 output4996)).val
theorem output5002_def : output5002 = (.seq output5001 output4996) := by
  unfold output5002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5002_skip : Flapjack.WordAlloc.isSkip output5002 = false := by
  rw [output5002_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5002 input4991)).val
theorem input5003_def : input5003 = (.seq input5002 input4991) := by
  unfold input5003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5002 output4991)).val
theorem output5003_def : output5003 = (.seq output5002 output4991) := by
  unfold output5003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5003_skip : Flapjack.WordAlloc.isSkip output5003 = false := by
  rw [output5003_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5003 input4990)).val
theorem input5004_def : input5004 = (.seq input5003 input4990) := by
  unfold input5004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5003 output4990)).val
theorem output5004_def : output5004 = (.seq output5003 output4990) := by
  unfold output5004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5004_skip : Flapjack.WordAlloc.isSkip output5004 = false := by
  rw [output5004_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5004 input4989)).val
theorem input5005_def : input5005 = (.seq input5004 input4989) := by
  unfold input5005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5004 output4989)).val
theorem output5005_def : output5005 = (.seq output5004 output4989) := by
  unfold output5005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5005_skip : Flapjack.WordAlloc.isSkip output5005 = false := by
  rw [output5005_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5005 input4986)).val
theorem input5006_def : input5006 = (.seq input5005 input4986) := by
  unfold input5006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5005 output4986)).val
theorem output5006_def : output5006 = (.seq output5005 output4986) := by
  unfold output5006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5006_skip : Flapjack.WordAlloc.isSkip output5006 = false := by
  rw [output5006_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1089, 1017)])).val
theorem input5007_def : input5007 = (Flapjack.WordLangProgHOL.move 2 [(1089, 1017)]) := by
  unfold input5007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5007_def : output5007 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5007_skip : Flapjack.WordAlloc.isSkip output5007 = true := by
  rw [output5007_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1085, 1025)])).val
theorem input5008_def : input5008 = (Flapjack.WordLangProgHOL.move 2 [(1085, 1025)]) := by
  unfold input5008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5008_def : output5008 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5008_skip : Flapjack.WordAlloc.isSkip output5008 = true := by
  rw [output5008_def]
  kernel_rfl


def value920 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1081, 1021)])).val
theorem input5009_def : input5009 = (Flapjack.WordLangProgHOL.move 2 [(1081, 1021)]) := by
  unfold input5009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1081, 1021)])).val
theorem output5009_def : output5009 = (Flapjack.WordLangProgHOL.move 2 [(1081, 1021)]) := by
  unfold output5009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5009_skip : Flapjack.WordAlloc.isSkip output5009 = false := by
  rw [output5009_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1077 0#64))).val
theorem input5010_def : input5010 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1077 0#64)) := by
  unfold input5010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5010_def : output5010 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5010_skip : Flapjack.WordAlloc.isSkip output5010 = true := by
  rw [output5010_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input5011_def : input5011 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input5011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5011_def : output5011 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5011_skip : Flapjack.WordAlloc.isSkip output5011 = true := by
  rw [output5011_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5011 input5010)).val
theorem input5012_def : input5012 = (.seq input5011 input5010) := by
  unfold input5012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output5010)).val
theorem output5012_def : output5012 = (output5010) := by
  unfold output5012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5012_skip : Flapjack.WordAlloc.isSkip output5012 = true := by
  rw [output5012_def]
  exact output5010_skip


@[irreducible, cbv_opaque] def input5013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5012 input5009)).val
theorem input5013_def : input5013 = (.seq input5012 input5009) := by
  unfold input5013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output5009)).val
theorem output5013_def : output5013 = (output5009) := by
  unfold output5013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5013_skip : Flapjack.WordAlloc.isSkip output5013 = false := by
  rw [output5013_def]
  exact output5009_skip


@[irreducible, cbv_opaque] def input5014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5013 input5008)).val
theorem input5014_def : input5014 = (.seq input5013 input5008) := by
  unfold input5014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output5013)).val
theorem output5014_def : output5014 = (output5013) := by
  unfold output5014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5014_skip : Flapjack.WordAlloc.isSkip output5014 = false := by
  rw [output5014_def]
  exact output5013_skip


@[irreducible, cbv_opaque] def input5015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5014 input5007)).val
theorem input5015_def : input5015 = (.seq input5014 input5007) := by
  unfold input5015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output5014)).val
theorem output5015_def : output5015 = (output5014) := by
  unfold output5015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5015_skip : Flapjack.WordAlloc.isSkip output5015 = false := by
  rw [output5015_def]
  exact output5014_skip


def value921 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1073, 13), (1069, 1021)])).val
theorem input5016_def : input5016 = (Flapjack.WordLangProgHOL.move 2 [(1073, 13), (1069, 1021)]) := by
  unfold input5016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(1073, 13)])).val
theorem output5016_def : output5016 = (Flapjack.WordLangProgHOL.move 2 [(1073, 13)]) := by
  unfold output5016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5016_skip : Flapjack.WordAlloc.isSkip output5016 = false := by
  rw [output5016_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5016 input5015)).val
theorem input5017_def : input5017 = (.seq input5016 input5015) := by
  unfold input5017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5016 output5015)).val
theorem output5017_def : output5017 = (.seq output5016 output5015) := by
  unfold output5017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5017_skip : Flapjack.WordAlloc.isSkip output5017 = false := by
  rw [output5017_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input5018_def : input5018 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input5018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5018_def : output5018 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5018_skip : Flapjack.WordAlloc.isSkip output5018 = true := by
  rw [output5018_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5018 input5017)).val
theorem input5019_def : input5019 = (.seq input5018 input5017) := by
  unfold input5019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output5017)).val
theorem output5019_def : output5019 = (output5017) := by
  unfold output5019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5019_skip : Flapjack.WordAlloc.isSkip output5019 = false := by
  rw [output5019_def]
  exact output5017_skip


def value922 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 1025

def value923 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        PUnit.unit Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 1021 value922 input5006 input5019)).val
theorem input5020_def : input5020 = (.ite value15 1021 value922 input5006 input5019) := by
  unfold input5020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 1021 value922 output5006 output5019)).val
theorem output5020_def : output5020 = (.ite value15 1021 value922 output5006 output5019) := by
  unfold output5020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5020_skip : Flapjack.WordAlloc.isSkip output5020 = false := by
  rw [output5020_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5020 input4975)).val
theorem input5021_def : input5021 = (.seq input5020 input4975) := by
  unfold input5021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5020 output4975)).val
theorem output5021_def : output5021 = (.seq output5020 output4975) := by
  unfold output5021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5021_skip : Flapjack.WordAlloc.isSkip output5021 = false := by
  rw [output5021_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1025 16#64))).val
theorem input5022_def : input5022 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1025 16#64)) := by
  unfold input5022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1025 16#64))).val
theorem output5022_def : output5022 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1025 16#64)) := by
  unfold output5022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5022_skip : Flapjack.WordAlloc.isSkip output5022 = false := by
  rw [output5022_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1021, 37)])).val
theorem input5023_def : input5023 = (Flapjack.WordLangProgHOL.move 0 [(1021, 37)]) := by
  unfold input5023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1021, 37)])).val
theorem output5023_def : output5023 = (Flapjack.WordLangProgHOL.move 0 [(1021, 37)]) := by
  unfold output5023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5023_skip : Flapjack.WordAlloc.isSkip output5023 = false := by
  rw [output5023_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1017 0#64))).val
theorem input5024_def : input5024 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1017 0#64)) := by
  unfold input5024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5024_def : output5024 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5024_skip : Flapjack.WordAlloc.isSkip output5024 = true := by
  rw [output5024_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input5025_def : input5025 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input5025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output5025_def : output5025 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output5025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5025_skip : Flapjack.WordAlloc.isSkip output5025 = false := by
  rw [output5025_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1013 0#64))).val
theorem input5026_def : input5026 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1013 0#64)) := by
  unfold input5026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5026_def : output5026 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5026_skip : Flapjack.WordAlloc.isSkip output5026 = true := by
  rw [output5026_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5026 input5025)).val
theorem input5027_def : input5027 = (.seq input5026 input5025) := by
  unfold input5027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output5025)).val
theorem output5027_def : output5027 = (output5025) := by
  unfold output5027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5027_skip : Flapjack.WordAlloc.isSkip output5027 = false := by
  rw [output5027_def]
  exact output5025_skip


@[irreducible, cbv_opaque] def input5028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5027 input5024)).val
theorem input5028_def : input5028 = (.seq input5027 input5024) := by
  unfold input5028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output5027)).val
theorem output5028_def : output5028 = (output5027) := by
  unfold output5028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5028_skip : Flapjack.WordAlloc.isSkip output5028 = false := by
  rw [output5028_def]
  exact output5027_skip


@[irreducible, cbv_opaque] def input5029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5028 input5023)).val
theorem input5029_def : input5029 = (.seq input5028 input5023) := by
  unfold input5029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5028 output5023)).val
theorem output5029_def : output5029 = (.seq output5028 output5023) := by
  unfold output5029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5029_skip : Flapjack.WordAlloc.isSkip output5029 = false := by
  rw [output5029_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5029 input5022)).val
theorem input5030_def : input5030 = (.seq input5029 input5022) := by
  unfold input5030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5029 output5022)).val
theorem output5030_def : output5030 = (.seq output5029 output5022) := by
  unfold output5030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5030_skip : Flapjack.WordAlloc.isSkip output5030 = false := by
  rw [output5030_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5030 input5021)).val
theorem input5031_def : input5031 = (.seq input5030 input5021) := by
  unfold input5031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5030 output5021)).val
theorem output5031_def : output5031 = (.seq output5030 output5021) := by
  unfold output5031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5031_skip : Flapjack.WordAlloc.isSkip output5031 = false := by
  rw [output5031_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5031 input4970)).val
theorem input5032_def : input5032 = (.seq input5031 input4970) := by
  unfold input5032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5031 output4970)).val
theorem output5032_def : output5032 = (.seq output5031 output4970) := by
  unfold output5032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5032_skip : Flapjack.WordAlloc.isSkip output5032 = false := by
  rw [output5032_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5032 input4969)).val
theorem input5033_def : input5033 = (.seq input5032 input4969) := by
  unfold input5033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5032 output4969)).val
theorem output5033_def : output5033 = (.seq output5032 output4969) := by
  unfold output5033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5033_skip : Flapjack.WordAlloc.isSkip output5033 = false := by
  rw [output5033_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5033 input4968)).val
theorem input5034_def : input5034 = (.seq input5033 input4968) := by
  unfold input5034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5033 output4968)).val
theorem output5034_def : output5034 = (.seq output5033 output4968) := by
  unfold output5034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5034_skip : Flapjack.WordAlloc.isSkip output5034 = false := by
  rw [output5034_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5034 input4967)).val
theorem input5035_def : input5035 = (.seq input5034 input4967) := by
  unfold input5035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5034 output4967)).val
theorem output5035_def : output5035 = (.seq output5034 output4967) := by
  unfold output5035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5035_skip : Flapjack.WordAlloc.isSkip output5035 = false := by
  rw [output5035_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5035 input4920)).val
theorem input5036_def : input5036 = (.seq input5035 input4920) := by
  unfold input5036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5035 output4920)).val
theorem output5036_def : output5036 = (.seq output5035 output4920) := by
  unfold output5036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5036_skip : Flapjack.WordAlloc.isSkip output5036 = false := by
  rw [output5036_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5036 input4919)).val
theorem input5037_def : input5037 = (.seq input5036 input4919) := by
  unfold input5037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5036 output4919)).val
theorem output5037_def : output5037 = (.seq output5036 output4919) := by
  unfold output5037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5037_skip : Flapjack.WordAlloc.isSkip output5037 = false := by
  rw [output5037_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5037 input4918)).val
theorem input5038_def : input5038 = (.seq input5037 input4918) := by
  unfold input5038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5037 output4918)).val
theorem output5038_def : output5038 = (.seq output5037 output4918) := by
  unfold output5038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5038_skip : Flapjack.WordAlloc.isSkip output5038 = false := by
  rw [output5038_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5038 input4917)).val
theorem input5039_def : input5039 = (.seq input5038 input4917) := by
  unfold input5039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5038 output4917)).val
theorem output5039_def : output5039 = (.seq output5038 output4917) := by
  unfold output5039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5039_skip : Flapjack.WordAlloc.isSkip output5039 = false := by
  rw [output5039_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5039 input4870)).val
theorem input5040_def : input5040 = (.seq input5039 input4870) := by
  unfold input5040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5039 output4870)).val
theorem output5040_def : output5040 = (.seq output5039 output4870) := by
  unfold output5040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5040_skip : Flapjack.WordAlloc.isSkip output5040 = false := by
  rw [output5040_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5040 input4869)).val
theorem input5041_def : input5041 = (.seq input5040 input4869) := by
  unfold input5041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5040 output4869)).val
theorem output5041_def : output5041 = (.seq output5040 output4869) := by
  unfold output5041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5041_skip : Flapjack.WordAlloc.isSkip output5041 = false := by
  rw [output5041_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5041 input4868)).val
theorem input5042_def : input5042 = (.seq input5041 input4868) := by
  unfold input5042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5041 output4868)).val
theorem output5042_def : output5042 = (.seq output5041 output4868) := by
  unfold output5042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5042_skip : Flapjack.WordAlloc.isSkip output5042 = false := by
  rw [output5042_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5042 input4867)).val
theorem input5043_def : input5043 = (.seq input5042 input4867) := by
  unfold input5043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5042 output4867)).val
theorem output5043_def : output5043 = (.seq output5042 output4867) := by
  unfold output5043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5043_skip : Flapjack.WordAlloc.isSkip output5043 = false := by
  rw [output5043_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5043 input4820)).val
theorem input5044_def : input5044 = (.seq input5043 input4820) := by
  unfold input5044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5043 output4820)).val
theorem output5044_def : output5044 = (.seq output5043 output4820) := by
  unfold output5044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5044_skip : Flapjack.WordAlloc.isSkip output5044 = false := by
  rw [output5044_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5044 input4819)).val
theorem input5045_def : input5045 = (.seq input5044 input4819) := by
  unfold input5045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5044 output4819)).val
theorem output5045_def : output5045 = (.seq output5044 output4819) := by
  unfold output5045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5045_skip : Flapjack.WordAlloc.isSkip output5045 = false := by
  rw [output5045_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5045 input4818)).val
theorem input5046_def : input5046 = (.seq input5045 input4818) := by
  unfold input5046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5045 output4818)).val
theorem output5046_def : output5046 = (.seq output5045 output4818) := by
  unfold output5046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5046_skip : Flapjack.WordAlloc.isSkip output5046 = false := by
  rw [output5046_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5046 input4817)).val
theorem input5047_def : input5047 = (.seq input5046 input4817) := by
  unfold input5047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5046 output4817)).val
theorem output5047_def : output5047 = (.seq output5046 output4817) := by
  unfold output5047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5047_skip : Flapjack.WordAlloc.isSkip output5047 = false := by
  rw [output5047_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5047 input4770)).val
theorem input5048_def : input5048 = (.seq input5047 input4770) := by
  unfold input5048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5047 output4770)).val
theorem output5048_def : output5048 = (.seq output5047 output4770) := by
  unfold output5048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5048_skip : Flapjack.WordAlloc.isSkip output5048 = false := by
  rw [output5048_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5048 input4769)).val
theorem input5049_def : input5049 = (.seq input5048 input4769) := by
  unfold input5049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5048 output4769)).val
theorem output5049_def : output5049 = (.seq output5048 output4769) := by
  unfold output5049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5049_skip : Flapjack.WordAlloc.isSkip output5049 = false := by
  rw [output5049_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5049 input4768)).val
theorem input5050_def : input5050 = (.seq input5049 input4768) := by
  unfold input5050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5049 output4768)).val
theorem output5050_def : output5050 = (.seq output5049 output4768) := by
  unfold output5050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5050_skip : Flapjack.WordAlloc.isSkip output5050 = false := by
  rw [output5050_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5050 input4767)).val
theorem input5051_def : input5051 = (.seq input5050 input4767) := by
  unfold input5051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5050 output4767)).val
theorem output5051_def : output5051 = (.seq output5050 output4767) := by
  unfold output5051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5051_skip : Flapjack.WordAlloc.isSkip output5051 = false := by
  rw [output5051_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5051 input4720)).val
theorem input5052_def : input5052 = (.seq input5051 input4720) := by
  unfold input5052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5051 output4720)).val
theorem output5052_def : output5052 = (.seq output5051 output4720) := by
  unfold output5052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5052_skip : Flapjack.WordAlloc.isSkip output5052 = false := by
  rw [output5052_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5052 input4719)).val
theorem input5053_def : input5053 = (.seq input5052 input4719) := by
  unfold input5053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5052 output4719)).val
theorem output5053_def : output5053 = (.seq output5052 output4719) := by
  unfold output5053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5053_skip : Flapjack.WordAlloc.isSkip output5053 = false := by
  rw [output5053_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5053 input4718)).val
theorem input5054_def : input5054 = (.seq input5053 input4718) := by
  unfold input5054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5053 output4718)).val
theorem output5054_def : output5054 = (.seq output5053 output4718) := by
  unfold output5054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5054_skip : Flapjack.WordAlloc.isSkip output5054 = false := by
  rw [output5054_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5054 input4717)).val
theorem input5055_def : input5055 = (.seq input5054 input4717) := by
  unfold input5055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5054 output4717)).val
theorem output5055_def : output5055 = (.seq output5054 output4717) := by
  unfold output5055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5055_skip : Flapjack.WordAlloc.isSkip output5055 = false := by
  rw [output5055_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5055 input4670)).val
theorem input5056_def : input5056 = (.seq input5055 input4670) := by
  unfold input5056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5055 output4670)).val
theorem output5056_def : output5056 = (.seq output5055 output4670) := by
  unfold output5056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5056_skip : Flapjack.WordAlloc.isSkip output5056 = false := by
  rw [output5056_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5056 input4669)).val
theorem input5057_def : input5057 = (.seq input5056 input4669) := by
  unfold input5057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5056 output4669)).val
theorem output5057_def : output5057 = (.seq output5056 output4669) := by
  unfold output5057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5057_skip : Flapjack.WordAlloc.isSkip output5057 = false := by
  rw [output5057_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5057 input4668)).val
theorem input5058_def : input5058 = (.seq input5057 input4668) := by
  unfold input5058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5057 output4668)).val
theorem output5058_def : output5058 = (.seq output5057 output4668) := by
  unfold output5058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5058_skip : Flapjack.WordAlloc.isSkip output5058 = false := by
  rw [output5058_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5058 input4667)).val
theorem input5059_def : input5059 = (.seq input5058 input4667) := by
  unfold input5059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5058 output4667)).val
theorem output5059_def : output5059 = (.seq output5058 output4667) := by
  unfold output5059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5059_skip : Flapjack.WordAlloc.isSkip output5059 = false := by
  rw [output5059_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5059 input4620)).val
theorem input5060_def : input5060 = (.seq input5059 input4620) := by
  unfold input5060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5059 output4620)).val
theorem output5060_def : output5060 = (.seq output5059 output4620) := by
  unfold output5060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5060_skip : Flapjack.WordAlloc.isSkip output5060 = false := by
  rw [output5060_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5060 input4619)).val
theorem input5061_def : input5061 = (.seq input5060 input4619) := by
  unfold input5061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5060 output4619)).val
theorem output5061_def : output5061 = (.seq output5060 output4619) := by
  unfold output5061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5061_skip : Flapjack.WordAlloc.isSkip output5061 = false := by
  rw [output5061_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5061 input4618)).val
theorem input5062_def : input5062 = (.seq input5061 input4618) := by
  unfold input5062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5061 output4618)).val
theorem output5062_def : output5062 = (.seq output5061 output4618) := by
  unfold output5062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5062_skip : Flapjack.WordAlloc.isSkip output5062 = false := by
  rw [output5062_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5062 input4617)).val
theorem input5063_def : input5063 = (.seq input5062 input4617) := by
  unfold input5063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5062 output4617)).val
theorem output5063_def : output5063 = (.seq output5062 output4617) := by
  unfold output5063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5063_skip : Flapjack.WordAlloc.isSkip output5063 = false := by
  rw [output5063_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5063 input4570)).val
theorem input5064_def : input5064 = (.seq input5063 input4570) := by
  unfold input5064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5063 output4570)).val
theorem output5064_def : output5064 = (.seq output5063 output4570) := by
  unfold output5064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5064_skip : Flapjack.WordAlloc.isSkip output5064 = false := by
  rw [output5064_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5064 input4569)).val
theorem input5065_def : input5065 = (.seq input5064 input4569) := by
  unfold input5065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5064 output4569)).val
theorem output5065_def : output5065 = (.seq output5064 output4569) := by
  unfold output5065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5065_skip : Flapjack.WordAlloc.isSkip output5065 = false := by
  rw [output5065_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5065 input4568)).val
theorem input5066_def : input5066 = (.seq input5065 input4568) := by
  unfold input5066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5065 output4568)).val
theorem output5066_def : output5066 = (.seq output5065 output4568) := by
  unfold output5066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5066_skip : Flapjack.WordAlloc.isSkip output5066 = false := by
  rw [output5066_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5066 input4567)).val
theorem input5067_def : input5067 = (.seq input5066 input4567) := by
  unfold input5067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5066 output4567)).val
theorem output5067_def : output5067 = (.seq output5066 output4567) := by
  unfold output5067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5067_skip : Flapjack.WordAlloc.isSkip output5067 = false := by
  rw [output5067_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5067 input4520)).val
theorem input5068_def : input5068 = (.seq input5067 input4520) := by
  unfold input5068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5067 output4520)).val
theorem output5068_def : output5068 = (.seq output5067 output4520) := by
  unfold output5068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5068_skip : Flapjack.WordAlloc.isSkip output5068 = false := by
  rw [output5068_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5068 input4519)).val
theorem input5069_def : input5069 = (.seq input5068 input4519) := by
  unfold input5069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5068 output4519)).val
theorem output5069_def : output5069 = (.seq output5068 output4519) := by
  unfold output5069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5069_skip : Flapjack.WordAlloc.isSkip output5069 = false := by
  rw [output5069_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5069 input4518)).val
theorem input5070_def : input5070 = (.seq input5069 input4518) := by
  unfold input5070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5069 output4518)).val
theorem output5070_def : output5070 = (.seq output5069 output4518) := by
  unfold output5070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5070_skip : Flapjack.WordAlloc.isSkip output5070 = false := by
  rw [output5070_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5070 input4517)).val
theorem input5071_def : input5071 = (.seq input5070 input4517) := by
  unfold input5071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5070 output4517)).val
theorem output5071_def : output5071 = (.seq output5070 output4517) := by
  unfold output5071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5071_skip : Flapjack.WordAlloc.isSkip output5071 = false := by
  rw [output5071_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5071 input4470)).val
theorem input5072_def : input5072 = (.seq input5071 input4470) := by
  unfold input5072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5071 output4470)).val
theorem output5072_def : output5072 = (.seq output5071 output4470) := by
  unfold output5072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5072_skip : Flapjack.WordAlloc.isSkip output5072 = false := by
  rw [output5072_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5072 input4469)).val
theorem input5073_def : input5073 = (.seq input5072 input4469) := by
  unfold input5073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5072 output4469)).val
theorem output5073_def : output5073 = (.seq output5072 output4469) := by
  unfold output5073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5073_skip : Flapjack.WordAlloc.isSkip output5073 = false := by
  rw [output5073_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5073 input4468)).val
theorem input5074_def : input5074 = (.seq input5073 input4468) := by
  unfold input5074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5073 output4468)).val
theorem output5074_def : output5074 = (.seq output5073 output4468) := by
  unfold output5074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5074_skip : Flapjack.WordAlloc.isSkip output5074 = false := by
  rw [output5074_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5074 input4467)).val
theorem input5075_def : input5075 = (.seq input5074 input4467) := by
  unfold input5075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5074 output4467)).val
theorem output5075_def : output5075 = (.seq output5074 output4467) := by
  unfold output5075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5075_skip : Flapjack.WordAlloc.isSkip output5075 = false := by
  rw [output5075_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5075 input4420)).val
theorem input5076_def : input5076 = (.seq input5075 input4420) := by
  unfold input5076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5075 output4420)).val
theorem output5076_def : output5076 = (.seq output5075 output4420) := by
  unfold output5076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5076_skip : Flapjack.WordAlloc.isSkip output5076 = false := by
  rw [output5076_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5076 input4419)).val
theorem input5077_def : input5077 = (.seq input5076 input4419) := by
  unfold input5077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5076 output4419)).val
theorem output5077_def : output5077 = (.seq output5076 output4419) := by
  unfold output5077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5077_skip : Flapjack.WordAlloc.isSkip output5077 = false := by
  rw [output5077_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5077 input4418)).val
theorem input5078_def : input5078 = (.seq input5077 input4418) := by
  unfold input5078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5077 output4418)).val
theorem output5078_def : output5078 = (.seq output5077 output4418) := by
  unfold output5078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5078_skip : Flapjack.WordAlloc.isSkip output5078 = false := by
  rw [output5078_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5078 input4417)).val
theorem input5079_def : input5079 = (.seq input5078 input4417) := by
  unfold input5079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5078 output4417)).val
theorem output5079_def : output5079 = (.seq output5078 output4417) := by
  unfold output5079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5079_skip : Flapjack.WordAlloc.isSkip output5079 = false := by
  rw [output5079_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5079 input4370)).val
theorem input5080_def : input5080 = (.seq input5079 input4370) := by
  unfold input5080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5079 output4370)).val
theorem output5080_def : output5080 = (.seq output5079 output4370) := by
  unfold output5080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5080_skip : Flapjack.WordAlloc.isSkip output5080 = false := by
  rw [output5080_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5080 input4369)).val
theorem input5081_def : input5081 = (.seq input5080 input4369) := by
  unfold input5081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5080 output4369)).val
theorem output5081_def : output5081 = (.seq output5080 output4369) := by
  unfold output5081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5081_skip : Flapjack.WordAlloc.isSkip output5081 = false := by
  rw [output5081_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5081 input4368)).val
theorem input5082_def : input5082 = (.seq input5081 input4368) := by
  unfold input5082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5081 output4368)).val
theorem output5082_def : output5082 = (.seq output5081 output4368) := by
  unfold output5082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5082_skip : Flapjack.WordAlloc.isSkip output5082 = false := by
  rw [output5082_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5082 input4367)).val
theorem input5083_def : input5083 = (.seq input5082 input4367) := by
  unfold input5083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5082 output4367)).val
theorem output5083_def : output5083 = (.seq output5082 output4367) := by
  unfold output5083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5083_skip : Flapjack.WordAlloc.isSkip output5083 = false := by
  rw [output5083_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5083 input4320)).val
theorem input5084_def : input5084 = (.seq input5083 input4320) := by
  unfold input5084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5083 output4320)).val
theorem output5084_def : output5084 = (.seq output5083 output4320) := by
  unfold output5084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5084_skip : Flapjack.WordAlloc.isSkip output5084 = false := by
  rw [output5084_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5084 input4319)).val
theorem input5085_def : input5085 = (.seq input5084 input4319) := by
  unfold input5085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5084 output4319)).val
theorem output5085_def : output5085 = (.seq output5084 output4319) := by
  unfold output5085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5085_skip : Flapjack.WordAlloc.isSkip output5085 = false := by
  rw [output5085_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5085 input4318)).val
theorem input5086_def : input5086 = (.seq input5085 input4318) := by
  unfold input5086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5085 output4318)).val
theorem output5086_def : output5086 = (.seq output5085 output4318) := by
  unfold output5086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5086_skip : Flapjack.WordAlloc.isSkip output5086 = false := by
  rw [output5086_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5086 input4317)).val
theorem input5087_def : input5087 = (.seq input5086 input4317) := by
  unfold input5087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5086 output4317)).val
theorem output5087_def : output5087 = (.seq output5086 output4317) := by
  unfold output5087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5087_skip : Flapjack.WordAlloc.isSkip output5087 = false := by
  rw [output5087_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5087 input4270)).val
theorem input5088_def : input5088 = (.seq input5087 input4270) := by
  unfold input5088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5087 output4270)).val
theorem output5088_def : output5088 = (.seq output5087 output4270) := by
  unfold output5088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5088_skip : Flapjack.WordAlloc.isSkip output5088 = false := by
  rw [output5088_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5088 input4269)).val
theorem input5089_def : input5089 = (.seq input5088 input4269) := by
  unfold input5089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5088 output4269)).val
theorem output5089_def : output5089 = (.seq output5088 output4269) := by
  unfold output5089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5089_skip : Flapjack.WordAlloc.isSkip output5089 = false := by
  rw [output5089_def]
  kernel_rfl


def value924 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 41

def value925 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value139 37 value924 input4266 input5089)).val
theorem input5090_def : input5090 = (.ite value139 37 value924 input4266 input5089) := by
  unfold input5090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value139 37 value924 output4266 output5089)).val
theorem output5090_def : output5090 = (.ite value139 37 value924 output4266 output5089) := by
  unfold output5090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5090_skip : Flapjack.WordAlloc.isSkip output5090 = false := by
  rw [output5090_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 16#64))).val
theorem input5091_def : input5091 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 16#64)) := by
  unfold input5091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 16#64))).val
theorem output5091_def : output5091 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 41 16#64)) := by
  unfold output5091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5091_skip : Flapjack.WordAlloc.isSkip output5091 = false := by
  rw [output5091_def]
  kernel_rfl


def value926 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(37, 21)])).val
theorem input5092_def : input5092 = (Flapjack.WordLangProgHOL.move 0 [(37, 21)]) := by
  unfold input5092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(37, 21)])).val
theorem output5092_def : output5092 = (Flapjack.WordLangProgHOL.move 0 [(37, 21)]) := by
  unfold output5092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5092_skip : Flapjack.WordAlloc.isSkip output5092 = false := by
  rw [output5092_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 1#64))).val
theorem input5093_def : input5093 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 33 1#64)) := by
  unfold input5093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5093_def : output5093 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5093_skip : Flapjack.WordAlloc.isSkip output5093 = true := by
  rw [output5093_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input5094_def : input5094 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input5094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output5094_def : output5094 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output5094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5094_skip : Flapjack.WordAlloc.isSkip output5094 = false := by
  rw [output5094_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29 1#64))).val
theorem input5095_def : input5095 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 29 1#64)) := by
  unfold input5095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5095_def : output5095 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5095_skip : Flapjack.WordAlloc.isSkip output5095 = true := by
  rw [output5095_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5095 input5094)).val
theorem input5096_def : input5096 = (.seq input5095 input5094) := by
  unfold input5096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output5094)).val
theorem output5096_def : output5096 = (output5094) := by
  unfold output5096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5096_skip : Flapjack.WordAlloc.isSkip output5096 = false := by
  rw [output5096_def]
  exact output5094_skip


@[irreducible, cbv_opaque] def input5097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5096 input5093)).val
theorem input5097_def : input5097 = (.seq input5096 input5093) := by
  unfold input5097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output5096)).val
theorem output5097_def : output5097 = (output5096) := by
  unfold output5097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5097_skip : Flapjack.WordAlloc.isSkip output5097 = false := by
  rw [output5097_def]
  exact output5096_skip


@[irreducible, cbv_opaque] def input5098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5097 input5092)).val
theorem input5098_def : input5098 = (.seq input5097 input5092) := by
  unfold input5098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5097 output5092)).val
theorem output5098_def : output5098 = (.seq output5097 output5092) := by
  unfold output5098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5098_skip : Flapjack.WordAlloc.isSkip output5098 = false := by
  rw [output5098_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5098 input5091)).val
theorem input5099_def : input5099 = (.seq input5098 input5091) := by
  unfold input5099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5098 output5091)).val
theorem output5099_def : output5099 = (.seq output5098 output5091) := by
  unfold output5099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5099_skip : Flapjack.WordAlloc.isSkip output5099 = false := by
  rw [output5099_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5099 input5090)).val
theorem input5100_def : input5100 = (.seq input5099 input5090) := by
  unfold input5100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5099 output5090)).val
theorem output5100_def : output5100 = (.seq output5099 output5090) := by
  unfold output5100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5100_skip : Flapjack.WordAlloc.isSkip output5100 = false := by
  rw [output5100_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5100 input3605)).val
theorem input5101_def : input5101 = (.seq input5100 input3605) := by
  unfold input5101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5100 output3605)).val
theorem output5101_def : output5101 = (.seq output5100 output3605) := by
  unfold output5101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5101_skip : Flapjack.WordAlloc.isSkip output5101 = false := by
  rw [output5101_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5101 input3604)).val
theorem input5102_def : input5102 = (.seq input5101 input3604) := by
  unfold input5102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5101 output3604)).val
theorem output5102_def : output5102 = (.seq output5101 output3604) := by
  unfold output5102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5102_skip : Flapjack.WordAlloc.isSkip output5102 = false := by
  rw [output5102_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5102 input3603)).val
theorem input5103_def : input5103 = (.seq input5102 input3603) := by
  unfold input5103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5102 output3603)).val
theorem output5103_def : output5103 = (.seq output5102 output3603) := by
  unfold output5103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5103_skip : Flapjack.WordAlloc.isSkip output5103 = false := by
  rw [output5103_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5103 input3600)).val
theorem input5104_def : input5104 = (.seq input5103 input3600) := by
  unfold input5104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5103 output3600)).val
theorem output5104_def : output5104 = (.seq output5103 output3600) := by
  unfold output5104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5104_skip : Flapjack.WordAlloc.isSkip output5104 = false := by
  rw [output5104_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5104 input3599)).val
theorem input5105_def : input5105 = (.seq input5104 input3599) := by
  unfold input5105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5104 output3599)).val
theorem output5105_def : output5105 = (.seq output5104 output3599) := by
  unfold output5105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5105_skip : Flapjack.WordAlloc.isSkip output5105 = false := by
  rw [output5105_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5105 input3596)).val
theorem input5106_def : input5106 = (.seq input5105 input3596) := by
  unfold input5106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5105 output3596)).val
theorem output5106_def : output5106 = (.seq output5105 output3596) := by
  unfold output5106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5106_skip : Flapjack.WordAlloc.isSkip output5106 = false := by
  rw [output5106_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2281 0#64))).val
theorem input5107_def : input5107 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2281 0#64)) := by
  unfold input5107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5107_def : output5107 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5107_skip : Flapjack.WordAlloc.isSkip output5107 = true := by
  rw [output5107_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2277 0#64))).val
theorem input5108_def : input5108 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2277 0#64)) := by
  unfold input5108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5108_def : output5108 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5108_skip : Flapjack.WordAlloc.isSkip output5108 = true := by
  rw [output5108_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2273 0#64))).val
theorem input5109_def : input5109 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 2273 0#64)) := by
  unfold input5109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5109_def : output5109 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5109_skip : Flapjack.WordAlloc.isSkip output5109 = true := by
  rw [output5109_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input5110_def : input5110 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input5110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5110_def : output5110 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5110_skip : Flapjack.WordAlloc.isSkip output5110 = true := by
  rw [output5110_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5110 input5109)).val
theorem input5111_def : input5111 = (.seq input5110 input5109) := by
  unfold input5111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output5109)).val
theorem output5111_def : output5111 = (output5109) := by
  unfold output5111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5111_skip : Flapjack.WordAlloc.isSkip output5111 = true := by
  rw [output5111_def]
  exact output5109_skip


@[irreducible, cbv_opaque] def input5112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5111 input5108)).val
theorem input5112_def : input5112 = (.seq input5111 input5108) := by
  unfold input5112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output5108)).val
theorem output5112_def : output5112 = (output5108) := by
  unfold output5112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5112_skip : Flapjack.WordAlloc.isSkip output5112 = true := by
  rw [output5112_def]
  exact output5108_skip


@[irreducible, cbv_opaque] def input5113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5112 input5107)).val
theorem input5113_def : input5113 = (.seq input5112 input5107) := by
  unfold input5113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output5107)).val
theorem output5113_def : output5113 = (output5107) := by
  unfold output5113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5113_skip : Flapjack.WordAlloc.isSkip output5113 = true := by
  rw [output5113_def]
  exact output5107_skip


@[irreducible, cbv_opaque] def input5114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(2269, 13), (2265, 25), (2261, 21), (2257, 21)])).val
theorem input5114_def : input5114 = (Flapjack.WordLangProgHOL.move 2 [(2269, 13), (2265, 25), (2261, 21), (2257, 21)]) := by
  unfold input5114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(2269, 13), (2261, 21)])).val
theorem output5114_def : output5114 = (Flapjack.WordLangProgHOL.move 2 [(2269, 13), (2261, 21)]) := by
  unfold output5114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5114_skip : Flapjack.WordAlloc.isSkip output5114 = false := by
  rw [output5114_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5114 input5113)).val
theorem input5115_def : input5115 = (.seq input5114 input5113) := by
  unfold input5115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output5114)).val
theorem output5115_def : output5115 = (output5114) := by
  unfold output5115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5115_skip : Flapjack.WordAlloc.isSkip output5115 = false := by
  rw [output5115_def]
  exact output5114_skip


@[irreducible, cbv_opaque] def input5116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input5116_def : input5116 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input5116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5116_def : output5116 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5116_skip : Flapjack.WordAlloc.isSkip output5116 = true := by
  rw [output5116_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5116 input5115)).val
theorem input5117_def : input5117 = (.seq input5116 input5115) := by
  unfold input5117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output5115)).val
theorem output5117_def : output5117 = (output5115) := by
  unfold output5117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5117_skip : Flapjack.WordAlloc.isSkip output5117 = false := by
  rw [output5117_def]
  exact output5115_skip


def value927 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 25

def value928 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit (Flapjack.Spt.ls PUnit.unit))
      (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value139 21 value927 input5106 input5117)).val
theorem input5118_def : input5118 = (.ite value139 21 value927 input5106 input5117) := by
  unfold input5118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value139 21 value927 output5106 output5117)).val
theorem output5118_def : output5118 = (.ite value139 21 value927 output5106 output5117) := by
  unfold output5118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5118_skip : Flapjack.WordAlloc.isSkip output5118 = false := by
  rw [output5118_def]
  kernel_rfl


@[irreducible, cbv_opaque] def input5119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5118 input3587)).val
theorem input5119_def : input5119 = (.seq input5118 input3587) := by
  unfold input5119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5118 output3587)).val
theorem output5119_def : output5119 = (.seq output5118 output3587) := by
  unfold output5119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5119_skip : Flapjack.WordAlloc.isSkip output5119 = false := by
  rw [output5119_def]
  kernel_rfl



end InitECandidate.Proofs.DeadStages597.Parallel
