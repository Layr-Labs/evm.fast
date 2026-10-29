import InitECandidate.Proofs.DeadStages713.Chunk022
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input5888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5887 input5886)).val
theorem input5888_def : input5888 = (.seq input5887 input5886) := by
  unfold input5888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5887 output5886)).val
theorem output5888_def : output5888 = (.seq output5887 output5886) := by
  unfold output5888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5888_skip : Flapjack.WordAlloc.isSkip output5888 = false := by
  rw [output5888_def]
  conv => lhs; cbv
  try rfl
theorem node5888_eq : Flapjack.WordAlloc.removeDeadStructural input5888 value2948 value1 value2 = (output5888, value5, value1) := by
  rw [input5888_def, output5888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5886_eq]
  dsimp only
  rw [node5887_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5888 input5885)).val
theorem input5889_def : input5889 = (.seq input5888 input5885) := by
  unfold input5889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5888 output5885)).val
theorem output5889_def : output5889 = (.seq output5888 output5885) := by
  unfold output5889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5889_skip : Flapjack.WordAlloc.isSkip output5889 = false := by
  rw [output5889_def]
  conv => lhs; cbv
  try rfl
theorem node5889_eq : Flapjack.WordAlloc.removeDeadStructural input5889 value2947 value1 value2 = (output5889, value5, value1) := by
  rw [input5889_def, output5889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5885_eq]
  dsimp only
  rw [node5888_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5889 input5884)).val
theorem input5890_def : input5890 = (.seq input5889 input5884) := by
  unfold input5890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5889 output5884)).val
theorem output5890_def : output5890 = (.seq output5889 output5884) := by
  unfold output5890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5890_skip : Flapjack.WordAlloc.isSkip output5890 = false := by
  rw [output5890_def]
  conv => lhs; cbv
  try rfl
theorem node5890_eq : Flapjack.WordAlloc.removeDeadStructural input5890 value2946 value1 value2 = (output5890, value5, value1) := by
  rw [input5890_def, output5890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5884_eq]
  dsimp only
  rw [node5889_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5890 input5883)).val
theorem input5891_def : input5891 = (.seq input5890 input5883) := by
  unfold input5891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5890 output5883)).val
theorem output5891_def : output5891 = (.seq output5890 output5883) := by
  unfold output5891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5891_skip : Flapjack.WordAlloc.isSkip output5891 = false := by
  rw [output5891_def]
  conv => lhs; cbv
  try rfl
theorem node5891_eq : Flapjack.WordAlloc.removeDeadStructural input5891 value2944 value1 value2 = (output5891, value5, value1) := by
  rw [input5891_def, output5891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5883_eq]
  dsimp only
  rw [node5890_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2950 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17961 (Flapjack.WordLangAddr.addr 17965 0#64)))).val
theorem input5892_def : input5892 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17961 (Flapjack.WordLangAddr.addr 17965 0#64))) := by
  unfold input5892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17961 (Flapjack.WordLangAddr.addr 17965 0#64)))).val
theorem output5892_def : output5892 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17961 (Flapjack.WordLangAddr.addr 17965 0#64))) := by
  unfold output5892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5892_skip : Flapjack.WordAlloc.isSkip output5892 = false := by
  rw [output5892_def]
  conv => lhs; cbv
  try rfl
theorem node5892_eq : Flapjack.WordAlloc.removeDeadStructural input5892 value5 value1 value2 = (output5892, value2950, value1) := by
  rw [input5892_def, output5892_def]
  try (conv => lhs; cbv)
  try rfl

def value2951 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17965, 17953)])).val
theorem input5893_def : input5893 = (Flapjack.WordLangProgHOL.move 0 [(17965, 17953)]) := by
  unfold input5893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17965, 17953)])).val
theorem output5893_def : output5893 = (Flapjack.WordLangProgHOL.move 0 [(17965, 17953)]) := by
  unfold output5893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5893_skip : Flapjack.WordAlloc.isSkip output5893 = false := by
  rw [output5893_def]
  conv => lhs; cbv
  try rfl
theorem node5893_eq : Flapjack.WordAlloc.removeDeadStructural input5893 value2950 value1 value2 = (output5893, value2951, value1) := by
  rw [input5893_def, output5893_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5893 input5892)).val
theorem input5894_def : input5894 = (.seq input5893 input5892) := by
  unfold input5894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5893 output5892)).val
theorem output5894_def : output5894 = (.seq output5893 output5892) := by
  unfold output5894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5894_skip : Flapjack.WordAlloc.isSkip output5894 = false := by
  rw [output5894_def]
  conv => lhs; cbv
  try rfl
theorem node5894_eq : Flapjack.WordAlloc.removeDeadStructural input5894 value5 value1 value2 = (output5894, value2951, value1) := by
  rw [input5894_def, output5894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5892_eq]
  dsimp only
  rw [node5893_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2952 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17961 18013005311323887904#64))).val
theorem input5895_def : input5895 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17961 18013005311323887904#64)) := by
  unfold input5895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17961 18013005311323887904#64))).val
theorem output5895_def : output5895 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17961 18013005311323887904#64)) := by
  unfold output5895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5895_skip : Flapjack.WordAlloc.isSkip output5895 = false := by
  rw [output5895_def]
  conv => lhs; cbv
  try rfl
theorem node5895_eq : Flapjack.WordAlloc.removeDeadStructural input5895 value2951 value1 value2 = (output5895, value2952, value1) := by
  rw [input5895_def, output5895_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17957 18013005311323887904#64))).val
theorem input5896_def : input5896 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17957 18013005311323887904#64)) := by
  unfold input5896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5896_def : output5896 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5896_skip : Flapjack.WordAlloc.isSkip output5896 = true := by
  rw [output5896_def]
  conv => lhs; cbv
  try rfl
theorem node5896_eq : Flapjack.WordAlloc.removeDeadStructural input5896 value2952 value1 value2 = (output5896, value2952, value1) := by
  rw [input5896_def, output5896_def]
  try (conv => lhs; cbv)
  try rfl

def value2953 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
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
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
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
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17953 17945 (Flapjack.WordRegImm.reg 17949))))).val
theorem input5897_def : input5897 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17953 17945 (Flapjack.WordRegImm.reg 17949)))) := by
  unfold input5897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17953 17945 (Flapjack.WordRegImm.reg 17949))))).val
theorem output5897_def : output5897 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17953 17945 (Flapjack.WordRegImm.reg 17949)))) := by
  unfold output5897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5897_skip : Flapjack.WordAlloc.isSkip output5897 = false := by
  rw [output5897_def]
  conv => lhs; cbv
  try rfl
theorem node5897_eq : Flapjack.WordAlloc.removeDeadStructural input5897 value2952 value1 value2 = (output5897, value2953, value1) := by
  rw [input5897_def, output5897_def]
  try (conv => lhs; cbv)
  try rfl

def value2954 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
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
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17949 4184#64))).val
theorem input5898_def : input5898 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17949 4184#64)) := by
  unfold input5898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17949 4184#64))).val
theorem output5898_def : output5898 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17949 4184#64)) := by
  unfold output5898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5898_skip : Flapjack.WordAlloc.isSkip output5898 = false := by
  rw [output5898_def]
  conv => lhs; cbv
  try rfl
theorem node5898_eq : Flapjack.WordAlloc.removeDeadStructural input5898 value2953 value1 value2 = (output5898, value2954, value1) := by
  rw [input5898_def, output5898_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5898 input5897)).val
theorem input5899_def : input5899 = (.seq input5898 input5897) := by
  unfold input5899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5898 output5897)).val
theorem output5899_def : output5899 = (.seq output5898 output5897) := by
  unfold output5899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5899_skip : Flapjack.WordAlloc.isSkip output5899 = false := by
  rw [output5899_def]
  conv => lhs; cbv
  try rfl
theorem node5899_eq : Flapjack.WordAlloc.removeDeadStructural input5899 value2952 value1 value2 = (output5899, value2954, value1) := by
  rw [input5899_def, output5899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5897_eq]
  dsimp only
  rw [node5898_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2955 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17945 (Flapjack.WordLangAddr.addr 17941 18446744073709551104#64)))).val
theorem input5900_def : input5900 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17945 (Flapjack.WordLangAddr.addr 17941 18446744073709551104#64))) := by
  unfold input5900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17945 (Flapjack.WordLangAddr.addr 17941 18446744073709551104#64)))).val
theorem output5900_def : output5900 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17945 (Flapjack.WordLangAddr.addr 17941 18446744073709551104#64))) := by
  unfold output5900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5900_skip : Flapjack.WordAlloc.isSkip output5900 = false := by
  rw [output5900_def]
  conv => lhs; cbv
  try rfl
theorem node5900_eq : Flapjack.WordAlloc.removeDeadStructural input5900 value2954 value1 value2 = (output5900, value2955, value1) := by
  rw [input5900_def, output5900_def]
  try (conv => lhs; cbv)
  try rfl

def value2956 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
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
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17941 17937)).val
theorem input5901_def : input5901 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17941 17937) := by
  unfold input5901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17941 17937)).val
theorem output5901_def : output5901 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17941 17937) := by
  unfold output5901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5901_skip : Flapjack.WordAlloc.isSkip output5901 = false := by
  rw [output5901_def]
  conv => lhs; cbv
  try rfl
theorem node5901_eq : Flapjack.WordAlloc.removeDeadStructural input5901 value2955 value1 value2 = (output5901, value2956, value1) := by
  rw [input5901_def, output5901_def]
  try (conv => lhs; cbv)
  try rfl

def value2957 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
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
                    Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17937 17933 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5902_def : input5902 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17937 17933 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17937 17933 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5902_def : output5902 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17937 17933 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5902_skip : Flapjack.WordAlloc.isSkip output5902 = false := by
  rw [output5902_def]
  conv => lhs; cbv
  try rfl
theorem node5902_eq : Flapjack.WordAlloc.removeDeadStructural input5902 value2956 value1 value2 = (output5902, value2957, value1) := by
  rw [input5902_def, output5902_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17933 Flapjack.WordStore.heapLength)).val
theorem input5903_def : input5903 = (Flapjack.WordLangProgHOL.get 17933 Flapjack.WordStore.heapLength) := by
  unfold input5903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17933 Flapjack.WordStore.heapLength)).val
theorem output5903_def : output5903 = (Flapjack.WordLangProgHOL.get 17933 Flapjack.WordStore.heapLength) := by
  unfold output5903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5903_skip : Flapjack.WordAlloc.isSkip output5903 = false := by
  rw [output5903_def]
  conv => lhs; cbv
  try rfl
theorem node5903_eq : Flapjack.WordAlloc.removeDeadStructural input5903 value2957 value1 value2 = (output5903, value5, value1) := by
  rw [input5903_def, output5903_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5903 input5902)).val
theorem input5904_def : input5904 = (.seq input5903 input5902) := by
  unfold input5904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5903 output5902)).val
theorem output5904_def : output5904 = (.seq output5903 output5902) := by
  unfold output5904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5904_skip : Flapjack.WordAlloc.isSkip output5904 = false := by
  rw [output5904_def]
  conv => lhs; cbv
  try rfl
theorem node5904_eq : Flapjack.WordAlloc.removeDeadStructural input5904 value2956 value1 value2 = (output5904, value5, value1) := by
  rw [input5904_def, output5904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5902_eq]
  dsimp only
  rw [node5903_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5904 input5901)).val
theorem input5905_def : input5905 = (.seq input5904 input5901) := by
  unfold input5905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5904 output5901)).val
theorem output5905_def : output5905 = (.seq output5904 output5901) := by
  unfold output5905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5905_skip : Flapjack.WordAlloc.isSkip output5905 = false := by
  rw [output5905_def]
  conv => lhs; cbv
  try rfl
theorem node5905_eq : Flapjack.WordAlloc.removeDeadStructural input5905 value2955 value1 value2 = (output5905, value5, value1) := by
  rw [input5905_def, output5905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5901_eq]
  dsimp only
  rw [node5904_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5905 input5900)).val
theorem input5906_def : input5906 = (.seq input5905 input5900) := by
  unfold input5906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5905 output5900)).val
theorem output5906_def : output5906 = (.seq output5905 output5900) := by
  unfold output5906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5906_skip : Flapjack.WordAlloc.isSkip output5906 = false := by
  rw [output5906_def]
  conv => lhs; cbv
  try rfl
theorem node5906_eq : Flapjack.WordAlloc.removeDeadStructural input5906 value2954 value1 value2 = (output5906, value5, value1) := by
  rw [input5906_def, output5906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5900_eq]
  dsimp only
  rw [node5905_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5906 input5899)).val
theorem input5907_def : input5907 = (.seq input5906 input5899) := by
  unfold input5907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5906 output5899)).val
theorem output5907_def : output5907 = (.seq output5906 output5899) := by
  unfold output5907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5907_skip : Flapjack.WordAlloc.isSkip output5907 = false := by
  rw [output5907_def]
  conv => lhs; cbv
  try rfl
theorem node5907_eq : Flapjack.WordAlloc.removeDeadStructural input5907 value2952 value1 value2 = (output5907, value5, value1) := by
  rw [input5907_def, output5907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5899_eq]
  dsimp only
  rw [node5906_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2958 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
                    Flapjack.Spt.ln)))))))
      (Flapjack.Spt.bn
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
                    Flapjack.Spt.ln))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17925 (Flapjack.WordLangAddr.addr 17929 0#64)))).val
theorem input5908_def : input5908 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17925 (Flapjack.WordLangAddr.addr 17929 0#64))) := by
  unfold input5908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17925 (Flapjack.WordLangAddr.addr 17929 0#64)))).val
theorem output5908_def : output5908 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17925 (Flapjack.WordLangAddr.addr 17929 0#64))) := by
  unfold output5908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5908_skip : Flapjack.WordAlloc.isSkip output5908 = false := by
  rw [output5908_def]
  conv => lhs; cbv
  try rfl
theorem node5908_eq : Flapjack.WordAlloc.removeDeadStructural input5908 value5 value1 value2 = (output5908, value2958, value1) := by
  rw [input5908_def, output5908_def]
  try (conv => lhs; cbv)
  try rfl

def value2959 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
                    Flapjack.Spt.ln)))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17929, 17917)])).val
theorem input5909_def : input5909 = (Flapjack.WordLangProgHOL.move 0 [(17929, 17917)]) := by
  unfold input5909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17929, 17917)])).val
theorem output5909_def : output5909 = (Flapjack.WordLangProgHOL.move 0 [(17929, 17917)]) := by
  unfold output5909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5909_skip : Flapjack.WordAlloc.isSkip output5909 = false := by
  rw [output5909_def]
  conv => lhs; cbv
  try rfl
theorem node5909_eq : Flapjack.WordAlloc.removeDeadStructural input5909 value2958 value1 value2 = (output5909, value2959, value1) := by
  rw [input5909_def, output5909_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5909 input5908)).val
theorem input5910_def : input5910 = (.seq input5909 input5908) := by
  unfold input5910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5909 output5908)).val
theorem output5910_def : output5910 = (.seq output5909 output5908) := by
  unfold output5910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5910_skip : Flapjack.WordAlloc.isSkip output5910 = false := by
  rw [output5910_def]
  conv => lhs; cbv
  try rfl
theorem node5910_eq : Flapjack.WordAlloc.removeDeadStructural input5910 value5 value1 value2 = (output5910, value2959, value1) := by
  rw [input5910_def, output5910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5908_eq]
  dsimp only
  rw [node5909_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2960 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17925 12377427846571989832#64))).val
theorem input5911_def : input5911 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17925 12377427846571989832#64)) := by
  unfold input5911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17925 12377427846571989832#64))).val
theorem output5911_def : output5911 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17925 12377427846571989832#64)) := by
  unfold output5911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5911_skip : Flapjack.WordAlloc.isSkip output5911 = false := by
  rw [output5911_def]
  conv => lhs; cbv
  try rfl
theorem node5911_eq : Flapjack.WordAlloc.removeDeadStructural input5911 value2959 value1 value2 = (output5911, value2960, value1) := by
  rw [input5911_def, output5911_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17921 12377427846571989832#64))).val
theorem input5912_def : input5912 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17921 12377427846571989832#64)) := by
  unfold input5912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5912_def : output5912 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5912_skip : Flapjack.WordAlloc.isSkip output5912 = true := by
  rw [output5912_def]
  conv => lhs; cbv
  try rfl
theorem node5912_eq : Flapjack.WordAlloc.removeDeadStructural input5912 value2960 value1 value2 = (output5912, value2960, value1) := by
  rw [input5912_def, output5912_def]
  try (conv => lhs; cbv)
  try rfl

def value2961 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17917 17909 (Flapjack.WordRegImm.reg 17913))))).val
theorem input5913_def : input5913 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17917 17909 (Flapjack.WordRegImm.reg 17913)))) := by
  unfold input5913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17917 17909 (Flapjack.WordRegImm.reg 17913))))).val
theorem output5913_def : output5913 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17917 17909 (Flapjack.WordRegImm.reg 17913)))) := by
  unfold output5913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5913_skip : Flapjack.WordAlloc.isSkip output5913 = false := by
  rw [output5913_def]
  conv => lhs; cbv
  try rfl
theorem node5913_eq : Flapjack.WordAlloc.removeDeadStructural input5913 value2960 value1 value2 = (output5913, value2961, value1) := by
  rw [input5913_def, output5913_def]
  try (conv => lhs; cbv)
  try rfl

def value2962 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17913 4176#64))).val
theorem input5914_def : input5914 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17913 4176#64)) := by
  unfold input5914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17913 4176#64))).val
theorem output5914_def : output5914 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17913 4176#64)) := by
  unfold output5914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5914_skip : Flapjack.WordAlloc.isSkip output5914 = false := by
  rw [output5914_def]
  conv => lhs; cbv
  try rfl
theorem node5914_eq : Flapjack.WordAlloc.removeDeadStructural input5914 value2961 value1 value2 = (output5914, value2962, value1) := by
  rw [input5914_def, output5914_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5914 input5913)).val
theorem input5915_def : input5915 = (.seq input5914 input5913) := by
  unfold input5915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5914 output5913)).val
theorem output5915_def : output5915 = (.seq output5914 output5913) := by
  unfold output5915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5915_skip : Flapjack.WordAlloc.isSkip output5915 = false := by
  rw [output5915_def]
  conv => lhs; cbv
  try rfl
theorem node5915_eq : Flapjack.WordAlloc.removeDeadStructural input5915 value2960 value1 value2 = (output5915, value2962, value1) := by
  rw [input5915_def, output5915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5913_eq]
  dsimp only
  rw [node5914_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2963 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17909 (Flapjack.WordLangAddr.addr 17905 18446744073709551104#64)))).val
theorem input5916_def : input5916 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17909 (Flapjack.WordLangAddr.addr 17905 18446744073709551104#64))) := by
  unfold input5916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17909 (Flapjack.WordLangAddr.addr 17905 18446744073709551104#64)))).val
theorem output5916_def : output5916 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17909 (Flapjack.WordLangAddr.addr 17905 18446744073709551104#64))) := by
  unfold output5916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5916_skip : Flapjack.WordAlloc.isSkip output5916 = false := by
  rw [output5916_def]
  conv => lhs; cbv
  try rfl
theorem node5916_eq : Flapjack.WordAlloc.removeDeadStructural input5916 value2962 value1 value2 = (output5916, value2963, value1) := by
  rw [input5916_def, output5916_def]
  try (conv => lhs; cbv)
  try rfl

def value2964 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17905 17901)).val
theorem input5917_def : input5917 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17905 17901) := by
  unfold input5917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17905 17901)).val
theorem output5917_def : output5917 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17905 17901) := by
  unfold output5917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5917_skip : Flapjack.WordAlloc.isSkip output5917 = false := by
  rw [output5917_def]
  conv => lhs; cbv
  try rfl
theorem node5917_eq : Flapjack.WordAlloc.removeDeadStructural input5917 value2963 value1 value2 = (output5917, value2964, value1) := by
  rw [input5917_def, output5917_def]
  try (conv => lhs; cbv)
  try rfl

def value2965 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17901 17897 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5918_def : input5918 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17901 17897 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17901 17897 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5918_def : output5918 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17901 17897 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5918_skip : Flapjack.WordAlloc.isSkip output5918 = false := by
  rw [output5918_def]
  conv => lhs; cbv
  try rfl
theorem node5918_eq : Flapjack.WordAlloc.removeDeadStructural input5918 value2964 value1 value2 = (output5918, value2965, value1) := by
  rw [input5918_def, output5918_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17897 Flapjack.WordStore.heapLength)).val
theorem input5919_def : input5919 = (Flapjack.WordLangProgHOL.get 17897 Flapjack.WordStore.heapLength) := by
  unfold input5919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17897 Flapjack.WordStore.heapLength)).val
theorem output5919_def : output5919 = (Flapjack.WordLangProgHOL.get 17897 Flapjack.WordStore.heapLength) := by
  unfold output5919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5919_skip : Flapjack.WordAlloc.isSkip output5919 = false := by
  rw [output5919_def]
  conv => lhs; cbv
  try rfl
theorem node5919_eq : Flapjack.WordAlloc.removeDeadStructural input5919 value2965 value1 value2 = (output5919, value5, value1) := by
  rw [input5919_def, output5919_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5919 input5918)).val
theorem input5920_def : input5920 = (.seq input5919 input5918) := by
  unfold input5920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5919 output5918)).val
theorem output5920_def : output5920 = (.seq output5919 output5918) := by
  unfold output5920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5920_skip : Flapjack.WordAlloc.isSkip output5920 = false := by
  rw [output5920_def]
  conv => lhs; cbv
  try rfl
theorem node5920_eq : Flapjack.WordAlloc.removeDeadStructural input5920 value2964 value1 value2 = (output5920, value5, value1) := by
  rw [input5920_def, output5920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5918_eq]
  dsimp only
  rw [node5919_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5920 input5917)).val
theorem input5921_def : input5921 = (.seq input5920 input5917) := by
  unfold input5921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5920 output5917)).val
theorem output5921_def : output5921 = (.seq output5920 output5917) := by
  unfold output5921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5921_skip : Flapjack.WordAlloc.isSkip output5921 = false := by
  rw [output5921_def]
  conv => lhs; cbv
  try rfl
theorem node5921_eq : Flapjack.WordAlloc.removeDeadStructural input5921 value2963 value1 value2 = (output5921, value5, value1) := by
  rw [input5921_def, output5921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5917_eq]
  dsimp only
  rw [node5920_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5921 input5916)).val
theorem input5922_def : input5922 = (.seq input5921 input5916) := by
  unfold input5922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5921 output5916)).val
theorem output5922_def : output5922 = (.seq output5921 output5916) := by
  unfold output5922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5922_skip : Flapjack.WordAlloc.isSkip output5922 = false := by
  rw [output5922_def]
  conv => lhs; cbv
  try rfl
theorem node5922_eq : Flapjack.WordAlloc.removeDeadStructural input5922 value2962 value1 value2 = (output5922, value5, value1) := by
  rw [input5922_def, output5922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5916_eq]
  dsimp only
  rw [node5921_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5922 input5915)).val
theorem input5923_def : input5923 = (.seq input5922 input5915) := by
  unfold input5923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5922 output5915)).val
theorem output5923_def : output5923 = (.seq output5922 output5915) := by
  unfold output5923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5923_skip : Flapjack.WordAlloc.isSkip output5923 = false := by
  rw [output5923_def]
  conv => lhs; cbv
  try rfl
theorem node5923_eq : Flapjack.WordAlloc.removeDeadStructural input5923 value2960 value1 value2 = (output5923, value5, value1) := by
  rw [input5923_def, output5923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5915_eq]
  dsimp only
  rw [node5922_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2966 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17889 (Flapjack.WordLangAddr.addr 17893 0#64)))).val
theorem input5924_def : input5924 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17889 (Flapjack.WordLangAddr.addr 17893 0#64))) := by
  unfold input5924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17889 (Flapjack.WordLangAddr.addr 17893 0#64)))).val
theorem output5924_def : output5924 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17889 (Flapjack.WordLangAddr.addr 17893 0#64))) := by
  unfold output5924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5924_skip : Flapjack.WordAlloc.isSkip output5924 = false := by
  rw [output5924_def]
  conv => lhs; cbv
  try rfl
theorem node5924_eq : Flapjack.WordAlloc.removeDeadStructural input5924 value5 value1 value2 = (output5924, value2966, value1) := by
  rw [input5924_def, output5924_def]
  try (conv => lhs; cbv)
  try rfl

def value2967 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17893, 17881)])).val
theorem input5925_def : input5925 = (Flapjack.WordLangProgHOL.move 0 [(17893, 17881)]) := by
  unfold input5925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17893, 17881)])).val
theorem output5925_def : output5925 = (Flapjack.WordLangProgHOL.move 0 [(17893, 17881)]) := by
  unfold output5925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5925_skip : Flapjack.WordAlloc.isSkip output5925 = false := by
  rw [output5925_def]
  conv => lhs; cbv
  try rfl
theorem node5925_eq : Flapjack.WordAlloc.removeDeadStructural input5925 value2966 value1 value2 = (output5925, value2967, value1) := by
  rw [input5925_def, output5925_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5925 input5924)).val
theorem input5926_def : input5926 = (.seq input5925 input5924) := by
  unfold input5926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5925 output5924)).val
theorem output5926_def : output5926 = (.seq output5925 output5924) := by
  unfold output5926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5926_skip : Flapjack.WordAlloc.isSkip output5926 = false := by
  rw [output5926_def]
  conv => lhs; cbv
  try rfl
theorem node5926_eq : Flapjack.WordAlloc.removeDeadStructural input5926 value5 value1 value2 = (output5926, value2967, value1) := by
  rw [input5926_def, output5926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5924_eq]
  dsimp only
  rw [node5925_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2968 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17889 5967237584920922243#64))).val
theorem input5927_def : input5927 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17889 5967237584920922243#64)) := by
  unfold input5927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17889 5967237584920922243#64))).val
theorem output5927_def : output5927 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17889 5967237584920922243#64)) := by
  unfold output5927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5927_skip : Flapjack.WordAlloc.isSkip output5927 = false := by
  rw [output5927_def]
  conv => lhs; cbv
  try rfl
theorem node5927_eq : Flapjack.WordAlloc.removeDeadStructural input5927 value2967 value1 value2 = (output5927, value2968, value1) := by
  rw [input5927_def, output5927_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17885 5967237584920922243#64))).val
theorem input5928_def : input5928 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17885 5967237584920922243#64)) := by
  unfold input5928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5928_def : output5928 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5928_skip : Flapjack.WordAlloc.isSkip output5928 = true := by
  rw [output5928_def]
  conv => lhs; cbv
  try rfl
theorem node5928_eq : Flapjack.WordAlloc.removeDeadStructural input5928 value2968 value1 value2 = (output5928, value2968, value1) := by
  rw [input5928_def, output5928_def]
  try (conv => lhs; cbv)
  try rfl

def value2969 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17881 17873 (Flapjack.WordRegImm.reg 17877))))).val
theorem input5929_def : input5929 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17881 17873 (Flapjack.WordRegImm.reg 17877)))) := by
  unfold input5929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17881 17873 (Flapjack.WordRegImm.reg 17877))))).val
theorem output5929_def : output5929 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17881 17873 (Flapjack.WordRegImm.reg 17877)))) := by
  unfold output5929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5929_skip : Flapjack.WordAlloc.isSkip output5929 = false := by
  rw [output5929_def]
  conv => lhs; cbv
  try rfl
theorem node5929_eq : Flapjack.WordAlloc.removeDeadStructural input5929 value2968 value1 value2 = (output5929, value2969, value1) := by
  rw [input5929_def, output5929_def]
  try (conv => lhs; cbv)
  try rfl

def value2970 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17877 4168#64))).val
theorem input5930_def : input5930 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17877 4168#64)) := by
  unfold input5930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17877 4168#64))).val
theorem output5930_def : output5930 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17877 4168#64)) := by
  unfold output5930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5930_skip : Flapjack.WordAlloc.isSkip output5930 = false := by
  rw [output5930_def]
  conv => lhs; cbv
  try rfl
theorem node5930_eq : Flapjack.WordAlloc.removeDeadStructural input5930 value2969 value1 value2 = (output5930, value2970, value1) := by
  rw [input5930_def, output5930_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5930 input5929)).val
theorem input5931_def : input5931 = (.seq input5930 input5929) := by
  unfold input5931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5930 output5929)).val
theorem output5931_def : output5931 = (.seq output5930 output5929) := by
  unfold output5931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5931_skip : Flapjack.WordAlloc.isSkip output5931 = false := by
  rw [output5931_def]
  conv => lhs; cbv
  try rfl
theorem node5931_eq : Flapjack.WordAlloc.removeDeadStructural input5931 value2968 value1 value2 = (output5931, value2970, value1) := by
  rw [input5931_def, output5931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5929_eq]
  dsimp only
  rw [node5930_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2971 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17873 (Flapjack.WordLangAddr.addr 17869 18446744073709551104#64)))).val
theorem input5932_def : input5932 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17873 (Flapjack.WordLangAddr.addr 17869 18446744073709551104#64))) := by
  unfold input5932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17873 (Flapjack.WordLangAddr.addr 17869 18446744073709551104#64)))).val
theorem output5932_def : output5932 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17873 (Flapjack.WordLangAddr.addr 17869 18446744073709551104#64))) := by
  unfold output5932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5932_skip : Flapjack.WordAlloc.isSkip output5932 = false := by
  rw [output5932_def]
  conv => lhs; cbv
  try rfl
theorem node5932_eq : Flapjack.WordAlloc.removeDeadStructural input5932 value2970 value1 value2 = (output5932, value2971, value1) := by
  rw [input5932_def, output5932_def]
  try (conv => lhs; cbv)
  try rfl

def value2972 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17869 17865)).val
theorem input5933_def : input5933 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17869 17865) := by
  unfold input5933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17869 17865)).val
theorem output5933_def : output5933 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17869 17865) := by
  unfold output5933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5933_skip : Flapjack.WordAlloc.isSkip output5933 = false := by
  rw [output5933_def]
  conv => lhs; cbv
  try rfl
theorem node5933_eq : Flapjack.WordAlloc.removeDeadStructural input5933 value2971 value1 value2 = (output5933, value2972, value1) := by
  rw [input5933_def, output5933_def]
  try (conv => lhs; cbv)
  try rfl

def value2973 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17865 17861 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5934_def : input5934 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17865 17861 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17865 17861 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5934_def : output5934 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17865 17861 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5934_skip : Flapjack.WordAlloc.isSkip output5934 = false := by
  rw [output5934_def]
  conv => lhs; cbv
  try rfl
theorem node5934_eq : Flapjack.WordAlloc.removeDeadStructural input5934 value2972 value1 value2 = (output5934, value2973, value1) := by
  rw [input5934_def, output5934_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17861 Flapjack.WordStore.heapLength)).val
theorem input5935_def : input5935 = (Flapjack.WordLangProgHOL.get 17861 Flapjack.WordStore.heapLength) := by
  unfold input5935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17861 Flapjack.WordStore.heapLength)).val
theorem output5935_def : output5935 = (Flapjack.WordLangProgHOL.get 17861 Flapjack.WordStore.heapLength) := by
  unfold output5935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5935_skip : Flapjack.WordAlloc.isSkip output5935 = false := by
  rw [output5935_def]
  conv => lhs; cbv
  try rfl
theorem node5935_eq : Flapjack.WordAlloc.removeDeadStructural input5935 value2973 value1 value2 = (output5935, value5, value1) := by
  rw [input5935_def, output5935_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5935 input5934)).val
theorem input5936_def : input5936 = (.seq input5935 input5934) := by
  unfold input5936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5935 output5934)).val
theorem output5936_def : output5936 = (.seq output5935 output5934) := by
  unfold output5936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5936_skip : Flapjack.WordAlloc.isSkip output5936 = false := by
  rw [output5936_def]
  conv => lhs; cbv
  try rfl
theorem node5936_eq : Flapjack.WordAlloc.removeDeadStructural input5936 value2972 value1 value2 = (output5936, value5, value1) := by
  rw [input5936_def, output5936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5934_eq]
  dsimp only
  rw [node5935_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5936 input5933)).val
theorem input5937_def : input5937 = (.seq input5936 input5933) := by
  unfold input5937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5936 output5933)).val
theorem output5937_def : output5937 = (.seq output5936 output5933) := by
  unfold output5937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5937_skip : Flapjack.WordAlloc.isSkip output5937 = false := by
  rw [output5937_def]
  conv => lhs; cbv
  try rfl
theorem node5937_eq : Flapjack.WordAlloc.removeDeadStructural input5937 value2971 value1 value2 = (output5937, value5, value1) := by
  rw [input5937_def, output5937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5933_eq]
  dsimp only
  rw [node5936_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5937 input5932)).val
theorem input5938_def : input5938 = (.seq input5937 input5932) := by
  unfold input5938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5937 output5932)).val
theorem output5938_def : output5938 = (.seq output5937 output5932) := by
  unfold output5938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5938_skip : Flapjack.WordAlloc.isSkip output5938 = false := by
  rw [output5938_def]
  conv => lhs; cbv
  try rfl
theorem node5938_eq : Flapjack.WordAlloc.removeDeadStructural input5938 value2970 value1 value2 = (output5938, value5, value1) := by
  rw [input5938_def, output5938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5932_eq]
  dsimp only
  rw [node5937_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5938 input5931)).val
theorem input5939_def : input5939 = (.seq input5938 input5931) := by
  unfold input5939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5938 output5931)).val
theorem output5939_def : output5939 = (.seq output5938 output5931) := by
  unfold output5939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5939_skip : Flapjack.WordAlloc.isSkip output5939 = false := by
  rw [output5939_def]
  conv => lhs; cbv
  try rfl
theorem node5939_eq : Flapjack.WordAlloc.removeDeadStructural input5939 value2968 value1 value2 = (output5939, value5, value1) := by
  rw [input5939_def, output5939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5931_eq]
  dsimp only
  rw [node5938_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2974 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17853 (Flapjack.WordLangAddr.addr 17857 0#64)))).val
theorem input5940_def : input5940 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17853 (Flapjack.WordLangAddr.addr 17857 0#64))) := by
  unfold input5940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17853 (Flapjack.WordLangAddr.addr 17857 0#64)))).val
theorem output5940_def : output5940 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17853 (Flapjack.WordLangAddr.addr 17857 0#64))) := by
  unfold output5940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5940_skip : Flapjack.WordAlloc.isSkip output5940 = false := by
  rw [output5940_def]
  conv => lhs; cbv
  try rfl
theorem node5940_eq : Flapjack.WordAlloc.removeDeadStructural input5940 value5 value1 value2 = (output5940, value2974, value1) := by
  rw [input5940_def, output5940_def]
  try (conv => lhs; cbv)
  try rfl

def value2975 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17857, 17845)])).val
theorem input5941_def : input5941 = (Flapjack.WordLangProgHOL.move 0 [(17857, 17845)]) := by
  unfold input5941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17857, 17845)])).val
theorem output5941_def : output5941 = (Flapjack.WordLangProgHOL.move 0 [(17857, 17845)]) := by
  unfold output5941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5941_skip : Flapjack.WordAlloc.isSkip output5941 = false := by
  rw [output5941_def]
  conv => lhs; cbv
  try rfl
theorem node5941_eq : Flapjack.WordAlloc.removeDeadStructural input5941 value2974 value1 value2 = (output5941, value2975, value1) := by
  rw [input5941_def, output5941_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5941 input5940)).val
theorem input5942_def : input5942 = (.seq input5941 input5940) := by
  unfold input5942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5941 output5940)).val
theorem output5942_def : output5942 = (.seq output5941 output5940) := by
  unfold output5942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5942_skip : Flapjack.WordAlloc.isSkip output5942 = false := by
  rw [output5942_def]
  conv => lhs; cbv
  try rfl
theorem node5942_eq : Flapjack.WordAlloc.removeDeadStructural input5942 value5 value1 value2 = (output5942, value2975, value1) := by
  rw [input5942_def, output5942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5940_eq]
  dsimp only
  rw [node5941_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2976 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17853 7720081932193848650#64))).val
theorem input5943_def : input5943 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17853 7720081932193848650#64)) := by
  unfold input5943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17853 7720081932193848650#64))).val
theorem output5943_def : output5943 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17853 7720081932193848650#64)) := by
  unfold output5943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5943_skip : Flapjack.WordAlloc.isSkip output5943 = false := by
  rw [output5943_def]
  conv => lhs; cbv
  try rfl
theorem node5943_eq : Flapjack.WordAlloc.removeDeadStructural input5943 value2975 value1 value2 = (output5943, value2976, value1) := by
  rw [input5943_def, output5943_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17849 7720081932193848650#64))).val
theorem input5944_def : input5944 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17849 7720081932193848650#64)) := by
  unfold input5944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5944_def : output5944 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5944_skip : Flapjack.WordAlloc.isSkip output5944 = true := by
  rw [output5944_def]
  conv => lhs; cbv
  try rfl
theorem node5944_eq : Flapjack.WordAlloc.removeDeadStructural input5944 value2976 value1 value2 = (output5944, value2976, value1) := by
  rw [input5944_def, output5944_def]
  try (conv => lhs; cbv)
  try rfl

def value2977 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17845 17837 (Flapjack.WordRegImm.reg 17841))))).val
theorem input5945_def : input5945 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17845 17837 (Flapjack.WordRegImm.reg 17841)))) := by
  unfold input5945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17845 17837 (Flapjack.WordRegImm.reg 17841))))).val
theorem output5945_def : output5945 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17845 17837 (Flapjack.WordRegImm.reg 17841)))) := by
  unfold output5945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5945_skip : Flapjack.WordAlloc.isSkip output5945 = false := by
  rw [output5945_def]
  conv => lhs; cbv
  try rfl
theorem node5945_eq : Flapjack.WordAlloc.removeDeadStructural input5945 value2976 value1 value2 = (output5945, value2977, value1) := by
  rw [input5945_def, output5945_def]
  try (conv => lhs; cbv)
  try rfl

def value2978 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17841 4160#64))).val
theorem input5946_def : input5946 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17841 4160#64)) := by
  unfold input5946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17841 4160#64))).val
theorem output5946_def : output5946 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17841 4160#64)) := by
  unfold output5946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5946_skip : Flapjack.WordAlloc.isSkip output5946 = false := by
  rw [output5946_def]
  conv => lhs; cbv
  try rfl
theorem node5946_eq : Flapjack.WordAlloc.removeDeadStructural input5946 value2977 value1 value2 = (output5946, value2978, value1) := by
  rw [input5946_def, output5946_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5946 input5945)).val
theorem input5947_def : input5947 = (.seq input5946 input5945) := by
  unfold input5947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5946 output5945)).val
theorem output5947_def : output5947 = (.seq output5946 output5945) := by
  unfold output5947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5947_skip : Flapjack.WordAlloc.isSkip output5947 = false := by
  rw [output5947_def]
  conv => lhs; cbv
  try rfl
theorem node5947_eq : Flapjack.WordAlloc.removeDeadStructural input5947 value2976 value1 value2 = (output5947, value2978, value1) := by
  rw [input5947_def, output5947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5945_eq]
  dsimp only
  rw [node5946_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2979 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17837 (Flapjack.WordLangAddr.addr 17833 18446744073709551104#64)))).val
theorem input5948_def : input5948 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17837 (Flapjack.WordLangAddr.addr 17833 18446744073709551104#64))) := by
  unfold input5948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17837 (Flapjack.WordLangAddr.addr 17833 18446744073709551104#64)))).val
theorem output5948_def : output5948 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17837 (Flapjack.WordLangAddr.addr 17833 18446744073709551104#64))) := by
  unfold output5948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5948_skip : Flapjack.WordAlloc.isSkip output5948 = false := by
  rw [output5948_def]
  conv => lhs; cbv
  try rfl
theorem node5948_eq : Flapjack.WordAlloc.removeDeadStructural input5948 value2978 value1 value2 = (output5948, value2979, value1) := by
  rw [input5948_def, output5948_def]
  try (conv => lhs; cbv)
  try rfl

def value2980 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17833 17829)).val
theorem input5949_def : input5949 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17833 17829) := by
  unfold input5949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17833 17829)).val
theorem output5949_def : output5949 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17833 17829) := by
  unfold output5949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5949_skip : Flapjack.WordAlloc.isSkip output5949 = false := by
  rw [output5949_def]
  conv => lhs; cbv
  try rfl
theorem node5949_eq : Flapjack.WordAlloc.removeDeadStructural input5949 value2979 value1 value2 = (output5949, value2980, value1) := by
  rw [input5949_def, output5949_def]
  try (conv => lhs; cbv)
  try rfl

def value2981 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17829 17825 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5950_def : input5950 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17829 17825 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17829 17825 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5950_def : output5950 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17829 17825 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5950_skip : Flapjack.WordAlloc.isSkip output5950 = false := by
  rw [output5950_def]
  conv => lhs; cbv
  try rfl
theorem node5950_eq : Flapjack.WordAlloc.removeDeadStructural input5950 value2980 value1 value2 = (output5950, value2981, value1) := by
  rw [input5950_def, output5950_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17825 Flapjack.WordStore.heapLength)).val
theorem input5951_def : input5951 = (Flapjack.WordLangProgHOL.get 17825 Flapjack.WordStore.heapLength) := by
  unfold input5951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17825 Flapjack.WordStore.heapLength)).val
theorem output5951_def : output5951 = (Flapjack.WordLangProgHOL.get 17825 Flapjack.WordStore.heapLength) := by
  unfold output5951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5951_skip : Flapjack.WordAlloc.isSkip output5951 = false := by
  rw [output5951_def]
  conv => lhs; cbv
  try rfl
theorem node5951_eq : Flapjack.WordAlloc.removeDeadStructural input5951 value2981 value1 value2 = (output5951, value5, value1) := by
  rw [input5951_def, output5951_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5951 input5950)).val
theorem input5952_def : input5952 = (.seq input5951 input5950) := by
  unfold input5952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5951 output5950)).val
theorem output5952_def : output5952 = (.seq output5951 output5950) := by
  unfold output5952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5952_skip : Flapjack.WordAlloc.isSkip output5952 = false := by
  rw [output5952_def]
  conv => lhs; cbv
  try rfl
theorem node5952_eq : Flapjack.WordAlloc.removeDeadStructural input5952 value2980 value1 value2 = (output5952, value5, value1) := by
  rw [input5952_def, output5952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5950_eq]
  dsimp only
  rw [node5951_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5952 input5949)).val
theorem input5953_def : input5953 = (.seq input5952 input5949) := by
  unfold input5953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5952 output5949)).val
theorem output5953_def : output5953 = (.seq output5952 output5949) := by
  unfold output5953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5953_skip : Flapjack.WordAlloc.isSkip output5953 = false := by
  rw [output5953_def]
  conv => lhs; cbv
  try rfl
theorem node5953_eq : Flapjack.WordAlloc.removeDeadStructural input5953 value2979 value1 value2 = (output5953, value5, value1) := by
  rw [input5953_def, output5953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5949_eq]
  dsimp only
  rw [node5952_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5953 input5948)).val
theorem input5954_def : input5954 = (.seq input5953 input5948) := by
  unfold input5954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5953 output5948)).val
theorem output5954_def : output5954 = (.seq output5953 output5948) := by
  unfold output5954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5954_skip : Flapjack.WordAlloc.isSkip output5954 = false := by
  rw [output5954_def]
  conv => lhs; cbv
  try rfl
theorem node5954_eq : Flapjack.WordAlloc.removeDeadStructural input5954 value2978 value1 value2 = (output5954, value5, value1) := by
  rw [input5954_def, output5954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5948_eq]
  dsimp only
  rw [node5953_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5954 input5947)).val
theorem input5955_def : input5955 = (.seq input5954 input5947) := by
  unfold input5955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5954 output5947)).val
theorem output5955_def : output5955 = (.seq output5954 output5947) := by
  unfold output5955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5955_skip : Flapjack.WordAlloc.isSkip output5955 = false := by
  rw [output5955_def]
  conv => lhs; cbv
  try rfl
theorem node5955_eq : Flapjack.WordAlloc.removeDeadStructural input5955 value2976 value1 value2 = (output5955, value5, value1) := by
  rw [input5955_def, output5955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5947_eq]
  dsimp only
  rw [node5954_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2982 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17817 (Flapjack.WordLangAddr.addr 17821 0#64)))).val
theorem input5956_def : input5956 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17817 (Flapjack.WordLangAddr.addr 17821 0#64))) := by
  unfold input5956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17817 (Flapjack.WordLangAddr.addr 17821 0#64)))).val
theorem output5956_def : output5956 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17817 (Flapjack.WordLangAddr.addr 17821 0#64))) := by
  unfold output5956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5956_skip : Flapjack.WordAlloc.isSkip output5956 = false := by
  rw [output5956_def]
  conv => lhs; cbv
  try rfl
theorem node5956_eq : Flapjack.WordAlloc.removeDeadStructural input5956 value5 value1 value2 = (output5956, value2982, value1) := by
  rw [input5956_def, output5956_def]
  try (conv => lhs; cbv)
  try rfl

def value2983 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17821, 17809)])).val
theorem input5957_def : input5957 = (Flapjack.WordLangProgHOL.move 0 [(17821, 17809)]) := by
  unfold input5957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17821, 17809)])).val
theorem output5957_def : output5957 = (Flapjack.WordLangProgHOL.move 0 [(17821, 17809)]) := by
  unfold output5957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5957_skip : Flapjack.WordAlloc.isSkip output5957 = false := by
  rw [output5957_def]
  conv => lhs; cbv
  try rfl
theorem node5957_eq : Flapjack.WordAlloc.removeDeadStructural input5957 value2982 value1 value2 = (output5957, value2983, value1) := by
  rw [input5957_def, output5957_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5957 input5956)).val
theorem input5958_def : input5958 = (.seq input5957 input5956) := by
  unfold input5958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5957 output5956)).val
theorem output5958_def : output5958 = (.seq output5957 output5956) := by
  unfold output5958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5958_skip : Flapjack.WordAlloc.isSkip output5958 = false := by
  rw [output5958_def]
  conv => lhs; cbv
  try rfl
theorem node5958_eq : Flapjack.WordAlloc.removeDeadStructural input5958 value5 value1 value2 = (output5958, value2983, value1) := by
  rw [input5958_def, output5958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5956_eq]
  dsimp only
  rw [node5957_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2984 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17817 1631410310868805610#64))).val
theorem input5959_def : input5959 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17817 1631410310868805610#64)) := by
  unfold input5959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17817 1631410310868805610#64))).val
theorem output5959_def : output5959 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17817 1631410310868805610#64)) := by
  unfold output5959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5959_skip : Flapjack.WordAlloc.isSkip output5959 = false := by
  rw [output5959_def]
  conv => lhs; cbv
  try rfl
theorem node5959_eq : Flapjack.WordAlloc.removeDeadStructural input5959 value2983 value1 value2 = (output5959, value2984, value1) := by
  rw [input5959_def, output5959_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17813 1631410310868805610#64))).val
theorem input5960_def : input5960 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17813 1631410310868805610#64)) := by
  unfold input5960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5960_def : output5960 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5960_skip : Flapjack.WordAlloc.isSkip output5960 = true := by
  rw [output5960_def]
  conv => lhs; cbv
  try rfl
theorem node5960_eq : Flapjack.WordAlloc.removeDeadStructural input5960 value2984 value1 value2 = (output5960, value2984, value1) := by
  rw [input5960_def, output5960_def]
  try (conv => lhs; cbv)
  try rfl

def value2985 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17809 17801 (Flapjack.WordRegImm.reg 17805))))).val
theorem input5961_def : input5961 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17809 17801 (Flapjack.WordRegImm.reg 17805)))) := by
  unfold input5961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17809 17801 (Flapjack.WordRegImm.reg 17805))))).val
theorem output5961_def : output5961 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17809 17801 (Flapjack.WordRegImm.reg 17805)))) := by
  unfold output5961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5961_skip : Flapjack.WordAlloc.isSkip output5961 = false := by
  rw [output5961_def]
  conv => lhs; cbv
  try rfl
theorem node5961_eq : Flapjack.WordAlloc.removeDeadStructural input5961 value2984 value1 value2 = (output5961, value2985, value1) := by
  rw [input5961_def, output5961_def]
  try (conv => lhs; cbv)
  try rfl

def value2986 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17805 4152#64))).val
theorem input5962_def : input5962 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17805 4152#64)) := by
  unfold input5962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17805 4152#64))).val
theorem output5962_def : output5962 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17805 4152#64)) := by
  unfold output5962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5962_skip : Flapjack.WordAlloc.isSkip output5962 = false := by
  rw [output5962_def]
  conv => lhs; cbv
  try rfl
theorem node5962_eq : Flapjack.WordAlloc.removeDeadStructural input5962 value2985 value1 value2 = (output5962, value2986, value1) := by
  rw [input5962_def, output5962_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5962 input5961)).val
theorem input5963_def : input5963 = (.seq input5962 input5961) := by
  unfold input5963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5962 output5961)).val
theorem output5963_def : output5963 = (.seq output5962 output5961) := by
  unfold output5963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5963_skip : Flapjack.WordAlloc.isSkip output5963 = false := by
  rw [output5963_def]
  conv => lhs; cbv
  try rfl
theorem node5963_eq : Flapjack.WordAlloc.removeDeadStructural input5963 value2984 value1 value2 = (output5963, value2986, value1) := by
  rw [input5963_def, output5963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5961_eq]
  dsimp only
  rw [node5962_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2987 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17801 (Flapjack.WordLangAddr.addr 17797 18446744073709551104#64)))).val
theorem input5964_def : input5964 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17801 (Flapjack.WordLangAddr.addr 17797 18446744073709551104#64))) := by
  unfold input5964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17801 (Flapjack.WordLangAddr.addr 17797 18446744073709551104#64)))).val
theorem output5964_def : output5964 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17801 (Flapjack.WordLangAddr.addr 17797 18446744073709551104#64))) := by
  unfold output5964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5964_skip : Flapjack.WordAlloc.isSkip output5964 = false := by
  rw [output5964_def]
  conv => lhs; cbv
  try rfl
theorem node5964_eq : Flapjack.WordAlloc.removeDeadStructural input5964 value2986 value1 value2 = (output5964, value2987, value1) := by
  rw [input5964_def, output5964_def]
  try (conv => lhs; cbv)
  try rfl

def value2988 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17797 17793)).val
theorem input5965_def : input5965 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17797 17793) := by
  unfold input5965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17797 17793)).val
theorem output5965_def : output5965 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17797 17793) := by
  unfold output5965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5965_skip : Flapjack.WordAlloc.isSkip output5965 = false := by
  rw [output5965_def]
  conv => lhs; cbv
  try rfl
theorem node5965_eq : Flapjack.WordAlloc.removeDeadStructural input5965 value2987 value1 value2 = (output5965, value2988, value1) := by
  rw [input5965_def, output5965_def]
  try (conv => lhs; cbv)
  try rfl

def value2989 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17793 17789 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5966_def : input5966 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17793 17789 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17793 17789 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5966_def : output5966 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17793 17789 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5966_skip : Flapjack.WordAlloc.isSkip output5966 = false := by
  rw [output5966_def]
  conv => lhs; cbv
  try rfl
theorem node5966_eq : Flapjack.WordAlloc.removeDeadStructural input5966 value2988 value1 value2 = (output5966, value2989, value1) := by
  rw [input5966_def, output5966_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17789 Flapjack.WordStore.heapLength)).val
theorem input5967_def : input5967 = (Flapjack.WordLangProgHOL.get 17789 Flapjack.WordStore.heapLength) := by
  unfold input5967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17789 Flapjack.WordStore.heapLength)).val
theorem output5967_def : output5967 = (Flapjack.WordLangProgHOL.get 17789 Flapjack.WordStore.heapLength) := by
  unfold output5967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5967_skip : Flapjack.WordAlloc.isSkip output5967 = false := by
  rw [output5967_def]
  conv => lhs; cbv
  try rfl
theorem node5967_eq : Flapjack.WordAlloc.removeDeadStructural input5967 value2989 value1 value2 = (output5967, value5, value1) := by
  rw [input5967_def, output5967_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5967 input5966)).val
theorem input5968_def : input5968 = (.seq input5967 input5966) := by
  unfold input5968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5967 output5966)).val
theorem output5968_def : output5968 = (.seq output5967 output5966) := by
  unfold output5968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5968_skip : Flapjack.WordAlloc.isSkip output5968 = false := by
  rw [output5968_def]
  conv => lhs; cbv
  try rfl
theorem node5968_eq : Flapjack.WordAlloc.removeDeadStructural input5968 value2988 value1 value2 = (output5968, value5, value1) := by
  rw [input5968_def, output5968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5966_eq]
  dsimp only
  rw [node5967_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5968 input5965)).val
theorem input5969_def : input5969 = (.seq input5968 input5965) := by
  unfold input5969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5968 output5965)).val
theorem output5969_def : output5969 = (.seq output5968 output5965) := by
  unfold output5969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5969_skip : Flapjack.WordAlloc.isSkip output5969 = false := by
  rw [output5969_def]
  conv => lhs; cbv
  try rfl
theorem node5969_eq : Flapjack.WordAlloc.removeDeadStructural input5969 value2987 value1 value2 = (output5969, value5, value1) := by
  rw [input5969_def, output5969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5965_eq]
  dsimp only
  rw [node5968_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5969 input5964)).val
theorem input5970_def : input5970 = (.seq input5969 input5964) := by
  unfold input5970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5969 output5964)).val
theorem output5970_def : output5970 = (.seq output5969 output5964) := by
  unfold output5970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5970_skip : Flapjack.WordAlloc.isSkip output5970 = false := by
  rw [output5970_def]
  conv => lhs; cbv
  try rfl
theorem node5970_eq : Flapjack.WordAlloc.removeDeadStructural input5970 value2986 value1 value2 = (output5970, value5, value1) := by
  rw [input5970_def, output5970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5964_eq]
  dsimp only
  rw [node5969_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5970 input5963)).val
theorem input5971_def : input5971 = (.seq input5970 input5963) := by
  unfold input5971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5970 output5963)).val
theorem output5971_def : output5971 = (.seq output5970 output5963) := by
  unfold output5971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5971_skip : Flapjack.WordAlloc.isSkip output5971 = false := by
  rw [output5971_def]
  conv => lhs; cbv
  try rfl
theorem node5971_eq : Flapjack.WordAlloc.removeDeadStructural input5971 value2984 value1 value2 = (output5971, value5, value1) := by
  rw [input5971_def, output5971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5963_eq]
  dsimp only
  rw [node5970_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2990 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17781 (Flapjack.WordLangAddr.addr 17785 0#64)))).val
theorem input5972_def : input5972 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17781 (Flapjack.WordLangAddr.addr 17785 0#64))) := by
  unfold input5972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17781 (Flapjack.WordLangAddr.addr 17785 0#64)))).val
theorem output5972_def : output5972 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17781 (Flapjack.WordLangAddr.addr 17785 0#64))) := by
  unfold output5972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5972_skip : Flapjack.WordAlloc.isSkip output5972 = false := by
  rw [output5972_def]
  conv => lhs; cbv
  try rfl
theorem node5972_eq : Flapjack.WordAlloc.removeDeadStructural input5972 value5 value1 value2 = (output5972, value2990, value1) := by
  rw [input5972_def, output5972_def]
  try (conv => lhs; cbv)
  try rfl

def value2991 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17785, 17773)])).val
theorem input5973_def : input5973 = (Flapjack.WordLangProgHOL.move 0 [(17785, 17773)]) := by
  unfold input5973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17785, 17773)])).val
theorem output5973_def : output5973 = (Flapjack.WordLangProgHOL.move 0 [(17785, 17773)]) := by
  unfold output5973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5973_skip : Flapjack.WordAlloc.isSkip output5973 = false := by
  rw [output5973_def]
  conv => lhs; cbv
  try rfl
theorem node5973_eq : Flapjack.WordAlloc.removeDeadStructural input5973 value2990 value1 value2 = (output5973, value2991, value1) := by
  rw [input5973_def, output5973_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5973 input5972)).val
theorem input5974_def : input5974 = (.seq input5973 input5972) := by
  unfold input5974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5973 output5972)).val
theorem output5974_def : output5974 = (.seq output5973 output5972) := by
  unfold output5974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5974_skip : Flapjack.WordAlloc.isSkip output5974 = false := by
  rw [output5974_def]
  conv => lhs; cbv
  try rfl
theorem node5974_eq : Flapjack.WordAlloc.removeDeadStructural input5974 value5 value1 value2 = (output5974, value2991, value1) := by
  rw [input5974_def, output5974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5972_eq]
  dsimp only
  rw [node5973_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2992 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17781 269334146695233390#64))).val
theorem input5975_def : input5975 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17781 269334146695233390#64)) := by
  unfold input5975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17781 269334146695233390#64))).val
theorem output5975_def : output5975 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17781 269334146695233390#64)) := by
  unfold output5975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5975_skip : Flapjack.WordAlloc.isSkip output5975 = false := by
  rw [output5975_def]
  conv => lhs; cbv
  try rfl
theorem node5975_eq : Flapjack.WordAlloc.removeDeadStructural input5975 value2991 value1 value2 = (output5975, value2992, value1) := by
  rw [input5975_def, output5975_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17777 269334146695233390#64))).val
theorem input5976_def : input5976 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17777 269334146695233390#64)) := by
  unfold input5976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5976_def : output5976 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5976_skip : Flapjack.WordAlloc.isSkip output5976 = true := by
  rw [output5976_def]
  conv => lhs; cbv
  try rfl
theorem node5976_eq : Flapjack.WordAlloc.removeDeadStructural input5976 value2992 value1 value2 = (output5976, value2992, value1) := by
  rw [input5976_def, output5976_def]
  try (conv => lhs; cbv)
  try rfl

def value2993 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17773 17765 (Flapjack.WordRegImm.reg 17769))))).val
theorem input5977_def : input5977 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17773 17765 (Flapjack.WordRegImm.reg 17769)))) := by
  unfold input5977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17773 17765 (Flapjack.WordRegImm.reg 17769))))).val
theorem output5977_def : output5977 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17773 17765 (Flapjack.WordRegImm.reg 17769)))) := by
  unfold output5977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5977_skip : Flapjack.WordAlloc.isSkip output5977 = false := by
  rw [output5977_def]
  conv => lhs; cbv
  try rfl
theorem node5977_eq : Flapjack.WordAlloc.removeDeadStructural input5977 value2992 value1 value2 = (output5977, value2993, value1) := by
  rw [input5977_def, output5977_def]
  try (conv => lhs; cbv)
  try rfl

def value2994 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17769 4144#64))).val
theorem input5978_def : input5978 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17769 4144#64)) := by
  unfold input5978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17769 4144#64))).val
theorem output5978_def : output5978 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17769 4144#64)) := by
  unfold output5978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5978_skip : Flapjack.WordAlloc.isSkip output5978 = false := by
  rw [output5978_def]
  conv => lhs; cbv
  try rfl
theorem node5978_eq : Flapjack.WordAlloc.removeDeadStructural input5978 value2993 value1 value2 = (output5978, value2994, value1) := by
  rw [input5978_def, output5978_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5978 input5977)).val
theorem input5979_def : input5979 = (.seq input5978 input5977) := by
  unfold input5979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5978 output5977)).val
theorem output5979_def : output5979 = (.seq output5978 output5977) := by
  unfold output5979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5979_skip : Flapjack.WordAlloc.isSkip output5979 = false := by
  rw [output5979_def]
  conv => lhs; cbv
  try rfl
theorem node5979_eq : Flapjack.WordAlloc.removeDeadStructural input5979 value2992 value1 value2 = (output5979, value2994, value1) := by
  rw [input5979_def, output5979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5977_eq]
  dsimp only
  rw [node5978_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2995 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17765 (Flapjack.WordLangAddr.addr 17761 18446744073709551104#64)))).val
theorem input5980_def : input5980 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17765 (Flapjack.WordLangAddr.addr 17761 18446744073709551104#64))) := by
  unfold input5980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17765 (Flapjack.WordLangAddr.addr 17761 18446744073709551104#64)))).val
theorem output5980_def : output5980 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17765 (Flapjack.WordLangAddr.addr 17761 18446744073709551104#64))) := by
  unfold output5980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5980_skip : Flapjack.WordAlloc.isSkip output5980 = false := by
  rw [output5980_def]
  conv => lhs; cbv
  try rfl
theorem node5980_eq : Flapjack.WordAlloc.removeDeadStructural input5980 value2994 value1 value2 = (output5980, value2995, value1) := by
  rw [input5980_def, output5980_def]
  try (conv => lhs; cbv)
  try rfl

def value2996 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17761 17757)).val
theorem input5981_def : input5981 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17761 17757) := by
  unfold input5981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17761 17757)).val
theorem output5981_def : output5981 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17761 17757) := by
  unfold output5981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5981_skip : Flapjack.WordAlloc.isSkip output5981 = false := by
  rw [output5981_def]
  conv => lhs; cbv
  try rfl
theorem node5981_eq : Flapjack.WordAlloc.removeDeadStructural input5981 value2995 value1 value2 = (output5981, value2996, value1) := by
  rw [input5981_def, output5981_def]
  try (conv => lhs; cbv)
  try rfl

def value2997 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17757 17753 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5982_def : input5982 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17757 17753 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17757 17753 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5982_def : output5982 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17757 17753 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5982_skip : Flapjack.WordAlloc.isSkip output5982 = false := by
  rw [output5982_def]
  conv => lhs; cbv
  try rfl
theorem node5982_eq : Flapjack.WordAlloc.removeDeadStructural input5982 value2996 value1 value2 = (output5982, value2997, value1) := by
  rw [input5982_def, output5982_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17753 Flapjack.WordStore.heapLength)).val
theorem input5983_def : input5983 = (Flapjack.WordLangProgHOL.get 17753 Flapjack.WordStore.heapLength) := by
  unfold input5983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17753 Flapjack.WordStore.heapLength)).val
theorem output5983_def : output5983 = (Flapjack.WordLangProgHOL.get 17753 Flapjack.WordStore.heapLength) := by
  unfold output5983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5983_skip : Flapjack.WordAlloc.isSkip output5983 = false := by
  rw [output5983_def]
  conv => lhs; cbv
  try rfl
theorem node5983_eq : Flapjack.WordAlloc.removeDeadStructural input5983 value2997 value1 value2 = (output5983, value5, value1) := by
  rw [input5983_def, output5983_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5983 input5982)).val
theorem input5984_def : input5984 = (.seq input5983 input5982) := by
  unfold input5984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5983 output5982)).val
theorem output5984_def : output5984 = (.seq output5983 output5982) := by
  unfold output5984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5984_skip : Flapjack.WordAlloc.isSkip output5984 = false := by
  rw [output5984_def]
  conv => lhs; cbv
  try rfl
theorem node5984_eq : Flapjack.WordAlloc.removeDeadStructural input5984 value2996 value1 value2 = (output5984, value5, value1) := by
  rw [input5984_def, output5984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5982_eq]
  dsimp only
  rw [node5983_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5984 input5981)).val
theorem input5985_def : input5985 = (.seq input5984 input5981) := by
  unfold input5985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5984 output5981)).val
theorem output5985_def : output5985 = (.seq output5984 output5981) := by
  unfold output5985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5985_skip : Flapjack.WordAlloc.isSkip output5985 = false := by
  rw [output5985_def]
  conv => lhs; cbv
  try rfl
theorem node5985_eq : Flapjack.WordAlloc.removeDeadStructural input5985 value2995 value1 value2 = (output5985, value5, value1) := by
  rw [input5985_def, output5985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5981_eq]
  dsimp only
  rw [node5984_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5985 input5980)).val
theorem input5986_def : input5986 = (.seq input5985 input5980) := by
  unfold input5986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5985 output5980)).val
theorem output5986_def : output5986 = (.seq output5985 output5980) := by
  unfold output5986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5986_skip : Flapjack.WordAlloc.isSkip output5986 = false := by
  rw [output5986_def]
  conv => lhs; cbv
  try rfl
theorem node5986_eq : Flapjack.WordAlloc.removeDeadStructural input5986 value2994 value1 value2 = (output5986, value5, value1) := by
  rw [input5986_def, output5986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5980_eq]
  dsimp only
  rw [node5985_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5986 input5979)).val
theorem input5987_def : input5987 = (.seq input5986 input5979) := by
  unfold input5987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5986 output5979)).val
theorem output5987_def : output5987 = (.seq output5986 output5979) := by
  unfold output5987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5987_skip : Flapjack.WordAlloc.isSkip output5987 = false := by
  rw [output5987_def]
  conv => lhs; cbv
  try rfl
theorem node5987_eq : Flapjack.WordAlloc.removeDeadStructural input5987 value2992 value1 value2 = (output5987, value5, value1) := by
  rw [input5987_def, output5987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5979_eq]
  dsimp only
  rw [node5986_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value2998 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17745 (Flapjack.WordLangAddr.addr 17749 0#64)))).val
theorem input5988_def : input5988 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17745 (Flapjack.WordLangAddr.addr 17749 0#64))) := by
  unfold input5988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17745 (Flapjack.WordLangAddr.addr 17749 0#64)))).val
theorem output5988_def : output5988 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17745 (Flapjack.WordLangAddr.addr 17749 0#64))) := by
  unfold output5988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5988_skip : Flapjack.WordAlloc.isSkip output5988 = false := by
  rw [output5988_def]
  conv => lhs; cbv
  try rfl
theorem node5988_eq : Flapjack.WordAlloc.removeDeadStructural input5988 value5 value1 value2 = (output5988, value2998, value1) := by
  rw [input5988_def, output5988_def]
  try (conv => lhs; cbv)
  try rfl

def value2999 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17749, 17737)])).val
theorem input5989_def : input5989 = (Flapjack.WordLangProgHOL.move 0 [(17749, 17737)]) := by
  unfold input5989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17749, 17737)])).val
theorem output5989_def : output5989 = (Flapjack.WordLangProgHOL.move 0 [(17749, 17737)]) := by
  unfold output5989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5989_skip : Flapjack.WordAlloc.isSkip output5989 = false := by
  rw [output5989_def]
  conv => lhs; cbv
  try rfl
theorem node5989_eq : Flapjack.WordAlloc.removeDeadStructural input5989 value2998 value1 value2 = (output5989, value2999, value1) := by
  rw [input5989_def, output5989_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5989 input5988)).val
theorem input5990_def : input5990 = (.seq input5989 input5988) := by
  unfold input5990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5989 output5988)).val
theorem output5990_def : output5990 = (.seq output5989 output5988) := by
  unfold output5990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5990_skip : Flapjack.WordAlloc.isSkip output5990 = false := by
  rw [output5990_def]
  conv => lhs; cbv
  try rfl
theorem node5990_eq : Flapjack.WordAlloc.removeDeadStructural input5990 value5 value1 value2 = (output5990, value2999, value1) := by
  rw [input5990_def, output5990_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5988_eq]
  dsimp only
  rw [node5989_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3000 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17745 16547411811928854487#64))).val
theorem input5991_def : input5991 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17745 16547411811928854487#64)) := by
  unfold input5991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17745 16547411811928854487#64))).val
theorem output5991_def : output5991 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17745 16547411811928854487#64)) := by
  unfold output5991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5991_skip : Flapjack.WordAlloc.isSkip output5991 = false := by
  rw [output5991_def]
  conv => lhs; cbv
  try rfl
theorem node5991_eq : Flapjack.WordAlloc.removeDeadStructural input5991 value2999 value1 value2 = (output5991, value3000, value1) := by
  rw [input5991_def, output5991_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17741 16547411811928854487#64))).val
theorem input5992_def : input5992 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17741 16547411811928854487#64)) := by
  unfold input5992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output5992_def : output5992 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output5992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5992_skip : Flapjack.WordAlloc.isSkip output5992 = true := by
  rw [output5992_def]
  conv => lhs; cbv
  try rfl
theorem node5992_eq : Flapjack.WordAlloc.removeDeadStructural input5992 value3000 value1 value2 = (output5992, value3000, value1) := by
  rw [input5992_def, output5992_def]
  try (conv => lhs; cbv)
  try rfl

def value3001 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17737 17729 (Flapjack.WordRegImm.reg 17733))))).val
theorem input5993_def : input5993 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17737 17729 (Flapjack.WordRegImm.reg 17733)))) := by
  unfold input5993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17737 17729 (Flapjack.WordRegImm.reg 17733))))).val
theorem output5993_def : output5993 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17737 17729 (Flapjack.WordRegImm.reg 17733)))) := by
  unfold output5993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5993_skip : Flapjack.WordAlloc.isSkip output5993 = false := by
  rw [output5993_def]
  conv => lhs; cbv
  try rfl
theorem node5993_eq : Flapjack.WordAlloc.removeDeadStructural input5993 value3000 value1 value2 = (output5993, value3001, value1) := by
  rw [input5993_def, output5993_def]
  try (conv => lhs; cbv)
  try rfl

def value3002 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17733 4136#64))).val
theorem input5994_def : input5994 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17733 4136#64)) := by
  unfold input5994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17733 4136#64))).val
theorem output5994_def : output5994 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17733 4136#64)) := by
  unfold output5994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5994_skip : Flapjack.WordAlloc.isSkip output5994 = false := by
  rw [output5994_def]
  conv => lhs; cbv
  try rfl
theorem node5994_eq : Flapjack.WordAlloc.removeDeadStructural input5994 value3001 value1 value2 = (output5994, value3002, value1) := by
  rw [input5994_def, output5994_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5994 input5993)).val
theorem input5995_def : input5995 = (.seq input5994 input5993) := by
  unfold input5995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5994 output5993)).val
theorem output5995_def : output5995 = (.seq output5994 output5993) := by
  unfold output5995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5995_skip : Flapjack.WordAlloc.isSkip output5995 = false := by
  rw [output5995_def]
  conv => lhs; cbv
  try rfl
theorem node5995_eq : Flapjack.WordAlloc.removeDeadStructural input5995 value3000 value1 value2 = (output5995, value3002, value1) := by
  rw [input5995_def, output5995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5993_eq]
  dsimp only
  rw [node5994_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3003 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17729 (Flapjack.WordLangAddr.addr 17725 18446744073709551104#64)))).val
theorem input5996_def : input5996 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17729 (Flapjack.WordLangAddr.addr 17725 18446744073709551104#64))) := by
  unfold input5996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17729 (Flapjack.WordLangAddr.addr 17725 18446744073709551104#64)))).val
theorem output5996_def : output5996 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17729 (Flapjack.WordLangAddr.addr 17725 18446744073709551104#64))) := by
  unfold output5996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5996_skip : Flapjack.WordAlloc.isSkip output5996 = false := by
  rw [output5996_def]
  conv => lhs; cbv
  try rfl
theorem node5996_eq : Flapjack.WordAlloc.removeDeadStructural input5996 value3002 value1 value2 = (output5996, value3003, value1) := by
  rw [input5996_def, output5996_def]
  try (conv => lhs; cbv)
  try rfl

def value3004 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17725 17721)).val
theorem input5997_def : input5997 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17725 17721) := by
  unfold input5997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17725 17721)).val
theorem output5997_def : output5997 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17725 17721) := by
  unfold output5997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5997_skip : Flapjack.WordAlloc.isSkip output5997 = false := by
  rw [output5997_def]
  conv => lhs; cbv
  try rfl
theorem node5997_eq : Flapjack.WordAlloc.removeDeadStructural input5997 value3003 value1 value2 = (output5997, value3004, value1) := by
  rw [input5997_def, output5997_def]
  try (conv => lhs; cbv)
  try rfl

def value3005 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input5998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17721 17717 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input5998_def : input5998 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17721 17717 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input5998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17721 17717 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output5998_def : output5998 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17721 17717 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output5998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5998_skip : Flapjack.WordAlloc.isSkip output5998 = false := by
  rw [output5998_def]
  conv => lhs; cbv
  try rfl
theorem node5998_eq : Flapjack.WordAlloc.removeDeadStructural input5998 value3004 value1 value2 = (output5998, value3005, value1) := by
  rw [input5998_def, output5998_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input5999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17717 Flapjack.WordStore.heapLength)).val
theorem input5999_def : input5999 = (Flapjack.WordLangProgHOL.get 17717 Flapjack.WordStore.heapLength) := by
  unfold input5999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output5999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17717 Flapjack.WordStore.heapLength)).val
theorem output5999_def : output5999 = (Flapjack.WordLangProgHOL.get 17717 Flapjack.WordStore.heapLength) := by
  unfold output5999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output5999_skip : Flapjack.WordAlloc.isSkip output5999 = false := by
  rw [output5999_def]
  conv => lhs; cbv
  try rfl
theorem node5999_eq : Flapjack.WordAlloc.removeDeadStructural input5999 value3005 value1 value2 = (output5999, value5, value1) := by
  rw [input5999_def, output5999_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input5999 input5998)).val
theorem input6000_def : input6000 = (.seq input5999 input5998) := by
  unfold input6000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output5999 output5998)).val
theorem output6000_def : output6000 = (.seq output5999 output5998) := by
  unfold output6000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6000_skip : Flapjack.WordAlloc.isSkip output6000 = false := by
  rw [output6000_def]
  conv => lhs; cbv
  try rfl
theorem node6000_eq : Flapjack.WordAlloc.removeDeadStructural input6000 value3004 value1 value2 = (output6000, value5, value1) := by
  rw [input6000_def, output6000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5998_eq]
  dsimp only
  rw [node5999_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6000 input5997)).val
theorem input6001_def : input6001 = (.seq input6000 input5997) := by
  unfold input6001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6000 output5997)).val
theorem output6001_def : output6001 = (.seq output6000 output5997) := by
  unfold output6001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6001_skip : Flapjack.WordAlloc.isSkip output6001 = false := by
  rw [output6001_def]
  conv => lhs; cbv
  try rfl
theorem node6001_eq : Flapjack.WordAlloc.removeDeadStructural input6001 value3003 value1 value2 = (output6001, value5, value1) := by
  rw [input6001_def, output6001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5997_eq]
  dsimp only
  rw [node6000_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6001 input5996)).val
theorem input6002_def : input6002 = (.seq input6001 input5996) := by
  unfold input6002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6001 output5996)).val
theorem output6002_def : output6002 = (.seq output6001 output5996) := by
  unfold output6002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6002_skip : Flapjack.WordAlloc.isSkip output6002 = false := by
  rw [output6002_def]
  conv => lhs; cbv
  try rfl
theorem node6002_eq : Flapjack.WordAlloc.removeDeadStructural input6002 value3002 value1 value2 = (output6002, value5, value1) := by
  rw [input6002_def, output6002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5996_eq]
  dsimp only
  rw [node6001_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6002 input5995)).val
theorem input6003_def : input6003 = (.seq input6002 input5995) := by
  unfold input6003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6002 output5995)).val
theorem output6003_def : output6003 = (.seq output6002 output5995) := by
  unfold output6003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6003_skip : Flapjack.WordAlloc.isSkip output6003 = false := by
  rw [output6003_def]
  conv => lhs; cbv
  try rfl
theorem node6003_eq : Flapjack.WordAlloc.removeDeadStructural input6003 value3000 value1 value2 = (output6003, value5, value1) := by
  rw [input6003_def, output6003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node5995_eq]
  dsimp only
  rw [node6002_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3006 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17709 (Flapjack.WordLangAddr.addr 17713 0#64)))).val
theorem input6004_def : input6004 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17709 (Flapjack.WordLangAddr.addr 17713 0#64))) := by
  unfold input6004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17709 (Flapjack.WordLangAddr.addr 17713 0#64)))).val
theorem output6004_def : output6004 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17709 (Flapjack.WordLangAddr.addr 17713 0#64))) := by
  unfold output6004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6004_skip : Flapjack.WordAlloc.isSkip output6004 = false := by
  rw [output6004_def]
  conv => lhs; cbv
  try rfl
theorem node6004_eq : Flapjack.WordAlloc.removeDeadStructural input6004 value5 value1 value2 = (output6004, value3006, value1) := by
  rw [input6004_def, output6004_def]
  try (conv => lhs; cbv)
  try rfl

def value3007 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17713, 17701)])).val
theorem input6005_def : input6005 = (Flapjack.WordLangProgHOL.move 0 [(17713, 17701)]) := by
  unfold input6005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17713, 17701)])).val
theorem output6005_def : output6005 = (Flapjack.WordLangProgHOL.move 0 [(17713, 17701)]) := by
  unfold output6005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6005_skip : Flapjack.WordAlloc.isSkip output6005 = false := by
  rw [output6005_def]
  conv => lhs; cbv
  try rfl
theorem node6005_eq : Flapjack.WordAlloc.removeDeadStructural input6005 value3006 value1 value2 = (output6005, value3007, value1) := by
  rw [input6005_def, output6005_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6005 input6004)).val
theorem input6006_def : input6006 = (.seq input6005 input6004) := by
  unfold input6006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6005 output6004)).val
theorem output6006_def : output6006 = (.seq output6005 output6004) := by
  unfold output6006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6006_skip : Flapjack.WordAlloc.isSkip output6006 = false := by
  rw [output6006_def]
  conv => lhs; cbv
  try rfl
theorem node6006_eq : Flapjack.WordAlloc.removeDeadStructural input6006 value5 value1 value2 = (output6006, value3007, value1) := by
  rw [input6006_def, output6006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6004_eq]
  dsimp only
  rw [node6005_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3008 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17709 18353100669930795314#64))).val
theorem input6007_def : input6007 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17709 18353100669930795314#64)) := by
  unfold input6007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17709 18353100669930795314#64))).val
theorem output6007_def : output6007 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17709 18353100669930795314#64)) := by
  unfold output6007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6007_skip : Flapjack.WordAlloc.isSkip output6007 = false := by
  rw [output6007_def]
  conv => lhs; cbv
  try rfl
theorem node6007_eq : Flapjack.WordAlloc.removeDeadStructural input6007 value3007 value1 value2 = (output6007, value3008, value1) := by
  rw [input6007_def, output6007_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17705 18353100669930795314#64))).val
theorem input6008_def : input6008 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17705 18353100669930795314#64)) := by
  unfold input6008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6008_def : output6008 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6008_skip : Flapjack.WordAlloc.isSkip output6008 = true := by
  rw [output6008_def]
  conv => lhs; cbv
  try rfl
theorem node6008_eq : Flapjack.WordAlloc.removeDeadStructural input6008 value3008 value1 value2 = (output6008, value3008, value1) := by
  rw [input6008_def, output6008_def]
  try (conv => lhs; cbv)
  try rfl

def value3009 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17701 17693 (Flapjack.WordRegImm.reg 17697))))).val
theorem input6009_def : input6009 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17701 17693 (Flapjack.WordRegImm.reg 17697)))) := by
  unfold input6009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17701 17693 (Flapjack.WordRegImm.reg 17697))))).val
theorem output6009_def : output6009 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17701 17693 (Flapjack.WordRegImm.reg 17697)))) := by
  unfold output6009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6009_skip : Flapjack.WordAlloc.isSkip output6009 = false := by
  rw [output6009_def]
  conv => lhs; cbv
  try rfl
theorem node6009_eq : Flapjack.WordAlloc.removeDeadStructural input6009 value3008 value1 value2 = (output6009, value3009, value1) := by
  rw [input6009_def, output6009_def]
  try (conv => lhs; cbv)
  try rfl

def value3010 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17697 4128#64))).val
theorem input6010_def : input6010 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17697 4128#64)) := by
  unfold input6010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17697 4128#64))).val
theorem output6010_def : output6010 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17697 4128#64)) := by
  unfold output6010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6010_skip : Flapjack.WordAlloc.isSkip output6010 = false := by
  rw [output6010_def]
  conv => lhs; cbv
  try rfl
theorem node6010_eq : Flapjack.WordAlloc.removeDeadStructural input6010 value3009 value1 value2 = (output6010, value3010, value1) := by
  rw [input6010_def, output6010_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6010 input6009)).val
theorem input6011_def : input6011 = (.seq input6010 input6009) := by
  unfold input6011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6010 output6009)).val
theorem output6011_def : output6011 = (.seq output6010 output6009) := by
  unfold output6011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6011_skip : Flapjack.WordAlloc.isSkip output6011 = false := by
  rw [output6011_def]
  conv => lhs; cbv
  try rfl
theorem node6011_eq : Flapjack.WordAlloc.removeDeadStructural input6011 value3008 value1 value2 = (output6011, value3010, value1) := by
  rw [input6011_def, output6011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6009_eq]
  dsimp only
  rw [node6010_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3011 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17693 (Flapjack.WordLangAddr.addr 17689 18446744073709551104#64)))).val
theorem input6012_def : input6012 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17693 (Flapjack.WordLangAddr.addr 17689 18446744073709551104#64))) := by
  unfold input6012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17693 (Flapjack.WordLangAddr.addr 17689 18446744073709551104#64)))).val
theorem output6012_def : output6012 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17693 (Flapjack.WordLangAddr.addr 17689 18446744073709551104#64))) := by
  unfold output6012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6012_skip : Flapjack.WordAlloc.isSkip output6012 = false := by
  rw [output6012_def]
  conv => lhs; cbv
  try rfl
theorem node6012_eq : Flapjack.WordAlloc.removeDeadStructural input6012 value3010 value1 value2 = (output6012, value3011, value1) := by
  rw [input6012_def, output6012_def]
  try (conv => lhs; cbv)
  try rfl

def value3012 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17689 17685)).val
theorem input6013_def : input6013 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17689 17685) := by
  unfold input6013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17689 17685)).val
theorem output6013_def : output6013 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17689 17685) := by
  unfold output6013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6013_skip : Flapjack.WordAlloc.isSkip output6013 = false := by
  rw [output6013_def]
  conv => lhs; cbv
  try rfl
theorem node6013_eq : Flapjack.WordAlloc.removeDeadStructural input6013 value3011 value1 value2 = (output6013, value3012, value1) := by
  rw [input6013_def, output6013_def]
  try (conv => lhs; cbv)
  try rfl

def value3013 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17685 17681 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6014_def : input6014 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17685 17681 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17685 17681 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6014_def : output6014 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17685 17681 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6014_skip : Flapjack.WordAlloc.isSkip output6014 = false := by
  rw [output6014_def]
  conv => lhs; cbv
  try rfl
theorem node6014_eq : Flapjack.WordAlloc.removeDeadStructural input6014 value3012 value1 value2 = (output6014, value3013, value1) := by
  rw [input6014_def, output6014_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17681 Flapjack.WordStore.heapLength)).val
theorem input6015_def : input6015 = (Flapjack.WordLangProgHOL.get 17681 Flapjack.WordStore.heapLength) := by
  unfold input6015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17681 Flapjack.WordStore.heapLength)).val
theorem output6015_def : output6015 = (Flapjack.WordLangProgHOL.get 17681 Flapjack.WordStore.heapLength) := by
  unfold output6015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6015_skip : Flapjack.WordAlloc.isSkip output6015 = false := by
  rw [output6015_def]
  conv => lhs; cbv
  try rfl
theorem node6015_eq : Flapjack.WordAlloc.removeDeadStructural input6015 value3013 value1 value2 = (output6015, value5, value1) := by
  rw [input6015_def, output6015_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6015 input6014)).val
theorem input6016_def : input6016 = (.seq input6015 input6014) := by
  unfold input6016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6015 output6014)).val
theorem output6016_def : output6016 = (.seq output6015 output6014) := by
  unfold output6016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6016_skip : Flapjack.WordAlloc.isSkip output6016 = false := by
  rw [output6016_def]
  conv => lhs; cbv
  try rfl
theorem node6016_eq : Flapjack.WordAlloc.removeDeadStructural input6016 value3012 value1 value2 = (output6016, value5, value1) := by
  rw [input6016_def, output6016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6014_eq]
  dsimp only
  rw [node6015_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6016 input6013)).val
theorem input6017_def : input6017 = (.seq input6016 input6013) := by
  unfold input6017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6016 output6013)).val
theorem output6017_def : output6017 = (.seq output6016 output6013) := by
  unfold output6017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6017_skip : Flapjack.WordAlloc.isSkip output6017 = false := by
  rw [output6017_def]
  conv => lhs; cbv
  try rfl
theorem node6017_eq : Flapjack.WordAlloc.removeDeadStructural input6017 value3011 value1 value2 = (output6017, value5, value1) := by
  rw [input6017_def, output6017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6013_eq]
  dsimp only
  rw [node6016_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6017 input6012)).val
theorem input6018_def : input6018 = (.seq input6017 input6012) := by
  unfold input6018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6017 output6012)).val
theorem output6018_def : output6018 = (.seq output6017 output6012) := by
  unfold output6018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6018_skip : Flapjack.WordAlloc.isSkip output6018 = false := by
  rw [output6018_def]
  conv => lhs; cbv
  try rfl
theorem node6018_eq : Flapjack.WordAlloc.removeDeadStructural input6018 value3010 value1 value2 = (output6018, value5, value1) := by
  rw [input6018_def, output6018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6012_eq]
  dsimp only
  rw [node6017_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6018 input6011)).val
theorem input6019_def : input6019 = (.seq input6018 input6011) := by
  unfold input6019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6018 output6011)).val
theorem output6019_def : output6019 = (.seq output6018 output6011) := by
  unfold output6019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6019_skip : Flapjack.WordAlloc.isSkip output6019 = false := by
  rw [output6019_def]
  conv => lhs; cbv
  try rfl
theorem node6019_eq : Flapjack.WordAlloc.removeDeadStructural input6019 value3008 value1 value2 = (output6019, value5, value1) := by
  rw [input6019_def, output6019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6011_eq]
  dsimp only
  rw [node6018_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3014 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17673 (Flapjack.WordLangAddr.addr 17677 0#64)))).val
theorem input6020_def : input6020 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17673 (Flapjack.WordLangAddr.addr 17677 0#64))) := by
  unfold input6020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17673 (Flapjack.WordLangAddr.addr 17677 0#64)))).val
theorem output6020_def : output6020 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17673 (Flapjack.WordLangAddr.addr 17677 0#64))) := by
  unfold output6020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6020_skip : Flapjack.WordAlloc.isSkip output6020 = false := by
  rw [output6020_def]
  conv => lhs; cbv
  try rfl
theorem node6020_eq : Flapjack.WordAlloc.removeDeadStructural input6020 value5 value1 value2 = (output6020, value3014, value1) := by
  rw [input6020_def, output6020_def]
  try (conv => lhs; cbv)
  try rfl

def value3015 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17677, 17665)])).val
theorem input6021_def : input6021 = (Flapjack.WordLangProgHOL.move 0 [(17677, 17665)]) := by
  unfold input6021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17677, 17665)])).val
theorem output6021_def : output6021 = (Flapjack.WordLangProgHOL.move 0 [(17677, 17665)]) := by
  unfold output6021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6021_skip : Flapjack.WordAlloc.isSkip output6021 = false := by
  rw [output6021_def]
  conv => lhs; cbv
  try rfl
theorem node6021_eq : Flapjack.WordAlloc.removeDeadStructural input6021 value3014 value1 value2 = (output6021, value3015, value1) := by
  rw [input6021_def, output6021_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6021 input6020)).val
theorem input6022_def : input6022 = (.seq input6021 input6020) := by
  unfold input6022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6021 output6020)).val
theorem output6022_def : output6022 = (.seq output6021 output6020) := by
  unfold output6022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6022_skip : Flapjack.WordAlloc.isSkip output6022 = false := by
  rw [output6022_def]
  conv => lhs; cbv
  try rfl
theorem node6022_eq : Flapjack.WordAlloc.removeDeadStructural input6022 value5 value1 value2 = (output6022, value3015, value1) := by
  rw [input6022_def, output6022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6020_eq]
  dsimp only
  rw [node6021_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3016 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17673 13339932232668798692#64))).val
theorem input6023_def : input6023 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17673 13339932232668798692#64)) := by
  unfold input6023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17673 13339932232668798692#64))).val
theorem output6023_def : output6023 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17673 13339932232668798692#64)) := by
  unfold output6023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6023_skip : Flapjack.WordAlloc.isSkip output6023 = false := by
  rw [output6023_def]
  conv => lhs; cbv
  try rfl
theorem node6023_eq : Flapjack.WordAlloc.removeDeadStructural input6023 value3015 value1 value2 = (output6023, value3016, value1) := by
  rw [input6023_def, output6023_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17669 13339932232668798692#64))).val
theorem input6024_def : input6024 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17669 13339932232668798692#64)) := by
  unfold input6024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6024_def : output6024 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6024_skip : Flapjack.WordAlloc.isSkip output6024 = true := by
  rw [output6024_def]
  conv => lhs; cbv
  try rfl
theorem node6024_eq : Flapjack.WordAlloc.removeDeadStructural input6024 value3016 value1 value2 = (output6024, value3016, value1) := by
  rw [input6024_def, output6024_def]
  try (conv => lhs; cbv)
  try rfl

def value3017 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17665 17657 (Flapjack.WordRegImm.reg 17661))))).val
theorem input6025_def : input6025 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17665 17657 (Flapjack.WordRegImm.reg 17661)))) := by
  unfold input6025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17665 17657 (Flapjack.WordRegImm.reg 17661))))).val
theorem output6025_def : output6025 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17665 17657 (Flapjack.WordRegImm.reg 17661)))) := by
  unfold output6025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6025_skip : Flapjack.WordAlloc.isSkip output6025 = false := by
  rw [output6025_def]
  conv => lhs; cbv
  try rfl
theorem node6025_eq : Flapjack.WordAlloc.removeDeadStructural input6025 value3016 value1 value2 = (output6025, value3017, value1) := by
  rw [input6025_def, output6025_def]
  try (conv => lhs; cbv)
  try rfl

def value3018 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17661 4120#64))).val
theorem input6026_def : input6026 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17661 4120#64)) := by
  unfold input6026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17661 4120#64))).val
theorem output6026_def : output6026 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17661 4120#64)) := by
  unfold output6026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6026_skip : Flapjack.WordAlloc.isSkip output6026 = false := by
  rw [output6026_def]
  conv => lhs; cbv
  try rfl
theorem node6026_eq : Flapjack.WordAlloc.removeDeadStructural input6026 value3017 value1 value2 = (output6026, value3018, value1) := by
  rw [input6026_def, output6026_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6026 input6025)).val
theorem input6027_def : input6027 = (.seq input6026 input6025) := by
  unfold input6027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6026 output6025)).val
theorem output6027_def : output6027 = (.seq output6026 output6025) := by
  unfold output6027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6027_skip : Flapjack.WordAlloc.isSkip output6027 = false := by
  rw [output6027_def]
  conv => lhs; cbv
  try rfl
theorem node6027_eq : Flapjack.WordAlloc.removeDeadStructural input6027 value3016 value1 value2 = (output6027, value3018, value1) := by
  rw [input6027_def, output6027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6025_eq]
  dsimp only
  rw [node6026_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3019 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17657 (Flapjack.WordLangAddr.addr 17653 18446744073709551104#64)))).val
theorem input6028_def : input6028 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17657 (Flapjack.WordLangAddr.addr 17653 18446744073709551104#64))) := by
  unfold input6028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17657 (Flapjack.WordLangAddr.addr 17653 18446744073709551104#64)))).val
theorem output6028_def : output6028 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17657 (Flapjack.WordLangAddr.addr 17653 18446744073709551104#64))) := by
  unfold output6028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6028_skip : Flapjack.WordAlloc.isSkip output6028 = false := by
  rw [output6028_def]
  conv => lhs; cbv
  try rfl
theorem node6028_eq : Flapjack.WordAlloc.removeDeadStructural input6028 value3018 value1 value2 = (output6028, value3019, value1) := by
  rw [input6028_def, output6028_def]
  try (conv => lhs; cbv)
  try rfl

def value3020 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17653 17649)).val
theorem input6029_def : input6029 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17653 17649) := by
  unfold input6029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17653 17649)).val
theorem output6029_def : output6029 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17653 17649) := by
  unfold output6029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6029_skip : Flapjack.WordAlloc.isSkip output6029 = false := by
  rw [output6029_def]
  conv => lhs; cbv
  try rfl
theorem node6029_eq : Flapjack.WordAlloc.removeDeadStructural input6029 value3019 value1 value2 = (output6029, value3020, value1) := by
  rw [input6029_def, output6029_def]
  try (conv => lhs; cbv)
  try rfl

def value3021 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17649 17645 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6030_def : input6030 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17649 17645 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17649 17645 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6030_def : output6030 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17649 17645 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6030_skip : Flapjack.WordAlloc.isSkip output6030 = false := by
  rw [output6030_def]
  conv => lhs; cbv
  try rfl
theorem node6030_eq : Flapjack.WordAlloc.removeDeadStructural input6030 value3020 value1 value2 = (output6030, value3021, value1) := by
  rw [input6030_def, output6030_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17645 Flapjack.WordStore.heapLength)).val
theorem input6031_def : input6031 = (Flapjack.WordLangProgHOL.get 17645 Flapjack.WordStore.heapLength) := by
  unfold input6031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17645 Flapjack.WordStore.heapLength)).val
theorem output6031_def : output6031 = (Flapjack.WordLangProgHOL.get 17645 Flapjack.WordStore.heapLength) := by
  unfold output6031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6031_skip : Flapjack.WordAlloc.isSkip output6031 = false := by
  rw [output6031_def]
  conv => lhs; cbv
  try rfl
theorem node6031_eq : Flapjack.WordAlloc.removeDeadStructural input6031 value3021 value1 value2 = (output6031, value5, value1) := by
  rw [input6031_def, output6031_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6031 input6030)).val
theorem input6032_def : input6032 = (.seq input6031 input6030) := by
  unfold input6032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6031 output6030)).val
theorem output6032_def : output6032 = (.seq output6031 output6030) := by
  unfold output6032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6032_skip : Flapjack.WordAlloc.isSkip output6032 = false := by
  rw [output6032_def]
  conv => lhs; cbv
  try rfl
theorem node6032_eq : Flapjack.WordAlloc.removeDeadStructural input6032 value3020 value1 value2 = (output6032, value5, value1) := by
  rw [input6032_def, output6032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6030_eq]
  dsimp only
  rw [node6031_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6032 input6029)).val
theorem input6033_def : input6033 = (.seq input6032 input6029) := by
  unfold input6033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6032 output6029)).val
theorem output6033_def : output6033 = (.seq output6032 output6029) := by
  unfold output6033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6033_skip : Flapjack.WordAlloc.isSkip output6033 = false := by
  rw [output6033_def]
  conv => lhs; cbv
  try rfl
theorem node6033_eq : Flapjack.WordAlloc.removeDeadStructural input6033 value3019 value1 value2 = (output6033, value5, value1) := by
  rw [input6033_def, output6033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6029_eq]
  dsimp only
  rw [node6032_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6033 input6028)).val
theorem input6034_def : input6034 = (.seq input6033 input6028) := by
  unfold input6034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6033 output6028)).val
theorem output6034_def : output6034 = (.seq output6033 output6028) := by
  unfold output6034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6034_skip : Flapjack.WordAlloc.isSkip output6034 = false := by
  rw [output6034_def]
  conv => lhs; cbv
  try rfl
theorem node6034_eq : Flapjack.WordAlloc.removeDeadStructural input6034 value3018 value1 value2 = (output6034, value5, value1) := by
  rw [input6034_def, output6034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6028_eq]
  dsimp only
  rw [node6033_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6034 input6027)).val
theorem input6035_def : input6035 = (.seq input6034 input6027) := by
  unfold input6035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6034 output6027)).val
theorem output6035_def : output6035 = (.seq output6034 output6027) := by
  unfold output6035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6035_skip : Flapjack.WordAlloc.isSkip output6035 = false := by
  rw [output6035_def]
  conv => lhs; cbv
  try rfl
theorem node6035_eq : Flapjack.WordAlloc.removeDeadStructural input6035 value3016 value1 value2 = (output6035, value5, value1) := by
  rw [input6035_def, output6035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6027_eq]
  dsimp only
  rw [node6034_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3022 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17637 (Flapjack.WordLangAddr.addr 17641 0#64)))).val
theorem input6036_def : input6036 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17637 (Flapjack.WordLangAddr.addr 17641 0#64))) := by
  unfold input6036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17637 (Flapjack.WordLangAddr.addr 17641 0#64)))).val
theorem output6036_def : output6036 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17637 (Flapjack.WordLangAddr.addr 17641 0#64))) := by
  unfold output6036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6036_skip : Flapjack.WordAlloc.isSkip output6036 = false := by
  rw [output6036_def]
  conv => lhs; cbv
  try rfl
theorem node6036_eq : Flapjack.WordAlloc.removeDeadStructural input6036 value5 value1 value2 = (output6036, value3022, value1) := by
  rw [input6036_def, output6036_def]
  try (conv => lhs; cbv)
  try rfl

def value3023 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17641, 17629)])).val
theorem input6037_def : input6037 = (Flapjack.WordLangProgHOL.move 0 [(17641, 17629)]) := by
  unfold input6037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17641, 17629)])).val
theorem output6037_def : output6037 = (Flapjack.WordLangProgHOL.move 0 [(17641, 17629)]) := by
  unfold output6037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6037_skip : Flapjack.WordAlloc.isSkip output6037 = false := by
  rw [output6037_def]
  conv => lhs; cbv
  try rfl
theorem node6037_eq : Flapjack.WordAlloc.removeDeadStructural input6037 value3022 value1 value2 = (output6037, value3023, value1) := by
  rw [input6037_def, output6037_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6037 input6036)).val
theorem input6038_def : input6038 = (.seq input6037 input6036) := by
  unfold input6038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6037 output6036)).val
theorem output6038_def : output6038 = (.seq output6037 output6036) := by
  unfold output6038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6038_skip : Flapjack.WordAlloc.isSkip output6038 = false := by
  rw [output6038_def]
  conv => lhs; cbv
  try rfl
theorem node6038_eq : Flapjack.WordAlloc.removeDeadStructural input6038 value5 value1 value2 = (output6038, value3023, value1) := by
  rw [input6038_def, output6038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6036_eq]
  dsimp only
  rw [node6037_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3024 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17637 6984591927261867737#64))).val
theorem input6039_def : input6039 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17637 6984591927261867737#64)) := by
  unfold input6039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17637 6984591927261867737#64))).val
theorem output6039_def : output6039 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17637 6984591927261867737#64)) := by
  unfold output6039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6039_skip : Flapjack.WordAlloc.isSkip output6039 = false := by
  rw [output6039_def]
  conv => lhs; cbv
  try rfl
theorem node6039_eq : Flapjack.WordAlloc.removeDeadStructural input6039 value3023 value1 value2 = (output6039, value3024, value1) := by
  rw [input6039_def, output6039_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17633 6984591927261867737#64))).val
theorem input6040_def : input6040 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17633 6984591927261867737#64)) := by
  unfold input6040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6040_def : output6040 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6040_skip : Flapjack.WordAlloc.isSkip output6040 = true := by
  rw [output6040_def]
  conv => lhs; cbv
  try rfl
theorem node6040_eq : Flapjack.WordAlloc.removeDeadStructural input6040 value3024 value1 value2 = (output6040, value3024, value1) := by
  rw [input6040_def, output6040_def]
  try (conv => lhs; cbv)
  try rfl

def value3025 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17629 17621 (Flapjack.WordRegImm.reg 17625))))).val
theorem input6041_def : input6041 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17629 17621 (Flapjack.WordRegImm.reg 17625)))) := by
  unfold input6041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17629 17621 (Flapjack.WordRegImm.reg 17625))))).val
theorem output6041_def : output6041 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17629 17621 (Flapjack.WordRegImm.reg 17625)))) := by
  unfold output6041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6041_skip : Flapjack.WordAlloc.isSkip output6041 = false := by
  rw [output6041_def]
  conv => lhs; cbv
  try rfl
theorem node6041_eq : Flapjack.WordAlloc.removeDeadStructural input6041 value3024 value1 value2 = (output6041, value3025, value1) := by
  rw [input6041_def, output6041_def]
  try (conv => lhs; cbv)
  try rfl

def value3026 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17625 4112#64))).val
theorem input6042_def : input6042 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17625 4112#64)) := by
  unfold input6042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17625 4112#64))).val
theorem output6042_def : output6042 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17625 4112#64)) := by
  unfold output6042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6042_skip : Flapjack.WordAlloc.isSkip output6042 = false := by
  rw [output6042_def]
  conv => lhs; cbv
  try rfl
theorem node6042_eq : Flapjack.WordAlloc.removeDeadStructural input6042 value3025 value1 value2 = (output6042, value3026, value1) := by
  rw [input6042_def, output6042_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6042 input6041)).val
theorem input6043_def : input6043 = (.seq input6042 input6041) := by
  unfold input6043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6042 output6041)).val
theorem output6043_def : output6043 = (.seq output6042 output6041) := by
  unfold output6043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6043_skip : Flapjack.WordAlloc.isSkip output6043 = false := by
  rw [output6043_def]
  conv => lhs; cbv
  try rfl
theorem node6043_eq : Flapjack.WordAlloc.removeDeadStructural input6043 value3024 value1 value2 = (output6043, value3026, value1) := by
  rw [input6043_def, output6043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6041_eq]
  dsimp only
  rw [node6042_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3027 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17621 (Flapjack.WordLangAddr.addr 17617 18446744073709551104#64)))).val
theorem input6044_def : input6044 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17621 (Flapjack.WordLangAddr.addr 17617 18446744073709551104#64))) := by
  unfold input6044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17621 (Flapjack.WordLangAddr.addr 17617 18446744073709551104#64)))).val
theorem output6044_def : output6044 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17621 (Flapjack.WordLangAddr.addr 17617 18446744073709551104#64))) := by
  unfold output6044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6044_skip : Flapjack.WordAlloc.isSkip output6044 = false := by
  rw [output6044_def]
  conv => lhs; cbv
  try rfl
theorem node6044_eq : Flapjack.WordAlloc.removeDeadStructural input6044 value3026 value1 value2 = (output6044, value3027, value1) := by
  rw [input6044_def, output6044_def]
  try (conv => lhs; cbv)
  try rfl

def value3028 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17617 17613)).val
theorem input6045_def : input6045 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17617 17613) := by
  unfold input6045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17617 17613)).val
theorem output6045_def : output6045 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17617 17613) := by
  unfold output6045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6045_skip : Flapjack.WordAlloc.isSkip output6045 = false := by
  rw [output6045_def]
  conv => lhs; cbv
  try rfl
theorem node6045_eq : Flapjack.WordAlloc.removeDeadStructural input6045 value3027 value1 value2 = (output6045, value3028, value1) := by
  rw [input6045_def, output6045_def]
  try (conv => lhs; cbv)
  try rfl

def value3029 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17613 17609 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6046_def : input6046 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17613 17609 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17613 17609 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6046_def : output6046 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17613 17609 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6046_skip : Flapjack.WordAlloc.isSkip output6046 = false := by
  rw [output6046_def]
  conv => lhs; cbv
  try rfl
theorem node6046_eq : Flapjack.WordAlloc.removeDeadStructural input6046 value3028 value1 value2 = (output6046, value3029, value1) := by
  rw [input6046_def, output6046_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17609 Flapjack.WordStore.heapLength)).val
theorem input6047_def : input6047 = (Flapjack.WordLangProgHOL.get 17609 Flapjack.WordStore.heapLength) := by
  unfold input6047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17609 Flapjack.WordStore.heapLength)).val
theorem output6047_def : output6047 = (Flapjack.WordLangProgHOL.get 17609 Flapjack.WordStore.heapLength) := by
  unfold output6047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6047_skip : Flapjack.WordAlloc.isSkip output6047 = false := by
  rw [output6047_def]
  conv => lhs; cbv
  try rfl
theorem node6047_eq : Flapjack.WordAlloc.removeDeadStructural input6047 value3029 value1 value2 = (output6047, value5, value1) := by
  rw [input6047_def, output6047_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6047 input6046)).val
theorem input6048_def : input6048 = (.seq input6047 input6046) := by
  unfold input6048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6047 output6046)).val
theorem output6048_def : output6048 = (.seq output6047 output6046) := by
  unfold output6048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6048_skip : Flapjack.WordAlloc.isSkip output6048 = false := by
  rw [output6048_def]
  conv => lhs; cbv
  try rfl
theorem node6048_eq : Flapjack.WordAlloc.removeDeadStructural input6048 value3028 value1 value2 = (output6048, value5, value1) := by
  rw [input6048_def, output6048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6046_eq]
  dsimp only
  rw [node6047_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6048 input6045)).val
theorem input6049_def : input6049 = (.seq input6048 input6045) := by
  unfold input6049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6048 output6045)).val
theorem output6049_def : output6049 = (.seq output6048 output6045) := by
  unfold output6049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6049_skip : Flapjack.WordAlloc.isSkip output6049 = false := by
  rw [output6049_def]
  conv => lhs; cbv
  try rfl
theorem node6049_eq : Flapjack.WordAlloc.removeDeadStructural input6049 value3027 value1 value2 = (output6049, value5, value1) := by
  rw [input6049_def, output6049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6045_eq]
  dsimp only
  rw [node6048_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6049 input6044)).val
theorem input6050_def : input6050 = (.seq input6049 input6044) := by
  unfold input6050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6049 output6044)).val
theorem output6050_def : output6050 = (.seq output6049 output6044) := by
  unfold output6050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6050_skip : Flapjack.WordAlloc.isSkip output6050 = false := by
  rw [output6050_def]
  conv => lhs; cbv
  try rfl
theorem node6050_eq : Flapjack.WordAlloc.removeDeadStructural input6050 value3026 value1 value2 = (output6050, value5, value1) := by
  rw [input6050_def, output6050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6044_eq]
  dsimp only
  rw [node6049_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6050 input6043)).val
theorem input6051_def : input6051 = (.seq input6050 input6043) := by
  unfold input6051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6050 output6043)).val
theorem output6051_def : output6051 = (.seq output6050 output6043) := by
  unfold output6051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6051_skip : Flapjack.WordAlloc.isSkip output6051 = false := by
  rw [output6051_def]
  conv => lhs; cbv
  try rfl
theorem node6051_eq : Flapjack.WordAlloc.removeDeadStructural input6051 value3024 value1 value2 = (output6051, value5, value1) := by
  rw [input6051_def, output6051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6043_eq]
  dsimp only
  rw [node6050_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3030 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17601 (Flapjack.WordLangAddr.addr 17605 0#64)))).val
theorem input6052_def : input6052 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17601 (Flapjack.WordLangAddr.addr 17605 0#64))) := by
  unfold input6052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17601 (Flapjack.WordLangAddr.addr 17605 0#64)))).val
theorem output6052_def : output6052 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17601 (Flapjack.WordLangAddr.addr 17605 0#64))) := by
  unfold output6052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6052_skip : Flapjack.WordAlloc.isSkip output6052 = false := by
  rw [output6052_def]
  conv => lhs; cbv
  try rfl
theorem node6052_eq : Flapjack.WordAlloc.removeDeadStructural input6052 value5 value1 value2 = (output6052, value3030, value1) := by
  rw [input6052_def, output6052_def]
  try (conv => lhs; cbv)
  try rfl

def value3031 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17605, 17593)])).val
theorem input6053_def : input6053 = (Flapjack.WordLangProgHOL.move 0 [(17605, 17593)]) := by
  unfold input6053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17605, 17593)])).val
theorem output6053_def : output6053 = (Flapjack.WordLangProgHOL.move 0 [(17605, 17593)]) := by
  unfold output6053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6053_skip : Flapjack.WordAlloc.isSkip output6053 = false := by
  rw [output6053_def]
  conv => lhs; cbv
  try rfl
theorem node6053_eq : Flapjack.WordAlloc.removeDeadStructural input6053 value3030 value1 value2 = (output6053, value3031, value1) := by
  rw [input6053_def, output6053_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6053 input6052)).val
theorem input6054_def : input6054 = (.seq input6053 input6052) := by
  unfold input6054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6053 output6052)).val
theorem output6054_def : output6054 = (.seq output6053 output6052) := by
  unfold output6054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6054_skip : Flapjack.WordAlloc.isSkip output6054 = false := by
  rw [output6054_def]
  conv => lhs; cbv
  try rfl
theorem node6054_eq : Flapjack.WordAlloc.removeDeadStructural input6054 value5 value1 value2 = (output6054, value3031, value1) := by
  rw [input6054_def, output6054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6052_eq]
  dsimp only
  rw [node6053_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3032 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17601 1612297190139091759#64))).val
theorem input6055_def : input6055 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17601 1612297190139091759#64)) := by
  unfold input6055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17601 1612297190139091759#64))).val
theorem output6055_def : output6055 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17601 1612297190139091759#64)) := by
  unfold output6055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6055_skip : Flapjack.WordAlloc.isSkip output6055 = false := by
  rw [output6055_def]
  conv => lhs; cbv
  try rfl
theorem node6055_eq : Flapjack.WordAlloc.removeDeadStructural input6055 value3031 value1 value2 = (output6055, value3032, value1) := by
  rw [input6055_def, output6055_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17597 1612297190139091759#64))).val
theorem input6056_def : input6056 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17597 1612297190139091759#64)) := by
  unfold input6056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6056_def : output6056 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6056_skip : Flapjack.WordAlloc.isSkip output6056 = true := by
  rw [output6056_def]
  conv => lhs; cbv
  try rfl
theorem node6056_eq : Flapjack.WordAlloc.removeDeadStructural input6056 value3032 value1 value2 = (output6056, value3032, value1) := by
  rw [input6056_def, output6056_def]
  try (conv => lhs; cbv)
  try rfl

def value3033 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17593 17585 (Flapjack.WordRegImm.reg 17589))))).val
theorem input6057_def : input6057 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17593 17585 (Flapjack.WordRegImm.reg 17589)))) := by
  unfold input6057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17593 17585 (Flapjack.WordRegImm.reg 17589))))).val
theorem output6057_def : output6057 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17593 17585 (Flapjack.WordRegImm.reg 17589)))) := by
  unfold output6057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6057_skip : Flapjack.WordAlloc.isSkip output6057 = false := by
  rw [output6057_def]
  conv => lhs; cbv
  try rfl
theorem node6057_eq : Flapjack.WordAlloc.removeDeadStructural input6057 value3032 value1 value2 = (output6057, value3033, value1) := by
  rw [input6057_def, output6057_def]
  try (conv => lhs; cbv)
  try rfl

def value3034 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17589 4104#64))).val
theorem input6058_def : input6058 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17589 4104#64)) := by
  unfold input6058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17589 4104#64))).val
theorem output6058_def : output6058 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17589 4104#64)) := by
  unfold output6058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6058_skip : Flapjack.WordAlloc.isSkip output6058 = false := by
  rw [output6058_def]
  conv => lhs; cbv
  try rfl
theorem node6058_eq : Flapjack.WordAlloc.removeDeadStructural input6058 value3033 value1 value2 = (output6058, value3034, value1) := by
  rw [input6058_def, output6058_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6058 input6057)).val
theorem input6059_def : input6059 = (.seq input6058 input6057) := by
  unfold input6059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6058 output6057)).val
theorem output6059_def : output6059 = (.seq output6058 output6057) := by
  unfold output6059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6059_skip : Flapjack.WordAlloc.isSkip output6059 = false := by
  rw [output6059_def]
  conv => lhs; cbv
  try rfl
theorem node6059_eq : Flapjack.WordAlloc.removeDeadStructural input6059 value3032 value1 value2 = (output6059, value3034, value1) := by
  rw [input6059_def, output6059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6057_eq]
  dsimp only
  rw [node6058_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3035 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17585 (Flapjack.WordLangAddr.addr 17581 18446744073709551104#64)))).val
theorem input6060_def : input6060 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17585 (Flapjack.WordLangAddr.addr 17581 18446744073709551104#64))) := by
  unfold input6060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17585 (Flapjack.WordLangAddr.addr 17581 18446744073709551104#64)))).val
theorem output6060_def : output6060 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17585 (Flapjack.WordLangAddr.addr 17581 18446744073709551104#64))) := by
  unfold output6060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6060_skip : Flapjack.WordAlloc.isSkip output6060 = false := by
  rw [output6060_def]
  conv => lhs; cbv
  try rfl
theorem node6060_eq : Flapjack.WordAlloc.removeDeadStructural input6060 value3034 value1 value2 = (output6060, value3035, value1) := by
  rw [input6060_def, output6060_def]
  try (conv => lhs; cbv)
  try rfl

def value3036 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17581 17577)).val
theorem input6061_def : input6061 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17581 17577) := by
  unfold input6061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17581 17577)).val
theorem output6061_def : output6061 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17581 17577) := by
  unfold output6061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6061_skip : Flapjack.WordAlloc.isSkip output6061 = false := by
  rw [output6061_def]
  conv => lhs; cbv
  try rfl
theorem node6061_eq : Flapjack.WordAlloc.removeDeadStructural input6061 value3035 value1 value2 = (output6061, value3036, value1) := by
  rw [input6061_def, output6061_def]
  try (conv => lhs; cbv)
  try rfl

def value3037 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17577 17573 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6062_def : input6062 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17577 17573 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17577 17573 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6062_def : output6062 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17577 17573 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6062_skip : Flapjack.WordAlloc.isSkip output6062 = false := by
  rw [output6062_def]
  conv => lhs; cbv
  try rfl
theorem node6062_eq : Flapjack.WordAlloc.removeDeadStructural input6062 value3036 value1 value2 = (output6062, value3037, value1) := by
  rw [input6062_def, output6062_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17573 Flapjack.WordStore.heapLength)).val
theorem input6063_def : input6063 = (Flapjack.WordLangProgHOL.get 17573 Flapjack.WordStore.heapLength) := by
  unfold input6063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17573 Flapjack.WordStore.heapLength)).val
theorem output6063_def : output6063 = (Flapjack.WordLangProgHOL.get 17573 Flapjack.WordStore.heapLength) := by
  unfold output6063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6063_skip : Flapjack.WordAlloc.isSkip output6063 = false := by
  rw [output6063_def]
  conv => lhs; cbv
  try rfl
theorem node6063_eq : Flapjack.WordAlloc.removeDeadStructural input6063 value3037 value1 value2 = (output6063, value5, value1) := by
  rw [input6063_def, output6063_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6063 input6062)).val
theorem input6064_def : input6064 = (.seq input6063 input6062) := by
  unfold input6064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6063 output6062)).val
theorem output6064_def : output6064 = (.seq output6063 output6062) := by
  unfold output6064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6064_skip : Flapjack.WordAlloc.isSkip output6064 = false := by
  rw [output6064_def]
  conv => lhs; cbv
  try rfl
theorem node6064_eq : Flapjack.WordAlloc.removeDeadStructural input6064 value3036 value1 value2 = (output6064, value5, value1) := by
  rw [input6064_def, output6064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6062_eq]
  dsimp only
  rw [node6063_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6064 input6061)).val
theorem input6065_def : input6065 = (.seq input6064 input6061) := by
  unfold input6065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6064 output6061)).val
theorem output6065_def : output6065 = (.seq output6064 output6061) := by
  unfold output6065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6065_skip : Flapjack.WordAlloc.isSkip output6065 = false := by
  rw [output6065_def]
  conv => lhs; cbv
  try rfl
theorem node6065_eq : Flapjack.WordAlloc.removeDeadStructural input6065 value3035 value1 value2 = (output6065, value5, value1) := by
  rw [input6065_def, output6065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6061_eq]
  dsimp only
  rw [node6064_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6065 input6060)).val
theorem input6066_def : input6066 = (.seq input6065 input6060) := by
  unfold input6066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6065 output6060)).val
theorem output6066_def : output6066 = (.seq output6065 output6060) := by
  unfold output6066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6066_skip : Flapjack.WordAlloc.isSkip output6066 = false := by
  rw [output6066_def]
  conv => lhs; cbv
  try rfl
theorem node6066_eq : Flapjack.WordAlloc.removeDeadStructural input6066 value3034 value1 value2 = (output6066, value5, value1) := by
  rw [input6066_def, output6066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6060_eq]
  dsimp only
  rw [node6065_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6066 input6059)).val
theorem input6067_def : input6067 = (.seq input6066 input6059) := by
  unfold input6067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6066 output6059)).val
theorem output6067_def : output6067 = (.seq output6066 output6059) := by
  unfold output6067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6067_skip : Flapjack.WordAlloc.isSkip output6067 = false := by
  rw [output6067_def]
  conv => lhs; cbv
  try rfl
theorem node6067_eq : Flapjack.WordAlloc.removeDeadStructural input6067 value3032 value1 value2 = (output6067, value5, value1) := by
  rw [input6067_def, output6067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6059_eq]
  dsimp only
  rw [node6066_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3038 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17565 (Flapjack.WordLangAddr.addr 17569 0#64)))).val
theorem input6068_def : input6068 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17565 (Flapjack.WordLangAddr.addr 17569 0#64))) := by
  unfold input6068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17565 (Flapjack.WordLangAddr.addr 17569 0#64)))).val
theorem output6068_def : output6068 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17565 (Flapjack.WordLangAddr.addr 17569 0#64))) := by
  unfold output6068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6068_skip : Flapjack.WordAlloc.isSkip output6068 = false := by
  rw [output6068_def]
  conv => lhs; cbv
  try rfl
theorem node6068_eq : Flapjack.WordAlloc.removeDeadStructural input6068 value5 value1 value2 = (output6068, value3038, value1) := by
  rw [input6068_def, output6068_def]
  try (conv => lhs; cbv)
  try rfl

def value3039 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17569, 17557)])).val
theorem input6069_def : input6069 = (Flapjack.WordLangProgHOL.move 0 [(17569, 17557)]) := by
  unfold input6069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17569, 17557)])).val
theorem output6069_def : output6069 = (Flapjack.WordLangProgHOL.move 0 [(17569, 17557)]) := by
  unfold output6069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6069_skip : Flapjack.WordAlloc.isSkip output6069 = false := by
  rw [output6069_def]
  conv => lhs; cbv
  try rfl
theorem node6069_eq : Flapjack.WordAlloc.removeDeadStructural input6069 value3038 value1 value2 = (output6069, value3039, value1) := by
  rw [input6069_def, output6069_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6069 input6068)).val
theorem input6070_def : input6070 = (.seq input6069 input6068) := by
  unfold input6070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6069 output6068)).val
theorem output6070_def : output6070 = (.seq output6069 output6068) := by
  unfold output6070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6070_skip : Flapjack.WordAlloc.isSkip output6070 = false := by
  rw [output6070_def]
  conv => lhs; cbv
  try rfl
theorem node6070_eq : Flapjack.WordAlloc.removeDeadStructural input6070 value5 value1 value2 = (output6070, value3039, value1) := by
  rw [input6070_def, output6070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6068_eq]
  dsimp only
  rw [node6069_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3040 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17565 14103733843373163083#64))).val
theorem input6071_def : input6071 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17565 14103733843373163083#64)) := by
  unfold input6071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17565 14103733843373163083#64))).val
theorem output6071_def : output6071 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17565 14103733843373163083#64)) := by
  unfold output6071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6071_skip : Flapjack.WordAlloc.isSkip output6071 = false := by
  rw [output6071_def]
  conv => lhs; cbv
  try rfl
theorem node6071_eq : Flapjack.WordAlloc.removeDeadStructural input6071 value3039 value1 value2 = (output6071, value3040, value1) := by
  rw [input6071_def, output6071_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17561 14103733843373163083#64))).val
theorem input6072_def : input6072 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17561 14103733843373163083#64)) := by
  unfold input6072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6072_def : output6072 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6072_skip : Flapjack.WordAlloc.isSkip output6072 = true := by
  rw [output6072_def]
  conv => lhs; cbv
  try rfl
theorem node6072_eq : Flapjack.WordAlloc.removeDeadStructural input6072 value3040 value1 value2 = (output6072, value3040, value1) := by
  rw [input6072_def, output6072_def]
  try (conv => lhs; cbv)
  try rfl

def value3041 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17557 17549 (Flapjack.WordRegImm.reg 17553))))).val
theorem input6073_def : input6073 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17557 17549 (Flapjack.WordRegImm.reg 17553)))) := by
  unfold input6073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17557 17549 (Flapjack.WordRegImm.reg 17553))))).val
theorem output6073_def : output6073 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17557 17549 (Flapjack.WordRegImm.reg 17553)))) := by
  unfold output6073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6073_skip : Flapjack.WordAlloc.isSkip output6073 = false := by
  rw [output6073_def]
  conv => lhs; cbv
  try rfl
theorem node6073_eq : Flapjack.WordAlloc.removeDeadStructural input6073 value3040 value1 value2 = (output6073, value3041, value1) := by
  rw [input6073_def, output6073_def]
  try (conv => lhs; cbv)
  try rfl

def value3042 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17553 4096#64))).val
theorem input6074_def : input6074 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17553 4096#64)) := by
  unfold input6074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17553 4096#64))).val
theorem output6074_def : output6074 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17553 4096#64)) := by
  unfold output6074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6074_skip : Flapjack.WordAlloc.isSkip output6074 = false := by
  rw [output6074_def]
  conv => lhs; cbv
  try rfl
theorem node6074_eq : Flapjack.WordAlloc.removeDeadStructural input6074 value3041 value1 value2 = (output6074, value3042, value1) := by
  rw [input6074_def, output6074_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6074 input6073)).val
theorem input6075_def : input6075 = (.seq input6074 input6073) := by
  unfold input6075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6074 output6073)).val
theorem output6075_def : output6075 = (.seq output6074 output6073) := by
  unfold output6075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6075_skip : Flapjack.WordAlloc.isSkip output6075 = false := by
  rw [output6075_def]
  conv => lhs; cbv
  try rfl
theorem node6075_eq : Flapjack.WordAlloc.removeDeadStructural input6075 value3040 value1 value2 = (output6075, value3042, value1) := by
  rw [input6075_def, output6075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6073_eq]
  dsimp only
  rw [node6074_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3043 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17549 (Flapjack.WordLangAddr.addr 17545 18446744073709551104#64)))).val
theorem input6076_def : input6076 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17549 (Flapjack.WordLangAddr.addr 17545 18446744073709551104#64))) := by
  unfold input6076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17549 (Flapjack.WordLangAddr.addr 17545 18446744073709551104#64)))).val
theorem output6076_def : output6076 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17549 (Flapjack.WordLangAddr.addr 17545 18446744073709551104#64))) := by
  unfold output6076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6076_skip : Flapjack.WordAlloc.isSkip output6076 = false := by
  rw [output6076_def]
  conv => lhs; cbv
  try rfl
theorem node6076_eq : Flapjack.WordAlloc.removeDeadStructural input6076 value3042 value1 value2 = (output6076, value3043, value1) := by
  rw [input6076_def, output6076_def]
  try (conv => lhs; cbv)
  try rfl

def value3044 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17545 17541)).val
theorem input6077_def : input6077 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17545 17541) := by
  unfold input6077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17545 17541)).val
theorem output6077_def : output6077 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17545 17541) := by
  unfold output6077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6077_skip : Flapjack.WordAlloc.isSkip output6077 = false := by
  rw [output6077_def]
  conv => lhs; cbv
  try rfl
theorem node6077_eq : Flapjack.WordAlloc.removeDeadStructural input6077 value3043 value1 value2 = (output6077, value3044, value1) := by
  rw [input6077_def, output6077_def]
  try (conv => lhs; cbv)
  try rfl

def value3045 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17541 17537 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6078_def : input6078 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17541 17537 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17541 17537 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6078_def : output6078 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17541 17537 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6078_skip : Flapjack.WordAlloc.isSkip output6078 = false := by
  rw [output6078_def]
  conv => lhs; cbv
  try rfl
theorem node6078_eq : Flapjack.WordAlloc.removeDeadStructural input6078 value3044 value1 value2 = (output6078, value3045, value1) := by
  rw [input6078_def, output6078_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17537 Flapjack.WordStore.heapLength)).val
theorem input6079_def : input6079 = (Flapjack.WordLangProgHOL.get 17537 Flapjack.WordStore.heapLength) := by
  unfold input6079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17537 Flapjack.WordStore.heapLength)).val
theorem output6079_def : output6079 = (Flapjack.WordLangProgHOL.get 17537 Flapjack.WordStore.heapLength) := by
  unfold output6079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6079_skip : Flapjack.WordAlloc.isSkip output6079 = false := by
  rw [output6079_def]
  conv => lhs; cbv
  try rfl
theorem node6079_eq : Flapjack.WordAlloc.removeDeadStructural input6079 value3045 value1 value2 = (output6079, value5, value1) := by
  rw [input6079_def, output6079_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6079 input6078)).val
theorem input6080_def : input6080 = (.seq input6079 input6078) := by
  unfold input6080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6079 output6078)).val
theorem output6080_def : output6080 = (.seq output6079 output6078) := by
  unfold output6080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6080_skip : Flapjack.WordAlloc.isSkip output6080 = false := by
  rw [output6080_def]
  conv => lhs; cbv
  try rfl
theorem node6080_eq : Flapjack.WordAlloc.removeDeadStructural input6080 value3044 value1 value2 = (output6080, value5, value1) := by
  rw [input6080_def, output6080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6078_eq]
  dsimp only
  rw [node6079_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6080 input6077)).val
theorem input6081_def : input6081 = (.seq input6080 input6077) := by
  unfold input6081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6080 output6077)).val
theorem output6081_def : output6081 = (.seq output6080 output6077) := by
  unfold output6081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6081_skip : Flapjack.WordAlloc.isSkip output6081 = false := by
  rw [output6081_def]
  conv => lhs; cbv
  try rfl
theorem node6081_eq : Flapjack.WordAlloc.removeDeadStructural input6081 value3043 value1 value2 = (output6081, value5, value1) := by
  rw [input6081_def, output6081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6077_eq]
  dsimp only
  rw [node6080_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6081 input6076)).val
theorem input6082_def : input6082 = (.seq input6081 input6076) := by
  unfold input6082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6081 output6076)).val
theorem output6082_def : output6082 = (.seq output6081 output6076) := by
  unfold output6082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6082_skip : Flapjack.WordAlloc.isSkip output6082 = false := by
  rw [output6082_def]
  conv => lhs; cbv
  try rfl
theorem node6082_eq : Flapjack.WordAlloc.removeDeadStructural input6082 value3042 value1 value2 = (output6082, value5, value1) := by
  rw [input6082_def, output6082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6076_eq]
  dsimp only
  rw [node6081_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6082 input6075)).val
theorem input6083_def : input6083 = (.seq input6082 input6075) := by
  unfold input6083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6082 output6075)).val
theorem output6083_def : output6083 = (.seq output6082 output6075) := by
  unfold output6083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6083_skip : Flapjack.WordAlloc.isSkip output6083 = false := by
  rw [output6083_def]
  conv => lhs; cbv
  try rfl
theorem node6083_eq : Flapjack.WordAlloc.removeDeadStructural input6083 value3040 value1 value2 = (output6083, value5, value1) := by
  rw [input6083_def, output6083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6075_eq]
  dsimp only
  rw [node6082_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3046 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17529 (Flapjack.WordLangAddr.addr 17533 0#64)))).val
theorem input6084_def : input6084 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17529 (Flapjack.WordLangAddr.addr 17533 0#64))) := by
  unfold input6084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17529 (Flapjack.WordLangAddr.addr 17533 0#64)))).val
theorem output6084_def : output6084 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17529 (Flapjack.WordLangAddr.addr 17533 0#64))) := by
  unfold output6084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6084_skip : Flapjack.WordAlloc.isSkip output6084 = false := by
  rw [output6084_def]
  conv => lhs; cbv
  try rfl
theorem node6084_eq : Flapjack.WordAlloc.removeDeadStructural input6084 value5 value1 value2 = (output6084, value3046, value1) := by
  rw [input6084_def, output6084_def]
  try (conv => lhs; cbv)
  try rfl

def value3047 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17533, 17521)])).val
theorem input6085_def : input6085 = (Flapjack.WordLangProgHOL.move 0 [(17533, 17521)]) := by
  unfold input6085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17533, 17521)])).val
theorem output6085_def : output6085 = (Flapjack.WordLangProgHOL.move 0 [(17533, 17521)]) := by
  unfold output6085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6085_skip : Flapjack.WordAlloc.isSkip output6085 = false := by
  rw [output6085_def]
  conv => lhs; cbv
  try rfl
theorem node6085_eq : Flapjack.WordAlloc.removeDeadStructural input6085 value3046 value1 value2 = (output6085, value3047, value1) := by
  rw [input6085_def, output6085_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6085 input6084)).val
theorem input6086_def : input6086 = (.seq input6085 input6084) := by
  unfold input6086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6085 output6084)).val
theorem output6086_def : output6086 = (.seq output6085 output6084) := by
  unfold output6086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6086_skip : Flapjack.WordAlloc.isSkip output6086 = false := by
  rw [output6086_def]
  conv => lhs; cbv
  try rfl
theorem node6086_eq : Flapjack.WordAlloc.removeDeadStructural input6086 value5 value1 value2 = (output6086, value3047, value1) := by
  rw [input6086_def, output6086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6084_eq]
  dsimp only
  rw [node6085_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3048 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17529 6840121186619029743#64))).val
theorem input6087_def : input6087 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17529 6840121186619029743#64)) := by
  unfold input6087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17529 6840121186619029743#64))).val
theorem output6087_def : output6087 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17529 6840121186619029743#64)) := by
  unfold output6087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6087_skip : Flapjack.WordAlloc.isSkip output6087 = false := by
  rw [output6087_def]
  conv => lhs; cbv
  try rfl
theorem node6087_eq : Flapjack.WordAlloc.removeDeadStructural input6087 value3047 value1 value2 = (output6087, value3048, value1) := by
  rw [input6087_def, output6087_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17525 6840121186619029743#64))).val
theorem input6088_def : input6088 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17525 6840121186619029743#64)) := by
  unfold input6088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6088_def : output6088 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6088_skip : Flapjack.WordAlloc.isSkip output6088 = true := by
  rw [output6088_def]
  conv => lhs; cbv
  try rfl
theorem node6088_eq : Flapjack.WordAlloc.removeDeadStructural input6088 value3048 value1 value2 = (output6088, value3048, value1) := by
  rw [input6088_def, output6088_def]
  try (conv => lhs; cbv)
  try rfl

def value3049 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17521 17513 (Flapjack.WordRegImm.reg 17517))))).val
theorem input6089_def : input6089 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17521 17513 (Flapjack.WordRegImm.reg 17517)))) := by
  unfold input6089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17521 17513 (Flapjack.WordRegImm.reg 17517))))).val
theorem output6089_def : output6089 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17521 17513 (Flapjack.WordRegImm.reg 17517)))) := by
  unfold output6089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6089_skip : Flapjack.WordAlloc.isSkip output6089 = false := by
  rw [output6089_def]
  conv => lhs; cbv
  try rfl
theorem node6089_eq : Flapjack.WordAlloc.removeDeadStructural input6089 value3048 value1 value2 = (output6089, value3049, value1) := by
  rw [input6089_def, output6089_def]
  try (conv => lhs; cbv)
  try rfl

def value3050 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17517 4088#64))).val
theorem input6090_def : input6090 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17517 4088#64)) := by
  unfold input6090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17517 4088#64))).val
theorem output6090_def : output6090 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17517 4088#64)) := by
  unfold output6090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6090_skip : Flapjack.WordAlloc.isSkip output6090 = false := by
  rw [output6090_def]
  conv => lhs; cbv
  try rfl
theorem node6090_eq : Flapjack.WordAlloc.removeDeadStructural input6090 value3049 value1 value2 = (output6090, value3050, value1) := by
  rw [input6090_def, output6090_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6090 input6089)).val
theorem input6091_def : input6091 = (.seq input6090 input6089) := by
  unfold input6091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6090 output6089)).val
theorem output6091_def : output6091 = (.seq output6090 output6089) := by
  unfold output6091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6091_skip : Flapjack.WordAlloc.isSkip output6091 = false := by
  rw [output6091_def]
  conv => lhs; cbv
  try rfl
theorem node6091_eq : Flapjack.WordAlloc.removeDeadStructural input6091 value3048 value1 value2 = (output6091, value3050, value1) := by
  rw [input6091_def, output6091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6089_eq]
  dsimp only
  rw [node6090_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3051 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17513 (Flapjack.WordLangAddr.addr 17509 18446744073709551104#64)))).val
theorem input6092_def : input6092 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17513 (Flapjack.WordLangAddr.addr 17509 18446744073709551104#64))) := by
  unfold input6092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17513 (Flapjack.WordLangAddr.addr 17509 18446744073709551104#64)))).val
theorem output6092_def : output6092 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17513 (Flapjack.WordLangAddr.addr 17509 18446744073709551104#64))) := by
  unfold output6092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6092_skip : Flapjack.WordAlloc.isSkip output6092 = false := by
  rw [output6092_def]
  conv => lhs; cbv
  try rfl
theorem node6092_eq : Flapjack.WordAlloc.removeDeadStructural input6092 value3050 value1 value2 = (output6092, value3051, value1) := by
  rw [input6092_def, output6092_def]
  try (conv => lhs; cbv)
  try rfl

def value3052 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17509 17505)).val
theorem input6093_def : input6093 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17509 17505) := by
  unfold input6093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17509 17505)).val
theorem output6093_def : output6093 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17509 17505) := by
  unfold output6093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6093_skip : Flapjack.WordAlloc.isSkip output6093 = false := by
  rw [output6093_def]
  conv => lhs; cbv
  try rfl
theorem node6093_eq : Flapjack.WordAlloc.removeDeadStructural input6093 value3051 value1 value2 = (output6093, value3052, value1) := by
  rw [input6093_def, output6093_def]
  try (conv => lhs; cbv)
  try rfl

def value3053 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17505 17501 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6094_def : input6094 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17505 17501 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17505 17501 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6094_def : output6094 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17505 17501 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6094_skip : Flapjack.WordAlloc.isSkip output6094 = false := by
  rw [output6094_def]
  conv => lhs; cbv
  try rfl
theorem node6094_eq : Flapjack.WordAlloc.removeDeadStructural input6094 value3052 value1 value2 = (output6094, value3053, value1) := by
  rw [input6094_def, output6094_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17501 Flapjack.WordStore.heapLength)).val
theorem input6095_def : input6095 = (Flapjack.WordLangProgHOL.get 17501 Flapjack.WordStore.heapLength) := by
  unfold input6095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17501 Flapjack.WordStore.heapLength)).val
theorem output6095_def : output6095 = (Flapjack.WordLangProgHOL.get 17501 Flapjack.WordStore.heapLength) := by
  unfold output6095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6095_skip : Flapjack.WordAlloc.isSkip output6095 = false := by
  rw [output6095_def]
  conv => lhs; cbv
  try rfl
theorem node6095_eq : Flapjack.WordAlloc.removeDeadStructural input6095 value3053 value1 value2 = (output6095, value5, value1) := by
  rw [input6095_def, output6095_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6095 input6094)).val
theorem input6096_def : input6096 = (.seq input6095 input6094) := by
  unfold input6096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6095 output6094)).val
theorem output6096_def : output6096 = (.seq output6095 output6094) := by
  unfold output6096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6096_skip : Flapjack.WordAlloc.isSkip output6096 = false := by
  rw [output6096_def]
  conv => lhs; cbv
  try rfl
theorem node6096_eq : Flapjack.WordAlloc.removeDeadStructural input6096 value3052 value1 value2 = (output6096, value5, value1) := by
  rw [input6096_def, output6096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6094_eq]
  dsimp only
  rw [node6095_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6096 input6093)).val
theorem input6097_def : input6097 = (.seq input6096 input6093) := by
  unfold input6097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6096 output6093)).val
theorem output6097_def : output6097 = (.seq output6096 output6093) := by
  unfold output6097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6097_skip : Flapjack.WordAlloc.isSkip output6097 = false := by
  rw [output6097_def]
  conv => lhs; cbv
  try rfl
theorem node6097_eq : Flapjack.WordAlloc.removeDeadStructural input6097 value3051 value1 value2 = (output6097, value5, value1) := by
  rw [input6097_def, output6097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6093_eq]
  dsimp only
  rw [node6096_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6097 input6092)).val
theorem input6098_def : input6098 = (.seq input6097 input6092) := by
  unfold input6098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6097 output6092)).val
theorem output6098_def : output6098 = (.seq output6097 output6092) := by
  unfold output6098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6098_skip : Flapjack.WordAlloc.isSkip output6098 = false := by
  rw [output6098_def]
  conv => lhs; cbv
  try rfl
theorem node6098_eq : Flapjack.WordAlloc.removeDeadStructural input6098 value3050 value1 value2 = (output6098, value5, value1) := by
  rw [input6098_def, output6098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6092_eq]
  dsimp only
  rw [node6097_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6098 input6091)).val
theorem input6099_def : input6099 = (.seq input6098 input6091) := by
  unfold input6099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6098 output6091)).val
theorem output6099_def : output6099 = (.seq output6098 output6091) := by
  unfold output6099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6099_skip : Flapjack.WordAlloc.isSkip output6099 = false := by
  rw [output6099_def]
  conv => lhs; cbv
  try rfl
theorem node6099_eq : Flapjack.WordAlloc.removeDeadStructural input6099 value3048 value1 value2 = (output6099, value5, value1) := by
  rw [input6099_def, output6099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6091_eq]
  dsimp only
  rw [node6098_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3054 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17493 (Flapjack.WordLangAddr.addr 17497 0#64)))).val
theorem input6100_def : input6100 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17493 (Flapjack.WordLangAddr.addr 17497 0#64))) := by
  unfold input6100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17493 (Flapjack.WordLangAddr.addr 17497 0#64)))).val
theorem output6100_def : output6100 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17493 (Flapjack.WordLangAddr.addr 17497 0#64))) := by
  unfold output6100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6100_skip : Flapjack.WordAlloc.isSkip output6100 = false := by
  rw [output6100_def]
  conv => lhs; cbv
  try rfl
theorem node6100_eq : Flapjack.WordAlloc.removeDeadStructural input6100 value5 value1 value2 = (output6100, value3054, value1) := by
  rw [input6100_def, output6100_def]
  try (conv => lhs; cbv)
  try rfl

def value3055 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17497, 17485)])).val
theorem input6101_def : input6101 = (Flapjack.WordLangProgHOL.move 0 [(17497, 17485)]) := by
  unfold input6101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17497, 17485)])).val
theorem output6101_def : output6101 = (Flapjack.WordLangProgHOL.move 0 [(17497, 17485)]) := by
  unfold output6101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6101_skip : Flapjack.WordAlloc.isSkip output6101 = false := by
  rw [output6101_def]
  conv => lhs; cbv
  try rfl
theorem node6101_eq : Flapjack.WordAlloc.removeDeadStructural input6101 value3054 value1 value2 = (output6101, value3055, value1) := by
  rw [input6101_def, output6101_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6101 input6100)).val
theorem input6102_def : input6102 = (.seq input6101 input6100) := by
  unfold input6102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6101 output6100)).val
theorem output6102_def : output6102 = (.seq output6101 output6100) := by
  unfold output6102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6102_skip : Flapjack.WordAlloc.isSkip output6102 = false := by
  rw [output6102_def]
  conv => lhs; cbv
  try rfl
theorem node6102_eq : Flapjack.WordAlloc.removeDeadStructural input6102 value5 value1 value2 = (output6102, value3055, value1) := by
  rw [input6102_def, output6102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6100_eq]
  dsimp only
  rw [node6101_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3056 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17493 6760859324815900753#64))).val
theorem input6103_def : input6103 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17493 6760859324815900753#64)) := by
  unfold input6103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17493 6760859324815900753#64))).val
theorem output6103_def : output6103 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17493 6760859324815900753#64)) := by
  unfold output6103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6103_skip : Flapjack.WordAlloc.isSkip output6103 = false := by
  rw [output6103_def]
  conv => lhs; cbv
  try rfl
theorem node6103_eq : Flapjack.WordAlloc.removeDeadStructural input6103 value3055 value1 value2 = (output6103, value3056, value1) := by
  rw [input6103_def, output6103_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17489 6760859324815900753#64))).val
theorem input6104_def : input6104 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17489 6760859324815900753#64)) := by
  unfold input6104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6104_def : output6104 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6104_skip : Flapjack.WordAlloc.isSkip output6104 = true := by
  rw [output6104_def]
  conv => lhs; cbv
  try rfl
theorem node6104_eq : Flapjack.WordAlloc.removeDeadStructural input6104 value3056 value1 value2 = (output6104, value3056, value1) := by
  rw [input6104_def, output6104_def]
  try (conv => lhs; cbv)
  try rfl

def value3057 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17485 17477 (Flapjack.WordRegImm.reg 17481))))).val
theorem input6105_def : input6105 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17485 17477 (Flapjack.WordRegImm.reg 17481)))) := by
  unfold input6105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17485 17477 (Flapjack.WordRegImm.reg 17481))))).val
theorem output6105_def : output6105 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17485 17477 (Flapjack.WordRegImm.reg 17481)))) := by
  unfold output6105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6105_skip : Flapjack.WordAlloc.isSkip output6105 = false := by
  rw [output6105_def]
  conv => lhs; cbv
  try rfl
theorem node6105_eq : Flapjack.WordAlloc.removeDeadStructural input6105 value3056 value1 value2 = (output6105, value3057, value1) := by
  rw [input6105_def, output6105_def]
  try (conv => lhs; cbv)
  try rfl

def value3058 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17481 4080#64))).val
theorem input6106_def : input6106 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17481 4080#64)) := by
  unfold input6106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17481 4080#64))).val
theorem output6106_def : output6106 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17481 4080#64)) := by
  unfold output6106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6106_skip : Flapjack.WordAlloc.isSkip output6106 = false := by
  rw [output6106_def]
  conv => lhs; cbv
  try rfl
theorem node6106_eq : Flapjack.WordAlloc.removeDeadStructural input6106 value3057 value1 value2 = (output6106, value3058, value1) := by
  rw [input6106_def, output6106_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6106 input6105)).val
theorem input6107_def : input6107 = (.seq input6106 input6105) := by
  unfold input6107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6106 output6105)).val
theorem output6107_def : output6107 = (.seq output6106 output6105) := by
  unfold output6107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6107_skip : Flapjack.WordAlloc.isSkip output6107 = false := by
  rw [output6107_def]
  conv => lhs; cbv
  try rfl
theorem node6107_eq : Flapjack.WordAlloc.removeDeadStructural input6107 value3056 value1 value2 = (output6107, value3058, value1) := by
  rw [input6107_def, output6107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6105_eq]
  dsimp only
  rw [node6106_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3059 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17477 (Flapjack.WordLangAddr.addr 17473 18446744073709551104#64)))).val
theorem input6108_def : input6108 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17477 (Flapjack.WordLangAddr.addr 17473 18446744073709551104#64))) := by
  unfold input6108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17477 (Flapjack.WordLangAddr.addr 17473 18446744073709551104#64)))).val
theorem output6108_def : output6108 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17477 (Flapjack.WordLangAddr.addr 17473 18446744073709551104#64))) := by
  unfold output6108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6108_skip : Flapjack.WordAlloc.isSkip output6108 = false := by
  rw [output6108_def]
  conv => lhs; cbv
  try rfl
theorem node6108_eq : Flapjack.WordAlloc.removeDeadStructural input6108 value3058 value1 value2 = (output6108, value3059, value1) := by
  rw [input6108_def, output6108_def]
  try (conv => lhs; cbv)
  try rfl

def value3060 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17473 17469)).val
theorem input6109_def : input6109 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17473 17469) := by
  unfold input6109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17473 17469)).val
theorem output6109_def : output6109 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17473 17469) := by
  unfold output6109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6109_skip : Flapjack.WordAlloc.isSkip output6109 = false := by
  rw [output6109_def]
  conv => lhs; cbv
  try rfl
theorem node6109_eq : Flapjack.WordAlloc.removeDeadStructural input6109 value3059 value1 value2 = (output6109, value3060, value1) := by
  rw [input6109_def, output6109_def]
  try (conv => lhs; cbv)
  try rfl

def value3061 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17469 17465 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6110_def : input6110 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17469 17465 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17469 17465 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6110_def : output6110 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17469 17465 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6110_skip : Flapjack.WordAlloc.isSkip output6110 = false := by
  rw [output6110_def]
  conv => lhs; cbv
  try rfl
theorem node6110_eq : Flapjack.WordAlloc.removeDeadStructural input6110 value3060 value1 value2 = (output6110, value3061, value1) := by
  rw [input6110_def, output6110_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17465 Flapjack.WordStore.heapLength)).val
theorem input6111_def : input6111 = (Flapjack.WordLangProgHOL.get 17465 Flapjack.WordStore.heapLength) := by
  unfold input6111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17465 Flapjack.WordStore.heapLength)).val
theorem output6111_def : output6111 = (Flapjack.WordLangProgHOL.get 17465 Flapjack.WordStore.heapLength) := by
  unfold output6111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6111_skip : Flapjack.WordAlloc.isSkip output6111 = false := by
  rw [output6111_def]
  conv => lhs; cbv
  try rfl
theorem node6111_eq : Flapjack.WordAlloc.removeDeadStructural input6111 value3061 value1 value2 = (output6111, value5, value1) := by
  rw [input6111_def, output6111_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6111 input6110)).val
theorem input6112_def : input6112 = (.seq input6111 input6110) := by
  unfold input6112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6111 output6110)).val
theorem output6112_def : output6112 = (.seq output6111 output6110) := by
  unfold output6112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6112_skip : Flapjack.WordAlloc.isSkip output6112 = false := by
  rw [output6112_def]
  conv => lhs; cbv
  try rfl
theorem node6112_eq : Flapjack.WordAlloc.removeDeadStructural input6112 value3060 value1 value2 = (output6112, value5, value1) := by
  rw [input6112_def, output6112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6110_eq]
  dsimp only
  rw [node6111_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6112 input6109)).val
theorem input6113_def : input6113 = (.seq input6112 input6109) := by
  unfold input6113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6112 output6109)).val
theorem output6113_def : output6113 = (.seq output6112 output6109) := by
  unfold output6113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6113_skip : Flapjack.WordAlloc.isSkip output6113 = false := by
  rw [output6113_def]
  conv => lhs; cbv
  try rfl
theorem node6113_eq : Flapjack.WordAlloc.removeDeadStructural input6113 value3059 value1 value2 = (output6113, value5, value1) := by
  rw [input6113_def, output6113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6109_eq]
  dsimp only
  rw [node6112_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6113 input6108)).val
theorem input6114_def : input6114 = (.seq input6113 input6108) := by
  unfold input6114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6113 output6108)).val
theorem output6114_def : output6114 = (.seq output6113 output6108) := by
  unfold output6114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6114_skip : Flapjack.WordAlloc.isSkip output6114 = false := by
  rw [output6114_def]
  conv => lhs; cbv
  try rfl
theorem node6114_eq : Flapjack.WordAlloc.removeDeadStructural input6114 value3058 value1 value2 = (output6114, value5, value1) := by
  rw [input6114_def, output6114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6108_eq]
  dsimp only
  rw [node6113_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6114 input6107)).val
theorem input6115_def : input6115 = (.seq input6114 input6107) := by
  unfold input6115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6114 output6107)).val
theorem output6115_def : output6115 = (.seq output6114 output6107) := by
  unfold output6115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6115_skip : Flapjack.WordAlloc.isSkip output6115 = false := by
  rw [output6115_def]
  conv => lhs; cbv
  try rfl
theorem node6115_eq : Flapjack.WordAlloc.removeDeadStructural input6115 value3056 value1 value2 = (output6115, value5, value1) := by
  rw [input6115_def, output6115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6107_eq]
  dsimp only
  rw [node6114_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3062 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17457 (Flapjack.WordLangAddr.addr 17461 0#64)))).val
theorem input6116_def : input6116 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17457 (Flapjack.WordLangAddr.addr 17461 0#64))) := by
  unfold input6116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17457 (Flapjack.WordLangAddr.addr 17461 0#64)))).val
theorem output6116_def : output6116 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17457 (Flapjack.WordLangAddr.addr 17461 0#64))) := by
  unfold output6116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6116_skip : Flapjack.WordAlloc.isSkip output6116 = false := by
  rw [output6116_def]
  conv => lhs; cbv
  try rfl
theorem node6116_eq : Flapjack.WordAlloc.removeDeadStructural input6116 value5 value1 value2 = (output6116, value3062, value1) := by
  rw [input6116_def, output6116_def]
  try (conv => lhs; cbv)
  try rfl

def value3063 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17461, 17449)])).val
theorem input6117_def : input6117 = (Flapjack.WordLangProgHOL.move 0 [(17461, 17449)]) := by
  unfold input6117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17461, 17449)])).val
theorem output6117_def : output6117 = (Flapjack.WordLangProgHOL.move 0 [(17461, 17449)]) := by
  unfold output6117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6117_skip : Flapjack.WordAlloc.isSkip output6117 = false := by
  rw [output6117_def]
  conv => lhs; cbv
  try rfl
theorem node6117_eq : Flapjack.WordAlloc.removeDeadStructural input6117 value3062 value1 value2 = (output6117, value3063, value1) := by
  rw [input6117_def, output6117_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6117 input6116)).val
theorem input6118_def : input6118 = (.seq input6117 input6116) := by
  unfold input6118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6117 output6116)).val
theorem output6118_def : output6118 = (.seq output6117 output6116) := by
  unfold output6118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6118_skip : Flapjack.WordAlloc.isSkip output6118 = false := by
  rw [output6118_def]
  conv => lhs; cbv
  try rfl
theorem node6118_eq : Flapjack.WordAlloc.removeDeadStructural input6118 value5 value1 value2 = (output6118, value3063, value1) := by
  rw [input6118_def, output6118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6116_eq]
  dsimp only
  rw [node6117_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3064 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17457 15418807805142572985#64))).val
theorem input6119_def : input6119 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17457 15418807805142572985#64)) := by
  unfold input6119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17457 15418807805142572985#64))).val
theorem output6119_def : output6119 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17457 15418807805142572985#64)) := by
  unfold output6119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6119_skip : Flapjack.WordAlloc.isSkip output6119 = false := by
  rw [output6119_def]
  conv => lhs; cbv
  try rfl
theorem node6119_eq : Flapjack.WordAlloc.removeDeadStructural input6119 value3063 value1 value2 = (output6119, value3064, value1) := by
  rw [input6119_def, output6119_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17453 15418807805142572985#64))).val
theorem input6120_def : input6120 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17453 15418807805142572985#64)) := by
  unfold input6120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6120_def : output6120 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6120_skip : Flapjack.WordAlloc.isSkip output6120 = true := by
  rw [output6120_def]
  conv => lhs; cbv
  try rfl
theorem node6120_eq : Flapjack.WordAlloc.removeDeadStructural input6120 value3064 value1 value2 = (output6120, value3064, value1) := by
  rw [input6120_def, output6120_def]
  try (conv => lhs; cbv)
  try rfl

def value3065 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17449 17441 (Flapjack.WordRegImm.reg 17445))))).val
theorem input6121_def : input6121 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17449 17441 (Flapjack.WordRegImm.reg 17445)))) := by
  unfold input6121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17449 17441 (Flapjack.WordRegImm.reg 17445))))).val
theorem output6121_def : output6121 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17449 17441 (Flapjack.WordRegImm.reg 17445)))) := by
  unfold output6121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6121_skip : Flapjack.WordAlloc.isSkip output6121 = false := by
  rw [output6121_def]
  conv => lhs; cbv
  try rfl
theorem node6121_eq : Flapjack.WordAlloc.removeDeadStructural input6121 value3064 value1 value2 = (output6121, value3065, value1) := by
  rw [input6121_def, output6121_def]
  try (conv => lhs; cbv)
  try rfl

def value3066 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17445 4072#64))).val
theorem input6122_def : input6122 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17445 4072#64)) := by
  unfold input6122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17445 4072#64))).val
theorem output6122_def : output6122 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17445 4072#64)) := by
  unfold output6122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6122_skip : Flapjack.WordAlloc.isSkip output6122 = false := by
  rw [output6122_def]
  conv => lhs; cbv
  try rfl
theorem node6122_eq : Flapjack.WordAlloc.removeDeadStructural input6122 value3065 value1 value2 = (output6122, value3066, value1) := by
  rw [input6122_def, output6122_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6122 input6121)).val
theorem input6123_def : input6123 = (.seq input6122 input6121) := by
  unfold input6123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6122 output6121)).val
theorem output6123_def : output6123 = (.seq output6122 output6121) := by
  unfold output6123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6123_skip : Flapjack.WordAlloc.isSkip output6123 = false := by
  rw [output6123_def]
  conv => lhs; cbv
  try rfl
theorem node6123_eq : Flapjack.WordAlloc.removeDeadStructural input6123 value3064 value1 value2 = (output6123, value3066, value1) := by
  rw [input6123_def, output6123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6121_eq]
  dsimp only
  rw [node6122_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3067 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17441 (Flapjack.WordLangAddr.addr 17437 18446744073709551104#64)))).val
theorem input6124_def : input6124 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17441 (Flapjack.WordLangAddr.addr 17437 18446744073709551104#64))) := by
  unfold input6124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17441 (Flapjack.WordLangAddr.addr 17437 18446744073709551104#64)))).val
theorem output6124_def : output6124 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17441 (Flapjack.WordLangAddr.addr 17437 18446744073709551104#64))) := by
  unfold output6124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6124_skip : Flapjack.WordAlloc.isSkip output6124 = false := by
  rw [output6124_def]
  conv => lhs; cbv
  try rfl
theorem node6124_eq : Flapjack.WordAlloc.removeDeadStructural input6124 value3066 value1 value2 = (output6124, value3067, value1) := by
  rw [input6124_def, output6124_def]
  try (conv => lhs; cbv)
  try rfl

def value3068 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17437 17433)).val
theorem input6125_def : input6125 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17437 17433) := by
  unfold input6125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17437 17433)).val
theorem output6125_def : output6125 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17437 17433) := by
  unfold output6125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6125_skip : Flapjack.WordAlloc.isSkip output6125 = false := by
  rw [output6125_def]
  conv => lhs; cbv
  try rfl
theorem node6125_eq : Flapjack.WordAlloc.removeDeadStructural input6125 value3067 value1 value2 = (output6125, value3068, value1) := by
  rw [input6125_def, output6125_def]
  try (conv => lhs; cbv)
  try rfl

def value3069 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17433 17429 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6126_def : input6126 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17433 17429 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17433 17429 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6126_def : output6126 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17433 17429 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6126_skip : Flapjack.WordAlloc.isSkip output6126 = false := by
  rw [output6126_def]
  conv => lhs; cbv
  try rfl
theorem node6126_eq : Flapjack.WordAlloc.removeDeadStructural input6126 value3068 value1 value2 = (output6126, value3069, value1) := by
  rw [input6126_def, output6126_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17429 Flapjack.WordStore.heapLength)).val
theorem input6127_def : input6127 = (Flapjack.WordLangProgHOL.get 17429 Flapjack.WordStore.heapLength) := by
  unfold input6127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17429 Flapjack.WordStore.heapLength)).val
theorem output6127_def : output6127 = (Flapjack.WordLangProgHOL.get 17429 Flapjack.WordStore.heapLength) := by
  unfold output6127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6127_skip : Flapjack.WordAlloc.isSkip output6127 = false := by
  rw [output6127_def]
  conv => lhs; cbv
  try rfl
theorem node6127_eq : Flapjack.WordAlloc.removeDeadStructural input6127 value3069 value1 value2 = (output6127, value5, value1) := by
  rw [input6127_def, output6127_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6127 input6126)).val
theorem input6128_def : input6128 = (.seq input6127 input6126) := by
  unfold input6128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6127 output6126)).val
theorem output6128_def : output6128 = (.seq output6127 output6126) := by
  unfold output6128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6128_skip : Flapjack.WordAlloc.isSkip output6128 = false := by
  rw [output6128_def]
  conv => lhs; cbv
  try rfl
theorem node6128_eq : Flapjack.WordAlloc.removeDeadStructural input6128 value3068 value1 value2 = (output6128, value5, value1) := by
  rw [input6128_def, output6128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6126_eq]
  dsimp only
  rw [node6127_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6128 input6125)).val
theorem input6129_def : input6129 = (.seq input6128 input6125) := by
  unfold input6129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6128 output6125)).val
theorem output6129_def : output6129 = (.seq output6128 output6125) := by
  unfold output6129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6129_skip : Flapjack.WordAlloc.isSkip output6129 = false := by
  rw [output6129_def]
  conv => lhs; cbv
  try rfl
theorem node6129_eq : Flapjack.WordAlloc.removeDeadStructural input6129 value3067 value1 value2 = (output6129, value5, value1) := by
  rw [input6129_def, output6129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6125_eq]
  dsimp only
  rw [node6128_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6129 input6124)).val
theorem input6130_def : input6130 = (.seq input6129 input6124) := by
  unfold input6130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6129 output6124)).val
theorem output6130_def : output6130 = (.seq output6129 output6124) := by
  unfold output6130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6130_skip : Flapjack.WordAlloc.isSkip output6130 = false := by
  rw [output6130_def]
  conv => lhs; cbv
  try rfl
theorem node6130_eq : Flapjack.WordAlloc.removeDeadStructural input6130 value3066 value1 value2 = (output6130, value5, value1) := by
  rw [input6130_def, output6130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6124_eq]
  dsimp only
  rw [node6129_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6130 input6123)).val
theorem input6131_def : input6131 = (.seq input6130 input6123) := by
  unfold input6131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6130 output6123)).val
theorem output6131_def : output6131 = (.seq output6130 output6123) := by
  unfold output6131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6131_skip : Flapjack.WordAlloc.isSkip output6131 = false := by
  rw [output6131_def]
  conv => lhs; cbv
  try rfl
theorem node6131_eq : Flapjack.WordAlloc.removeDeadStructural input6131 value3064 value1 value2 = (output6131, value5, value1) := by
  rw [input6131_def, output6131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6123_eq]
  dsimp only
  rw [node6130_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3070 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17421 (Flapjack.WordLangAddr.addr 17425 0#64)))).val
theorem input6132_def : input6132 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17421 (Flapjack.WordLangAddr.addr 17425 0#64))) := by
  unfold input6132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17421 (Flapjack.WordLangAddr.addr 17425 0#64)))).val
theorem output6132_def : output6132 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17421 (Flapjack.WordLangAddr.addr 17425 0#64))) := by
  unfold output6132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6132_skip : Flapjack.WordAlloc.isSkip output6132 = false := by
  rw [output6132_def]
  conv => lhs; cbv
  try rfl
theorem node6132_eq : Flapjack.WordAlloc.removeDeadStructural input6132 value5 value1 value2 = (output6132, value3070, value1) := by
  rw [input6132_def, output6132_def]
  try (conv => lhs; cbv)
  try rfl

def value3071 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17425, 17413)])).val
theorem input6133_def : input6133 = (Flapjack.WordLangProgHOL.move 0 [(17425, 17413)]) := by
  unfold input6133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17425, 17413)])).val
theorem output6133_def : output6133 = (Flapjack.WordLangProgHOL.move 0 [(17425, 17413)]) := by
  unfold output6133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6133_skip : Flapjack.WordAlloc.isSkip output6133 = false := by
  rw [output6133_def]
  conv => lhs; cbv
  try rfl
theorem node6133_eq : Flapjack.WordAlloc.removeDeadStructural input6133 value3070 value1 value2 = (output6133, value3071, value1) := by
  rw [input6133_def, output6133_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6133 input6132)).val
theorem input6134_def : input6134 = (.seq input6133 input6132) := by
  unfold input6134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6133 output6132)).val
theorem output6134_def : output6134 = (.seq output6133 output6132) := by
  unfold output6134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6134_skip : Flapjack.WordAlloc.isSkip output6134 = false := by
  rw [output6134_def]
  conv => lhs; cbv
  try rfl
theorem node6134_eq : Flapjack.WordAlloc.removeDeadStructural input6134 value5 value1 value2 = (output6134, value3071, value1) := by
  rw [input6134_def, output6134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6132_eq]
  dsimp only
  rw [node6133_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3072 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln))))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17421 4402853133867972444#64))).val
theorem input6135_def : input6135 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17421 4402853133867972444#64)) := by
  unfold input6135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17421 4402853133867972444#64))).val
theorem output6135_def : output6135 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17421 4402853133867972444#64)) := by
  unfold output6135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6135_skip : Flapjack.WordAlloc.isSkip output6135 = false := by
  rw [output6135_def]
  conv => lhs; cbv
  try rfl
theorem node6135_eq : Flapjack.WordAlloc.removeDeadStructural input6135 value3071 value1 value2 = (output6135, value3072, value1) := by
  rw [input6135_def, output6135_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17417 4402853133867972444#64))).val
theorem input6136_def : input6136 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17417 4402853133867972444#64)) := by
  unfold input6136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6136_def : output6136 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6136_skip : Flapjack.WordAlloc.isSkip output6136 = true := by
  rw [output6136_def]
  conv => lhs; cbv
  try rfl
theorem node6136_eq : Flapjack.WordAlloc.removeDeadStructural input6136 value3072 value1 value2 = (output6136, value3072, value1) := by
  rw [input6136_def, output6136_def]
  try (conv => lhs; cbv)
  try rfl

def value3073 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                      Flapjack.Spt.ln)))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17413 17405 (Flapjack.WordRegImm.reg 17409))))).val
theorem input6137_def : input6137 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17413 17405 (Flapjack.WordRegImm.reg 17409)))) := by
  unfold input6137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17413 17405 (Flapjack.WordRegImm.reg 17409))))).val
theorem output6137_def : output6137 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17413 17405 (Flapjack.WordRegImm.reg 17409)))) := by
  unfold output6137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6137_skip : Flapjack.WordAlloc.isSkip output6137 = false := by
  rw [output6137_def]
  conv => lhs; cbv
  try rfl
theorem node6137_eq : Flapjack.WordAlloc.removeDeadStructural input6137 value3072 value1 value2 = (output6137, value3073, value1) := by
  rw [input6137_def, output6137_def]
  try (conv => lhs; cbv)
  try rfl

def value3074 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17409 4064#64))).val
theorem input6138_def : input6138 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17409 4064#64)) := by
  unfold input6138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17409 4064#64))).val
theorem output6138_def : output6138 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17409 4064#64)) := by
  unfold output6138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6138_skip : Flapjack.WordAlloc.isSkip output6138 = false := by
  rw [output6138_def]
  conv => lhs; cbv
  try rfl
theorem node6138_eq : Flapjack.WordAlloc.removeDeadStructural input6138 value3073 value1 value2 = (output6138, value3074, value1) := by
  rw [input6138_def, output6138_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6138 input6137)).val
theorem input6139_def : input6139 = (.seq input6138 input6137) := by
  unfold input6139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6138 output6137)).val
theorem output6139_def : output6139 = (.seq output6138 output6137) := by
  unfold output6139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6139_skip : Flapjack.WordAlloc.isSkip output6139 = false := by
  rw [output6139_def]
  conv => lhs; cbv
  try rfl
theorem node6139_eq : Flapjack.WordAlloc.removeDeadStructural input6139 value3072 value1 value2 = (output6139, value3074, value1) := by
  rw [input6139_def, output6139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6137_eq]
  dsimp only
  rw [node6138_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3075 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17405 (Flapjack.WordLangAddr.addr 17401 18446744073709551104#64)))).val
theorem input6140_def : input6140 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17405 (Flapjack.WordLangAddr.addr 17401 18446744073709551104#64))) := by
  unfold input6140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17405 (Flapjack.WordLangAddr.addr 17401 18446744073709551104#64)))).val
theorem output6140_def : output6140 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17405 (Flapjack.WordLangAddr.addr 17401 18446744073709551104#64))) := by
  unfold output6140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6140_skip : Flapjack.WordAlloc.isSkip output6140 = false := by
  rw [output6140_def]
  conv => lhs; cbv
  try rfl
theorem node6140_eq : Flapjack.WordAlloc.removeDeadStructural input6140 value3074 value1 value2 = (output6140, value3075, value1) := by
  rw [input6140_def, output6140_def]
  try (conv => lhs; cbv)
  try rfl

def value3076 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17401 17397)).val
theorem input6141_def : input6141 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17401 17397) := by
  unfold input6141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17401 17397)).val
theorem output6141_def : output6141 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17401 17397) := by
  unfold output6141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6141_skip : Flapjack.WordAlloc.isSkip output6141 = false := by
  rw [output6141_def]
  conv => lhs; cbv
  try rfl
theorem node6141_eq : Flapjack.WordAlloc.removeDeadStructural input6141 value3075 value1 value2 = (output6141, value3076, value1) := by
  rw [input6141_def, output6141_def]
  try (conv => lhs; cbv)
  try rfl

def value3077 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17397 17393 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6142_def : input6142 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17397 17393 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17397 17393 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6142_def : output6142 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17397 17393 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6142_skip : Flapjack.WordAlloc.isSkip output6142 = false := by
  rw [output6142_def]
  conv => lhs; cbv
  try rfl
theorem node6142_eq : Flapjack.WordAlloc.removeDeadStructural input6142 value3076 value1 value2 = (output6142, value3077, value1) := by
  rw [input6142_def, output6142_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17393 Flapjack.WordStore.heapLength)).val
theorem input6143_def : input6143 = (Flapjack.WordLangProgHOL.get 17393 Flapjack.WordStore.heapLength) := by
  unfold input6143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17393 Flapjack.WordStore.heapLength)).val
theorem output6143_def : output6143 = (Flapjack.WordLangProgHOL.get 17393 Flapjack.WordStore.heapLength) := by
  unfold output6143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6143_skip : Flapjack.WordAlloc.isSkip output6143 = false := by
  rw [output6143_def]
  conv => lhs; cbv
  try rfl
theorem node6143_eq : Flapjack.WordAlloc.removeDeadStructural input6143 value3077 value1 value2 = (output6143, value5, value1) := by
  rw [input6143_def, output6143_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node6143_eq
end InitECandidate.Proofs.DeadStages713
