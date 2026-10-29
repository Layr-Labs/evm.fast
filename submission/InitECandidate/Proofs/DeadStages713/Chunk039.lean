import InitECandidate.Proofs.DeadStages713.Chunk038
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input9984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9983 input9982)).val
theorem input9984_def : input9984 = (.seq input9983 input9982) := by
  unfold input9984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9983 output9982)).val
theorem output9984_def : output9984 = (.seq output9983 output9982) := by
  unfold output9984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9984_skip : Flapjack.WordAlloc.isSkip output9984 = false := by
  rw [output9984_def]
  conv => lhs; cbv
  try rfl
theorem node9984_eq : Flapjack.WordAlloc.removeDeadStructural input9984 value4996 value1 value2 = (output9984, value5, value1) := by
  rw [input9984_def, output9984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9982_eq]
  dsimp only
  rw [node9983_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9984 input9981)).val
theorem input9985_def : input9985 = (.seq input9984 input9981) := by
  unfold input9985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9984 output9981)).val
theorem output9985_def : output9985 = (.seq output9984 output9981) := by
  unfold output9985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9985_skip : Flapjack.WordAlloc.isSkip output9985 = false := by
  rw [output9985_def]
  conv => lhs; cbv
  try rfl
theorem node9985_eq : Flapjack.WordAlloc.removeDeadStructural input9985 value4995 value1 value2 = (output9985, value5, value1) := by
  rw [input9985_def, output9985_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9981_eq]
  dsimp only
  rw [node9984_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9985 input9980)).val
theorem input9986_def : input9986 = (.seq input9985 input9980) := by
  unfold input9986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9985 output9980)).val
theorem output9986_def : output9986 = (.seq output9985 output9980) := by
  unfold output9986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9986_skip : Flapjack.WordAlloc.isSkip output9986 = false := by
  rw [output9986_def]
  conv => lhs; cbv
  try rfl
theorem node9986_eq : Flapjack.WordAlloc.removeDeadStructural input9986 value4994 value1 value2 = (output9986, value5, value1) := by
  rw [input9986_def, output9986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9980_eq]
  dsimp only
  rw [node9985_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9986 input9979)).val
theorem input9987_def : input9987 = (.seq input9986 input9979) := by
  unfold input9987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9986 output9979)).val
theorem output9987_def : output9987 = (.seq output9986 output9979) := by
  unfold output9987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9987_skip : Flapjack.WordAlloc.isSkip output9987 = false := by
  rw [output9987_def]
  conv => lhs; cbv
  try rfl
theorem node9987_eq : Flapjack.WordAlloc.removeDeadStructural input9987 value4992 value1 value2 = (output9987, value5, value1) := by
  rw [input9987_def, output9987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9979_eq]
  dsimp only
  rw [node9986_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4998 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8745 (Flapjack.WordLangAddr.addr 8749 0#64)))).val
theorem input9988_def : input9988 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8745 (Flapjack.WordLangAddr.addr 8749 0#64))) := by
  unfold input9988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8745 (Flapjack.WordLangAddr.addr 8749 0#64)))).val
theorem output9988_def : output9988 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8745 (Flapjack.WordLangAddr.addr 8749 0#64))) := by
  unfold output9988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9988_skip : Flapjack.WordAlloc.isSkip output9988 = false := by
  rw [output9988_def]
  conv => lhs; cbv
  try rfl
theorem node9988_eq : Flapjack.WordAlloc.removeDeadStructural input9988 value5 value1 value2 = (output9988, value4998, value1) := by
  rw [input9988_def, output9988_def]
  try (conv => lhs; cbv)
  try rfl

def value4999 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8749, 8737)])).val
theorem input9989_def : input9989 = (Flapjack.WordLangProgHOL.move 0 [(8749, 8737)]) := by
  unfold input9989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8749, 8737)])).val
theorem output9989_def : output9989 = (Flapjack.WordLangProgHOL.move 0 [(8749, 8737)]) := by
  unfold output9989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9989_skip : Flapjack.WordAlloc.isSkip output9989 = false := by
  rw [output9989_def]
  conv => lhs; cbv
  try rfl
theorem node9989_eq : Flapjack.WordAlloc.removeDeadStructural input9989 value4998 value1 value2 = (output9989, value4999, value1) := by
  rw [input9989_def, output9989_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9989 input9988)).val
theorem input9990_def : input9990 = (.seq input9989 input9988) := by
  unfold input9990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9989 output9988)).val
theorem output9990_def : output9990 = (.seq output9989 output9988) := by
  unfold output9990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9990_skip : Flapjack.WordAlloc.isSkip output9990 = false := by
  rw [output9990_def]
  conv => lhs; cbv
  try rfl
theorem node9990_eq : Flapjack.WordAlloc.removeDeadStructural input9990 value5 value1 value2 = (output9990, value4999, value1) := by
  rw [input9990_def, output9990_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9988_eq]
  dsimp only
  rw [node9989_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5000 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8745 1051997788391994435#64))).val
theorem input9991_def : input9991 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8745 1051997788391994435#64)) := by
  unfold input9991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8745 1051997788391994435#64))).val
theorem output9991_def : output9991 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8745 1051997788391994435#64)) := by
  unfold output9991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9991_skip : Flapjack.WordAlloc.isSkip output9991 = false := by
  rw [output9991_def]
  conv => lhs; cbv
  try rfl
theorem node9991_eq : Flapjack.WordAlloc.removeDeadStructural input9991 value4999 value1 value2 = (output9991, value5000, value1) := by
  rw [input9991_def, output9991_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8741 1051997788391994435#64))).val
theorem input9992_def : input9992 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8741 1051997788391994435#64)) := by
  unfold input9992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9992_def : output9992 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9992_skip : Flapjack.WordAlloc.isSkip output9992 = true := by
  rw [output9992_def]
  conv => lhs; cbv
  try rfl
theorem node9992_eq : Flapjack.WordAlloc.removeDeadStructural input9992 value5000 value1 value2 = (output9992, value5000, value1) := by
  rw [input9992_def, output9992_def]
  try (conv => lhs; cbv)
  try rfl

def value5001 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8737 8729 (Flapjack.WordRegImm.reg 8733))))).val
theorem input9993_def : input9993 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8737 8729 (Flapjack.WordRegImm.reg 8733)))) := by
  unfold input9993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8737 8729 (Flapjack.WordRegImm.reg 8733))))).val
theorem output9993_def : output9993 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8737 8729 (Flapjack.WordRegImm.reg 8733)))) := by
  unfold output9993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9993_skip : Flapjack.WordAlloc.isSkip output9993 = false := by
  rw [output9993_def]
  conv => lhs; cbv
  try rfl
theorem node9993_eq : Flapjack.WordAlloc.removeDeadStructural input9993 value5000 value1 value2 = (output9993, value5001, value1) := by
  rw [input9993_def, output9993_def]
  try (conv => lhs; cbv)
  try rfl

def value5002 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8733 2136#64))).val
theorem input9994_def : input9994 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8733 2136#64)) := by
  unfold input9994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8733 2136#64))).val
theorem output9994_def : output9994 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8733 2136#64)) := by
  unfold output9994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9994_skip : Flapjack.WordAlloc.isSkip output9994 = false := by
  rw [output9994_def]
  conv => lhs; cbv
  try rfl
theorem node9994_eq : Flapjack.WordAlloc.removeDeadStructural input9994 value5001 value1 value2 = (output9994, value5002, value1) := by
  rw [input9994_def, output9994_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9994 input9993)).val
theorem input9995_def : input9995 = (.seq input9994 input9993) := by
  unfold input9995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9994 output9993)).val
theorem output9995_def : output9995 = (.seq output9994 output9993) := by
  unfold output9995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9995_skip : Flapjack.WordAlloc.isSkip output9995 = false := by
  rw [output9995_def]
  conv => lhs; cbv
  try rfl
theorem node9995_eq : Flapjack.WordAlloc.removeDeadStructural input9995 value5000 value1 value2 = (output9995, value5002, value1) := by
  rw [input9995_def, output9995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9993_eq]
  dsimp only
  rw [node9994_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5003 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8729 (Flapjack.WordLangAddr.addr 8725 18446744073709551104#64)))).val
theorem input9996_def : input9996 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8729 (Flapjack.WordLangAddr.addr 8725 18446744073709551104#64))) := by
  unfold input9996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8729 (Flapjack.WordLangAddr.addr 8725 18446744073709551104#64)))).val
theorem output9996_def : output9996 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8729 (Flapjack.WordLangAddr.addr 8725 18446744073709551104#64))) := by
  unfold output9996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9996_skip : Flapjack.WordAlloc.isSkip output9996 = false := by
  rw [output9996_def]
  conv => lhs; cbv
  try rfl
theorem node9996_eq : Flapjack.WordAlloc.removeDeadStructural input9996 value5002 value1 value2 = (output9996, value5003, value1) := by
  rw [input9996_def, output9996_def]
  try (conv => lhs; cbv)
  try rfl

def value5004 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8725 8721)).val
theorem input9997_def : input9997 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8725 8721) := by
  unfold input9997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8725 8721)).val
theorem output9997_def : output9997 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8725 8721) := by
  unfold output9997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9997_skip : Flapjack.WordAlloc.isSkip output9997 = false := by
  rw [output9997_def]
  conv => lhs; cbv
  try rfl
theorem node9997_eq : Flapjack.WordAlloc.removeDeadStructural input9997 value5003 value1 value2 = (output9997, value5004, value1) := by
  rw [input9997_def, output9997_def]
  try (conv => lhs; cbv)
  try rfl

def value5005 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8721 8717 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9998_def : input9998 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8721 8717 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8721 8717 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9998_def : output9998 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8721 8717 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9998_skip : Flapjack.WordAlloc.isSkip output9998 = false := by
  rw [output9998_def]
  conv => lhs; cbv
  try rfl
theorem node9998_eq : Flapjack.WordAlloc.removeDeadStructural input9998 value5004 value1 value2 = (output9998, value5005, value1) := by
  rw [input9998_def, output9998_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8717 Flapjack.WordStore.heapLength)).val
theorem input9999_def : input9999 = (Flapjack.WordLangProgHOL.get 8717 Flapjack.WordStore.heapLength) := by
  unfold input9999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8717 Flapjack.WordStore.heapLength)).val
theorem output9999_def : output9999 = (Flapjack.WordLangProgHOL.get 8717 Flapjack.WordStore.heapLength) := by
  unfold output9999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9999_skip : Flapjack.WordAlloc.isSkip output9999 = false := by
  rw [output9999_def]
  conv => lhs; cbv
  try rfl
theorem node9999_eq : Flapjack.WordAlloc.removeDeadStructural input9999 value5005 value1 value2 = (output9999, value5, value1) := by
  rw [input9999_def, output9999_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9999 input9998)).val
theorem input10000_def : input10000 = (.seq input9999 input9998) := by
  unfold input10000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9999 output9998)).val
theorem output10000_def : output10000 = (.seq output9999 output9998) := by
  unfold output10000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10000_skip : Flapjack.WordAlloc.isSkip output10000 = false := by
  rw [output10000_def]
  conv => lhs; cbv
  try rfl
theorem node10000_eq : Flapjack.WordAlloc.removeDeadStructural input10000 value5004 value1 value2 = (output10000, value5, value1) := by
  rw [input10000_def, output10000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9998_eq]
  dsimp only
  rw [node9999_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10000 input9997)).val
theorem input10001_def : input10001 = (.seq input10000 input9997) := by
  unfold input10001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10000 output9997)).val
theorem output10001_def : output10001 = (.seq output10000 output9997) := by
  unfold output10001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10001_skip : Flapjack.WordAlloc.isSkip output10001 = false := by
  rw [output10001_def]
  conv => lhs; cbv
  try rfl
theorem node10001_eq : Flapjack.WordAlloc.removeDeadStructural input10001 value5003 value1 value2 = (output10001, value5, value1) := by
  rw [input10001_def, output10001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9997_eq]
  dsimp only
  rw [node10000_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10001 input9996)).val
theorem input10002_def : input10002 = (.seq input10001 input9996) := by
  unfold input10002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10001 output9996)).val
theorem output10002_def : output10002 = (.seq output10001 output9996) := by
  unfold output10002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10002_skip : Flapjack.WordAlloc.isSkip output10002 = false := by
  rw [output10002_def]
  conv => lhs; cbv
  try rfl
theorem node10002_eq : Flapjack.WordAlloc.removeDeadStructural input10002 value5002 value1 value2 = (output10002, value5, value1) := by
  rw [input10002_def, output10002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9996_eq]
  dsimp only
  rw [node10001_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10002 input9995)).val
theorem input10003_def : input10003 = (.seq input10002 input9995) := by
  unfold input10003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10002 output9995)).val
theorem output10003_def : output10003 = (.seq output10002 output9995) := by
  unfold output10003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10003_skip : Flapjack.WordAlloc.isSkip output10003 = false := by
  rw [output10003_def]
  conv => lhs; cbv
  try rfl
theorem node10003_eq : Flapjack.WordAlloc.removeDeadStructural input10003 value5000 value1 value2 = (output10003, value5, value1) := by
  rw [input10003_def, output10003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9995_eq]
  dsimp only
  rw [node10002_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5006 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8709 (Flapjack.WordLangAddr.addr 8713 0#64)))).val
theorem input10004_def : input10004 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8709 (Flapjack.WordLangAddr.addr 8713 0#64))) := by
  unfold input10004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8709 (Flapjack.WordLangAddr.addr 8713 0#64)))).val
theorem output10004_def : output10004 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8709 (Flapjack.WordLangAddr.addr 8713 0#64))) := by
  unfold output10004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10004_skip : Flapjack.WordAlloc.isSkip output10004 = false := by
  rw [output10004_def]
  conv => lhs; cbv
  try rfl
theorem node10004_eq : Flapjack.WordAlloc.removeDeadStructural input10004 value5 value1 value2 = (output10004, value5006, value1) := by
  rw [input10004_def, output10004_def]
  try (conv => lhs; cbv)
  try rfl

def value5007 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
                    Flapjack.Spt.ln)))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8713, 8701)])).val
theorem input10005_def : input10005 = (Flapjack.WordLangProgHOL.move 0 [(8713, 8701)]) := by
  unfold input10005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8713, 8701)])).val
theorem output10005_def : output10005 = (Flapjack.WordLangProgHOL.move 0 [(8713, 8701)]) := by
  unfold output10005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10005_skip : Flapjack.WordAlloc.isSkip output10005 = false := by
  rw [output10005_def]
  conv => lhs; cbv
  try rfl
theorem node10005_eq : Flapjack.WordAlloc.removeDeadStructural input10005 value5006 value1 value2 = (output10005, value5007, value1) := by
  rw [input10005_def, output10005_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10005 input10004)).val
theorem input10006_def : input10006 = (.seq input10005 input10004) := by
  unfold input10006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10005 output10004)).val
theorem output10006_def : output10006 = (.seq output10005 output10004) := by
  unfold output10006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10006_skip : Flapjack.WordAlloc.isSkip output10006 = false := by
  rw [output10006_def]
  conv => lhs; cbv
  try rfl
theorem node10006_eq : Flapjack.WordAlloc.removeDeadStructural input10006 value5 value1 value2 = (output10006, value5007, value1) := by
  rw [input10006_def, output10006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10004_eq]
  dsimp only
  rw [node10005_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5008 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8709 7368650625050054228#64))).val
theorem input10007_def : input10007 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8709 7368650625050054228#64)) := by
  unfold input10007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8709 7368650625050054228#64))).val
theorem output10007_def : output10007 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8709 7368650625050054228#64)) := by
  unfold output10007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10007_skip : Flapjack.WordAlloc.isSkip output10007 = false := by
  rw [output10007_def]
  conv => lhs; cbv
  try rfl
theorem node10007_eq : Flapjack.WordAlloc.removeDeadStructural input10007 value5007 value1 value2 = (output10007, value5008, value1) := by
  rw [input10007_def, output10007_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8705 7368650625050054228#64))).val
theorem input10008_def : input10008 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8705 7368650625050054228#64)) := by
  unfold input10008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10008_def : output10008 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10008_skip : Flapjack.WordAlloc.isSkip output10008 = true := by
  rw [output10008_def]
  conv => lhs; cbv
  try rfl
theorem node10008_eq : Flapjack.WordAlloc.removeDeadStructural input10008 value5008 value1 value2 = (output10008, value5008, value1) := by
  rw [input10008_def, output10008_def]
  try (conv => lhs; cbv)
  try rfl

def value5009 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8701 8693 (Flapjack.WordRegImm.reg 8697))))).val
theorem input10009_def : input10009 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8701 8693 (Flapjack.WordRegImm.reg 8697)))) := by
  unfold input10009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8701 8693 (Flapjack.WordRegImm.reg 8697))))).val
theorem output10009_def : output10009 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8701 8693 (Flapjack.WordRegImm.reg 8697)))) := by
  unfold output10009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10009_skip : Flapjack.WordAlloc.isSkip output10009 = false := by
  rw [output10009_def]
  conv => lhs; cbv
  try rfl
theorem node10009_eq : Flapjack.WordAlloc.removeDeadStructural input10009 value5008 value1 value2 = (output10009, value5009, value1) := by
  rw [input10009_def, output10009_def]
  try (conv => lhs; cbv)
  try rfl

def value5010 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8697 2128#64))).val
theorem input10010_def : input10010 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8697 2128#64)) := by
  unfold input10010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8697 2128#64))).val
theorem output10010_def : output10010 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8697 2128#64)) := by
  unfold output10010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10010_skip : Flapjack.WordAlloc.isSkip output10010 = false := by
  rw [output10010_def]
  conv => lhs; cbv
  try rfl
theorem node10010_eq : Flapjack.WordAlloc.removeDeadStructural input10010 value5009 value1 value2 = (output10010, value5010, value1) := by
  rw [input10010_def, output10010_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10010 input10009)).val
theorem input10011_def : input10011 = (.seq input10010 input10009) := by
  unfold input10011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10010 output10009)).val
theorem output10011_def : output10011 = (.seq output10010 output10009) := by
  unfold output10011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10011_skip : Flapjack.WordAlloc.isSkip output10011 = false := by
  rw [output10011_def]
  conv => lhs; cbv
  try rfl
theorem node10011_eq : Flapjack.WordAlloc.removeDeadStructural input10011 value5008 value1 value2 = (output10011, value5010, value1) := by
  rw [input10011_def, output10011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10009_eq]
  dsimp only
  rw [node10010_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5011 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8693 (Flapjack.WordLangAddr.addr 8689 18446744073709551104#64)))).val
theorem input10012_def : input10012 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8693 (Flapjack.WordLangAddr.addr 8689 18446744073709551104#64))) := by
  unfold input10012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8693 (Flapjack.WordLangAddr.addr 8689 18446744073709551104#64)))).val
theorem output10012_def : output10012 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8693 (Flapjack.WordLangAddr.addr 8689 18446744073709551104#64))) := by
  unfold output10012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10012_skip : Flapjack.WordAlloc.isSkip output10012 = false := by
  rw [output10012_def]
  conv => lhs; cbv
  try rfl
theorem node10012_eq : Flapjack.WordAlloc.removeDeadStructural input10012 value5010 value1 value2 = (output10012, value5011, value1) := by
  rw [input10012_def, output10012_def]
  try (conv => lhs; cbv)
  try rfl

def value5012 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8689 8685)).val
theorem input10013_def : input10013 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8689 8685) := by
  unfold input10013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8689 8685)).val
theorem output10013_def : output10013 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8689 8685) := by
  unfold output10013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10013_skip : Flapjack.WordAlloc.isSkip output10013 = false := by
  rw [output10013_def]
  conv => lhs; cbv
  try rfl
theorem node10013_eq : Flapjack.WordAlloc.removeDeadStructural input10013 value5011 value1 value2 = (output10013, value5012, value1) := by
  rw [input10013_def, output10013_def]
  try (conv => lhs; cbv)
  try rfl

def value5013 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8685 8681 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10014_def : input10014 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8685 8681 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8685 8681 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10014_def : output10014 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8685 8681 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10014_skip : Flapjack.WordAlloc.isSkip output10014 = false := by
  rw [output10014_def]
  conv => lhs; cbv
  try rfl
theorem node10014_eq : Flapjack.WordAlloc.removeDeadStructural input10014 value5012 value1 value2 = (output10014, value5013, value1) := by
  rw [input10014_def, output10014_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8681 Flapjack.WordStore.heapLength)).val
theorem input10015_def : input10015 = (Flapjack.WordLangProgHOL.get 8681 Flapjack.WordStore.heapLength) := by
  unfold input10015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8681 Flapjack.WordStore.heapLength)).val
theorem output10015_def : output10015 = (Flapjack.WordLangProgHOL.get 8681 Flapjack.WordStore.heapLength) := by
  unfold output10015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10015_skip : Flapjack.WordAlloc.isSkip output10015 = false := by
  rw [output10015_def]
  conv => lhs; cbv
  try rfl
theorem node10015_eq : Flapjack.WordAlloc.removeDeadStructural input10015 value5013 value1 value2 = (output10015, value5, value1) := by
  rw [input10015_def, output10015_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10015 input10014)).val
theorem input10016_def : input10016 = (.seq input10015 input10014) := by
  unfold input10016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10015 output10014)).val
theorem output10016_def : output10016 = (.seq output10015 output10014) := by
  unfold output10016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10016_skip : Flapjack.WordAlloc.isSkip output10016 = false := by
  rw [output10016_def]
  conv => lhs; cbv
  try rfl
theorem node10016_eq : Flapjack.WordAlloc.removeDeadStructural input10016 value5012 value1 value2 = (output10016, value5, value1) := by
  rw [input10016_def, output10016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10014_eq]
  dsimp only
  rw [node10015_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10016 input10013)).val
theorem input10017_def : input10017 = (.seq input10016 input10013) := by
  unfold input10017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10016 output10013)).val
theorem output10017_def : output10017 = (.seq output10016 output10013) := by
  unfold output10017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10017_skip : Flapjack.WordAlloc.isSkip output10017 = false := by
  rw [output10017_def]
  conv => lhs; cbv
  try rfl
theorem node10017_eq : Flapjack.WordAlloc.removeDeadStructural input10017 value5011 value1 value2 = (output10017, value5, value1) := by
  rw [input10017_def, output10017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10013_eq]
  dsimp only
  rw [node10016_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10017 input10012)).val
theorem input10018_def : input10018 = (.seq input10017 input10012) := by
  unfold input10018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10017 output10012)).val
theorem output10018_def : output10018 = (.seq output10017 output10012) := by
  unfold output10018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10018_skip : Flapjack.WordAlloc.isSkip output10018 = false := by
  rw [output10018_def]
  conv => lhs; cbv
  try rfl
theorem node10018_eq : Flapjack.WordAlloc.removeDeadStructural input10018 value5010 value1 value2 = (output10018, value5, value1) := by
  rw [input10018_def, output10018_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10012_eq]
  dsimp only
  rw [node10017_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10018 input10011)).val
theorem input10019_def : input10019 = (.seq input10018 input10011) := by
  unfold input10019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10018 output10011)).val
theorem output10019_def : output10019 = (.seq output10018 output10011) := by
  unfold output10019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10019_skip : Flapjack.WordAlloc.isSkip output10019 = false := by
  rw [output10019_def]
  conv => lhs; cbv
  try rfl
theorem node10019_eq : Flapjack.WordAlloc.removeDeadStructural input10019 value5008 value1 value2 = (output10019, value5, value1) := by
  rw [input10019_def, output10019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10011_eq]
  dsimp only
  rw [node10018_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5014 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8673 (Flapjack.WordLangAddr.addr 8677 0#64)))).val
theorem input10020_def : input10020 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8673 (Flapjack.WordLangAddr.addr 8677 0#64))) := by
  unfold input10020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8673 (Flapjack.WordLangAddr.addr 8677 0#64)))).val
theorem output10020_def : output10020 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8673 (Flapjack.WordLangAddr.addr 8677 0#64))) := by
  unfold output10020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10020_skip : Flapjack.WordAlloc.isSkip output10020 = false := by
  rw [output10020_def]
  conv => lhs; cbv
  try rfl
theorem node10020_eq : Flapjack.WordAlloc.removeDeadStructural input10020 value5 value1 value2 = (output10020, value5014, value1) := by
  rw [input10020_def, output10020_def]
  try (conv => lhs; cbv)
  try rfl

def value5015 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8677, 8665)])).val
theorem input10021_def : input10021 = (Flapjack.WordLangProgHOL.move 0 [(8677, 8665)]) := by
  unfold input10021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8677, 8665)])).val
theorem output10021_def : output10021 = (Flapjack.WordLangProgHOL.move 0 [(8677, 8665)]) := by
  unfold output10021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10021_skip : Flapjack.WordAlloc.isSkip output10021 = false := by
  rw [output10021_def]
  conv => lhs; cbv
  try rfl
theorem node10021_eq : Flapjack.WordAlloc.removeDeadStructural input10021 value5014 value1 value2 = (output10021, value5015, value1) := by
  rw [input10021_def, output10021_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10021 input10020)).val
theorem input10022_def : input10022 = (.seq input10021 input10020) := by
  unfold input10022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10021 output10020)).val
theorem output10022_def : output10022 = (.seq output10021 output10020) := by
  unfold output10022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10022_skip : Flapjack.WordAlloc.isSkip output10022 = false := by
  rw [output10022_def]
  conv => lhs; cbv
  try rfl
theorem node10022_eq : Flapjack.WordAlloc.removeDeadStructural input10022 value5 value1 value2 = (output10022, value5015, value1) := by
  rw [input10022_def, output10022_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10020_eq]
  dsimp only
  rw [node10021_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5016 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8673 11086623519836470079#64))).val
theorem input10023_def : input10023 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8673 11086623519836470079#64)) := by
  unfold input10023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8673 11086623519836470079#64))).val
theorem output10023_def : output10023 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8673 11086623519836470079#64)) := by
  unfold output10023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10023_skip : Flapjack.WordAlloc.isSkip output10023 = false := by
  rw [output10023_def]
  conv => lhs; cbv
  try rfl
theorem node10023_eq : Flapjack.WordAlloc.removeDeadStructural input10023 value5015 value1 value2 = (output10023, value5016, value1) := by
  rw [input10023_def, output10023_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8669 11086623519836470079#64))).val
theorem input10024_def : input10024 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8669 11086623519836470079#64)) := by
  unfold input10024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10024 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10024_def : output10024 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10024
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10024_skip : Flapjack.WordAlloc.isSkip output10024 = true := by
  rw [output10024_def]
  conv => lhs; cbv
  try rfl
theorem node10024_eq : Flapjack.WordAlloc.removeDeadStructural input10024 value5016 value1 value2 = (output10024, value5016, value1) := by
  rw [input10024_def, output10024_def]
  try (conv => lhs; cbv)
  try rfl

def value5017 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8665 8657 (Flapjack.WordRegImm.reg 8661))))).val
theorem input10025_def : input10025 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8665 8657 (Flapjack.WordRegImm.reg 8661)))) := by
  unfold input10025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10025 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8665 8657 (Flapjack.WordRegImm.reg 8661))))).val
theorem output10025_def : output10025 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8665 8657 (Flapjack.WordRegImm.reg 8661)))) := by
  unfold output10025
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10025_skip : Flapjack.WordAlloc.isSkip output10025 = false := by
  rw [output10025_def]
  conv => lhs; cbv
  try rfl
theorem node10025_eq : Flapjack.WordAlloc.removeDeadStructural input10025 value5016 value1 value2 = (output10025, value5017, value1) := by
  rw [input10025_def, output10025_def]
  try (conv => lhs; cbv)
  try rfl

def value5018 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8661 2120#64))).val
theorem input10026_def : input10026 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8661 2120#64)) := by
  unfold input10026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10026 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8661 2120#64))).val
theorem output10026_def : output10026 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8661 2120#64)) := by
  unfold output10026
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10026_skip : Flapjack.WordAlloc.isSkip output10026 = false := by
  rw [output10026_def]
  conv => lhs; cbv
  try rfl
theorem node10026_eq : Flapjack.WordAlloc.removeDeadStructural input10026 value5017 value1 value2 = (output10026, value5018, value1) := by
  rw [input10026_def, output10026_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10026 input10025)).val
theorem input10027_def : input10027 = (.seq input10026 input10025) := by
  unfold input10027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10027 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10026 output10025)).val
theorem output10027_def : output10027 = (.seq output10026 output10025) := by
  unfold output10027
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10027_skip : Flapjack.WordAlloc.isSkip output10027 = false := by
  rw [output10027_def]
  conv => lhs; cbv
  try rfl
theorem node10027_eq : Flapjack.WordAlloc.removeDeadStructural input10027 value5016 value1 value2 = (output10027, value5018, value1) := by
  rw [input10027_def, output10027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10025_eq]
  dsimp only
  rw [node10026_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5019 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8657 (Flapjack.WordLangAddr.addr 8653 18446744073709551104#64)))).val
theorem input10028_def : input10028 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8657 (Flapjack.WordLangAddr.addr 8653 18446744073709551104#64))) := by
  unfold input10028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10028 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8657 (Flapjack.WordLangAddr.addr 8653 18446744073709551104#64)))).val
theorem output10028_def : output10028 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8657 (Flapjack.WordLangAddr.addr 8653 18446744073709551104#64))) := by
  unfold output10028
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10028_skip : Flapjack.WordAlloc.isSkip output10028 = false := by
  rw [output10028_def]
  conv => lhs; cbv
  try rfl
theorem node10028_eq : Flapjack.WordAlloc.removeDeadStructural input10028 value5018 value1 value2 = (output10028, value5019, value1) := by
  rw [input10028_def, output10028_def]
  try (conv => lhs; cbv)
  try rfl

def value5020 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8653 8649)).val
theorem input10029_def : input10029 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8653 8649) := by
  unfold input10029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10029 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8653 8649)).val
theorem output10029_def : output10029 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8653 8649) := by
  unfold output10029
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10029_skip : Flapjack.WordAlloc.isSkip output10029 = false := by
  rw [output10029_def]
  conv => lhs; cbv
  try rfl
theorem node10029_eq : Flapjack.WordAlloc.removeDeadStructural input10029 value5019 value1 value2 = (output10029, value5020, value1) := by
  rw [input10029_def, output10029_def]
  try (conv => lhs; cbv)
  try rfl

def value5021 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8649 8645 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10030_def : input10030 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8649 8645 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10030 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8649 8645 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10030_def : output10030 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8649 8645 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10030
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10030_skip : Flapjack.WordAlloc.isSkip output10030 = false := by
  rw [output10030_def]
  conv => lhs; cbv
  try rfl
theorem node10030_eq : Flapjack.WordAlloc.removeDeadStructural input10030 value5020 value1 value2 = (output10030, value5021, value1) := by
  rw [input10030_def, output10030_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8645 Flapjack.WordStore.heapLength)).val
theorem input10031_def : input10031 = (Flapjack.WordLangProgHOL.get 8645 Flapjack.WordStore.heapLength) := by
  unfold input10031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10031 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8645 Flapjack.WordStore.heapLength)).val
theorem output10031_def : output10031 = (Flapjack.WordLangProgHOL.get 8645 Flapjack.WordStore.heapLength) := by
  unfold output10031
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10031_skip : Flapjack.WordAlloc.isSkip output10031 = false := by
  rw [output10031_def]
  conv => lhs; cbv
  try rfl
theorem node10031_eq : Flapjack.WordAlloc.removeDeadStructural input10031 value5021 value1 value2 = (output10031, value5, value1) := by
  rw [input10031_def, output10031_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10031 input10030)).val
theorem input10032_def : input10032 = (.seq input10031 input10030) := by
  unfold input10032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10032 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10031 output10030)).val
theorem output10032_def : output10032 = (.seq output10031 output10030) := by
  unfold output10032
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10032_skip : Flapjack.WordAlloc.isSkip output10032 = false := by
  rw [output10032_def]
  conv => lhs; cbv
  try rfl
theorem node10032_eq : Flapjack.WordAlloc.removeDeadStructural input10032 value5020 value1 value2 = (output10032, value5, value1) := by
  rw [input10032_def, output10032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10030_eq]
  dsimp only
  rw [node10031_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10032 input10029)).val
theorem input10033_def : input10033 = (.seq input10032 input10029) := by
  unfold input10033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10033 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10032 output10029)).val
theorem output10033_def : output10033 = (.seq output10032 output10029) := by
  unfold output10033
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10033_skip : Flapjack.WordAlloc.isSkip output10033 = false := by
  rw [output10033_def]
  conv => lhs; cbv
  try rfl
theorem node10033_eq : Flapjack.WordAlloc.removeDeadStructural input10033 value5019 value1 value2 = (output10033, value5, value1) := by
  rw [input10033_def, output10033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10029_eq]
  dsimp only
  rw [node10032_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10033 input10028)).val
theorem input10034_def : input10034 = (.seq input10033 input10028) := by
  unfold input10034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10034 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10033 output10028)).val
theorem output10034_def : output10034 = (.seq output10033 output10028) := by
  unfold output10034
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10034_skip : Flapjack.WordAlloc.isSkip output10034 = false := by
  rw [output10034_def]
  conv => lhs; cbv
  try rfl
theorem node10034_eq : Flapjack.WordAlloc.removeDeadStructural input10034 value5018 value1 value2 = (output10034, value5, value1) := by
  rw [input10034_def, output10034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10028_eq]
  dsimp only
  rw [node10033_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10034 input10027)).val
theorem input10035_def : input10035 = (.seq input10034 input10027) := by
  unfold input10035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10035 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10034 output10027)).val
theorem output10035_def : output10035 = (.seq output10034 output10027) := by
  unfold output10035
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10035_skip : Flapjack.WordAlloc.isSkip output10035 = false := by
  rw [output10035_def]
  conv => lhs; cbv
  try rfl
theorem node10035_eq : Flapjack.WordAlloc.removeDeadStructural input10035 value5016 value1 value2 = (output10035, value5, value1) := by
  rw [input10035_def, output10035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10027_eq]
  dsimp only
  rw [node10034_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5022 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8637 (Flapjack.WordLangAddr.addr 8641 0#64)))).val
theorem input10036_def : input10036 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8637 (Flapjack.WordLangAddr.addr 8641 0#64))) := by
  unfold input10036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10036 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8637 (Flapjack.WordLangAddr.addr 8641 0#64)))).val
theorem output10036_def : output10036 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8637 (Flapjack.WordLangAddr.addr 8641 0#64))) := by
  unfold output10036
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10036_skip : Flapjack.WordAlloc.isSkip output10036 = false := by
  rw [output10036_def]
  conv => lhs; cbv
  try rfl
theorem node10036_eq : Flapjack.WordAlloc.removeDeadStructural input10036 value5 value1 value2 = (output10036, value5022, value1) := by
  rw [input10036_def, output10036_def]
  try (conv => lhs; cbv)
  try rfl

def value5023 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8641, 8629)])).val
theorem input10037_def : input10037 = (Flapjack.WordLangProgHOL.move 0 [(8641, 8629)]) := by
  unfold input10037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10037 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8641, 8629)])).val
theorem output10037_def : output10037 = (Flapjack.WordLangProgHOL.move 0 [(8641, 8629)]) := by
  unfold output10037
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10037_skip : Flapjack.WordAlloc.isSkip output10037 = false := by
  rw [output10037_def]
  conv => lhs; cbv
  try rfl
theorem node10037_eq : Flapjack.WordAlloc.removeDeadStructural input10037 value5022 value1 value2 = (output10037, value5023, value1) := by
  rw [input10037_def, output10037_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10037 input10036)).val
theorem input10038_def : input10038 = (.seq input10037 input10036) := by
  unfold input10038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10038 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10037 output10036)).val
theorem output10038_def : output10038 = (.seq output10037 output10036) := by
  unfold output10038
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10038_skip : Flapjack.WordAlloc.isSkip output10038 = false := by
  rw [output10038_def]
  conv => lhs; cbv
  try rfl
theorem node10038_eq : Flapjack.WordAlloc.removeDeadStructural input10038 value5 value1 value2 = (output10038, value5023, value1) := by
  rw [input10038_def, output10038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10036_eq]
  dsimp only
  rw [node10037_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5024 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8637 607681821319080984#64))).val
theorem input10039_def : input10039 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8637 607681821319080984#64)) := by
  unfold input10039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10039 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8637 607681821319080984#64))).val
theorem output10039_def : output10039 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8637 607681821319080984#64)) := by
  unfold output10039
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10039_skip : Flapjack.WordAlloc.isSkip output10039 = false := by
  rw [output10039_def]
  conv => lhs; cbv
  try rfl
theorem node10039_eq : Flapjack.WordAlloc.removeDeadStructural input10039 value5023 value1 value2 = (output10039, value5024, value1) := by
  rw [input10039_def, output10039_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8633 607681821319080984#64))).val
theorem input10040_def : input10040 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8633 607681821319080984#64)) := by
  unfold input10040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10040 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10040_def : output10040 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10040
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10040_skip : Flapjack.WordAlloc.isSkip output10040 = true := by
  rw [output10040_def]
  conv => lhs; cbv
  try rfl
theorem node10040_eq : Flapjack.WordAlloc.removeDeadStructural input10040 value5024 value1 value2 = (output10040, value5024, value1) := by
  rw [input10040_def, output10040_def]
  try (conv => lhs; cbv)
  try rfl

def value5025 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8629 8621 (Flapjack.WordRegImm.reg 8625))))).val
theorem input10041_def : input10041 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8629 8621 (Flapjack.WordRegImm.reg 8625)))) := by
  unfold input10041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10041 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8629 8621 (Flapjack.WordRegImm.reg 8625))))).val
theorem output10041_def : output10041 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8629 8621 (Flapjack.WordRegImm.reg 8625)))) := by
  unfold output10041
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10041_skip : Flapjack.WordAlloc.isSkip output10041 = false := by
  rw [output10041_def]
  conv => lhs; cbv
  try rfl
theorem node10041_eq : Flapjack.WordAlloc.removeDeadStructural input10041 value5024 value1 value2 = (output10041, value5025, value1) := by
  rw [input10041_def, output10041_def]
  try (conv => lhs; cbv)
  try rfl

def value5026 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8625 2112#64))).val
theorem input10042_def : input10042 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8625 2112#64)) := by
  unfold input10042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10042 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8625 2112#64))).val
theorem output10042_def : output10042 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8625 2112#64)) := by
  unfold output10042
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10042_skip : Flapjack.WordAlloc.isSkip output10042 = false := by
  rw [output10042_def]
  conv => lhs; cbv
  try rfl
theorem node10042_eq : Flapjack.WordAlloc.removeDeadStructural input10042 value5025 value1 value2 = (output10042, value5026, value1) := by
  rw [input10042_def, output10042_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10042 input10041)).val
theorem input10043_def : input10043 = (.seq input10042 input10041) := by
  unfold input10043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10043 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10042 output10041)).val
theorem output10043_def : output10043 = (.seq output10042 output10041) := by
  unfold output10043
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10043_skip : Flapjack.WordAlloc.isSkip output10043 = false := by
  rw [output10043_def]
  conv => lhs; cbv
  try rfl
theorem node10043_eq : Flapjack.WordAlloc.removeDeadStructural input10043 value5024 value1 value2 = (output10043, value5026, value1) := by
  rw [input10043_def, output10043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10041_eq]
  dsimp only
  rw [node10042_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5027 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8621 (Flapjack.WordLangAddr.addr 8617 18446744073709551104#64)))).val
theorem input10044_def : input10044 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8621 (Flapjack.WordLangAddr.addr 8617 18446744073709551104#64))) := by
  unfold input10044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10044 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8621 (Flapjack.WordLangAddr.addr 8617 18446744073709551104#64)))).val
theorem output10044_def : output10044 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8621 (Flapjack.WordLangAddr.addr 8617 18446744073709551104#64))) := by
  unfold output10044
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10044_skip : Flapjack.WordAlloc.isSkip output10044 = false := by
  rw [output10044_def]
  conv => lhs; cbv
  try rfl
theorem node10044_eq : Flapjack.WordAlloc.removeDeadStructural input10044 value5026 value1 value2 = (output10044, value5027, value1) := by
  rw [input10044_def, output10044_def]
  try (conv => lhs; cbv)
  try rfl

def value5028 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8617 8613)).val
theorem input10045_def : input10045 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8617 8613) := by
  unfold input10045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10045 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8617 8613)).val
theorem output10045_def : output10045 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8617 8613) := by
  unfold output10045
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10045_skip : Flapjack.WordAlloc.isSkip output10045 = false := by
  rw [output10045_def]
  conv => lhs; cbv
  try rfl
theorem node10045_eq : Flapjack.WordAlloc.removeDeadStructural input10045 value5027 value1 value2 = (output10045, value5028, value1) := by
  rw [input10045_def, output10045_def]
  try (conv => lhs; cbv)
  try rfl

def value5029 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8613 8609 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10046_def : input10046 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8613 8609 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10046 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8613 8609 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10046_def : output10046 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8613 8609 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10046
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10046_skip : Flapjack.WordAlloc.isSkip output10046 = false := by
  rw [output10046_def]
  conv => lhs; cbv
  try rfl
theorem node10046_eq : Flapjack.WordAlloc.removeDeadStructural input10046 value5028 value1 value2 = (output10046, value5029, value1) := by
  rw [input10046_def, output10046_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8609 Flapjack.WordStore.heapLength)).val
theorem input10047_def : input10047 = (Flapjack.WordLangProgHOL.get 8609 Flapjack.WordStore.heapLength) := by
  unfold input10047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10047 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8609 Flapjack.WordStore.heapLength)).val
theorem output10047_def : output10047 = (Flapjack.WordLangProgHOL.get 8609 Flapjack.WordStore.heapLength) := by
  unfold output10047
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10047_skip : Flapjack.WordAlloc.isSkip output10047 = false := by
  rw [output10047_def]
  conv => lhs; cbv
  try rfl
theorem node10047_eq : Flapjack.WordAlloc.removeDeadStructural input10047 value5029 value1 value2 = (output10047, value5, value1) := by
  rw [input10047_def, output10047_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10047 input10046)).val
theorem input10048_def : input10048 = (.seq input10047 input10046) := by
  unfold input10048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10048 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10047 output10046)).val
theorem output10048_def : output10048 = (.seq output10047 output10046) := by
  unfold output10048
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10048_skip : Flapjack.WordAlloc.isSkip output10048 = false := by
  rw [output10048_def]
  conv => lhs; cbv
  try rfl
theorem node10048_eq : Flapjack.WordAlloc.removeDeadStructural input10048 value5028 value1 value2 = (output10048, value5, value1) := by
  rw [input10048_def, output10048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10046_eq]
  dsimp only
  rw [node10047_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10048 input10045)).val
theorem input10049_def : input10049 = (.seq input10048 input10045) := by
  unfold input10049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10049 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10048 output10045)).val
theorem output10049_def : output10049 = (.seq output10048 output10045) := by
  unfold output10049
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10049_skip : Flapjack.WordAlloc.isSkip output10049 = false := by
  rw [output10049_def]
  conv => lhs; cbv
  try rfl
theorem node10049_eq : Flapjack.WordAlloc.removeDeadStructural input10049 value5027 value1 value2 = (output10049, value5, value1) := by
  rw [input10049_def, output10049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10045_eq]
  dsimp only
  rw [node10048_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10049 input10044)).val
theorem input10050_def : input10050 = (.seq input10049 input10044) := by
  unfold input10050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10050 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10049 output10044)).val
theorem output10050_def : output10050 = (.seq output10049 output10044) := by
  unfold output10050
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10050_skip : Flapjack.WordAlloc.isSkip output10050 = false := by
  rw [output10050_def]
  conv => lhs; cbv
  try rfl
theorem node10050_eq : Flapjack.WordAlloc.removeDeadStructural input10050 value5026 value1 value2 = (output10050, value5, value1) := by
  rw [input10050_def, output10050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10044_eq]
  dsimp only
  rw [node10049_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10050 input10043)).val
theorem input10051_def : input10051 = (.seq input10050 input10043) := by
  unfold input10051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10051 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10050 output10043)).val
theorem output10051_def : output10051 = (.seq output10050 output10043) := by
  unfold output10051
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10051_skip : Flapjack.WordAlloc.isSkip output10051 = false := by
  rw [output10051_def]
  conv => lhs; cbv
  try rfl
theorem node10051_eq : Flapjack.WordAlloc.removeDeadStructural input10051 value5024 value1 value2 = (output10051, value5, value1) := by
  rw [input10051_def, output10051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10043_eq]
  dsimp only
  rw [node10050_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5030 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8601 (Flapjack.WordLangAddr.addr 8605 0#64)))).val
theorem input10052_def : input10052 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8601 (Flapjack.WordLangAddr.addr 8605 0#64))) := by
  unfold input10052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10052 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8601 (Flapjack.WordLangAddr.addr 8605 0#64)))).val
theorem output10052_def : output10052 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8601 (Flapjack.WordLangAddr.addr 8605 0#64))) := by
  unfold output10052
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10052_skip : Flapjack.WordAlloc.isSkip output10052 = false := by
  rw [output10052_def]
  conv => lhs; cbv
  try rfl
theorem node10052_eq : Flapjack.WordAlloc.removeDeadStructural input10052 value5 value1 value2 = (output10052, value5030, value1) := by
  rw [input10052_def, output10052_def]
  try (conv => lhs; cbv)
  try rfl

def value5031 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8605, 8593)])).val
theorem input10053_def : input10053 = (Flapjack.WordLangProgHOL.move 0 [(8605, 8593)]) := by
  unfold input10053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10053 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8605, 8593)])).val
theorem output10053_def : output10053 = (Flapjack.WordLangProgHOL.move 0 [(8605, 8593)]) := by
  unfold output10053
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10053_skip : Flapjack.WordAlloc.isSkip output10053 = false := by
  rw [output10053_def]
  conv => lhs; cbv
  try rfl
theorem node10053_eq : Flapjack.WordAlloc.removeDeadStructural input10053 value5030 value1 value2 = (output10053, value5031, value1) := by
  rw [input10053_def, output10053_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10053 input10052)).val
theorem input10054_def : input10054 = (.seq input10053 input10052) := by
  unfold input10054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10054 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10053 output10052)).val
theorem output10054_def : output10054 = (.seq output10053 output10052) := by
  unfold output10054
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10054_skip : Flapjack.WordAlloc.isSkip output10054 = false := by
  rw [output10054_def]
  conv => lhs; cbv
  try rfl
theorem node10054_eq : Flapjack.WordAlloc.removeDeadStructural input10054 value5 value1 value2 = (output10054, value5031, value1) := by
  rw [input10054_def, output10054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10052_eq]
  dsimp only
  rw [node10053_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5032 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8601 10978131499682789316#64))).val
theorem input10055_def : input10055 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8601 10978131499682789316#64)) := by
  unfold input10055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10055 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8601 10978131499682789316#64))).val
theorem output10055_def : output10055 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8601 10978131499682789316#64)) := by
  unfold output10055
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10055_skip : Flapjack.WordAlloc.isSkip output10055 = false := by
  rw [output10055_def]
  conv => lhs; cbv
  try rfl
theorem node10055_eq : Flapjack.WordAlloc.removeDeadStructural input10055 value5031 value1 value2 = (output10055, value5032, value1) := by
  rw [input10055_def, output10055_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8597 10978131499682789316#64))).val
theorem input10056_def : input10056 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8597 10978131499682789316#64)) := by
  unfold input10056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10056 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10056_def : output10056 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10056
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10056_skip : Flapjack.WordAlloc.isSkip output10056 = true := by
  rw [output10056_def]
  conv => lhs; cbv
  try rfl
theorem node10056_eq : Flapjack.WordAlloc.removeDeadStructural input10056 value5032 value1 value2 = (output10056, value5032, value1) := by
  rw [input10056_def, output10056_def]
  try (conv => lhs; cbv)
  try rfl

def value5033 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8593 8585 (Flapjack.WordRegImm.reg 8589))))).val
theorem input10057_def : input10057 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8593 8585 (Flapjack.WordRegImm.reg 8589)))) := by
  unfold input10057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10057 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8593 8585 (Flapjack.WordRegImm.reg 8589))))).val
theorem output10057_def : output10057 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8593 8585 (Flapjack.WordRegImm.reg 8589)))) := by
  unfold output10057
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10057_skip : Flapjack.WordAlloc.isSkip output10057 = false := by
  rw [output10057_def]
  conv => lhs; cbv
  try rfl
theorem node10057_eq : Flapjack.WordAlloc.removeDeadStructural input10057 value5032 value1 value2 = (output10057, value5033, value1) := by
  rw [input10057_def, output10057_def]
  try (conv => lhs; cbv)
  try rfl

def value5034 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8589 2104#64))).val
theorem input10058_def : input10058 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8589 2104#64)) := by
  unfold input10058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10058 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8589 2104#64))).val
theorem output10058_def : output10058 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8589 2104#64)) := by
  unfold output10058
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10058_skip : Flapjack.WordAlloc.isSkip output10058 = false := by
  rw [output10058_def]
  conv => lhs; cbv
  try rfl
theorem node10058_eq : Flapjack.WordAlloc.removeDeadStructural input10058 value5033 value1 value2 = (output10058, value5034, value1) := by
  rw [input10058_def, output10058_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10058 input10057)).val
theorem input10059_def : input10059 = (.seq input10058 input10057) := by
  unfold input10059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10059 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10058 output10057)).val
theorem output10059_def : output10059 = (.seq output10058 output10057) := by
  unfold output10059
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10059_skip : Flapjack.WordAlloc.isSkip output10059 = false := by
  rw [output10059_def]
  conv => lhs; cbv
  try rfl
theorem node10059_eq : Flapjack.WordAlloc.removeDeadStructural input10059 value5032 value1 value2 = (output10059, value5034, value1) := by
  rw [input10059_def, output10059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10057_eq]
  dsimp only
  rw [node10058_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5035 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8585 (Flapjack.WordLangAddr.addr 8581 18446744073709551104#64)))).val
theorem input10060_def : input10060 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8585 (Flapjack.WordLangAddr.addr 8581 18446744073709551104#64))) := by
  unfold input10060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10060 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8585 (Flapjack.WordLangAddr.addr 8581 18446744073709551104#64)))).val
theorem output10060_def : output10060 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8585 (Flapjack.WordLangAddr.addr 8581 18446744073709551104#64))) := by
  unfold output10060
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10060_skip : Flapjack.WordAlloc.isSkip output10060 = false := by
  rw [output10060_def]
  conv => lhs; cbv
  try rfl
theorem node10060_eq : Flapjack.WordAlloc.removeDeadStructural input10060 value5034 value1 value2 = (output10060, value5035, value1) := by
  rw [input10060_def, output10060_def]
  try (conv => lhs; cbv)
  try rfl

def value5036 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8581 8577)).val
theorem input10061_def : input10061 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8581 8577) := by
  unfold input10061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10061 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8581 8577)).val
theorem output10061_def : output10061 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8581 8577) := by
  unfold output10061
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10061_skip : Flapjack.WordAlloc.isSkip output10061 = false := by
  rw [output10061_def]
  conv => lhs; cbv
  try rfl
theorem node10061_eq : Flapjack.WordAlloc.removeDeadStructural input10061 value5035 value1 value2 = (output10061, value5036, value1) := by
  rw [input10061_def, output10061_def]
  try (conv => lhs; cbv)
  try rfl

def value5037 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8577 8573 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10062_def : input10062 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8577 8573 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10062 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8577 8573 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10062_def : output10062 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8577 8573 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10062
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10062_skip : Flapjack.WordAlloc.isSkip output10062 = false := by
  rw [output10062_def]
  conv => lhs; cbv
  try rfl
theorem node10062_eq : Flapjack.WordAlloc.removeDeadStructural input10062 value5036 value1 value2 = (output10062, value5037, value1) := by
  rw [input10062_def, output10062_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8573 Flapjack.WordStore.heapLength)).val
theorem input10063_def : input10063 = (Flapjack.WordLangProgHOL.get 8573 Flapjack.WordStore.heapLength) := by
  unfold input10063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10063 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8573 Flapjack.WordStore.heapLength)).val
theorem output10063_def : output10063 = (Flapjack.WordLangProgHOL.get 8573 Flapjack.WordStore.heapLength) := by
  unfold output10063
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10063_skip : Flapjack.WordAlloc.isSkip output10063 = false := by
  rw [output10063_def]
  conv => lhs; cbv
  try rfl
theorem node10063_eq : Flapjack.WordAlloc.removeDeadStructural input10063 value5037 value1 value2 = (output10063, value5, value1) := by
  rw [input10063_def, output10063_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10063 input10062)).val
theorem input10064_def : input10064 = (.seq input10063 input10062) := by
  unfold input10064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10064 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10063 output10062)).val
theorem output10064_def : output10064 = (.seq output10063 output10062) := by
  unfold output10064
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10064_skip : Flapjack.WordAlloc.isSkip output10064 = false := by
  rw [output10064_def]
  conv => lhs; cbv
  try rfl
theorem node10064_eq : Flapjack.WordAlloc.removeDeadStructural input10064 value5036 value1 value2 = (output10064, value5, value1) := by
  rw [input10064_def, output10064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10062_eq]
  dsimp only
  rw [node10063_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10064 input10061)).val
theorem input10065_def : input10065 = (.seq input10064 input10061) := by
  unfold input10065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10065 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10064 output10061)).val
theorem output10065_def : output10065 = (.seq output10064 output10061) := by
  unfold output10065
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10065_skip : Flapjack.WordAlloc.isSkip output10065 = false := by
  rw [output10065_def]
  conv => lhs; cbv
  try rfl
theorem node10065_eq : Flapjack.WordAlloc.removeDeadStructural input10065 value5035 value1 value2 = (output10065, value5, value1) := by
  rw [input10065_def, output10065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10061_eq]
  dsimp only
  rw [node10064_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10065 input10060)).val
theorem input10066_def : input10066 = (.seq input10065 input10060) := by
  unfold input10066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10066 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10065 output10060)).val
theorem output10066_def : output10066 = (.seq output10065 output10060) := by
  unfold output10066
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10066_skip : Flapjack.WordAlloc.isSkip output10066 = false := by
  rw [output10066_def]
  conv => lhs; cbv
  try rfl
theorem node10066_eq : Flapjack.WordAlloc.removeDeadStructural input10066 value5034 value1 value2 = (output10066, value5, value1) := by
  rw [input10066_def, output10066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10060_eq]
  dsimp only
  rw [node10065_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10066 input10059)).val
theorem input10067_def : input10067 = (.seq input10066 input10059) := by
  unfold input10067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10067 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10066 output10059)).val
theorem output10067_def : output10067 = (.seq output10066 output10059) := by
  unfold output10067
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10067_skip : Flapjack.WordAlloc.isSkip output10067 = false := by
  rw [output10067_def]
  conv => lhs; cbv
  try rfl
theorem node10067_eq : Flapjack.WordAlloc.removeDeadStructural input10067 value5032 value1 value2 = (output10067, value5, value1) := by
  rw [input10067_def, output10067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10059_eq]
  dsimp only
  rw [node10066_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5038 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8565 (Flapjack.WordLangAddr.addr 8569 0#64)))).val
theorem input10068_def : input10068 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8565 (Flapjack.WordLangAddr.addr 8569 0#64))) := by
  unfold input10068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10068 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8565 (Flapjack.WordLangAddr.addr 8569 0#64)))).val
theorem output10068_def : output10068 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8565 (Flapjack.WordLangAddr.addr 8569 0#64))) := by
  unfold output10068
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10068_skip : Flapjack.WordAlloc.isSkip output10068 = false := by
  rw [output10068_def]
  conv => lhs; cbv
  try rfl
theorem node10068_eq : Flapjack.WordAlloc.removeDeadStructural input10068 value5 value1 value2 = (output10068, value5038, value1) := by
  rw [input10068_def, output10068_def]
  try (conv => lhs; cbv)
  try rfl

def value5039 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8569, 8557)])).val
theorem input10069_def : input10069 = (Flapjack.WordLangProgHOL.move 0 [(8569, 8557)]) := by
  unfold input10069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10069 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8569, 8557)])).val
theorem output10069_def : output10069 = (Flapjack.WordLangProgHOL.move 0 [(8569, 8557)]) := by
  unfold output10069
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10069_skip : Flapjack.WordAlloc.isSkip output10069 = false := by
  rw [output10069_def]
  conv => lhs; cbv
  try rfl
theorem node10069_eq : Flapjack.WordAlloc.removeDeadStructural input10069 value5038 value1 value2 = (output10069, value5039, value1) := by
  rw [input10069_def, output10069_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10069 input10068)).val
theorem input10070_def : input10070 = (.seq input10069 input10068) := by
  unfold input10070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10070 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10069 output10068)).val
theorem output10070_def : output10070 = (.seq output10069 output10068) := by
  unfold output10070
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10070_skip : Flapjack.WordAlloc.isSkip output10070 = false := by
  rw [output10070_def]
  conv => lhs; cbv
  try rfl
theorem node10070_eq : Flapjack.WordAlloc.removeDeadStructural input10070 value5 value1 value2 = (output10070, value5039, value1) := by
  rw [input10070_def, output10070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10068_eq]
  dsimp only
  rw [node10069_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5040 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8565 5842660658088809945#64))).val
theorem input10071_def : input10071 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8565 5842660658088809945#64)) := by
  unfold input10071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10071 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8565 5842660658088809945#64))).val
theorem output10071_def : output10071 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8565 5842660658088809945#64)) := by
  unfold output10071
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10071_skip : Flapjack.WordAlloc.isSkip output10071 = false := by
  rw [output10071_def]
  conv => lhs; cbv
  try rfl
theorem node10071_eq : Flapjack.WordAlloc.removeDeadStructural input10071 value5039 value1 value2 = (output10071, value5040, value1) := by
  rw [input10071_def, output10071_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8561 5842660658088809945#64))).val
theorem input10072_def : input10072 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8561 5842660658088809945#64)) := by
  unfold input10072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10072_def : output10072 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10072_skip : Flapjack.WordAlloc.isSkip output10072 = true := by
  rw [output10072_def]
  conv => lhs; cbv
  try rfl
theorem node10072_eq : Flapjack.WordAlloc.removeDeadStructural input10072 value5040 value1 value2 = (output10072, value5040, value1) := by
  rw [input10072_def, output10072_def]
  try (conv => lhs; cbv)
  try rfl

def value5041 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8557 8549 (Flapjack.WordRegImm.reg 8553))))).val
theorem input10073_def : input10073 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8557 8549 (Flapjack.WordRegImm.reg 8553)))) := by
  unfold input10073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8557 8549 (Flapjack.WordRegImm.reg 8553))))).val
theorem output10073_def : output10073 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8557 8549 (Flapjack.WordRegImm.reg 8553)))) := by
  unfold output10073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10073_skip : Flapjack.WordAlloc.isSkip output10073 = false := by
  rw [output10073_def]
  conv => lhs; cbv
  try rfl
theorem node10073_eq : Flapjack.WordAlloc.removeDeadStructural input10073 value5040 value1 value2 = (output10073, value5041, value1) := by
  rw [input10073_def, output10073_def]
  try (conv => lhs; cbv)
  try rfl

def value5042 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8553 2096#64))).val
theorem input10074_def : input10074 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8553 2096#64)) := by
  unfold input10074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8553 2096#64))).val
theorem output10074_def : output10074 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8553 2096#64)) := by
  unfold output10074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10074_skip : Flapjack.WordAlloc.isSkip output10074 = false := by
  rw [output10074_def]
  conv => lhs; cbv
  try rfl
theorem node10074_eq : Flapjack.WordAlloc.removeDeadStructural input10074 value5041 value1 value2 = (output10074, value5042, value1) := by
  rw [input10074_def, output10074_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10074 input10073)).val
theorem input10075_def : input10075 = (.seq input10074 input10073) := by
  unfold input10075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10074 output10073)).val
theorem output10075_def : output10075 = (.seq output10074 output10073) := by
  unfold output10075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10075_skip : Flapjack.WordAlloc.isSkip output10075 = false := by
  rw [output10075_def]
  conv => lhs; cbv
  try rfl
theorem node10075_eq : Flapjack.WordAlloc.removeDeadStructural input10075 value5040 value1 value2 = (output10075, value5042, value1) := by
  rw [input10075_def, output10075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10073_eq]
  dsimp only
  rw [node10074_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5043 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8549 (Flapjack.WordLangAddr.addr 8545 18446744073709551104#64)))).val
theorem input10076_def : input10076 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8549 (Flapjack.WordLangAddr.addr 8545 18446744073709551104#64))) := by
  unfold input10076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8549 (Flapjack.WordLangAddr.addr 8545 18446744073709551104#64)))).val
theorem output10076_def : output10076 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8549 (Flapjack.WordLangAddr.addr 8545 18446744073709551104#64))) := by
  unfold output10076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10076_skip : Flapjack.WordAlloc.isSkip output10076 = false := by
  rw [output10076_def]
  conv => lhs; cbv
  try rfl
theorem node10076_eq : Flapjack.WordAlloc.removeDeadStructural input10076 value5042 value1 value2 = (output10076, value5043, value1) := by
  rw [input10076_def, output10076_def]
  try (conv => lhs; cbv)
  try rfl

def value5044 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8545 8541)).val
theorem input10077_def : input10077 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8545 8541) := by
  unfold input10077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8545 8541)).val
theorem output10077_def : output10077 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8545 8541) := by
  unfold output10077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10077_skip : Flapjack.WordAlloc.isSkip output10077 = false := by
  rw [output10077_def]
  conv => lhs; cbv
  try rfl
theorem node10077_eq : Flapjack.WordAlloc.removeDeadStructural input10077 value5043 value1 value2 = (output10077, value5044, value1) := by
  rw [input10077_def, output10077_def]
  try (conv => lhs; cbv)
  try rfl

def value5045 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8541 8537 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10078_def : input10078 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8541 8537 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8541 8537 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10078_def : output10078 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8541 8537 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10078_skip : Flapjack.WordAlloc.isSkip output10078 = false := by
  rw [output10078_def]
  conv => lhs; cbv
  try rfl
theorem node10078_eq : Flapjack.WordAlloc.removeDeadStructural input10078 value5044 value1 value2 = (output10078, value5045, value1) := by
  rw [input10078_def, output10078_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8537 Flapjack.WordStore.heapLength)).val
theorem input10079_def : input10079 = (Flapjack.WordLangProgHOL.get 8537 Flapjack.WordStore.heapLength) := by
  unfold input10079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8537 Flapjack.WordStore.heapLength)).val
theorem output10079_def : output10079 = (Flapjack.WordLangProgHOL.get 8537 Flapjack.WordStore.heapLength) := by
  unfold output10079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10079_skip : Flapjack.WordAlloc.isSkip output10079 = false := by
  rw [output10079_def]
  conv => lhs; cbv
  try rfl
theorem node10079_eq : Flapjack.WordAlloc.removeDeadStructural input10079 value5045 value1 value2 = (output10079, value5, value1) := by
  rw [input10079_def, output10079_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10079 input10078)).val
theorem input10080_def : input10080 = (.seq input10079 input10078) := by
  unfold input10080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10079 output10078)).val
theorem output10080_def : output10080 = (.seq output10079 output10078) := by
  unfold output10080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10080_skip : Flapjack.WordAlloc.isSkip output10080 = false := by
  rw [output10080_def]
  conv => lhs; cbv
  try rfl
theorem node10080_eq : Flapjack.WordAlloc.removeDeadStructural input10080 value5044 value1 value2 = (output10080, value5, value1) := by
  rw [input10080_def, output10080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10078_eq]
  dsimp only
  rw [node10079_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10080 input10077)).val
theorem input10081_def : input10081 = (.seq input10080 input10077) := by
  unfold input10081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10080 output10077)).val
theorem output10081_def : output10081 = (.seq output10080 output10077) := by
  unfold output10081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10081_skip : Flapjack.WordAlloc.isSkip output10081 = false := by
  rw [output10081_def]
  conv => lhs; cbv
  try rfl
theorem node10081_eq : Flapjack.WordAlloc.removeDeadStructural input10081 value5043 value1 value2 = (output10081, value5, value1) := by
  rw [input10081_def, output10081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10077_eq]
  dsimp only
  rw [node10080_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10081 input10076)).val
theorem input10082_def : input10082 = (.seq input10081 input10076) := by
  unfold input10082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10081 output10076)).val
theorem output10082_def : output10082 = (.seq output10081 output10076) := by
  unfold output10082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10082_skip : Flapjack.WordAlloc.isSkip output10082 = false := by
  rw [output10082_def]
  conv => lhs; cbv
  try rfl
theorem node10082_eq : Flapjack.WordAlloc.removeDeadStructural input10082 value5042 value1 value2 = (output10082, value5, value1) := by
  rw [input10082_def, output10082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10076_eq]
  dsimp only
  rw [node10081_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10082 input10075)).val
theorem input10083_def : input10083 = (.seq input10082 input10075) := by
  unfold input10083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10082 output10075)).val
theorem output10083_def : output10083 = (.seq output10082 output10075) := by
  unfold output10083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10083_skip : Flapjack.WordAlloc.isSkip output10083 = false := by
  rw [output10083_def]
  conv => lhs; cbv
  try rfl
theorem node10083_eq : Flapjack.WordAlloc.removeDeadStructural input10083 value5040 value1 value2 = (output10083, value5, value1) := by
  rw [input10083_def, output10083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10075_eq]
  dsimp only
  rw [node10082_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5046 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8529 (Flapjack.WordLangAddr.addr 8533 0#64)))).val
theorem input10084_def : input10084 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8529 (Flapjack.WordLangAddr.addr 8533 0#64))) := by
  unfold input10084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8529 (Flapjack.WordLangAddr.addr 8533 0#64)))).val
theorem output10084_def : output10084 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8529 (Flapjack.WordLangAddr.addr 8533 0#64))) := by
  unfold output10084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10084_skip : Flapjack.WordAlloc.isSkip output10084 = false := by
  rw [output10084_def]
  conv => lhs; cbv
  try rfl
theorem node10084_eq : Flapjack.WordAlloc.removeDeadStructural input10084 value5 value1 value2 = (output10084, value5046, value1) := by
  rw [input10084_def, output10084_def]
  try (conv => lhs; cbv)
  try rfl

def value5047 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8533, 8521)])).val
theorem input10085_def : input10085 = (Flapjack.WordLangProgHOL.move 0 [(8533, 8521)]) := by
  unfold input10085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8533, 8521)])).val
theorem output10085_def : output10085 = (Flapjack.WordLangProgHOL.move 0 [(8533, 8521)]) := by
  unfold output10085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10085_skip : Flapjack.WordAlloc.isSkip output10085 = false := by
  rw [output10085_def]
  conv => lhs; cbv
  try rfl
theorem node10085_eq : Flapjack.WordAlloc.removeDeadStructural input10085 value5046 value1 value2 = (output10085, value5047, value1) := by
  rw [input10085_def, output10085_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10085 input10084)).val
theorem input10086_def : input10086 = (.seq input10085 input10084) := by
  unfold input10086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10085 output10084)).val
theorem output10086_def : output10086 = (.seq output10085 output10084) := by
  unfold output10086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10086_skip : Flapjack.WordAlloc.isSkip output10086 = false := by
  rw [output10086_def]
  conv => lhs; cbv
  try rfl
theorem node10086_eq : Flapjack.WordAlloc.removeDeadStructural input10086 value5 value1 value2 = (output10086, value5047, value1) := by
  rw [input10086_def, output10086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10084_eq]
  dsimp only
  rw [node10085_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5048 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8529 1691355743628586423#64))).val
theorem input10087_def : input10087 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8529 1691355743628586423#64)) := by
  unfold input10087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8529 1691355743628586423#64))).val
theorem output10087_def : output10087 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8529 1691355743628586423#64)) := by
  unfold output10087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10087_skip : Flapjack.WordAlloc.isSkip output10087 = false := by
  rw [output10087_def]
  conv => lhs; cbv
  try rfl
theorem node10087_eq : Flapjack.WordAlloc.removeDeadStructural input10087 value5047 value1 value2 = (output10087, value5048, value1) := by
  rw [input10087_def, output10087_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8525 1691355743628586423#64))).val
theorem input10088_def : input10088 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8525 1691355743628586423#64)) := by
  unfold input10088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10088_def : output10088 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10088_skip : Flapjack.WordAlloc.isSkip output10088 = true := by
  rw [output10088_def]
  conv => lhs; cbv
  try rfl
theorem node10088_eq : Flapjack.WordAlloc.removeDeadStructural input10088 value5048 value1 value2 = (output10088, value5048, value1) := by
  rw [input10088_def, output10088_def]
  try (conv => lhs; cbv)
  try rfl

def value5049 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8521 8513 (Flapjack.WordRegImm.reg 8517))))).val
theorem input10089_def : input10089 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8521 8513 (Flapjack.WordRegImm.reg 8517)))) := by
  unfold input10089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8521 8513 (Flapjack.WordRegImm.reg 8517))))).val
theorem output10089_def : output10089 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8521 8513 (Flapjack.WordRegImm.reg 8517)))) := by
  unfold output10089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10089_skip : Flapjack.WordAlloc.isSkip output10089 = false := by
  rw [output10089_def]
  conv => lhs; cbv
  try rfl
theorem node10089_eq : Flapjack.WordAlloc.removeDeadStructural input10089 value5048 value1 value2 = (output10089, value5049, value1) := by
  rw [input10089_def, output10089_def]
  try (conv => lhs; cbv)
  try rfl

def value5050 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8517 2088#64))).val
theorem input10090_def : input10090 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8517 2088#64)) := by
  unfold input10090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8517 2088#64))).val
theorem output10090_def : output10090 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8517 2088#64)) := by
  unfold output10090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10090_skip : Flapjack.WordAlloc.isSkip output10090 = false := by
  rw [output10090_def]
  conv => lhs; cbv
  try rfl
theorem node10090_eq : Flapjack.WordAlloc.removeDeadStructural input10090 value5049 value1 value2 = (output10090, value5050, value1) := by
  rw [input10090_def, output10090_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10090 input10089)).val
theorem input10091_def : input10091 = (.seq input10090 input10089) := by
  unfold input10091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10090 output10089)).val
theorem output10091_def : output10091 = (.seq output10090 output10089) := by
  unfold output10091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10091_skip : Flapjack.WordAlloc.isSkip output10091 = false := by
  rw [output10091_def]
  conv => lhs; cbv
  try rfl
theorem node10091_eq : Flapjack.WordAlloc.removeDeadStructural input10091 value5048 value1 value2 = (output10091, value5050, value1) := by
  rw [input10091_def, output10091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10089_eq]
  dsimp only
  rw [node10090_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5051 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8513 (Flapjack.WordLangAddr.addr 8509 18446744073709551104#64)))).val
theorem input10092_def : input10092 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8513 (Flapjack.WordLangAddr.addr 8509 18446744073709551104#64))) := by
  unfold input10092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8513 (Flapjack.WordLangAddr.addr 8509 18446744073709551104#64)))).val
theorem output10092_def : output10092 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8513 (Flapjack.WordLangAddr.addr 8509 18446744073709551104#64))) := by
  unfold output10092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10092_skip : Flapjack.WordAlloc.isSkip output10092 = false := by
  rw [output10092_def]
  conv => lhs; cbv
  try rfl
theorem node10092_eq : Flapjack.WordAlloc.removeDeadStructural input10092 value5050 value1 value2 = (output10092, value5051, value1) := by
  rw [input10092_def, output10092_def]
  try (conv => lhs; cbv)
  try rfl

def value5052 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8509 8505)).val
theorem input10093_def : input10093 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8509 8505) := by
  unfold input10093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8509 8505)).val
theorem output10093_def : output10093 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8509 8505) := by
  unfold output10093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10093_skip : Flapjack.WordAlloc.isSkip output10093 = false := by
  rw [output10093_def]
  conv => lhs; cbv
  try rfl
theorem node10093_eq : Flapjack.WordAlloc.removeDeadStructural input10093 value5051 value1 value2 = (output10093, value5052, value1) := by
  rw [input10093_def, output10093_def]
  try (conv => lhs; cbv)
  try rfl

def value5053 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8505 8501 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10094_def : input10094 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8505 8501 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8505 8501 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10094_def : output10094 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8505 8501 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10094_skip : Flapjack.WordAlloc.isSkip output10094 = false := by
  rw [output10094_def]
  conv => lhs; cbv
  try rfl
theorem node10094_eq : Flapjack.WordAlloc.removeDeadStructural input10094 value5052 value1 value2 = (output10094, value5053, value1) := by
  rw [input10094_def, output10094_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8501 Flapjack.WordStore.heapLength)).val
theorem input10095_def : input10095 = (Flapjack.WordLangProgHOL.get 8501 Flapjack.WordStore.heapLength) := by
  unfold input10095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8501 Flapjack.WordStore.heapLength)).val
theorem output10095_def : output10095 = (Flapjack.WordLangProgHOL.get 8501 Flapjack.WordStore.heapLength) := by
  unfold output10095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10095_skip : Flapjack.WordAlloc.isSkip output10095 = false := by
  rw [output10095_def]
  conv => lhs; cbv
  try rfl
theorem node10095_eq : Flapjack.WordAlloc.removeDeadStructural input10095 value5053 value1 value2 = (output10095, value5, value1) := by
  rw [input10095_def, output10095_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10095 input10094)).val
theorem input10096_def : input10096 = (.seq input10095 input10094) := by
  unfold input10096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10095 output10094)).val
theorem output10096_def : output10096 = (.seq output10095 output10094) := by
  unfold output10096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10096_skip : Flapjack.WordAlloc.isSkip output10096 = false := by
  rw [output10096_def]
  conv => lhs; cbv
  try rfl
theorem node10096_eq : Flapjack.WordAlloc.removeDeadStructural input10096 value5052 value1 value2 = (output10096, value5, value1) := by
  rw [input10096_def, output10096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10094_eq]
  dsimp only
  rw [node10095_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10096 input10093)).val
theorem input10097_def : input10097 = (.seq input10096 input10093) := by
  unfold input10097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10096 output10093)).val
theorem output10097_def : output10097 = (.seq output10096 output10093) := by
  unfold output10097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10097_skip : Flapjack.WordAlloc.isSkip output10097 = false := by
  rw [output10097_def]
  conv => lhs; cbv
  try rfl
theorem node10097_eq : Flapjack.WordAlloc.removeDeadStructural input10097 value5051 value1 value2 = (output10097, value5, value1) := by
  rw [input10097_def, output10097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10093_eq]
  dsimp only
  rw [node10096_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10097 input10092)).val
theorem input10098_def : input10098 = (.seq input10097 input10092) := by
  unfold input10098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10097 output10092)).val
theorem output10098_def : output10098 = (.seq output10097 output10092) := by
  unfold output10098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10098_skip : Flapjack.WordAlloc.isSkip output10098 = false := by
  rw [output10098_def]
  conv => lhs; cbv
  try rfl
theorem node10098_eq : Flapjack.WordAlloc.removeDeadStructural input10098 value5050 value1 value2 = (output10098, value5, value1) := by
  rw [input10098_def, output10098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10092_eq]
  dsimp only
  rw [node10097_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10098 input10091)).val
theorem input10099_def : input10099 = (.seq input10098 input10091) := by
  unfold input10099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10098 output10091)).val
theorem output10099_def : output10099 = (.seq output10098 output10091) := by
  unfold output10099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10099_skip : Flapjack.WordAlloc.isSkip output10099 = false := by
  rw [output10099_def]
  conv => lhs; cbv
  try rfl
theorem node10099_eq : Flapjack.WordAlloc.removeDeadStructural input10099 value5048 value1 value2 = (output10099, value5, value1) := by
  rw [input10099_def, output10099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10091_eq]
  dsimp only
  rw [node10098_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5054 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8493 (Flapjack.WordLangAddr.addr 8497 0#64)))).val
theorem input10100_def : input10100 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8493 (Flapjack.WordLangAddr.addr 8497 0#64))) := by
  unfold input10100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8493 (Flapjack.WordLangAddr.addr 8497 0#64)))).val
theorem output10100_def : output10100 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8493 (Flapjack.WordLangAddr.addr 8497 0#64))) := by
  unfold output10100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10100_skip : Flapjack.WordAlloc.isSkip output10100 = false := by
  rw [output10100_def]
  conv => lhs; cbv
  try rfl
theorem node10100_eq : Flapjack.WordAlloc.removeDeadStructural input10100 value5 value1 value2 = (output10100, value5054, value1) := by
  rw [input10100_def, output10100_def]
  try (conv => lhs; cbv)
  try rfl

def value5055 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8497, 8485)])).val
theorem input10101_def : input10101 = (Flapjack.WordLangProgHOL.move 0 [(8497, 8485)]) := by
  unfold input10101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8497, 8485)])).val
theorem output10101_def : output10101 = (Flapjack.WordLangProgHOL.move 0 [(8497, 8485)]) := by
  unfold output10101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10101_skip : Flapjack.WordAlloc.isSkip output10101 = false := by
  rw [output10101_def]
  conv => lhs; cbv
  try rfl
theorem node10101_eq : Flapjack.WordAlloc.removeDeadStructural input10101 value5054 value1 value2 = (output10101, value5055, value1) := by
  rw [input10101_def, output10101_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10101 input10100)).val
theorem input10102_def : input10102 = (.seq input10101 input10100) := by
  unfold input10102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10101 output10100)).val
theorem output10102_def : output10102 = (.seq output10101 output10100) := by
  unfold output10102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10102_skip : Flapjack.WordAlloc.isSkip output10102 = false := by
  rw [output10102_def]
  conv => lhs; cbv
  try rfl
theorem node10102_eq : Flapjack.WordAlloc.removeDeadStructural input10102 value5 value1 value2 = (output10102, value5055, value1) := by
  rw [input10102_def, output10102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10100_eq]
  dsimp only
  rw [node10101_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5056 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8493 5622191986793862162#64))).val
theorem input10103_def : input10103 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8493 5622191986793862162#64)) := by
  unfold input10103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8493 5622191986793862162#64))).val
theorem output10103_def : output10103 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8493 5622191986793862162#64)) := by
  unfold output10103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10103_skip : Flapjack.WordAlloc.isSkip output10103 = false := by
  rw [output10103_def]
  conv => lhs; cbv
  try rfl
theorem node10103_eq : Flapjack.WordAlloc.removeDeadStructural input10103 value5055 value1 value2 = (output10103, value5056, value1) := by
  rw [input10103_def, output10103_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8489 5622191986793862162#64))).val
theorem input10104_def : input10104 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8489 5622191986793862162#64)) := by
  unfold input10104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10104_def : output10104 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10104_skip : Flapjack.WordAlloc.isSkip output10104 = true := by
  rw [output10104_def]
  conv => lhs; cbv
  try rfl
theorem node10104_eq : Flapjack.WordAlloc.removeDeadStructural input10104 value5056 value1 value2 = (output10104, value5056, value1) := by
  rw [input10104_def, output10104_def]
  try (conv => lhs; cbv)
  try rfl

def value5057 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8485 8477 (Flapjack.WordRegImm.reg 8481))))).val
theorem input10105_def : input10105 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8485 8477 (Flapjack.WordRegImm.reg 8481)))) := by
  unfold input10105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8485 8477 (Flapjack.WordRegImm.reg 8481))))).val
theorem output10105_def : output10105 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8485 8477 (Flapjack.WordRegImm.reg 8481)))) := by
  unfold output10105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10105_skip : Flapjack.WordAlloc.isSkip output10105 = false := by
  rw [output10105_def]
  conv => lhs; cbv
  try rfl
theorem node10105_eq : Flapjack.WordAlloc.removeDeadStructural input10105 value5056 value1 value2 = (output10105, value5057, value1) := by
  rw [input10105_def, output10105_def]
  try (conv => lhs; cbv)
  try rfl

def value5058 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8481 2080#64))).val
theorem input10106_def : input10106 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8481 2080#64)) := by
  unfold input10106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8481 2080#64))).val
theorem output10106_def : output10106 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8481 2080#64)) := by
  unfold output10106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10106_skip : Flapjack.WordAlloc.isSkip output10106 = false := by
  rw [output10106_def]
  conv => lhs; cbv
  try rfl
theorem node10106_eq : Flapjack.WordAlloc.removeDeadStructural input10106 value5057 value1 value2 = (output10106, value5058, value1) := by
  rw [input10106_def, output10106_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10106 input10105)).val
theorem input10107_def : input10107 = (.seq input10106 input10105) := by
  unfold input10107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10106 output10105)).val
theorem output10107_def : output10107 = (.seq output10106 output10105) := by
  unfold output10107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10107_skip : Flapjack.WordAlloc.isSkip output10107 = false := by
  rw [output10107_def]
  conv => lhs; cbv
  try rfl
theorem node10107_eq : Flapjack.WordAlloc.removeDeadStructural input10107 value5056 value1 value2 = (output10107, value5058, value1) := by
  rw [input10107_def, output10107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10105_eq]
  dsimp only
  rw [node10106_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5059 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8477 (Flapjack.WordLangAddr.addr 8473 18446744073709551104#64)))).val
theorem input10108_def : input10108 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8477 (Flapjack.WordLangAddr.addr 8473 18446744073709551104#64))) := by
  unfold input10108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8477 (Flapjack.WordLangAddr.addr 8473 18446744073709551104#64)))).val
theorem output10108_def : output10108 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8477 (Flapjack.WordLangAddr.addr 8473 18446744073709551104#64))) := by
  unfold output10108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10108_skip : Flapjack.WordAlloc.isSkip output10108 = false := by
  rw [output10108_def]
  conv => lhs; cbv
  try rfl
theorem node10108_eq : Flapjack.WordAlloc.removeDeadStructural input10108 value5058 value1 value2 = (output10108, value5059, value1) := by
  rw [input10108_def, output10108_def]
  try (conv => lhs; cbv)
  try rfl

def value5060 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8473 8469)).val
theorem input10109_def : input10109 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8473 8469) := by
  unfold input10109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8473 8469)).val
theorem output10109_def : output10109 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8473 8469) := by
  unfold output10109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10109_skip : Flapjack.WordAlloc.isSkip output10109 = false := by
  rw [output10109_def]
  conv => lhs; cbv
  try rfl
theorem node10109_eq : Flapjack.WordAlloc.removeDeadStructural input10109 value5059 value1 value2 = (output10109, value5060, value1) := by
  rw [input10109_def, output10109_def]
  try (conv => lhs; cbv)
  try rfl

def value5061 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8469 8465 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10110_def : input10110 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8469 8465 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8469 8465 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10110_def : output10110 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8469 8465 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10110_skip : Flapjack.WordAlloc.isSkip output10110 = false := by
  rw [output10110_def]
  conv => lhs; cbv
  try rfl
theorem node10110_eq : Flapjack.WordAlloc.removeDeadStructural input10110 value5060 value1 value2 = (output10110, value5061, value1) := by
  rw [input10110_def, output10110_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8465 Flapjack.WordStore.heapLength)).val
theorem input10111_def : input10111 = (Flapjack.WordLangProgHOL.get 8465 Flapjack.WordStore.heapLength) := by
  unfold input10111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8465 Flapjack.WordStore.heapLength)).val
theorem output10111_def : output10111 = (Flapjack.WordLangProgHOL.get 8465 Flapjack.WordStore.heapLength) := by
  unfold output10111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10111_skip : Flapjack.WordAlloc.isSkip output10111 = false := by
  rw [output10111_def]
  conv => lhs; cbv
  try rfl
theorem node10111_eq : Flapjack.WordAlloc.removeDeadStructural input10111 value5061 value1 value2 = (output10111, value5, value1) := by
  rw [input10111_def, output10111_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10111 input10110)).val
theorem input10112_def : input10112 = (.seq input10111 input10110) := by
  unfold input10112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10111 output10110)).val
theorem output10112_def : output10112 = (.seq output10111 output10110) := by
  unfold output10112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10112_skip : Flapjack.WordAlloc.isSkip output10112 = false := by
  rw [output10112_def]
  conv => lhs; cbv
  try rfl
theorem node10112_eq : Flapjack.WordAlloc.removeDeadStructural input10112 value5060 value1 value2 = (output10112, value5, value1) := by
  rw [input10112_def, output10112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10110_eq]
  dsimp only
  rw [node10111_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10112 input10109)).val
theorem input10113_def : input10113 = (.seq input10112 input10109) := by
  unfold input10113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10112 output10109)).val
theorem output10113_def : output10113 = (.seq output10112 output10109) := by
  unfold output10113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10113_skip : Flapjack.WordAlloc.isSkip output10113 = false := by
  rw [output10113_def]
  conv => lhs; cbv
  try rfl
theorem node10113_eq : Flapjack.WordAlloc.removeDeadStructural input10113 value5059 value1 value2 = (output10113, value5, value1) := by
  rw [input10113_def, output10113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10109_eq]
  dsimp only
  rw [node10112_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10113 input10108)).val
theorem input10114_def : input10114 = (.seq input10113 input10108) := by
  unfold input10114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10113 output10108)).val
theorem output10114_def : output10114 = (.seq output10113 output10108) := by
  unfold output10114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10114_skip : Flapjack.WordAlloc.isSkip output10114 = false := by
  rw [output10114_def]
  conv => lhs; cbv
  try rfl
theorem node10114_eq : Flapjack.WordAlloc.removeDeadStructural input10114 value5058 value1 value2 = (output10114, value5, value1) := by
  rw [input10114_def, output10114_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10108_eq]
  dsimp only
  rw [node10113_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10114 input10107)).val
theorem input10115_def : input10115 = (.seq input10114 input10107) := by
  unfold input10115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10114 output10107)).val
theorem output10115_def : output10115 = (.seq output10114 output10107) := by
  unfold output10115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10115_skip : Flapjack.WordAlloc.isSkip output10115 = false := by
  rw [output10115_def]
  conv => lhs; cbv
  try rfl
theorem node10115_eq : Flapjack.WordAlloc.removeDeadStructural input10115 value5056 value1 value2 = (output10115, value5, value1) := by
  rw [input10115_def, output10115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10107_eq]
  dsimp only
  rw [node10114_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5062 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8457 (Flapjack.WordLangAddr.addr 8461 0#64)))).val
theorem input10116_def : input10116 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8457 (Flapjack.WordLangAddr.addr 8461 0#64))) := by
  unfold input10116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8457 (Flapjack.WordLangAddr.addr 8461 0#64)))).val
theorem output10116_def : output10116 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8457 (Flapjack.WordLangAddr.addr 8461 0#64))) := by
  unfold output10116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10116_skip : Flapjack.WordAlloc.isSkip output10116 = false := by
  rw [output10116_def]
  conv => lhs; cbv
  try rfl
theorem node10116_eq : Flapjack.WordAlloc.removeDeadStructural input10116 value5 value1 value2 = (output10116, value5062, value1) := by
  rw [input10116_def, output10116_def]
  try (conv => lhs; cbv)
  try rfl

def value5063 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8461, 8449)])).val
theorem input10117_def : input10117 = (Flapjack.WordLangProgHOL.move 0 [(8461, 8449)]) := by
  unfold input10117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8461, 8449)])).val
theorem output10117_def : output10117 = (Flapjack.WordLangProgHOL.move 0 [(8461, 8449)]) := by
  unfold output10117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10117_skip : Flapjack.WordAlloc.isSkip output10117 = false := by
  rw [output10117_def]
  conv => lhs; cbv
  try rfl
theorem node10117_eq : Flapjack.WordAlloc.removeDeadStructural input10117 value5062 value1 value2 = (output10117, value5063, value1) := by
  rw [input10117_def, output10117_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10117 input10116)).val
theorem input10118_def : input10118 = (.seq input10117 input10116) := by
  unfold input10118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10117 output10116)).val
theorem output10118_def : output10118 = (.seq output10117 output10116) := by
  unfold output10118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10118_skip : Flapjack.WordAlloc.isSkip output10118 = false := by
  rw [output10118_def]
  conv => lhs; cbv
  try rfl
theorem node10118_eq : Flapjack.WordAlloc.removeDeadStructural input10118 value5 value1 value2 = (output10118, value5063, value1) := by
  rw [input10118_def, output10118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10116_eq]
  dsimp only
  rw [node10117_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5064 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8457 15561595211679121189#64))).val
theorem input10119_def : input10119 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8457 15561595211679121189#64)) := by
  unfold input10119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8457 15561595211679121189#64))).val
theorem output10119_def : output10119 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8457 15561595211679121189#64)) := by
  unfold output10119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10119_skip : Flapjack.WordAlloc.isSkip output10119 = false := by
  rw [output10119_def]
  conv => lhs; cbv
  try rfl
theorem node10119_eq : Flapjack.WordAlloc.removeDeadStructural input10119 value5063 value1 value2 = (output10119, value5064, value1) := by
  rw [input10119_def, output10119_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8453 15561595211679121189#64))).val
theorem input10120_def : input10120 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8453 15561595211679121189#64)) := by
  unfold input10120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10120_def : output10120 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10120_skip : Flapjack.WordAlloc.isSkip output10120 = true := by
  rw [output10120_def]
  conv => lhs; cbv
  try rfl
theorem node10120_eq : Flapjack.WordAlloc.removeDeadStructural input10120 value5064 value1 value2 = (output10120, value5064, value1) := by
  rw [input10120_def, output10120_def]
  try (conv => lhs; cbv)
  try rfl

def value5065 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8449 8441 (Flapjack.WordRegImm.reg 8445))))).val
theorem input10121_def : input10121 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8449 8441 (Flapjack.WordRegImm.reg 8445)))) := by
  unfold input10121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8449 8441 (Flapjack.WordRegImm.reg 8445))))).val
theorem output10121_def : output10121 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8449 8441 (Flapjack.WordRegImm.reg 8445)))) := by
  unfold output10121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10121_skip : Flapjack.WordAlloc.isSkip output10121 = false := by
  rw [output10121_def]
  conv => lhs; cbv
  try rfl
theorem node10121_eq : Flapjack.WordAlloc.removeDeadStructural input10121 value5064 value1 value2 = (output10121, value5065, value1) := by
  rw [input10121_def, output10121_def]
  try (conv => lhs; cbv)
  try rfl

def value5066 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8445 2072#64))).val
theorem input10122_def : input10122 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8445 2072#64)) := by
  unfold input10122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8445 2072#64))).val
theorem output10122_def : output10122 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8445 2072#64)) := by
  unfold output10122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10122_skip : Flapjack.WordAlloc.isSkip output10122 = false := by
  rw [output10122_def]
  conv => lhs; cbv
  try rfl
theorem node10122_eq : Flapjack.WordAlloc.removeDeadStructural input10122 value5065 value1 value2 = (output10122, value5066, value1) := by
  rw [input10122_def, output10122_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10122 input10121)).val
theorem input10123_def : input10123 = (.seq input10122 input10121) := by
  unfold input10123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10122 output10121)).val
theorem output10123_def : output10123 = (.seq output10122 output10121) := by
  unfold output10123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10123_skip : Flapjack.WordAlloc.isSkip output10123 = false := by
  rw [output10123_def]
  conv => lhs; cbv
  try rfl
theorem node10123_eq : Flapjack.WordAlloc.removeDeadStructural input10123 value5064 value1 value2 = (output10123, value5066, value1) := by
  rw [input10123_def, output10123_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10121_eq]
  dsimp only
  rw [node10122_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5067 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8441 (Flapjack.WordLangAddr.addr 8437 18446744073709551104#64)))).val
theorem input10124_def : input10124 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8441 (Flapjack.WordLangAddr.addr 8437 18446744073709551104#64))) := by
  unfold input10124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8441 (Flapjack.WordLangAddr.addr 8437 18446744073709551104#64)))).val
theorem output10124_def : output10124 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8441 (Flapjack.WordLangAddr.addr 8437 18446744073709551104#64))) := by
  unfold output10124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10124_skip : Flapjack.WordAlloc.isSkip output10124 = false := by
  rw [output10124_def]
  conv => lhs; cbv
  try rfl
theorem node10124_eq : Flapjack.WordAlloc.removeDeadStructural input10124 value5066 value1 value2 = (output10124, value5067, value1) := by
  rw [input10124_def, output10124_def]
  try (conv => lhs; cbv)
  try rfl

def value5068 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8437 8433)).val
theorem input10125_def : input10125 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8437 8433) := by
  unfold input10125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8437 8433)).val
theorem output10125_def : output10125 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8437 8433) := by
  unfold output10125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10125_skip : Flapjack.WordAlloc.isSkip output10125 = false := by
  rw [output10125_def]
  conv => lhs; cbv
  try rfl
theorem node10125_eq : Flapjack.WordAlloc.removeDeadStructural input10125 value5067 value1 value2 = (output10125, value5068, value1) := by
  rw [input10125_def, output10125_def]
  try (conv => lhs; cbv)
  try rfl

def value5069 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8433 8429 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10126_def : input10126 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8433 8429 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8433 8429 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10126_def : output10126 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8433 8429 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10126_skip : Flapjack.WordAlloc.isSkip output10126 = false := by
  rw [output10126_def]
  conv => lhs; cbv
  try rfl
theorem node10126_eq : Flapjack.WordAlloc.removeDeadStructural input10126 value5068 value1 value2 = (output10126, value5069, value1) := by
  rw [input10126_def, output10126_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8429 Flapjack.WordStore.heapLength)).val
theorem input10127_def : input10127 = (Flapjack.WordLangProgHOL.get 8429 Flapjack.WordStore.heapLength) := by
  unfold input10127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8429 Flapjack.WordStore.heapLength)).val
theorem output10127_def : output10127 = (Flapjack.WordLangProgHOL.get 8429 Flapjack.WordStore.heapLength) := by
  unfold output10127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10127_skip : Flapjack.WordAlloc.isSkip output10127 = false := by
  rw [output10127_def]
  conv => lhs; cbv
  try rfl
theorem node10127_eq : Flapjack.WordAlloc.removeDeadStructural input10127 value5069 value1 value2 = (output10127, value5, value1) := by
  rw [input10127_def, output10127_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10127 input10126)).val
theorem input10128_def : input10128 = (.seq input10127 input10126) := by
  unfold input10128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10127 output10126)).val
theorem output10128_def : output10128 = (.seq output10127 output10126) := by
  unfold output10128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10128_skip : Flapjack.WordAlloc.isSkip output10128 = false := by
  rw [output10128_def]
  conv => lhs; cbv
  try rfl
theorem node10128_eq : Flapjack.WordAlloc.removeDeadStructural input10128 value5068 value1 value2 = (output10128, value5, value1) := by
  rw [input10128_def, output10128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10126_eq]
  dsimp only
  rw [node10127_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10128 input10125)).val
theorem input10129_def : input10129 = (.seq input10128 input10125) := by
  unfold input10129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10128 output10125)).val
theorem output10129_def : output10129 = (.seq output10128 output10125) := by
  unfold output10129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10129_skip : Flapjack.WordAlloc.isSkip output10129 = false := by
  rw [output10129_def]
  conv => lhs; cbv
  try rfl
theorem node10129_eq : Flapjack.WordAlloc.removeDeadStructural input10129 value5067 value1 value2 = (output10129, value5, value1) := by
  rw [input10129_def, output10129_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10125_eq]
  dsimp only
  rw [node10128_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10129 input10124)).val
theorem input10130_def : input10130 = (.seq input10129 input10124) := by
  unfold input10130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10129 output10124)).val
theorem output10130_def : output10130 = (.seq output10129 output10124) := by
  unfold output10130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10130_skip : Flapjack.WordAlloc.isSkip output10130 = false := by
  rw [output10130_def]
  conv => lhs; cbv
  try rfl
theorem node10130_eq : Flapjack.WordAlloc.removeDeadStructural input10130 value5066 value1 value2 = (output10130, value5, value1) := by
  rw [input10130_def, output10130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10124_eq]
  dsimp only
  rw [node10129_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10130 input10123)).val
theorem input10131_def : input10131 = (.seq input10130 input10123) := by
  unfold input10131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10130 output10123)).val
theorem output10131_def : output10131 = (.seq output10130 output10123) := by
  unfold output10131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10131_skip : Flapjack.WordAlloc.isSkip output10131 = false := by
  rw [output10131_def]
  conv => lhs; cbv
  try rfl
theorem node10131_eq : Flapjack.WordAlloc.removeDeadStructural input10131 value5064 value1 value2 = (output10131, value5, value1) := by
  rw [input10131_def, output10131_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10123_eq]
  dsimp only
  rw [node10130_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5070 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8421 (Flapjack.WordLangAddr.addr 8425 0#64)))).val
theorem input10132_def : input10132 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8421 (Flapjack.WordLangAddr.addr 8425 0#64))) := by
  unfold input10132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8421 (Flapjack.WordLangAddr.addr 8425 0#64)))).val
theorem output10132_def : output10132 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8421 (Flapjack.WordLangAddr.addr 8425 0#64))) := by
  unfold output10132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10132_skip : Flapjack.WordAlloc.isSkip output10132 = false := by
  rw [output10132_def]
  conv => lhs; cbv
  try rfl
theorem node10132_eq : Flapjack.WordAlloc.removeDeadStructural input10132 value5 value1 value2 = (output10132, value5070, value1) := by
  rw [input10132_def, output10132_def]
  try (conv => lhs; cbv)
  try rfl

def value5071 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8425, 8413)])).val
theorem input10133_def : input10133 = (Flapjack.WordLangProgHOL.move 0 [(8425, 8413)]) := by
  unfold input10133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8425, 8413)])).val
theorem output10133_def : output10133 = (Flapjack.WordLangProgHOL.move 0 [(8425, 8413)]) := by
  unfold output10133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10133_skip : Flapjack.WordAlloc.isSkip output10133 = false := by
  rw [output10133_def]
  conv => lhs; cbv
  try rfl
theorem node10133_eq : Flapjack.WordAlloc.removeDeadStructural input10133 value5070 value1 value2 = (output10133, value5071, value1) := by
  rw [input10133_def, output10133_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10133 input10132)).val
theorem input10134_def : input10134 = (.seq input10133 input10132) := by
  unfold input10134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10133 output10132)).val
theorem output10134_def : output10134 = (.seq output10133 output10132) := by
  unfold output10134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10134_skip : Flapjack.WordAlloc.isSkip output10134 = false := by
  rw [output10134_def]
  conv => lhs; cbv
  try rfl
theorem node10134_eq : Flapjack.WordAlloc.removeDeadStructural input10134 value5 value1 value2 = (output10134, value5071, value1) := by
  rw [input10134_def, output10134_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10132_eq]
  dsimp only
  rw [node10133_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5072 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8421 17416319752018800771#64))).val
theorem input10135_def : input10135 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8421 17416319752018800771#64)) := by
  unfold input10135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8421 17416319752018800771#64))).val
theorem output10135_def : output10135 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8421 17416319752018800771#64)) := by
  unfold output10135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10135_skip : Flapjack.WordAlloc.isSkip output10135 = false := by
  rw [output10135_def]
  conv => lhs; cbv
  try rfl
theorem node10135_eq : Flapjack.WordAlloc.removeDeadStructural input10135 value5071 value1 value2 = (output10135, value5072, value1) := by
  rw [input10135_def, output10135_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8417 17416319752018800771#64))).val
theorem input10136_def : input10136 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8417 17416319752018800771#64)) := by
  unfold input10136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10136_def : output10136 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10136_skip : Flapjack.WordAlloc.isSkip output10136 = true := by
  rw [output10136_def]
  conv => lhs; cbv
  try rfl
theorem node10136_eq : Flapjack.WordAlloc.removeDeadStructural input10136 value5072 value1 value2 = (output10136, value5072, value1) := by
  rw [input10136_def, output10136_def]
  try (conv => lhs; cbv)
  try rfl

def value5073 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8413 8405 (Flapjack.WordRegImm.reg 8409))))).val
theorem input10137_def : input10137 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8413 8405 (Flapjack.WordRegImm.reg 8409)))) := by
  unfold input10137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8413 8405 (Flapjack.WordRegImm.reg 8409))))).val
theorem output10137_def : output10137 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8413 8405 (Flapjack.WordRegImm.reg 8409)))) := by
  unfold output10137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10137_skip : Flapjack.WordAlloc.isSkip output10137 = false := by
  rw [output10137_def]
  conv => lhs; cbv
  try rfl
theorem node10137_eq : Flapjack.WordAlloc.removeDeadStructural input10137 value5072 value1 value2 = (output10137, value5073, value1) := by
  rw [input10137_def, output10137_def]
  try (conv => lhs; cbv)
  try rfl

def value5074 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8409 2064#64))).val
theorem input10138_def : input10138 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8409 2064#64)) := by
  unfold input10138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8409 2064#64))).val
theorem output10138_def : output10138 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8409 2064#64)) := by
  unfold output10138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10138_skip : Flapjack.WordAlloc.isSkip output10138 = false := by
  rw [output10138_def]
  conv => lhs; cbv
  try rfl
theorem node10138_eq : Flapjack.WordAlloc.removeDeadStructural input10138 value5073 value1 value2 = (output10138, value5074, value1) := by
  rw [input10138_def, output10138_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10138 input10137)).val
theorem input10139_def : input10139 = (.seq input10138 input10137) := by
  unfold input10139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10138 output10137)).val
theorem output10139_def : output10139 = (.seq output10138 output10137) := by
  unfold output10139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10139_skip : Flapjack.WordAlloc.isSkip output10139 = false := by
  rw [output10139_def]
  conv => lhs; cbv
  try rfl
theorem node10139_eq : Flapjack.WordAlloc.removeDeadStructural input10139 value5072 value1 value2 = (output10139, value5074, value1) := by
  rw [input10139_def, output10139_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10137_eq]
  dsimp only
  rw [node10138_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5075 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8405 (Flapjack.WordLangAddr.addr 8401 18446744073709551104#64)))).val
theorem input10140_def : input10140 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8405 (Flapjack.WordLangAddr.addr 8401 18446744073709551104#64))) := by
  unfold input10140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8405 (Flapjack.WordLangAddr.addr 8401 18446744073709551104#64)))).val
theorem output10140_def : output10140 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8405 (Flapjack.WordLangAddr.addr 8401 18446744073709551104#64))) := by
  unfold output10140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10140_skip : Flapjack.WordAlloc.isSkip output10140 = false := by
  rw [output10140_def]
  conv => lhs; cbv
  try rfl
theorem node10140_eq : Flapjack.WordAlloc.removeDeadStructural input10140 value5074 value1 value2 = (output10140, value5075, value1) := by
  rw [input10140_def, output10140_def]
  try (conv => lhs; cbv)
  try rfl

def value5076 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8401 8397)).val
theorem input10141_def : input10141 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8401 8397) := by
  unfold input10141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8401 8397)).val
theorem output10141_def : output10141 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8401 8397) := by
  unfold output10141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10141_skip : Flapjack.WordAlloc.isSkip output10141 = false := by
  rw [output10141_def]
  conv => lhs; cbv
  try rfl
theorem node10141_eq : Flapjack.WordAlloc.removeDeadStructural input10141 value5075 value1 value2 = (output10141, value5076, value1) := by
  rw [input10141_def, output10141_def]
  try (conv => lhs; cbv)
  try rfl

def value5077 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8397 8393 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10142_def : input10142 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8397 8393 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8397 8393 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10142_def : output10142 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8397 8393 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10142_skip : Flapjack.WordAlloc.isSkip output10142 = false := by
  rw [output10142_def]
  conv => lhs; cbv
  try rfl
theorem node10142_eq : Flapjack.WordAlloc.removeDeadStructural input10142 value5076 value1 value2 = (output10142, value5077, value1) := by
  rw [input10142_def, output10142_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8393 Flapjack.WordStore.heapLength)).val
theorem input10143_def : input10143 = (Flapjack.WordLangProgHOL.get 8393 Flapjack.WordStore.heapLength) := by
  unfold input10143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8393 Flapjack.WordStore.heapLength)).val
theorem output10143_def : output10143 = (Flapjack.WordLangProgHOL.get 8393 Flapjack.WordStore.heapLength) := by
  unfold output10143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10143_skip : Flapjack.WordAlloc.isSkip output10143 = false := by
  rw [output10143_def]
  conv => lhs; cbv
  try rfl
theorem node10143_eq : Flapjack.WordAlloc.removeDeadStructural input10143 value5077 value1 value2 = (output10143, value5, value1) := by
  rw [input10143_def, output10143_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10143 input10142)).val
theorem input10144_def : input10144 = (.seq input10143 input10142) := by
  unfold input10144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10143 output10142)).val
theorem output10144_def : output10144 = (.seq output10143 output10142) := by
  unfold output10144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10144_skip : Flapjack.WordAlloc.isSkip output10144 = false := by
  rw [output10144_def]
  conv => lhs; cbv
  try rfl
theorem node10144_eq : Flapjack.WordAlloc.removeDeadStructural input10144 value5076 value1 value2 = (output10144, value5, value1) := by
  rw [input10144_def, output10144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10142_eq]
  dsimp only
  rw [node10143_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10144 input10141)).val
theorem input10145_def : input10145 = (.seq input10144 input10141) := by
  unfold input10145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10144 output10141)).val
theorem output10145_def : output10145 = (.seq output10144 output10141) := by
  unfold output10145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10145_skip : Flapjack.WordAlloc.isSkip output10145 = false := by
  rw [output10145_def]
  conv => lhs; cbv
  try rfl
theorem node10145_eq : Flapjack.WordAlloc.removeDeadStructural input10145 value5075 value1 value2 = (output10145, value5, value1) := by
  rw [input10145_def, output10145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10141_eq]
  dsimp only
  rw [node10144_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10145 input10140)).val
theorem input10146_def : input10146 = (.seq input10145 input10140) := by
  unfold input10146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10145 output10140)).val
theorem output10146_def : output10146 = (.seq output10145 output10140) := by
  unfold output10146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10146_skip : Flapjack.WordAlloc.isSkip output10146 = false := by
  rw [output10146_def]
  conv => lhs; cbv
  try rfl
theorem node10146_eq : Flapjack.WordAlloc.removeDeadStructural input10146 value5074 value1 value2 = (output10146, value5, value1) := by
  rw [input10146_def, output10146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10140_eq]
  dsimp only
  rw [node10145_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10146 input10139)).val
theorem input10147_def : input10147 = (.seq input10146 input10139) := by
  unfold input10147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10146 output10139)).val
theorem output10147_def : output10147 = (.seq output10146 output10139) := by
  unfold output10147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10147_skip : Flapjack.WordAlloc.isSkip output10147 = false := by
  rw [output10147_def]
  conv => lhs; cbv
  try rfl
theorem node10147_eq : Flapjack.WordAlloc.removeDeadStructural input10147 value5072 value1 value2 = (output10147, value5, value1) := by
  rw [input10147_def, output10147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10139_eq]
  dsimp only
  rw [node10146_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5078 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8385 (Flapjack.WordLangAddr.addr 8389 0#64)))).val
theorem input10148_def : input10148 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8385 (Flapjack.WordLangAddr.addr 8389 0#64))) := by
  unfold input10148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8385 (Flapjack.WordLangAddr.addr 8389 0#64)))).val
theorem output10148_def : output10148 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8385 (Flapjack.WordLangAddr.addr 8389 0#64))) := by
  unfold output10148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10148_skip : Flapjack.WordAlloc.isSkip output10148 = false := by
  rw [output10148_def]
  conv => lhs; cbv
  try rfl
theorem node10148_eq : Flapjack.WordAlloc.removeDeadStructural input10148 value5 value1 value2 = (output10148, value5078, value1) := by
  rw [input10148_def, output10148_def]
  try (conv => lhs; cbv)
  try rfl

def value5079 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8389, 8377)])).val
theorem input10149_def : input10149 = (Flapjack.WordLangProgHOL.move 0 [(8389, 8377)]) := by
  unfold input10149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8389, 8377)])).val
theorem output10149_def : output10149 = (Flapjack.WordLangProgHOL.move 0 [(8389, 8377)]) := by
  unfold output10149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10149_skip : Flapjack.WordAlloc.isSkip output10149 = false := by
  rw [output10149_def]
  conv => lhs; cbv
  try rfl
theorem node10149_eq : Flapjack.WordAlloc.removeDeadStructural input10149 value5078 value1 value2 = (output10149, value5079, value1) := by
  rw [input10149_def, output10149_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10149 input10148)).val
theorem input10150_def : input10150 = (.seq input10149 input10148) := by
  unfold input10150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10149 output10148)).val
theorem output10150_def : output10150 = (.seq output10149 output10148) := by
  unfold output10150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10150_skip : Flapjack.WordAlloc.isSkip output10150 = false := by
  rw [output10150_def]
  conv => lhs; cbv
  try rfl
theorem node10150_eq : Flapjack.WordAlloc.removeDeadStructural input10150 value5 value1 value2 = (output10150, value5079, value1) := by
  rw [input10150_def, output10150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10148_eq]
  dsimp only
  rw [node10149_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5080 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8385 5996228842464768403#64))).val
theorem input10151_def : input10151 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8385 5996228842464768403#64)) := by
  unfold input10151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8385 5996228842464768403#64))).val
theorem output10151_def : output10151 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8385 5996228842464768403#64)) := by
  unfold output10151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10151_skip : Flapjack.WordAlloc.isSkip output10151 = false := by
  rw [output10151_def]
  conv => lhs; cbv
  try rfl
theorem node10151_eq : Flapjack.WordAlloc.removeDeadStructural input10151 value5079 value1 value2 = (output10151, value5080, value1) := by
  rw [input10151_def, output10151_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8381 5996228842464768403#64))).val
theorem input10152_def : input10152 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8381 5996228842464768403#64)) := by
  unfold input10152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10152_def : output10152 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10152_skip : Flapjack.WordAlloc.isSkip output10152 = true := by
  rw [output10152_def]
  conv => lhs; cbv
  try rfl
theorem node10152_eq : Flapjack.WordAlloc.removeDeadStructural input10152 value5080 value1 value2 = (output10152, value5080, value1) := by
  rw [input10152_def, output10152_def]
  try (conv => lhs; cbv)
  try rfl

def value5081 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8377 8369 (Flapjack.WordRegImm.reg 8373))))).val
theorem input10153_def : input10153 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8377 8369 (Flapjack.WordRegImm.reg 8373)))) := by
  unfold input10153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8377 8369 (Flapjack.WordRegImm.reg 8373))))).val
theorem output10153_def : output10153 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8377 8369 (Flapjack.WordRegImm.reg 8373)))) := by
  unfold output10153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10153_skip : Flapjack.WordAlloc.isSkip output10153 = false := by
  rw [output10153_def]
  conv => lhs; cbv
  try rfl
theorem node10153_eq : Flapjack.WordAlloc.removeDeadStructural input10153 value5080 value1 value2 = (output10153, value5081, value1) := by
  rw [input10153_def, output10153_def]
  try (conv => lhs; cbv)
  try rfl

def value5082 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8373 2056#64))).val
theorem input10154_def : input10154 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8373 2056#64)) := by
  unfold input10154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8373 2056#64))).val
theorem output10154_def : output10154 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8373 2056#64)) := by
  unfold output10154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10154_skip : Flapjack.WordAlloc.isSkip output10154 = false := by
  rw [output10154_def]
  conv => lhs; cbv
  try rfl
theorem node10154_eq : Flapjack.WordAlloc.removeDeadStructural input10154 value5081 value1 value2 = (output10154, value5082, value1) := by
  rw [input10154_def, output10154_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10154 input10153)).val
theorem input10155_def : input10155 = (.seq input10154 input10153) := by
  unfold input10155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10154 output10153)).val
theorem output10155_def : output10155 = (.seq output10154 output10153) := by
  unfold output10155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10155_skip : Flapjack.WordAlloc.isSkip output10155 = false := by
  rw [output10155_def]
  conv => lhs; cbv
  try rfl
theorem node10155_eq : Flapjack.WordAlloc.removeDeadStructural input10155 value5080 value1 value2 = (output10155, value5082, value1) := by
  rw [input10155_def, output10155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10153_eq]
  dsimp only
  rw [node10154_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5083 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8369 (Flapjack.WordLangAddr.addr 8365 18446744073709551104#64)))).val
theorem input10156_def : input10156 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8369 (Flapjack.WordLangAddr.addr 8365 18446744073709551104#64))) := by
  unfold input10156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8369 (Flapjack.WordLangAddr.addr 8365 18446744073709551104#64)))).val
theorem output10156_def : output10156 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8369 (Flapjack.WordLangAddr.addr 8365 18446744073709551104#64))) := by
  unfold output10156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10156_skip : Flapjack.WordAlloc.isSkip output10156 = false := by
  rw [output10156_def]
  conv => lhs; cbv
  try rfl
theorem node10156_eq : Flapjack.WordAlloc.removeDeadStructural input10156 value5082 value1 value2 = (output10156, value5083, value1) := by
  rw [input10156_def, output10156_def]
  try (conv => lhs; cbv)
  try rfl

def value5084 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8365 8361)).val
theorem input10157_def : input10157 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8365 8361) := by
  unfold input10157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8365 8361)).val
theorem output10157_def : output10157 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8365 8361) := by
  unfold output10157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10157_skip : Flapjack.WordAlloc.isSkip output10157 = false := by
  rw [output10157_def]
  conv => lhs; cbv
  try rfl
theorem node10157_eq : Flapjack.WordAlloc.removeDeadStructural input10157 value5083 value1 value2 = (output10157, value5084, value1) := by
  rw [input10157_def, output10157_def]
  try (conv => lhs; cbv)
  try rfl

def value5085 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8361 8357 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10158_def : input10158 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8361 8357 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8361 8357 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10158_def : output10158 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8361 8357 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10158_skip : Flapjack.WordAlloc.isSkip output10158 = false := by
  rw [output10158_def]
  conv => lhs; cbv
  try rfl
theorem node10158_eq : Flapjack.WordAlloc.removeDeadStructural input10158 value5084 value1 value2 = (output10158, value5085, value1) := by
  rw [input10158_def, output10158_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8357 Flapjack.WordStore.heapLength)).val
theorem input10159_def : input10159 = (Flapjack.WordLangProgHOL.get 8357 Flapjack.WordStore.heapLength) := by
  unfold input10159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8357 Flapjack.WordStore.heapLength)).val
theorem output10159_def : output10159 = (Flapjack.WordLangProgHOL.get 8357 Flapjack.WordStore.heapLength) := by
  unfold output10159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10159_skip : Flapjack.WordAlloc.isSkip output10159 = false := by
  rw [output10159_def]
  conv => lhs; cbv
  try rfl
theorem node10159_eq : Flapjack.WordAlloc.removeDeadStructural input10159 value5085 value1 value2 = (output10159, value5, value1) := by
  rw [input10159_def, output10159_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10159 input10158)).val
theorem input10160_def : input10160 = (.seq input10159 input10158) := by
  unfold input10160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10159 output10158)).val
theorem output10160_def : output10160 = (.seq output10159 output10158) := by
  unfold output10160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10160_skip : Flapjack.WordAlloc.isSkip output10160 = false := by
  rw [output10160_def]
  conv => lhs; cbv
  try rfl
theorem node10160_eq : Flapjack.WordAlloc.removeDeadStructural input10160 value5084 value1 value2 = (output10160, value5, value1) := by
  rw [input10160_def, output10160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10158_eq]
  dsimp only
  rw [node10159_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10160 input10157)).val
theorem input10161_def : input10161 = (.seq input10160 input10157) := by
  unfold input10161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10160 output10157)).val
theorem output10161_def : output10161 = (.seq output10160 output10157) := by
  unfold output10161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10161_skip : Flapjack.WordAlloc.isSkip output10161 = false := by
  rw [output10161_def]
  conv => lhs; cbv
  try rfl
theorem node10161_eq : Flapjack.WordAlloc.removeDeadStructural input10161 value5083 value1 value2 = (output10161, value5, value1) := by
  rw [input10161_def, output10161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10157_eq]
  dsimp only
  rw [node10160_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10161 input10156)).val
theorem input10162_def : input10162 = (.seq input10161 input10156) := by
  unfold input10162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10161 output10156)).val
theorem output10162_def : output10162 = (.seq output10161 output10156) := by
  unfold output10162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10162_skip : Flapjack.WordAlloc.isSkip output10162 = false := by
  rw [output10162_def]
  conv => lhs; cbv
  try rfl
theorem node10162_eq : Flapjack.WordAlloc.removeDeadStructural input10162 value5082 value1 value2 = (output10162, value5, value1) := by
  rw [input10162_def, output10162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10156_eq]
  dsimp only
  rw [node10161_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10162 input10155)).val
theorem input10163_def : input10163 = (.seq input10162 input10155) := by
  unfold input10163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10162 output10155)).val
theorem output10163_def : output10163 = (.seq output10162 output10155) := by
  unfold output10163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10163_skip : Flapjack.WordAlloc.isSkip output10163 = false := by
  rw [output10163_def]
  conv => lhs; cbv
  try rfl
theorem node10163_eq : Flapjack.WordAlloc.removeDeadStructural input10163 value5080 value1 value2 = (output10163, value5, value1) := by
  rw [input10163_def, output10163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10155_eq]
  dsimp only
  rw [node10162_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5086 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8349 (Flapjack.WordLangAddr.addr 8353 0#64)))).val
theorem input10164_def : input10164 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8349 (Flapjack.WordLangAddr.addr 8353 0#64))) := by
  unfold input10164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8349 (Flapjack.WordLangAddr.addr 8353 0#64)))).val
theorem output10164_def : output10164 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8349 (Flapjack.WordLangAddr.addr 8353 0#64))) := by
  unfold output10164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10164_skip : Flapjack.WordAlloc.isSkip output10164 = false := by
  rw [output10164_def]
  conv => lhs; cbv
  try rfl
theorem node10164_eq : Flapjack.WordAlloc.removeDeadStructural input10164 value5 value1 value2 = (output10164, value5086, value1) := by
  rw [input10164_def, output10164_def]
  try (conv => lhs; cbv)
  try rfl

def value5087 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8353, 8341)])).val
theorem input10165_def : input10165 = (Flapjack.WordLangProgHOL.move 0 [(8353, 8341)]) := by
  unfold input10165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8353, 8341)])).val
theorem output10165_def : output10165 = (Flapjack.WordLangProgHOL.move 0 [(8353, 8341)]) := by
  unfold output10165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10165_skip : Flapjack.WordAlloc.isSkip output10165 = false := by
  rw [output10165_def]
  conv => lhs; cbv
  try rfl
theorem node10165_eq : Flapjack.WordAlloc.removeDeadStructural input10165 value5086 value1 value2 = (output10165, value5087, value1) := by
  rw [input10165_def, output10165_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10165 input10164)).val
theorem input10166_def : input10166 = (.seq input10165 input10164) := by
  unfold input10166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10165 output10164)).val
theorem output10166_def : output10166 = (.seq output10165 output10164) := by
  unfold output10166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10166_skip : Flapjack.WordAlloc.isSkip output10166 = false := by
  rw [output10166_def]
  conv => lhs; cbv
  try rfl
theorem node10166_eq : Flapjack.WordAlloc.removeDeadStructural input10166 value5 value1 value2 = (output10166, value5087, value1) := by
  rw [input10166_def, output10166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10164_eq]
  dsimp only
  rw [node10165_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5088 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8349 14245880009877842017#64))).val
theorem input10167_def : input10167 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8349 14245880009877842017#64)) := by
  unfold input10167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8349 14245880009877842017#64))).val
theorem output10167_def : output10167 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8349 14245880009877842017#64)) := by
  unfold output10167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10167_skip : Flapjack.WordAlloc.isSkip output10167 = false := by
  rw [output10167_def]
  conv => lhs; cbv
  try rfl
theorem node10167_eq : Flapjack.WordAlloc.removeDeadStructural input10167 value5087 value1 value2 = (output10167, value5088, value1) := by
  rw [input10167_def, output10167_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8345 14245880009877842017#64))).val
theorem input10168_def : input10168 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8345 14245880009877842017#64)) := by
  unfold input10168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10168_def : output10168 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10168_skip : Flapjack.WordAlloc.isSkip output10168 = true := by
  rw [output10168_def]
  conv => lhs; cbv
  try rfl
theorem node10168_eq : Flapjack.WordAlloc.removeDeadStructural input10168 value5088 value1 value2 = (output10168, value5088, value1) := by
  rw [input10168_def, output10168_def]
  try (conv => lhs; cbv)
  try rfl

def value5089 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8341 8333 (Flapjack.WordRegImm.reg 8337))))).val
theorem input10169_def : input10169 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8341 8333 (Flapjack.WordRegImm.reg 8337)))) := by
  unfold input10169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8341 8333 (Flapjack.WordRegImm.reg 8337))))).val
theorem output10169_def : output10169 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8341 8333 (Flapjack.WordRegImm.reg 8337)))) := by
  unfold output10169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10169_skip : Flapjack.WordAlloc.isSkip output10169 = false := by
  rw [output10169_def]
  conv => lhs; cbv
  try rfl
theorem node10169_eq : Flapjack.WordAlloc.removeDeadStructural input10169 value5088 value1 value2 = (output10169, value5089, value1) := by
  rw [input10169_def, output10169_def]
  try (conv => lhs; cbv)
  try rfl

def value5090 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8337 2048#64))).val
theorem input10170_def : input10170 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8337 2048#64)) := by
  unfold input10170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8337 2048#64))).val
theorem output10170_def : output10170 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8337 2048#64)) := by
  unfold output10170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10170_skip : Flapjack.WordAlloc.isSkip output10170 = false := by
  rw [output10170_def]
  conv => lhs; cbv
  try rfl
theorem node10170_eq : Flapjack.WordAlloc.removeDeadStructural input10170 value5089 value1 value2 = (output10170, value5090, value1) := by
  rw [input10170_def, output10170_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10170 input10169)).val
theorem input10171_def : input10171 = (.seq input10170 input10169) := by
  unfold input10171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10170 output10169)).val
theorem output10171_def : output10171 = (.seq output10170 output10169) := by
  unfold output10171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10171_skip : Flapjack.WordAlloc.isSkip output10171 = false := by
  rw [output10171_def]
  conv => lhs; cbv
  try rfl
theorem node10171_eq : Flapjack.WordAlloc.removeDeadStructural input10171 value5088 value1 value2 = (output10171, value5090, value1) := by
  rw [input10171_def, output10171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10169_eq]
  dsimp only
  rw [node10170_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5091 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8333 (Flapjack.WordLangAddr.addr 8329 18446744073709551104#64)))).val
theorem input10172_def : input10172 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8333 (Flapjack.WordLangAddr.addr 8329 18446744073709551104#64))) := by
  unfold input10172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8333 (Flapjack.WordLangAddr.addr 8329 18446744073709551104#64)))).val
theorem output10172_def : output10172 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8333 (Flapjack.WordLangAddr.addr 8329 18446744073709551104#64))) := by
  unfold output10172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10172_skip : Flapjack.WordAlloc.isSkip output10172 = false := by
  rw [output10172_def]
  conv => lhs; cbv
  try rfl
theorem node10172_eq : Flapjack.WordAlloc.removeDeadStructural input10172 value5090 value1 value2 = (output10172, value5091, value1) := by
  rw [input10172_def, output10172_def]
  try (conv => lhs; cbv)
  try rfl

def value5092 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8329 8325)).val
theorem input10173_def : input10173 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8329 8325) := by
  unfold input10173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8329 8325)).val
theorem output10173_def : output10173 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8329 8325) := by
  unfold output10173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10173_skip : Flapjack.WordAlloc.isSkip output10173 = false := by
  rw [output10173_def]
  conv => lhs; cbv
  try rfl
theorem node10173_eq : Flapjack.WordAlloc.removeDeadStructural input10173 value5091 value1 value2 = (output10173, value5092, value1) := by
  rw [input10173_def, output10173_def]
  try (conv => lhs; cbv)
  try rfl

def value5093 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8325 8321 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10174_def : input10174 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8325 8321 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8325 8321 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10174_def : output10174 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8325 8321 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10174_skip : Flapjack.WordAlloc.isSkip output10174 = false := by
  rw [output10174_def]
  conv => lhs; cbv
  try rfl
theorem node10174_eq : Flapjack.WordAlloc.removeDeadStructural input10174 value5092 value1 value2 = (output10174, value5093, value1) := by
  rw [input10174_def, output10174_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8321 Flapjack.WordStore.heapLength)).val
theorem input10175_def : input10175 = (Flapjack.WordLangProgHOL.get 8321 Flapjack.WordStore.heapLength) := by
  unfold input10175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8321 Flapjack.WordStore.heapLength)).val
theorem output10175_def : output10175 = (Flapjack.WordLangProgHOL.get 8321 Flapjack.WordStore.heapLength) := by
  unfold output10175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10175_skip : Flapjack.WordAlloc.isSkip output10175 = false := by
  rw [output10175_def]
  conv => lhs; cbv
  try rfl
theorem node10175_eq : Flapjack.WordAlloc.removeDeadStructural input10175 value5093 value1 value2 = (output10175, value5, value1) := by
  rw [input10175_def, output10175_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10175 input10174)).val
theorem input10176_def : input10176 = (.seq input10175 input10174) := by
  unfold input10176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10175 output10174)).val
theorem output10176_def : output10176 = (.seq output10175 output10174) := by
  unfold output10176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10176_skip : Flapjack.WordAlloc.isSkip output10176 = false := by
  rw [output10176_def]
  conv => lhs; cbv
  try rfl
theorem node10176_eq : Flapjack.WordAlloc.removeDeadStructural input10176 value5092 value1 value2 = (output10176, value5, value1) := by
  rw [input10176_def, output10176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10174_eq]
  dsimp only
  rw [node10175_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10176 input10173)).val
theorem input10177_def : input10177 = (.seq input10176 input10173) := by
  unfold input10177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10176 output10173)).val
theorem output10177_def : output10177 = (.seq output10176 output10173) := by
  unfold output10177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10177_skip : Flapjack.WordAlloc.isSkip output10177 = false := by
  rw [output10177_def]
  conv => lhs; cbv
  try rfl
theorem node10177_eq : Flapjack.WordAlloc.removeDeadStructural input10177 value5091 value1 value2 = (output10177, value5, value1) := by
  rw [input10177_def, output10177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10173_eq]
  dsimp only
  rw [node10176_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10177 input10172)).val
theorem input10178_def : input10178 = (.seq input10177 input10172) := by
  unfold input10178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10177 output10172)).val
theorem output10178_def : output10178 = (.seq output10177 output10172) := by
  unfold output10178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10178_skip : Flapjack.WordAlloc.isSkip output10178 = false := by
  rw [output10178_def]
  conv => lhs; cbv
  try rfl
theorem node10178_eq : Flapjack.WordAlloc.removeDeadStructural input10178 value5090 value1 value2 = (output10178, value5, value1) := by
  rw [input10178_def, output10178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10172_eq]
  dsimp only
  rw [node10177_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10178 input10171)).val
theorem input10179_def : input10179 = (.seq input10178 input10171) := by
  unfold input10179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10178 output10171)).val
theorem output10179_def : output10179 = (.seq output10178 output10171) := by
  unfold output10179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10179_skip : Flapjack.WordAlloc.isSkip output10179 = false := by
  rw [output10179_def]
  conv => lhs; cbv
  try rfl
theorem node10179_eq : Flapjack.WordAlloc.removeDeadStructural input10179 value5088 value1 value2 = (output10179, value5, value1) := by
  rw [input10179_def, output10179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10171_eq]
  dsimp only
  rw [node10178_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5094 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8313 (Flapjack.WordLangAddr.addr 8317 0#64)))).val
theorem input10180_def : input10180 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8313 (Flapjack.WordLangAddr.addr 8317 0#64))) := by
  unfold input10180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8313 (Flapjack.WordLangAddr.addr 8317 0#64)))).val
theorem output10180_def : output10180 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8313 (Flapjack.WordLangAddr.addr 8317 0#64))) := by
  unfold output10180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10180_skip : Flapjack.WordAlloc.isSkip output10180 = false := by
  rw [output10180_def]
  conv => lhs; cbv
  try rfl
theorem node10180_eq : Flapjack.WordAlloc.removeDeadStructural input10180 value5 value1 value2 = (output10180, value5094, value1) := by
  rw [input10180_def, output10180_def]
  try (conv => lhs; cbv)
  try rfl

def value5095 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8317, 8305)])).val
theorem input10181_def : input10181 = (Flapjack.WordLangProgHOL.move 0 [(8317, 8305)]) := by
  unfold input10181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8317, 8305)])).val
theorem output10181_def : output10181 = (Flapjack.WordLangProgHOL.move 0 [(8317, 8305)]) := by
  unfold output10181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10181_skip : Flapjack.WordAlloc.isSkip output10181 = false := by
  rw [output10181_def]
  conv => lhs; cbv
  try rfl
theorem node10181_eq : Flapjack.WordAlloc.removeDeadStructural input10181 value5094 value1 value2 = (output10181, value5095, value1) := by
  rw [input10181_def, output10181_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10181 input10180)).val
theorem input10182_def : input10182 = (.seq input10181 input10180) := by
  unfold input10182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10181 output10180)).val
theorem output10182_def : output10182 = (.seq output10181 output10180) := by
  unfold output10182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10182_skip : Flapjack.WordAlloc.isSkip output10182 = false := by
  rw [output10182_def]
  conv => lhs; cbv
  try rfl
theorem node10182_eq : Flapjack.WordAlloc.removeDeadStructural input10182 value5 value1 value2 = (output10182, value5095, value1) := by
  rw [input10182_def, output10182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10180_eq]
  dsimp only
  rw [node10181_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5096 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8313 960393023080265964#64))).val
theorem input10183_def : input10183 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8313 960393023080265964#64)) := by
  unfold input10183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8313 960393023080265964#64))).val
theorem output10183_def : output10183 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8313 960393023080265964#64)) := by
  unfold output10183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10183_skip : Flapjack.WordAlloc.isSkip output10183 = false := by
  rw [output10183_def]
  conv => lhs; cbv
  try rfl
theorem node10183_eq : Flapjack.WordAlloc.removeDeadStructural input10183 value5095 value1 value2 = (output10183, value5096, value1) := by
  rw [input10183_def, output10183_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8309 960393023080265964#64))).val
theorem input10184_def : input10184 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8309 960393023080265964#64)) := by
  unfold input10184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10184_def : output10184 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10184_skip : Flapjack.WordAlloc.isSkip output10184 = true := by
  rw [output10184_def]
  conv => lhs; cbv
  try rfl
theorem node10184_eq : Flapjack.WordAlloc.removeDeadStructural input10184 value5096 value1 value2 = (output10184, value5096, value1) := by
  rw [input10184_def, output10184_def]
  try (conv => lhs; cbv)
  try rfl

def value5097 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8305 8301 (Flapjack.WordRegImm.imm 2040#64))))).val
theorem input10185_def : input10185 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8305 8301 (Flapjack.WordRegImm.imm 2040#64)))) := by
  unfold input10185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8305 8301 (Flapjack.WordRegImm.imm 2040#64))))).val
theorem output10185_def : output10185 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8305 8301 (Flapjack.WordRegImm.imm 2040#64)))) := by
  unfold output10185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10185_skip : Flapjack.WordAlloc.isSkip output10185 = false := by
  rw [output10185_def]
  conv => lhs; cbv
  try rfl
theorem node10185_eq : Flapjack.WordAlloc.removeDeadStructural input10185 value5096 value1 value2 = (output10185, value5097, value1) := by
  rw [input10185_def, output10185_def]
  try (conv => lhs; cbv)
  try rfl

def value5098 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8301 (Flapjack.WordLangAddr.addr 8297 18446744073709551104#64)))).val
theorem input10186_def : input10186 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8301 (Flapjack.WordLangAddr.addr 8297 18446744073709551104#64))) := by
  unfold input10186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8301 (Flapjack.WordLangAddr.addr 8297 18446744073709551104#64)))).val
theorem output10186_def : output10186 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8301 (Flapjack.WordLangAddr.addr 8297 18446744073709551104#64))) := by
  unfold output10186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10186_skip : Flapjack.WordAlloc.isSkip output10186 = false := by
  rw [output10186_def]
  conv => lhs; cbv
  try rfl
theorem node10186_eq : Flapjack.WordAlloc.removeDeadStructural input10186 value5097 value1 value2 = (output10186, value5098, value1) := by
  rw [input10186_def, output10186_def]
  try (conv => lhs; cbv)
  try rfl

def value5099 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8297 8293)).val
theorem input10187_def : input10187 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8297 8293) := by
  unfold input10187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8297 8293)).val
theorem output10187_def : output10187 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8297 8293) := by
  unfold output10187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10187_skip : Flapjack.WordAlloc.isSkip output10187 = false := by
  rw [output10187_def]
  conv => lhs; cbv
  try rfl
theorem node10187_eq : Flapjack.WordAlloc.removeDeadStructural input10187 value5098 value1 value2 = (output10187, value5099, value1) := by
  rw [input10187_def, output10187_def]
  try (conv => lhs; cbv)
  try rfl

def value5100 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8293 8289 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10188_def : input10188 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8293 8289 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8293 8289 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10188_def : output10188 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8293 8289 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10188_skip : Flapjack.WordAlloc.isSkip output10188 = false := by
  rw [output10188_def]
  conv => lhs; cbv
  try rfl
theorem node10188_eq : Flapjack.WordAlloc.removeDeadStructural input10188 value5099 value1 value2 = (output10188, value5100, value1) := by
  rw [input10188_def, output10188_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8289 Flapjack.WordStore.heapLength)).val
theorem input10189_def : input10189 = (Flapjack.WordLangProgHOL.get 8289 Flapjack.WordStore.heapLength) := by
  unfold input10189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8289 Flapjack.WordStore.heapLength)).val
theorem output10189_def : output10189 = (Flapjack.WordLangProgHOL.get 8289 Flapjack.WordStore.heapLength) := by
  unfold output10189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10189_skip : Flapjack.WordAlloc.isSkip output10189 = false := by
  rw [output10189_def]
  conv => lhs; cbv
  try rfl
theorem node10189_eq : Flapjack.WordAlloc.removeDeadStructural input10189 value5100 value1 value2 = (output10189, value5, value1) := by
  rw [input10189_def, output10189_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10189 input10188)).val
theorem input10190_def : input10190 = (.seq input10189 input10188) := by
  unfold input10190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10189 output10188)).val
theorem output10190_def : output10190 = (.seq output10189 output10188) := by
  unfold output10190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10190_skip : Flapjack.WordAlloc.isSkip output10190 = false := by
  rw [output10190_def]
  conv => lhs; cbv
  try rfl
theorem node10190_eq : Flapjack.WordAlloc.removeDeadStructural input10190 value5099 value1 value2 = (output10190, value5, value1) := by
  rw [input10190_def, output10190_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10188_eq]
  dsimp only
  rw [node10189_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10190 input10187)).val
theorem input10191_def : input10191 = (.seq input10190 input10187) := by
  unfold input10191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10190 output10187)).val
theorem output10191_def : output10191 = (.seq output10190 output10187) := by
  unfold output10191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10191_skip : Flapjack.WordAlloc.isSkip output10191 = false := by
  rw [output10191_def]
  conv => lhs; cbv
  try rfl
theorem node10191_eq : Flapjack.WordAlloc.removeDeadStructural input10191 value5098 value1 value2 = (output10191, value5, value1) := by
  rw [input10191_def, output10191_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10187_eq]
  dsimp only
  rw [node10190_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10191 input10186)).val
theorem input10192_def : input10192 = (.seq input10191 input10186) := by
  unfold input10192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10191 output10186)).val
theorem output10192_def : output10192 = (.seq output10191 output10186) := by
  unfold output10192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10192_skip : Flapjack.WordAlloc.isSkip output10192 = false := by
  rw [output10192_def]
  conv => lhs; cbv
  try rfl
theorem node10192_eq : Flapjack.WordAlloc.removeDeadStructural input10192 value5097 value1 value2 = (output10192, value5, value1) := by
  rw [input10192_def, output10192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10186_eq]
  dsimp only
  rw [node10191_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10192 input10185)).val
theorem input10193_def : input10193 = (.seq input10192 input10185) := by
  unfold input10193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10192 output10185)).val
theorem output10193_def : output10193 = (.seq output10192 output10185) := by
  unfold output10193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10193_skip : Flapjack.WordAlloc.isSkip output10193 = false := by
  rw [output10193_def]
  conv => lhs; cbv
  try rfl
theorem node10193_eq : Flapjack.WordAlloc.removeDeadStructural input10193 value5096 value1 value2 = (output10193, value5, value1) := by
  rw [input10193_def, output10193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10185_eq]
  dsimp only
  rw [node10192_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5101 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8281 (Flapjack.WordLangAddr.addr 8285 0#64)))).val
theorem input10194_def : input10194 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8281 (Flapjack.WordLangAddr.addr 8285 0#64))) := by
  unfold input10194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8281 (Flapjack.WordLangAddr.addr 8285 0#64)))).val
theorem output10194_def : output10194 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8281 (Flapjack.WordLangAddr.addr 8285 0#64))) := by
  unfold output10194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10194_skip : Flapjack.WordAlloc.isSkip output10194 = false := by
  rw [output10194_def]
  conv => lhs; cbv
  try rfl
theorem node10194_eq : Flapjack.WordAlloc.removeDeadStructural input10194 value5 value1 value2 = (output10194, value5101, value1) := by
  rw [input10194_def, output10194_def]
  try (conv => lhs; cbv)
  try rfl

def value5102 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8285, 8273)])).val
theorem input10195_def : input10195 = (Flapjack.WordLangProgHOL.move 0 [(8285, 8273)]) := by
  unfold input10195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8285, 8273)])).val
theorem output10195_def : output10195 = (Flapjack.WordLangProgHOL.move 0 [(8285, 8273)]) := by
  unfold output10195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10195_skip : Flapjack.WordAlloc.isSkip output10195 = false := by
  rw [output10195_def]
  conv => lhs; cbv
  try rfl
theorem node10195_eq : Flapjack.WordAlloc.removeDeadStructural input10195 value5101 value1 value2 = (output10195, value5102, value1) := by
  rw [input10195_def, output10195_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10195 input10194)).val
theorem input10196_def : input10196 = (.seq input10195 input10194) := by
  unfold input10196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10195 output10194)).val
theorem output10196_def : output10196 = (.seq output10195 output10194) := by
  unfold output10196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10196_skip : Flapjack.WordAlloc.isSkip output10196 = false := by
  rw [output10196_def]
  conv => lhs; cbv
  try rfl
theorem node10196_eq : Flapjack.WordAlloc.removeDeadStructural input10196 value5 value1 value2 = (output10196, value5102, value1) := by
  rw [input10196_def, output10196_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10194_eq]
  dsimp only
  rw [node10195_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5103 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8281 2094253841180170779#64))).val
theorem input10197_def : input10197 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8281 2094253841180170779#64)) := by
  unfold input10197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8281 2094253841180170779#64))).val
theorem output10197_def : output10197 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8281 2094253841180170779#64)) := by
  unfold output10197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10197_skip : Flapjack.WordAlloc.isSkip output10197 = false := by
  rw [output10197_def]
  conv => lhs; cbv
  try rfl
theorem node10197_eq : Flapjack.WordAlloc.removeDeadStructural input10197 value5102 value1 value2 = (output10197, value5103, value1) := by
  rw [input10197_def, output10197_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8277 2094253841180170779#64))).val
theorem input10198_def : input10198 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8277 2094253841180170779#64)) := by
  unfold input10198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10198_def : output10198 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10198_skip : Flapjack.WordAlloc.isSkip output10198 = true := by
  rw [output10198_def]
  conv => lhs; cbv
  try rfl
theorem node10198_eq : Flapjack.WordAlloc.removeDeadStructural input10198 value5103 value1 value2 = (output10198, value5103, value1) := by
  rw [input10198_def, output10198_def]
  try (conv => lhs; cbv)
  try rfl

def value5104 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8273 8269 (Flapjack.WordRegImm.imm 2032#64))))).val
theorem input10199_def : input10199 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8273 8269 (Flapjack.WordRegImm.imm 2032#64)))) := by
  unfold input10199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8273 8269 (Flapjack.WordRegImm.imm 2032#64))))).val
theorem output10199_def : output10199 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8273 8269 (Flapjack.WordRegImm.imm 2032#64)))) := by
  unfold output10199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10199_skip : Flapjack.WordAlloc.isSkip output10199 = false := by
  rw [output10199_def]
  conv => lhs; cbv
  try rfl
theorem node10199_eq : Flapjack.WordAlloc.removeDeadStructural input10199 value5103 value1 value2 = (output10199, value5104, value1) := by
  rw [input10199_def, output10199_def]
  try (conv => lhs; cbv)
  try rfl

def value5105 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8269 (Flapjack.WordLangAddr.addr 8265 18446744073709551104#64)))).val
theorem input10200_def : input10200 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8269 (Flapjack.WordLangAddr.addr 8265 18446744073709551104#64))) := by
  unfold input10200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8269 (Flapjack.WordLangAddr.addr 8265 18446744073709551104#64)))).val
theorem output10200_def : output10200 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8269 (Flapjack.WordLangAddr.addr 8265 18446744073709551104#64))) := by
  unfold output10200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10200_skip : Flapjack.WordAlloc.isSkip output10200 = false := by
  rw [output10200_def]
  conv => lhs; cbv
  try rfl
theorem node10200_eq : Flapjack.WordAlloc.removeDeadStructural input10200 value5104 value1 value2 = (output10200, value5105, value1) := by
  rw [input10200_def, output10200_def]
  try (conv => lhs; cbv)
  try rfl

def value5106 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8265 8261)).val
theorem input10201_def : input10201 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8265 8261) := by
  unfold input10201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8265 8261)).val
theorem output10201_def : output10201 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8265 8261) := by
  unfold output10201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10201_skip : Flapjack.WordAlloc.isSkip output10201 = false := by
  rw [output10201_def]
  conv => lhs; cbv
  try rfl
theorem node10201_eq : Flapjack.WordAlloc.removeDeadStructural input10201 value5105 value1 value2 = (output10201, value5106, value1) := by
  rw [input10201_def, output10201_def]
  try (conv => lhs; cbv)
  try rfl

def value5107 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8261 8257 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10202_def : input10202 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8261 8257 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8261 8257 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10202_def : output10202 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8261 8257 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10202_skip : Flapjack.WordAlloc.isSkip output10202 = false := by
  rw [output10202_def]
  conv => lhs; cbv
  try rfl
theorem node10202_eq : Flapjack.WordAlloc.removeDeadStructural input10202 value5106 value1 value2 = (output10202, value5107, value1) := by
  rw [input10202_def, output10202_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8257 Flapjack.WordStore.heapLength)).val
theorem input10203_def : input10203 = (Flapjack.WordLangProgHOL.get 8257 Flapjack.WordStore.heapLength) := by
  unfold input10203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8257 Flapjack.WordStore.heapLength)).val
theorem output10203_def : output10203 = (Flapjack.WordLangProgHOL.get 8257 Flapjack.WordStore.heapLength) := by
  unfold output10203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10203_skip : Flapjack.WordAlloc.isSkip output10203 = false := by
  rw [output10203_def]
  conv => lhs; cbv
  try rfl
theorem node10203_eq : Flapjack.WordAlloc.removeDeadStructural input10203 value5107 value1 value2 = (output10203, value5, value1) := by
  rw [input10203_def, output10203_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10203 input10202)).val
theorem input10204_def : input10204 = (.seq input10203 input10202) := by
  unfold input10204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10203 output10202)).val
theorem output10204_def : output10204 = (.seq output10203 output10202) := by
  unfold output10204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10204_skip : Flapjack.WordAlloc.isSkip output10204 = false := by
  rw [output10204_def]
  conv => lhs; cbv
  try rfl
theorem node10204_eq : Flapjack.WordAlloc.removeDeadStructural input10204 value5106 value1 value2 = (output10204, value5, value1) := by
  rw [input10204_def, output10204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10202_eq]
  dsimp only
  rw [node10203_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10204 input10201)).val
theorem input10205_def : input10205 = (.seq input10204 input10201) := by
  unfold input10205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10204 output10201)).val
theorem output10205_def : output10205 = (.seq output10204 output10201) := by
  unfold output10205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10205_skip : Flapjack.WordAlloc.isSkip output10205 = false := by
  rw [output10205_def]
  conv => lhs; cbv
  try rfl
theorem node10205_eq : Flapjack.WordAlloc.removeDeadStructural input10205 value5105 value1 value2 = (output10205, value5, value1) := by
  rw [input10205_def, output10205_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10201_eq]
  dsimp only
  rw [node10204_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10205 input10200)).val
theorem input10206_def : input10206 = (.seq input10205 input10200) := by
  unfold input10206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10205 output10200)).val
theorem output10206_def : output10206 = (.seq output10205 output10200) := by
  unfold output10206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10206_skip : Flapjack.WordAlloc.isSkip output10206 = false := by
  rw [output10206_def]
  conv => lhs; cbv
  try rfl
theorem node10206_eq : Flapjack.WordAlloc.removeDeadStructural input10206 value5104 value1 value2 = (output10206, value5, value1) := by
  rw [input10206_def, output10206_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10200_eq]
  dsimp only
  rw [node10205_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10206 input10199)).val
theorem input10207_def : input10207 = (.seq input10206 input10199) := by
  unfold input10207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10206 output10199)).val
theorem output10207_def : output10207 = (.seq output10206 output10199) := by
  unfold output10207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10207_skip : Flapjack.WordAlloc.isSkip output10207 = false := by
  rw [output10207_def]
  conv => lhs; cbv
  try rfl
theorem node10207_eq : Flapjack.WordAlloc.removeDeadStructural input10207 value5103 value1 value2 = (output10207, value5, value1) := by
  rw [input10207_def, output10207_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10199_eq]
  dsimp only
  rw [node10206_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5108 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8249 (Flapjack.WordLangAddr.addr 8253 0#64)))).val
theorem input10208_def : input10208 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8249 (Flapjack.WordLangAddr.addr 8253 0#64))) := by
  unfold input10208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8249 (Flapjack.WordLangAddr.addr 8253 0#64)))).val
theorem output10208_def : output10208 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8249 (Flapjack.WordLangAddr.addr 8253 0#64))) := by
  unfold output10208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10208_skip : Flapjack.WordAlloc.isSkip output10208 = false := by
  rw [output10208_def]
  conv => lhs; cbv
  try rfl
theorem node10208_eq : Flapjack.WordAlloc.removeDeadStructural input10208 value5 value1 value2 = (output10208, value5108, value1) := by
  rw [input10208_def, output10208_def]
  try (conv => lhs; cbv)
  try rfl

def value5109 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8253, 8241)])).val
theorem input10209_def : input10209 = (Flapjack.WordLangProgHOL.move 0 [(8253, 8241)]) := by
  unfold input10209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8253, 8241)])).val
theorem output10209_def : output10209 = (Flapjack.WordLangProgHOL.move 0 [(8253, 8241)]) := by
  unfold output10209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10209_skip : Flapjack.WordAlloc.isSkip output10209 = false := by
  rw [output10209_def]
  conv => lhs; cbv
  try rfl
theorem node10209_eq : Flapjack.WordAlloc.removeDeadStructural input10209 value5108 value1 value2 = (output10209, value5109, value1) := by
  rw [input10209_def, output10209_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10209 input10208)).val
theorem input10210_def : input10210 = (.seq input10209 input10208) := by
  unfold input10210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10209 output10208)).val
theorem output10210_def : output10210 = (.seq output10209 output10208) := by
  unfold output10210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10210_skip : Flapjack.WordAlloc.isSkip output10210 = false := by
  rw [output10210_def]
  conv => lhs; cbv
  try rfl
theorem node10210_eq : Flapjack.WordAlloc.removeDeadStructural input10210 value5 value1 value2 = (output10210, value5109, value1) := by
  rw [input10210_def, output10210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10208_eq]
  dsimp only
  rw [node10209_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5110 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8249 14844748873776858085#64))).val
theorem input10211_def : input10211 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8249 14844748873776858085#64)) := by
  unfold input10211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8249 14844748873776858085#64))).val
theorem output10211_def : output10211 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8249 14844748873776858085#64)) := by
  unfold output10211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10211_skip : Flapjack.WordAlloc.isSkip output10211 = false := by
  rw [output10211_def]
  conv => lhs; cbv
  try rfl
theorem node10211_eq : Flapjack.WordAlloc.removeDeadStructural input10211 value5109 value1 value2 = (output10211, value5110, value1) := by
  rw [input10211_def, output10211_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8245 14844748873776858085#64))).val
theorem input10212_def : input10212 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8245 14844748873776858085#64)) := by
  unfold input10212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10212_def : output10212 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10212_skip : Flapjack.WordAlloc.isSkip output10212 = true := by
  rw [output10212_def]
  conv => lhs; cbv
  try rfl
theorem node10212_eq : Flapjack.WordAlloc.removeDeadStructural input10212 value5110 value1 value2 = (output10212, value5110, value1) := by
  rw [input10212_def, output10212_def]
  try (conv => lhs; cbv)
  try rfl

def value5111 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8241 8237 (Flapjack.WordRegImm.imm 2024#64))))).val
theorem input10213_def : input10213 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8241 8237 (Flapjack.WordRegImm.imm 2024#64)))) := by
  unfold input10213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8241 8237 (Flapjack.WordRegImm.imm 2024#64))))).val
theorem output10213_def : output10213 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8241 8237 (Flapjack.WordRegImm.imm 2024#64)))) := by
  unfold output10213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10213_skip : Flapjack.WordAlloc.isSkip output10213 = false := by
  rw [output10213_def]
  conv => lhs; cbv
  try rfl
theorem node10213_eq : Flapjack.WordAlloc.removeDeadStructural input10213 value5110 value1 value2 = (output10213, value5111, value1) := by
  rw [input10213_def, output10213_def]
  try (conv => lhs; cbv)
  try rfl

def value5112 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8237 (Flapjack.WordLangAddr.addr 8233 18446744073709551104#64)))).val
theorem input10214_def : input10214 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8237 (Flapjack.WordLangAddr.addr 8233 18446744073709551104#64))) := by
  unfold input10214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8237 (Flapjack.WordLangAddr.addr 8233 18446744073709551104#64)))).val
theorem output10214_def : output10214 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8237 (Flapjack.WordLangAddr.addr 8233 18446744073709551104#64))) := by
  unfold output10214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10214_skip : Flapjack.WordAlloc.isSkip output10214 = false := by
  rw [output10214_def]
  conv => lhs; cbv
  try rfl
theorem node10214_eq : Flapjack.WordAlloc.removeDeadStructural input10214 value5111 value1 value2 = (output10214, value5112, value1) := by
  rw [input10214_def, output10214_def]
  try (conv => lhs; cbv)
  try rfl

def value5113 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8233 8229)).val
theorem input10215_def : input10215 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8233 8229) := by
  unfold input10215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8233 8229)).val
theorem output10215_def : output10215 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8233 8229) := by
  unfold output10215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10215_skip : Flapjack.WordAlloc.isSkip output10215 = false := by
  rw [output10215_def]
  conv => lhs; cbv
  try rfl
theorem node10215_eq : Flapjack.WordAlloc.removeDeadStructural input10215 value5112 value1 value2 = (output10215, value5113, value1) := by
  rw [input10215_def, output10215_def]
  try (conv => lhs; cbv)
  try rfl

def value5114 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8229 8225 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10216_def : input10216 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8229 8225 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8229 8225 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10216_def : output10216 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8229 8225 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10216_skip : Flapjack.WordAlloc.isSkip output10216 = false := by
  rw [output10216_def]
  conv => lhs; cbv
  try rfl
theorem node10216_eq : Flapjack.WordAlloc.removeDeadStructural input10216 value5113 value1 value2 = (output10216, value5114, value1) := by
  rw [input10216_def, output10216_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8225 Flapjack.WordStore.heapLength)).val
theorem input10217_def : input10217 = (Flapjack.WordLangProgHOL.get 8225 Flapjack.WordStore.heapLength) := by
  unfold input10217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8225 Flapjack.WordStore.heapLength)).val
theorem output10217_def : output10217 = (Flapjack.WordLangProgHOL.get 8225 Flapjack.WordStore.heapLength) := by
  unfold output10217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10217_skip : Flapjack.WordAlloc.isSkip output10217 = false := by
  rw [output10217_def]
  conv => lhs; cbv
  try rfl
theorem node10217_eq : Flapjack.WordAlloc.removeDeadStructural input10217 value5114 value1 value2 = (output10217, value5, value1) := by
  rw [input10217_def, output10217_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10217 input10216)).val
theorem input10218_def : input10218 = (.seq input10217 input10216) := by
  unfold input10218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10217 output10216)).val
theorem output10218_def : output10218 = (.seq output10217 output10216) := by
  unfold output10218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10218_skip : Flapjack.WordAlloc.isSkip output10218 = false := by
  rw [output10218_def]
  conv => lhs; cbv
  try rfl
theorem node10218_eq : Flapjack.WordAlloc.removeDeadStructural input10218 value5113 value1 value2 = (output10218, value5, value1) := by
  rw [input10218_def, output10218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10216_eq]
  dsimp only
  rw [node10217_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10218 input10215)).val
theorem input10219_def : input10219 = (.seq input10218 input10215) := by
  unfold input10219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10218 output10215)).val
theorem output10219_def : output10219 = (.seq output10218 output10215) := by
  unfold output10219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10219_skip : Flapjack.WordAlloc.isSkip output10219 = false := by
  rw [output10219_def]
  conv => lhs; cbv
  try rfl
theorem node10219_eq : Flapjack.WordAlloc.removeDeadStructural input10219 value5112 value1 value2 = (output10219, value5, value1) := by
  rw [input10219_def, output10219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10215_eq]
  dsimp only
  rw [node10218_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10219 input10214)).val
theorem input10220_def : input10220 = (.seq input10219 input10214) := by
  unfold input10220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10219 output10214)).val
theorem output10220_def : output10220 = (.seq output10219 output10214) := by
  unfold output10220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10220_skip : Flapjack.WordAlloc.isSkip output10220 = false := by
  rw [output10220_def]
  conv => lhs; cbv
  try rfl
theorem node10220_eq : Flapjack.WordAlloc.removeDeadStructural input10220 value5111 value1 value2 = (output10220, value5, value1) := by
  rw [input10220_def, output10220_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10214_eq]
  dsimp only
  rw [node10219_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10220 input10213)).val
theorem input10221_def : input10221 = (.seq input10220 input10213) := by
  unfold input10221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10220 output10213)).val
theorem output10221_def : output10221 = (.seq output10220 output10213) := by
  unfold output10221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10221_skip : Flapjack.WordAlloc.isSkip output10221 = false := by
  rw [output10221_def]
  conv => lhs; cbv
  try rfl
theorem node10221_eq : Flapjack.WordAlloc.removeDeadStructural input10221 value5110 value1 value2 = (output10221, value5, value1) := by
  rw [input10221_def, output10221_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10213_eq]
  dsimp only
  rw [node10220_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5115 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8217 (Flapjack.WordLangAddr.addr 8221 0#64)))).val
theorem input10222_def : input10222 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8217 (Flapjack.WordLangAddr.addr 8221 0#64))) := by
  unfold input10222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8217 (Flapjack.WordLangAddr.addr 8221 0#64)))).val
theorem output10222_def : output10222 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8217 (Flapjack.WordLangAddr.addr 8221 0#64))) := by
  unfold output10222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10222_skip : Flapjack.WordAlloc.isSkip output10222 = false := by
  rw [output10222_def]
  conv => lhs; cbv
  try rfl
theorem node10222_eq : Flapjack.WordAlloc.removeDeadStructural input10222 value5 value1 value2 = (output10222, value5115, value1) := by
  rw [input10222_def, output10222_def]
  try (conv => lhs; cbv)
  try rfl

def value5116 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8221, 8209)])).val
theorem input10223_def : input10223 = (Flapjack.WordLangProgHOL.move 0 [(8221, 8209)]) := by
  unfold input10223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8221, 8209)])).val
theorem output10223_def : output10223 = (Flapjack.WordLangProgHOL.move 0 [(8221, 8209)]) := by
  unfold output10223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10223_skip : Flapjack.WordAlloc.isSkip output10223 = false := by
  rw [output10223_def]
  conv => lhs; cbv
  try rfl
theorem node10223_eq : Flapjack.WordAlloc.removeDeadStructural input10223 value5115 value1 value2 = (output10223, value5116, value1) := by
  rw [input10223_def, output10223_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10223 input10222)).val
theorem input10224_def : input10224 = (.seq input10223 input10222) := by
  unfold input10224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10223 output10222)).val
theorem output10224_def : output10224 = (.seq output10223 output10222) := by
  unfold output10224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10224_skip : Flapjack.WordAlloc.isSkip output10224 = false := by
  rw [output10224_def]
  conv => lhs; cbv
  try rfl
theorem node10224_eq : Flapjack.WordAlloc.removeDeadStructural input10224 value5 value1 value2 = (output10224, value5116, value1) := by
  rw [input10224_def, output10224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10222_eq]
  dsimp only
  rw [node10223_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5117 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8217 7528018573573808732#64))).val
theorem input10225_def : input10225 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8217 7528018573573808732#64)) := by
  unfold input10225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8217 7528018573573808732#64))).val
theorem output10225_def : output10225 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8217 7528018573573808732#64)) := by
  unfold output10225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10225_skip : Flapjack.WordAlloc.isSkip output10225 = false := by
  rw [output10225_def]
  conv => lhs; cbv
  try rfl
theorem node10225_eq : Flapjack.WordAlloc.removeDeadStructural input10225 value5116 value1 value2 = (output10225, value5117, value1) := by
  rw [input10225_def, output10225_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8213 7528018573573808732#64))).val
theorem input10226_def : input10226 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8213 7528018573573808732#64)) := by
  unfold input10226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output10226_def : output10226 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output10226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10226_skip : Flapjack.WordAlloc.isSkip output10226 = true := by
  rw [output10226_def]
  conv => lhs; cbv
  try rfl
theorem node10226_eq : Flapjack.WordAlloc.removeDeadStructural input10226 value5117 value1 value2 = (output10226, value5117, value1) := by
  rw [input10226_def, output10226_def]
  try (conv => lhs; cbv)
  try rfl

def value5118 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8209 8205 (Flapjack.WordRegImm.imm 2016#64))))).val
theorem input10227_def : input10227 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8209 8205 (Flapjack.WordRegImm.imm 2016#64)))) := by
  unfold input10227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8209 8205 (Flapjack.WordRegImm.imm 2016#64))))).val
theorem output10227_def : output10227 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 8209 8205 (Flapjack.WordRegImm.imm 2016#64)))) := by
  unfold output10227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10227_skip : Flapjack.WordAlloc.isSkip output10227 = false := by
  rw [output10227_def]
  conv => lhs; cbv
  try rfl
theorem node10227_eq : Flapjack.WordAlloc.removeDeadStructural input10227 value5117 value1 value2 = (output10227, value5118, value1) := by
  rw [input10227_def, output10227_def]
  try (conv => lhs; cbv)
  try rfl

def value5119 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8205 (Flapjack.WordLangAddr.addr 8201 18446744073709551104#64)))).val
theorem input10228_def : input10228 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8205 (Flapjack.WordLangAddr.addr 8201 18446744073709551104#64))) := by
  unfold input10228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8205 (Flapjack.WordLangAddr.addr 8201 18446744073709551104#64)))).val
theorem output10228_def : output10228 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 8205 (Flapjack.WordLangAddr.addr 8201 18446744073709551104#64))) := by
  unfold output10228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10228_skip : Flapjack.WordAlloc.isSkip output10228 = false := by
  rw [output10228_def]
  conv => lhs; cbv
  try rfl
theorem node10228_eq : Flapjack.WordAlloc.removeDeadStructural input10228 value5118 value1 value2 = (output10228, value5119, value1) := by
  rw [input10228_def, output10228_def]
  try (conv => lhs; cbv)
  try rfl

def value5120 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8201 8197)).val
theorem input10229_def : input10229 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8201 8197) := by
  unfold input10229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8201 8197)).val
theorem output10229_def : output10229 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 8201 8197) := by
  unfold output10229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10229_skip : Flapjack.WordAlloc.isSkip output10229 = false := by
  rw [output10229_def]
  conv => lhs; cbv
  try rfl
theorem node10229_eq : Flapjack.WordAlloc.removeDeadStructural input10229 value5119 value1 value2 = (output10229, value5120, value1) := by
  rw [input10229_def, output10229_def]
  try (conv => lhs; cbv)
  try rfl

def value5121 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8197 8193 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input10230_def : input10230 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8197 8193 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input10230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8197 8193 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output10230_def : output10230 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 8197 8193 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output10230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10230_skip : Flapjack.WordAlloc.isSkip output10230 = false := by
  rw [output10230_def]
  conv => lhs; cbv
  try rfl
theorem node10230_eq : Flapjack.WordAlloc.removeDeadStructural input10230 value5120 value1 value2 = (output10230, value5121, value1) := by
  rw [input10230_def, output10230_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8193 Flapjack.WordStore.heapLength)).val
theorem input10231_def : input10231 = (Flapjack.WordLangProgHOL.get 8193 Flapjack.WordStore.heapLength) := by
  unfold input10231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 8193 Flapjack.WordStore.heapLength)).val
theorem output10231_def : output10231 = (Flapjack.WordLangProgHOL.get 8193 Flapjack.WordStore.heapLength) := by
  unfold output10231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10231_skip : Flapjack.WordAlloc.isSkip output10231 = false := by
  rw [output10231_def]
  conv => lhs; cbv
  try rfl
theorem node10231_eq : Flapjack.WordAlloc.removeDeadStructural input10231 value5121 value1 value2 = (output10231, value5, value1) := by
  rw [input10231_def, output10231_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10231 input10230)).val
theorem input10232_def : input10232 = (.seq input10231 input10230) := by
  unfold input10232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10231 output10230)).val
theorem output10232_def : output10232 = (.seq output10231 output10230) := by
  unfold output10232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10232_skip : Flapjack.WordAlloc.isSkip output10232 = false := by
  rw [output10232_def]
  conv => lhs; cbv
  try rfl
theorem node10232_eq : Flapjack.WordAlloc.removeDeadStructural input10232 value5120 value1 value2 = (output10232, value5, value1) := by
  rw [input10232_def, output10232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10230_eq]
  dsimp only
  rw [node10231_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10232 input10229)).val
theorem input10233_def : input10233 = (.seq input10232 input10229) := by
  unfold input10233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10232 output10229)).val
theorem output10233_def : output10233 = (.seq output10232 output10229) := by
  unfold output10233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10233_skip : Flapjack.WordAlloc.isSkip output10233 = false := by
  rw [output10233_def]
  conv => lhs; cbv
  try rfl
theorem node10233_eq : Flapjack.WordAlloc.removeDeadStructural input10233 value5119 value1 value2 = (output10233, value5, value1) := by
  rw [input10233_def, output10233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10229_eq]
  dsimp only
  rw [node10232_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10233 input10228)).val
theorem input10234_def : input10234 = (.seq input10233 input10228) := by
  unfold input10234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10233 output10228)).val
theorem output10234_def : output10234 = (.seq output10233 output10228) := by
  unfold output10234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10234_skip : Flapjack.WordAlloc.isSkip output10234 = false := by
  rw [output10234_def]
  conv => lhs; cbv
  try rfl
theorem node10234_eq : Flapjack.WordAlloc.removeDeadStructural input10234 value5118 value1 value2 = (output10234, value5, value1) := by
  rw [input10234_def, output10234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10228_eq]
  dsimp only
  rw [node10233_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10234 input10227)).val
theorem input10235_def : input10235 = (.seq input10234 input10227) := by
  unfold input10235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10234 output10227)).val
theorem output10235_def : output10235 = (.seq output10234 output10227) := by
  unfold output10235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10235_skip : Flapjack.WordAlloc.isSkip output10235 = false := by
  rw [output10235_def]
  conv => lhs; cbv
  try rfl
theorem node10235_eq : Flapjack.WordAlloc.removeDeadStructural input10235 value5117 value1 value2 = (output10235, value5, value1) := by
  rw [input10235_def, output10235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10227_eq]
  dsimp only
  rw [node10234_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5122 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8185 (Flapjack.WordLangAddr.addr 8189 0#64)))).val
theorem input10236_def : input10236 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8185 (Flapjack.WordLangAddr.addr 8189 0#64))) := by
  unfold input10236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8185 (Flapjack.WordLangAddr.addr 8189 0#64)))).val
theorem output10236_def : output10236 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 8185 (Flapjack.WordLangAddr.addr 8189 0#64))) := by
  unfold output10236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10236_skip : Flapjack.WordAlloc.isSkip output10236 = false := by
  rw [output10236_def]
  conv => lhs; cbv
  try rfl
theorem node10236_eq : Flapjack.WordAlloc.removeDeadStructural input10236 value5 value1 value2 = (output10236, value5122, value1) := by
  rw [input10236_def, output10236_def]
  try (conv => lhs; cbv)
  try rfl

def value5123 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
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
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8189, 8177)])).val
theorem input10237_def : input10237 = (Flapjack.WordLangProgHOL.move 0 [(8189, 8177)]) := by
  unfold input10237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(8189, 8177)])).val
theorem output10237_def : output10237 = (Flapjack.WordLangProgHOL.move 0 [(8189, 8177)]) := by
  unfold output10237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10237_skip : Flapjack.WordAlloc.isSkip output10237 = false := by
  rw [output10237_def]
  conv => lhs; cbv
  try rfl
theorem node10237_eq : Flapjack.WordAlloc.removeDeadStructural input10237 value5122 value1 value2 = (output10237, value5123, value1) := by
  rw [input10237_def, output10237_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input10238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input10237 input10236)).val
theorem input10238_def : input10238 = (.seq input10237 input10236) := by
  unfold input10238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output10237 output10236)).val
theorem output10238_def : output10238 = (.seq output10237 output10236) := by
  unfold output10238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10238_skip : Flapjack.WordAlloc.isSkip output10238 = false := by
  rw [output10238_def]
  conv => lhs; cbv
  try rfl
theorem node10238_eq : Flapjack.WordAlloc.removeDeadStructural input10238 value5 value1 value2 = (output10238, value5123, value1) := by
  rw [input10238_def, output10238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node10236_eq]
  dsimp only
  rw [node10237_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value5124 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input10239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8185 10776056440809943711#64))).val
theorem input10239_def : input10239 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8185 10776056440809943711#64)) := by
  unfold input10239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output10239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8185 10776056440809943711#64))).val
theorem output10239_def : output10239 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 8185 10776056440809943711#64)) := by
  unfold output10239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output10239_skip : Flapjack.WordAlloc.isSkip output10239 = false := by
  rw [output10239_def]
  conv => lhs; cbv
  try rfl
theorem node10239_eq : Flapjack.WordAlloc.removeDeadStructural input10239 value5123 value1 value2 = (output10239, value5124, value1) := by
  rw [input10239_def, output10239_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node10239_eq
end InitECandidate.Proofs.DeadStages713
