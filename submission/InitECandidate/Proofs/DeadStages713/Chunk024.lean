import InitECandidate.Proofs.DeadStages713.Chunk023
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input6144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6143 input6142)).val
theorem input6144_def : input6144 = (.seq input6143 input6142) := by
  unfold input6144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6143 output6142)).val
theorem output6144_def : output6144 = (.seq output6143 output6142) := by
  unfold output6144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6144_skip : Flapjack.WordAlloc.isSkip output6144 = false := by
  rw [output6144_def]
  conv => lhs; cbv
  try rfl
theorem node6144_eq : Flapjack.WordAlloc.removeDeadStructural input6144 value3076 value1 value2 = (output6144, value5, value1) := by
  rw [input6144_def, output6144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6142_eq]
  dsimp only
  rw [node6143_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6144 input6141)).val
theorem input6145_def : input6145 = (.seq input6144 input6141) := by
  unfold input6145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6144 output6141)).val
theorem output6145_def : output6145 = (.seq output6144 output6141) := by
  unfold output6145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6145_skip : Flapjack.WordAlloc.isSkip output6145 = false := by
  rw [output6145_def]
  conv => lhs; cbv
  try rfl
theorem node6145_eq : Flapjack.WordAlloc.removeDeadStructural input6145 value3075 value1 value2 = (output6145, value5, value1) := by
  rw [input6145_def, output6145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6141_eq]
  dsimp only
  rw [node6144_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6145 input6140)).val
theorem input6146_def : input6146 = (.seq input6145 input6140) := by
  unfold input6146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6145 output6140)).val
theorem output6146_def : output6146 = (.seq output6145 output6140) := by
  unfold output6146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6146_skip : Flapjack.WordAlloc.isSkip output6146 = false := by
  rw [output6146_def]
  conv => lhs; cbv
  try rfl
theorem node6146_eq : Flapjack.WordAlloc.removeDeadStructural input6146 value3074 value1 value2 = (output6146, value5, value1) := by
  rw [input6146_def, output6146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6140_eq]
  dsimp only
  rw [node6145_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6146 input6139)).val
theorem input6147_def : input6147 = (.seq input6146 input6139) := by
  unfold input6147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6146 output6139)).val
theorem output6147_def : output6147 = (.seq output6146 output6139) := by
  unfold output6147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6147_skip : Flapjack.WordAlloc.isSkip output6147 = false := by
  rw [output6147_def]
  conv => lhs; cbv
  try rfl
theorem node6147_eq : Flapjack.WordAlloc.removeDeadStructural input6147 value3072 value1 value2 = (output6147, value5, value1) := by
  rw [input6147_def, output6147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6139_eq]
  dsimp only
  rw [node6146_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3078 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17385 (Flapjack.WordLangAddr.addr 17389 0#64)))).val
theorem input6148_def : input6148 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17385 (Flapjack.WordLangAddr.addr 17389 0#64))) := by
  unfold input6148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17385 (Flapjack.WordLangAddr.addr 17389 0#64)))).val
theorem output6148_def : output6148 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17385 (Flapjack.WordLangAddr.addr 17389 0#64))) := by
  unfold output6148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6148_skip : Flapjack.WordAlloc.isSkip output6148 = false := by
  rw [output6148_def]
  conv => lhs; cbv
  try rfl
theorem node6148_eq : Flapjack.WordAlloc.removeDeadStructural input6148 value5 value1 value2 = (output6148, value3078, value1) := by
  rw [input6148_def, output6148_def]
  try (conv => lhs; cbv)
  try rfl

def value3079 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17389, 17377)])).val
theorem input6149_def : input6149 = (Flapjack.WordLangProgHOL.move 0 [(17389, 17377)]) := by
  unfold input6149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17389, 17377)])).val
theorem output6149_def : output6149 = (Flapjack.WordLangProgHOL.move 0 [(17389, 17377)]) := by
  unfold output6149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6149_skip : Flapjack.WordAlloc.isSkip output6149 = false := by
  rw [output6149_def]
  conv => lhs; cbv
  try rfl
theorem node6149_eq : Flapjack.WordAlloc.removeDeadStructural input6149 value3078 value1 value2 = (output6149, value3079, value1) := by
  rw [input6149_def, output6149_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6149 input6148)).val
theorem input6150_def : input6150 = (.seq input6149 input6148) := by
  unfold input6150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6149 output6148)).val
theorem output6150_def : output6150 = (.seq output6149 output6148) := by
  unfold output6150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6150_skip : Flapjack.WordAlloc.isSkip output6150 = false := by
  rw [output6150_def]
  conv => lhs; cbv
  try rfl
theorem node6150_eq : Flapjack.WordAlloc.removeDeadStructural input6150 value5 value1 value2 = (output6150, value3079, value1) := by
  rw [input6150_def, output6150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6148_eq]
  dsimp only
  rw [node6149_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3080 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17385 637792788410719021#64))).val
theorem input6151_def : input6151 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17385 637792788410719021#64)) := by
  unfold input6151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17385 637792788410719021#64))).val
theorem output6151_def : output6151 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17385 637792788410719021#64)) := by
  unfold output6151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6151_skip : Flapjack.WordAlloc.isSkip output6151 = false := by
  rw [output6151_def]
  conv => lhs; cbv
  try rfl
theorem node6151_eq : Flapjack.WordAlloc.removeDeadStructural input6151 value3079 value1 value2 = (output6151, value3080, value1) := by
  rw [input6151_def, output6151_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17381 637792788410719021#64))).val
theorem input6152_def : input6152 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17381 637792788410719021#64)) := by
  unfold input6152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6152_def : output6152 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6152_skip : Flapjack.WordAlloc.isSkip output6152 = true := by
  rw [output6152_def]
  conv => lhs; cbv
  try rfl
theorem node6152_eq : Flapjack.WordAlloc.removeDeadStructural input6152 value3080 value1 value2 = (output6152, value3080, value1) := by
  rw [input6152_def, output6152_def]
  try (conv => lhs; cbv)
  try rfl

def value3081 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17377 17369 (Flapjack.WordRegImm.reg 17373))))).val
theorem input6153_def : input6153 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17377 17369 (Flapjack.WordRegImm.reg 17373)))) := by
  unfold input6153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17377 17369 (Flapjack.WordRegImm.reg 17373))))).val
theorem output6153_def : output6153 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17377 17369 (Flapjack.WordRegImm.reg 17373)))) := by
  unfold output6153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6153_skip : Flapjack.WordAlloc.isSkip output6153 = false := by
  rw [output6153_def]
  conv => lhs; cbv
  try rfl
theorem node6153_eq : Flapjack.WordAlloc.removeDeadStructural input6153 value3080 value1 value2 = (output6153, value3081, value1) := by
  rw [input6153_def, output6153_def]
  try (conv => lhs; cbv)
  try rfl

def value3082 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17373 4056#64))).val
theorem input6154_def : input6154 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17373 4056#64)) := by
  unfold input6154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17373 4056#64))).val
theorem output6154_def : output6154 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17373 4056#64)) := by
  unfold output6154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6154_skip : Flapjack.WordAlloc.isSkip output6154 = false := by
  rw [output6154_def]
  conv => lhs; cbv
  try rfl
theorem node6154_eq : Flapjack.WordAlloc.removeDeadStructural input6154 value3081 value1 value2 = (output6154, value3082, value1) := by
  rw [input6154_def, output6154_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6154 input6153)).val
theorem input6155_def : input6155 = (.seq input6154 input6153) := by
  unfold input6155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6154 output6153)).val
theorem output6155_def : output6155 = (.seq output6154 output6153) := by
  unfold output6155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6155_skip : Flapjack.WordAlloc.isSkip output6155 = false := by
  rw [output6155_def]
  conv => lhs; cbv
  try rfl
theorem node6155_eq : Flapjack.WordAlloc.removeDeadStructural input6155 value3080 value1 value2 = (output6155, value3082, value1) := by
  rw [input6155_def, output6155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6153_eq]
  dsimp only
  rw [node6154_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3083 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
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
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17369 (Flapjack.WordLangAddr.addr 17365 18446744073709551104#64)))).val
theorem input6156_def : input6156 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17369 (Flapjack.WordLangAddr.addr 17365 18446744073709551104#64))) := by
  unfold input6156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17369 (Flapjack.WordLangAddr.addr 17365 18446744073709551104#64)))).val
theorem output6156_def : output6156 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17369 (Flapjack.WordLangAddr.addr 17365 18446744073709551104#64))) := by
  unfold output6156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6156_skip : Flapjack.WordAlloc.isSkip output6156 = false := by
  rw [output6156_def]
  conv => lhs; cbv
  try rfl
theorem node6156_eq : Flapjack.WordAlloc.removeDeadStructural input6156 value3082 value1 value2 = (output6156, value3083, value1) := by
  rw [input6156_def, output6156_def]
  try (conv => lhs; cbv)
  try rfl

def value3084 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17365 17361)).val
theorem input6157_def : input6157 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17365 17361) := by
  unfold input6157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17365 17361)).val
theorem output6157_def : output6157 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17365 17361) := by
  unfold output6157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6157_skip : Flapjack.WordAlloc.isSkip output6157 = false := by
  rw [output6157_def]
  conv => lhs; cbv
  try rfl
theorem node6157_eq : Flapjack.WordAlloc.removeDeadStructural input6157 value3083 value1 value2 = (output6157, value3084, value1) := by
  rw [input6157_def, output6157_def]
  try (conv => lhs; cbv)
  try rfl

def value3085 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17361 17357 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6158_def : input6158 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17361 17357 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17361 17357 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6158_def : output6158 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17361 17357 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6158_skip : Flapjack.WordAlloc.isSkip output6158 = false := by
  rw [output6158_def]
  conv => lhs; cbv
  try rfl
theorem node6158_eq : Flapjack.WordAlloc.removeDeadStructural input6158 value3084 value1 value2 = (output6158, value3085, value1) := by
  rw [input6158_def, output6158_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17357 Flapjack.WordStore.heapLength)).val
theorem input6159_def : input6159 = (Flapjack.WordLangProgHOL.get 17357 Flapjack.WordStore.heapLength) := by
  unfold input6159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17357 Flapjack.WordStore.heapLength)).val
theorem output6159_def : output6159 = (Flapjack.WordLangProgHOL.get 17357 Flapjack.WordStore.heapLength) := by
  unfold output6159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6159_skip : Flapjack.WordAlloc.isSkip output6159 = false := by
  rw [output6159_def]
  conv => lhs; cbv
  try rfl
theorem node6159_eq : Flapjack.WordAlloc.removeDeadStructural input6159 value3085 value1 value2 = (output6159, value5, value1) := by
  rw [input6159_def, output6159_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6159 input6158)).val
theorem input6160_def : input6160 = (.seq input6159 input6158) := by
  unfold input6160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6159 output6158)).val
theorem output6160_def : output6160 = (.seq output6159 output6158) := by
  unfold output6160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6160_skip : Flapjack.WordAlloc.isSkip output6160 = false := by
  rw [output6160_def]
  conv => lhs; cbv
  try rfl
theorem node6160_eq : Flapjack.WordAlloc.removeDeadStructural input6160 value3084 value1 value2 = (output6160, value5, value1) := by
  rw [input6160_def, output6160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6158_eq]
  dsimp only
  rw [node6159_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6160 input6157)).val
theorem input6161_def : input6161 = (.seq input6160 input6157) := by
  unfold input6161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6160 output6157)).val
theorem output6161_def : output6161 = (.seq output6160 output6157) := by
  unfold output6161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6161_skip : Flapjack.WordAlloc.isSkip output6161 = false := by
  rw [output6161_def]
  conv => lhs; cbv
  try rfl
theorem node6161_eq : Flapjack.WordAlloc.removeDeadStructural input6161 value3083 value1 value2 = (output6161, value5, value1) := by
  rw [input6161_def, output6161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6157_eq]
  dsimp only
  rw [node6160_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6161 input6156)).val
theorem input6162_def : input6162 = (.seq input6161 input6156) := by
  unfold input6162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6161 output6156)).val
theorem output6162_def : output6162 = (.seq output6161 output6156) := by
  unfold output6162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6162_skip : Flapjack.WordAlloc.isSkip output6162 = false := by
  rw [output6162_def]
  conv => lhs; cbv
  try rfl
theorem node6162_eq : Flapjack.WordAlloc.removeDeadStructural input6162 value3082 value1 value2 = (output6162, value5, value1) := by
  rw [input6162_def, output6162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6156_eq]
  dsimp only
  rw [node6161_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6162 input6155)).val
theorem input6163_def : input6163 = (.seq input6162 input6155) := by
  unfold input6163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6162 output6155)).val
theorem output6163_def : output6163 = (.seq output6162 output6155) := by
  unfold output6163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6163_skip : Flapjack.WordAlloc.isSkip output6163 = false := by
  rw [output6163_def]
  conv => lhs; cbv
  try rfl
theorem node6163_eq : Flapjack.WordAlloc.removeDeadStructural input6163 value3080 value1 value2 = (output6163, value5, value1) := by
  rw [input6163_def, output6163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6155_eq]
  dsimp only
  rw [node6162_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3086 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17349 (Flapjack.WordLangAddr.addr 17353 0#64)))).val
theorem input6164_def : input6164 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17349 (Flapjack.WordLangAddr.addr 17353 0#64))) := by
  unfold input6164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17349 (Flapjack.WordLangAddr.addr 17353 0#64)))).val
theorem output6164_def : output6164 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17349 (Flapjack.WordLangAddr.addr 17353 0#64))) := by
  unfold output6164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6164_skip : Flapjack.WordAlloc.isSkip output6164 = false := by
  rw [output6164_def]
  conv => lhs; cbv
  try rfl
theorem node6164_eq : Flapjack.WordAlloc.removeDeadStructural input6164 value5 value1 value2 = (output6164, value3086, value1) := by
  rw [input6164_def, output6164_def]
  try (conv => lhs; cbv)
  try rfl

def value3087 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
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
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17353, 17341)])).val
theorem input6165_def : input6165 = (Flapjack.WordLangProgHOL.move 0 [(17353, 17341)]) := by
  unfold input6165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17353, 17341)])).val
theorem output6165_def : output6165 = (Flapjack.WordLangProgHOL.move 0 [(17353, 17341)]) := by
  unfold output6165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6165_skip : Flapjack.WordAlloc.isSkip output6165 = false := by
  rw [output6165_def]
  conv => lhs; cbv
  try rfl
theorem node6165_eq : Flapjack.WordAlloc.removeDeadStructural input6165 value3086 value1 value2 = (output6165, value3087, value1) := by
  rw [input6165_def, output6165_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6165 input6164)).val
theorem input6166_def : input6166 = (.seq input6165 input6164) := by
  unfold input6166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6165 output6164)).val
theorem output6166_def : output6166 = (.seq output6165 output6164) := by
  unfold output6166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6166_skip : Flapjack.WordAlloc.isSkip output6166 = false := by
  rw [output6166_def]
  conv => lhs; cbv
  try rfl
theorem node6166_eq : Flapjack.WordAlloc.removeDeadStructural input6166 value5 value1 value2 = (output6166, value3087, value1) := by
  rw [input6166_def, output6166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6164_eq]
  dsimp only
  rw [node6165_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3088 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
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
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17349 11507373155986977154#64))).val
theorem input6167_def : input6167 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17349 11507373155986977154#64)) := by
  unfold input6167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17349 11507373155986977154#64))).val
theorem output6167_def : output6167 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17349 11507373155986977154#64)) := by
  unfold output6167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6167_skip : Flapjack.WordAlloc.isSkip output6167 = false := by
  rw [output6167_def]
  conv => lhs; cbv
  try rfl
theorem node6167_eq : Flapjack.WordAlloc.removeDeadStructural input6167 value3087 value1 value2 = (output6167, value3088, value1) := by
  rw [input6167_def, output6167_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17345 11507373155986977154#64))).val
theorem input6168_def : input6168 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17345 11507373155986977154#64)) := by
  unfold input6168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6168_def : output6168 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6168_skip : Flapjack.WordAlloc.isSkip output6168 = true := by
  rw [output6168_def]
  conv => lhs; cbv
  try rfl
theorem node6168_eq : Flapjack.WordAlloc.removeDeadStructural input6168 value3088 value1 value2 = (output6168, value3088, value1) := by
  rw [input6168_def, output6168_def]
  try (conv => lhs; cbv)
  try rfl

def value3089 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
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
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17341 17333 (Flapjack.WordRegImm.reg 17337))))).val
theorem input6169_def : input6169 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17341 17333 (Flapjack.WordRegImm.reg 17337)))) := by
  unfold input6169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17341 17333 (Flapjack.WordRegImm.reg 17337))))).val
theorem output6169_def : output6169 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17341 17333 (Flapjack.WordRegImm.reg 17337)))) := by
  unfold output6169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6169_skip : Flapjack.WordAlloc.isSkip output6169 = false := by
  rw [output6169_def]
  conv => lhs; cbv
  try rfl
theorem node6169_eq : Flapjack.WordAlloc.removeDeadStructural input6169 value3088 value1 value2 = (output6169, value3089, value1) := by
  rw [input6169_def, output6169_def]
  try (conv => lhs; cbv)
  try rfl

def value3090 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17337 4048#64))).val
theorem input6170_def : input6170 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17337 4048#64)) := by
  unfold input6170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17337 4048#64))).val
theorem output6170_def : output6170 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17337 4048#64)) := by
  unfold output6170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6170_skip : Flapjack.WordAlloc.isSkip output6170 = false := by
  rw [output6170_def]
  conv => lhs; cbv
  try rfl
theorem node6170_eq : Flapjack.WordAlloc.removeDeadStructural input6170 value3089 value1 value2 = (output6170, value3090, value1) := by
  rw [input6170_def, output6170_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6170 input6169)).val
theorem input6171_def : input6171 = (.seq input6170 input6169) := by
  unfold input6171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6170 output6169)).val
theorem output6171_def : output6171 = (.seq output6170 output6169) := by
  unfold output6171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6171_skip : Flapjack.WordAlloc.isSkip output6171 = false := by
  rw [output6171_def]
  conv => lhs; cbv
  try rfl
theorem node6171_eq : Flapjack.WordAlloc.removeDeadStructural input6171 value3088 value1 value2 = (output6171, value3090, value1) := by
  rw [input6171_def, output6171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6169_eq]
  dsimp only
  rw [node6170_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3091 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17333 (Flapjack.WordLangAddr.addr 17329 18446744073709551104#64)))).val
theorem input6172_def : input6172 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17333 (Flapjack.WordLangAddr.addr 17329 18446744073709551104#64))) := by
  unfold input6172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17333 (Flapjack.WordLangAddr.addr 17329 18446744073709551104#64)))).val
theorem output6172_def : output6172 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17333 (Flapjack.WordLangAddr.addr 17329 18446744073709551104#64))) := by
  unfold output6172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6172_skip : Flapjack.WordAlloc.isSkip output6172 = false := by
  rw [output6172_def]
  conv => lhs; cbv
  try rfl
theorem node6172_eq : Flapjack.WordAlloc.removeDeadStructural input6172 value3090 value1 value2 = (output6172, value3091, value1) := by
  rw [input6172_def, output6172_def]
  try (conv => lhs; cbv)
  try rfl

def value3092 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17329 17325)).val
theorem input6173_def : input6173 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17329 17325) := by
  unfold input6173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17329 17325)).val
theorem output6173_def : output6173 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17329 17325) := by
  unfold output6173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6173_skip : Flapjack.WordAlloc.isSkip output6173 = false := by
  rw [output6173_def]
  conv => lhs; cbv
  try rfl
theorem node6173_eq : Flapjack.WordAlloc.removeDeadStructural input6173 value3091 value1 value2 = (output6173, value3092, value1) := by
  rw [input6173_def, output6173_def]
  try (conv => lhs; cbv)
  try rfl

def value3093 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17325 17321 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6174_def : input6174 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17325 17321 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17325 17321 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6174_def : output6174 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17325 17321 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6174_skip : Flapjack.WordAlloc.isSkip output6174 = false := by
  rw [output6174_def]
  conv => lhs; cbv
  try rfl
theorem node6174_eq : Flapjack.WordAlloc.removeDeadStructural input6174 value3092 value1 value2 = (output6174, value3093, value1) := by
  rw [input6174_def, output6174_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17321 Flapjack.WordStore.heapLength)).val
theorem input6175_def : input6175 = (Flapjack.WordLangProgHOL.get 17321 Flapjack.WordStore.heapLength) := by
  unfold input6175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17321 Flapjack.WordStore.heapLength)).val
theorem output6175_def : output6175 = (Flapjack.WordLangProgHOL.get 17321 Flapjack.WordStore.heapLength) := by
  unfold output6175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6175_skip : Flapjack.WordAlloc.isSkip output6175 = false := by
  rw [output6175_def]
  conv => lhs; cbv
  try rfl
theorem node6175_eq : Flapjack.WordAlloc.removeDeadStructural input6175 value3093 value1 value2 = (output6175, value5, value1) := by
  rw [input6175_def, output6175_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6175 input6174)).val
theorem input6176_def : input6176 = (.seq input6175 input6174) := by
  unfold input6176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6175 output6174)).val
theorem output6176_def : output6176 = (.seq output6175 output6174) := by
  unfold output6176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6176_skip : Flapjack.WordAlloc.isSkip output6176 = false := by
  rw [output6176_def]
  conv => lhs; cbv
  try rfl
theorem node6176_eq : Flapjack.WordAlloc.removeDeadStructural input6176 value3092 value1 value2 = (output6176, value5, value1) := by
  rw [input6176_def, output6176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6174_eq]
  dsimp only
  rw [node6175_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6176 input6173)).val
theorem input6177_def : input6177 = (.seq input6176 input6173) := by
  unfold input6177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6176 output6173)).val
theorem output6177_def : output6177 = (.seq output6176 output6173) := by
  unfold output6177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6177_skip : Flapjack.WordAlloc.isSkip output6177 = false := by
  rw [output6177_def]
  conv => lhs; cbv
  try rfl
theorem node6177_eq : Flapjack.WordAlloc.removeDeadStructural input6177 value3091 value1 value2 = (output6177, value5, value1) := by
  rw [input6177_def, output6177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6173_eq]
  dsimp only
  rw [node6176_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6177 input6172)).val
theorem input6178_def : input6178 = (.seq input6177 input6172) := by
  unfold input6178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6177 output6172)).val
theorem output6178_def : output6178 = (.seq output6177 output6172) := by
  unfold output6178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6178_skip : Flapjack.WordAlloc.isSkip output6178 = false := by
  rw [output6178_def]
  conv => lhs; cbv
  try rfl
theorem node6178_eq : Flapjack.WordAlloc.removeDeadStructural input6178 value3090 value1 value2 = (output6178, value5, value1) := by
  rw [input6178_def, output6178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6172_eq]
  dsimp only
  rw [node6177_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6178 input6171)).val
theorem input6179_def : input6179 = (.seq input6178 input6171) := by
  unfold input6179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6178 output6171)).val
theorem output6179_def : output6179 = (.seq output6178 output6171) := by
  unfold output6179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6179_skip : Flapjack.WordAlloc.isSkip output6179 = false := by
  rw [output6179_def]
  conv => lhs; cbv
  try rfl
theorem node6179_eq : Flapjack.WordAlloc.removeDeadStructural input6179 value3088 value1 value2 = (output6179, value5, value1) := by
  rw [input6179_def, output6179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6171_eq]
  dsimp only
  rw [node6178_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3094 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17313 (Flapjack.WordLangAddr.addr 17317 0#64)))).val
theorem input6180_def : input6180 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17313 (Flapjack.WordLangAddr.addr 17317 0#64))) := by
  unfold input6180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17313 (Flapjack.WordLangAddr.addr 17317 0#64)))).val
theorem output6180_def : output6180 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17313 (Flapjack.WordLangAddr.addr 17317 0#64))) := by
  unfold output6180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6180_skip : Flapjack.WordAlloc.isSkip output6180 = false := by
  rw [output6180_def]
  conv => lhs; cbv
  try rfl
theorem node6180_eq : Flapjack.WordAlloc.removeDeadStructural input6180 value5 value1 value2 = (output6180, value3094, value1) := by
  rw [input6180_def, output6180_def]
  try (conv => lhs; cbv)
  try rfl

def value3095 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17317, 17305)])).val
theorem input6181_def : input6181 = (Flapjack.WordLangProgHOL.move 0 [(17317, 17305)]) := by
  unfold input6181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17317, 17305)])).val
theorem output6181_def : output6181 = (Flapjack.WordLangProgHOL.move 0 [(17317, 17305)]) := by
  unfold output6181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6181_skip : Flapjack.WordAlloc.isSkip output6181 = false := by
  rw [output6181_def]
  conv => lhs; cbv
  try rfl
theorem node6181_eq : Flapjack.WordAlloc.removeDeadStructural input6181 value3094 value1 value2 = (output6181, value3095, value1) := by
  rw [input6181_def, output6181_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6181 input6180)).val
theorem input6182_def : input6182 = (.seq input6181 input6180) := by
  unfold input6182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6181 output6180)).val
theorem output6182_def : output6182 = (.seq output6181 output6180) := by
  unfold output6182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6182_skip : Flapjack.WordAlloc.isSkip output6182 = false := by
  rw [output6182_def]
  conv => lhs; cbv
  try rfl
theorem node6182_eq : Flapjack.WordAlloc.removeDeadStructural input6182 value5 value1 value2 = (output6182, value3095, value1) := by
  rw [input6182_def, output6182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6180_eq]
  dsimp only
  rw [node6181_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3096 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17313 13186912195705886849#64))).val
theorem input6183_def : input6183 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17313 13186912195705886849#64)) := by
  unfold input6183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17313 13186912195705886849#64))).val
theorem output6183_def : output6183 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17313 13186912195705886849#64)) := by
  unfold output6183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6183_skip : Flapjack.WordAlloc.isSkip output6183 = false := by
  rw [output6183_def]
  conv => lhs; cbv
  try rfl
theorem node6183_eq : Flapjack.WordAlloc.removeDeadStructural input6183 value3095 value1 value2 = (output6183, value3096, value1) := by
  rw [input6183_def, output6183_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17309 13186912195705886849#64))).val
theorem input6184_def : input6184 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17309 13186912195705886849#64)) := by
  unfold input6184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6184_def : output6184 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6184_skip : Flapjack.WordAlloc.isSkip output6184 = true := by
  rw [output6184_def]
  conv => lhs; cbv
  try rfl
theorem node6184_eq : Flapjack.WordAlloc.removeDeadStructural input6184 value3096 value1 value2 = (output6184, value3096, value1) := by
  rw [input6184_def, output6184_def]
  try (conv => lhs; cbv)
  try rfl

def value3097 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17305 17297 (Flapjack.WordRegImm.reg 17301))))).val
theorem input6185_def : input6185 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17305 17297 (Flapjack.WordRegImm.reg 17301)))) := by
  unfold input6185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17305 17297 (Flapjack.WordRegImm.reg 17301))))).val
theorem output6185_def : output6185 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17305 17297 (Flapjack.WordRegImm.reg 17301)))) := by
  unfold output6185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6185_skip : Flapjack.WordAlloc.isSkip output6185 = false := by
  rw [output6185_def]
  conv => lhs; cbv
  try rfl
theorem node6185_eq : Flapjack.WordAlloc.removeDeadStructural input6185 value3096 value1 value2 = (output6185, value3097, value1) := by
  rw [input6185_def, output6185_def]
  try (conv => lhs; cbv)
  try rfl

def value3098 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17301 4040#64))).val
theorem input6186_def : input6186 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17301 4040#64)) := by
  unfold input6186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17301 4040#64))).val
theorem output6186_def : output6186 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17301 4040#64)) := by
  unfold output6186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6186_skip : Flapjack.WordAlloc.isSkip output6186 = false := by
  rw [output6186_def]
  conv => lhs; cbv
  try rfl
theorem node6186_eq : Flapjack.WordAlloc.removeDeadStructural input6186 value3097 value1 value2 = (output6186, value3098, value1) := by
  rw [input6186_def, output6186_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6186 input6185)).val
theorem input6187_def : input6187 = (.seq input6186 input6185) := by
  unfold input6187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6186 output6185)).val
theorem output6187_def : output6187 = (.seq output6186 output6185) := by
  unfold output6187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6187_skip : Flapjack.WordAlloc.isSkip output6187 = false := by
  rw [output6187_def]
  conv => lhs; cbv
  try rfl
theorem node6187_eq : Flapjack.WordAlloc.removeDeadStructural input6187 value3096 value1 value2 = (output6187, value3098, value1) := by
  rw [input6187_def, output6187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6185_eq]
  dsimp only
  rw [node6186_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3099 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17297 (Flapjack.WordLangAddr.addr 17293 18446744073709551104#64)))).val
theorem input6188_def : input6188 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17297 (Flapjack.WordLangAddr.addr 17293 18446744073709551104#64))) := by
  unfold input6188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17297 (Flapjack.WordLangAddr.addr 17293 18446744073709551104#64)))).val
theorem output6188_def : output6188 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17297 (Flapjack.WordLangAddr.addr 17293 18446744073709551104#64))) := by
  unfold output6188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6188_skip : Flapjack.WordAlloc.isSkip output6188 = false := by
  rw [output6188_def]
  conv => lhs; cbv
  try rfl
theorem node6188_eq : Flapjack.WordAlloc.removeDeadStructural input6188 value3098 value1 value2 = (output6188, value3099, value1) := by
  rw [input6188_def, output6188_def]
  try (conv => lhs; cbv)
  try rfl

def value3100 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17293 17289)).val
theorem input6189_def : input6189 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17293 17289) := by
  unfold input6189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17293 17289)).val
theorem output6189_def : output6189 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17293 17289) := by
  unfold output6189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6189_skip : Flapjack.WordAlloc.isSkip output6189 = false := by
  rw [output6189_def]
  conv => lhs; cbv
  try rfl
theorem node6189_eq : Flapjack.WordAlloc.removeDeadStructural input6189 value3099 value1 value2 = (output6189, value3100, value1) := by
  rw [input6189_def, output6189_def]
  try (conv => lhs; cbv)
  try rfl

def value3101 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17289 17285 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6190_def : input6190 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17289 17285 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17289 17285 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6190_def : output6190 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17289 17285 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6190_skip : Flapjack.WordAlloc.isSkip output6190 = false := by
  rw [output6190_def]
  conv => lhs; cbv
  try rfl
theorem node6190_eq : Flapjack.WordAlloc.removeDeadStructural input6190 value3100 value1 value2 = (output6190, value3101, value1) := by
  rw [input6190_def, output6190_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17285 Flapjack.WordStore.heapLength)).val
theorem input6191_def : input6191 = (Flapjack.WordLangProgHOL.get 17285 Flapjack.WordStore.heapLength) := by
  unfold input6191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17285 Flapjack.WordStore.heapLength)).val
theorem output6191_def : output6191 = (Flapjack.WordLangProgHOL.get 17285 Flapjack.WordStore.heapLength) := by
  unfold output6191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6191_skip : Flapjack.WordAlloc.isSkip output6191 = false := by
  rw [output6191_def]
  conv => lhs; cbv
  try rfl
theorem node6191_eq : Flapjack.WordAlloc.removeDeadStructural input6191 value3101 value1 value2 = (output6191, value5, value1) := by
  rw [input6191_def, output6191_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6191 input6190)).val
theorem input6192_def : input6192 = (.seq input6191 input6190) := by
  unfold input6192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6191 output6190)).val
theorem output6192_def : output6192 = (.seq output6191 output6190) := by
  unfold output6192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6192_skip : Flapjack.WordAlloc.isSkip output6192 = false := by
  rw [output6192_def]
  conv => lhs; cbv
  try rfl
theorem node6192_eq : Flapjack.WordAlloc.removeDeadStructural input6192 value3100 value1 value2 = (output6192, value5, value1) := by
  rw [input6192_def, output6192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6190_eq]
  dsimp only
  rw [node6191_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6192 input6189)).val
theorem input6193_def : input6193 = (.seq input6192 input6189) := by
  unfold input6193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6192 output6189)).val
theorem output6193_def : output6193 = (.seq output6192 output6189) := by
  unfold output6193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6193_skip : Flapjack.WordAlloc.isSkip output6193 = false := by
  rw [output6193_def]
  conv => lhs; cbv
  try rfl
theorem node6193_eq : Flapjack.WordAlloc.removeDeadStructural input6193 value3099 value1 value2 = (output6193, value5, value1) := by
  rw [input6193_def, output6193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6189_eq]
  dsimp only
  rw [node6192_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6193 input6188)).val
theorem input6194_def : input6194 = (.seq input6193 input6188) := by
  unfold input6194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6193 output6188)).val
theorem output6194_def : output6194 = (.seq output6193 output6188) := by
  unfold output6194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6194_skip : Flapjack.WordAlloc.isSkip output6194 = false := by
  rw [output6194_def]
  conv => lhs; cbv
  try rfl
theorem node6194_eq : Flapjack.WordAlloc.removeDeadStructural input6194 value3098 value1 value2 = (output6194, value5, value1) := by
  rw [input6194_def, output6194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6188_eq]
  dsimp only
  rw [node6193_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6194 input6187)).val
theorem input6195_def : input6195 = (.seq input6194 input6187) := by
  unfold input6195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6194 output6187)).val
theorem output6195_def : output6195 = (.seq output6194 output6187) := by
  unfold output6195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6195_skip : Flapjack.WordAlloc.isSkip output6195 = false := by
  rw [output6195_def]
  conv => lhs; cbv
  try rfl
theorem node6195_eq : Flapjack.WordAlloc.removeDeadStructural input6195 value3096 value1 value2 = (output6195, value5, value1) := by
  rw [input6195_def, output6195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6187_eq]
  dsimp only
  rw [node6194_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3102 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17277 (Flapjack.WordLangAddr.addr 17281 0#64)))).val
theorem input6196_def : input6196 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17277 (Flapjack.WordLangAddr.addr 17281 0#64))) := by
  unfold input6196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17277 (Flapjack.WordLangAddr.addr 17281 0#64)))).val
theorem output6196_def : output6196 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17277 (Flapjack.WordLangAddr.addr 17281 0#64))) := by
  unfold output6196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6196_skip : Flapjack.WordAlloc.isSkip output6196 = false := by
  rw [output6196_def]
  conv => lhs; cbv
  try rfl
theorem node6196_eq : Flapjack.WordAlloc.removeDeadStructural input6196 value5 value1 value2 = (output6196, value3102, value1) := by
  rw [input6196_def, output6196_def]
  try (conv => lhs; cbv)
  try rfl

def value3103 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17281, 17269)])).val
theorem input6197_def : input6197 = (Flapjack.WordLangProgHOL.move 0 [(17281, 17269)]) := by
  unfold input6197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17281, 17269)])).val
theorem output6197_def : output6197 = (Flapjack.WordLangProgHOL.move 0 [(17281, 17269)]) := by
  unfold output6197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6197_skip : Flapjack.WordAlloc.isSkip output6197 = false := by
  rw [output6197_def]
  conv => lhs; cbv
  try rfl
theorem node6197_eq : Flapjack.WordAlloc.removeDeadStructural input6197 value3102 value1 value2 = (output6197, value3103, value1) := by
  rw [input6197_def, output6197_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6197 input6196)).val
theorem input6198_def : input6198 = (.seq input6197 input6196) := by
  unfold input6198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6197 output6196)).val
theorem output6198_def : output6198 = (.seq output6197 output6196) := by
  unfold output6198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6198_skip : Flapjack.WordAlloc.isSkip output6198 = false := by
  rw [output6198_def]
  conv => lhs; cbv
  try rfl
theorem node6198_eq : Flapjack.WordAlloc.removeDeadStructural input6198 value5 value1 value2 = (output6198, value3103, value1) := by
  rw [input6198_def, output6198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6196_eq]
  dsimp only
  rw [node6197_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3104 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17277 14262012144631372388#64))).val
theorem input6199_def : input6199 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17277 14262012144631372388#64)) := by
  unfold input6199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17277 14262012144631372388#64))).val
theorem output6199_def : output6199 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17277 14262012144631372388#64)) := by
  unfold output6199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6199_skip : Flapjack.WordAlloc.isSkip output6199 = false := by
  rw [output6199_def]
  conv => lhs; cbv
  try rfl
theorem node6199_eq : Flapjack.WordAlloc.removeDeadStructural input6199 value3103 value1 value2 = (output6199, value3104, value1) := by
  rw [input6199_def, output6199_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17273 14262012144631372388#64))).val
theorem input6200_def : input6200 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17273 14262012144631372388#64)) := by
  unfold input6200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6200_def : output6200 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6200_skip : Flapjack.WordAlloc.isSkip output6200 = true := by
  rw [output6200_def]
  conv => lhs; cbv
  try rfl
theorem node6200_eq : Flapjack.WordAlloc.removeDeadStructural input6200 value3104 value1 value2 = (output6200, value3104, value1) := by
  rw [input6200_def, output6200_def]
  try (conv => lhs; cbv)
  try rfl

def value3105 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17269 17261 (Flapjack.WordRegImm.reg 17265))))).val
theorem input6201_def : input6201 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17269 17261 (Flapjack.WordRegImm.reg 17265)))) := by
  unfold input6201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17269 17261 (Flapjack.WordRegImm.reg 17265))))).val
theorem output6201_def : output6201 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17269 17261 (Flapjack.WordRegImm.reg 17265)))) := by
  unfold output6201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6201_skip : Flapjack.WordAlloc.isSkip output6201 = false := by
  rw [output6201_def]
  conv => lhs; cbv
  try rfl
theorem node6201_eq : Flapjack.WordAlloc.removeDeadStructural input6201 value3104 value1 value2 = (output6201, value3105, value1) := by
  rw [input6201_def, output6201_def]
  try (conv => lhs; cbv)
  try rfl

def value3106 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17265 4032#64))).val
theorem input6202_def : input6202 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17265 4032#64)) := by
  unfold input6202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17265 4032#64))).val
theorem output6202_def : output6202 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17265 4032#64)) := by
  unfold output6202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6202_skip : Flapjack.WordAlloc.isSkip output6202 = false := by
  rw [output6202_def]
  conv => lhs; cbv
  try rfl
theorem node6202_eq : Flapjack.WordAlloc.removeDeadStructural input6202 value3105 value1 value2 = (output6202, value3106, value1) := by
  rw [input6202_def, output6202_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6202 input6201)).val
theorem input6203_def : input6203 = (.seq input6202 input6201) := by
  unfold input6203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6202 output6201)).val
theorem output6203_def : output6203 = (.seq output6202 output6201) := by
  unfold output6203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6203_skip : Flapjack.WordAlloc.isSkip output6203 = false := by
  rw [output6203_def]
  conv => lhs; cbv
  try rfl
theorem node6203_eq : Flapjack.WordAlloc.removeDeadStructural input6203 value3104 value1 value2 = (output6203, value3106, value1) := by
  rw [input6203_def, output6203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6201_eq]
  dsimp only
  rw [node6202_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3107 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17261 (Flapjack.WordLangAddr.addr 17257 18446744073709551104#64)))).val
theorem input6204_def : input6204 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17261 (Flapjack.WordLangAddr.addr 17257 18446744073709551104#64))) := by
  unfold input6204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17261 (Flapjack.WordLangAddr.addr 17257 18446744073709551104#64)))).val
theorem output6204_def : output6204 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17261 (Flapjack.WordLangAddr.addr 17257 18446744073709551104#64))) := by
  unfold output6204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6204_skip : Flapjack.WordAlloc.isSkip output6204 = false := by
  rw [output6204_def]
  conv => lhs; cbv
  try rfl
theorem node6204_eq : Flapjack.WordAlloc.removeDeadStructural input6204 value3106 value1 value2 = (output6204, value3107, value1) := by
  rw [input6204_def, output6204_def]
  try (conv => lhs; cbv)
  try rfl

def value3108 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17257 17253)).val
theorem input6205_def : input6205 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17257 17253) := by
  unfold input6205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17257 17253)).val
theorem output6205_def : output6205 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17257 17253) := by
  unfold output6205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6205_skip : Flapjack.WordAlloc.isSkip output6205 = false := by
  rw [output6205_def]
  conv => lhs; cbv
  try rfl
theorem node6205_eq : Flapjack.WordAlloc.removeDeadStructural input6205 value3107 value1 value2 = (output6205, value3108, value1) := by
  rw [input6205_def, output6205_def]
  try (conv => lhs; cbv)
  try rfl

def value3109 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17253 17249 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6206_def : input6206 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17253 17249 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17253 17249 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6206_def : output6206 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17253 17249 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6206_skip : Flapjack.WordAlloc.isSkip output6206 = false := by
  rw [output6206_def]
  conv => lhs; cbv
  try rfl
theorem node6206_eq : Flapjack.WordAlloc.removeDeadStructural input6206 value3108 value1 value2 = (output6206, value3109, value1) := by
  rw [input6206_def, output6206_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17249 Flapjack.WordStore.heapLength)).val
theorem input6207_def : input6207 = (Flapjack.WordLangProgHOL.get 17249 Flapjack.WordStore.heapLength) := by
  unfold input6207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17249 Flapjack.WordStore.heapLength)).val
theorem output6207_def : output6207 = (Flapjack.WordLangProgHOL.get 17249 Flapjack.WordStore.heapLength) := by
  unfold output6207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6207_skip : Flapjack.WordAlloc.isSkip output6207 = false := by
  rw [output6207_def]
  conv => lhs; cbv
  try rfl
theorem node6207_eq : Flapjack.WordAlloc.removeDeadStructural input6207 value3109 value1 value2 = (output6207, value5, value1) := by
  rw [input6207_def, output6207_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6207 input6206)).val
theorem input6208_def : input6208 = (.seq input6207 input6206) := by
  unfold input6208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6207 output6206)).val
theorem output6208_def : output6208 = (.seq output6207 output6206) := by
  unfold output6208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6208_skip : Flapjack.WordAlloc.isSkip output6208 = false := by
  rw [output6208_def]
  conv => lhs; cbv
  try rfl
theorem node6208_eq : Flapjack.WordAlloc.removeDeadStructural input6208 value3108 value1 value2 = (output6208, value5, value1) := by
  rw [input6208_def, output6208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6206_eq]
  dsimp only
  rw [node6207_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6208 input6205)).val
theorem input6209_def : input6209 = (.seq input6208 input6205) := by
  unfold input6209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6208 output6205)).val
theorem output6209_def : output6209 = (.seq output6208 output6205) := by
  unfold output6209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6209_skip : Flapjack.WordAlloc.isSkip output6209 = false := by
  rw [output6209_def]
  conv => lhs; cbv
  try rfl
theorem node6209_eq : Flapjack.WordAlloc.removeDeadStructural input6209 value3107 value1 value2 = (output6209, value5, value1) := by
  rw [input6209_def, output6209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6205_eq]
  dsimp only
  rw [node6208_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6209 input6204)).val
theorem input6210_def : input6210 = (.seq input6209 input6204) := by
  unfold input6210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6209 output6204)).val
theorem output6210_def : output6210 = (.seq output6209 output6204) := by
  unfold output6210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6210_skip : Flapjack.WordAlloc.isSkip output6210 = false := by
  rw [output6210_def]
  conv => lhs; cbv
  try rfl
theorem node6210_eq : Flapjack.WordAlloc.removeDeadStructural input6210 value3106 value1 value2 = (output6210, value5, value1) := by
  rw [input6210_def, output6210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6204_eq]
  dsimp only
  rw [node6209_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6210 input6203)).val
theorem input6211_def : input6211 = (.seq input6210 input6203) := by
  unfold input6211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6210 output6203)).val
theorem output6211_def : output6211 = (.seq output6210 output6203) := by
  unfold output6211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6211_skip : Flapjack.WordAlloc.isSkip output6211 = false := by
  rw [output6211_def]
  conv => lhs; cbv
  try rfl
theorem node6211_eq : Flapjack.WordAlloc.removeDeadStructural input6211 value3104 value1 value2 = (output6211, value5, value1) := by
  rw [input6211_def, output6211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6203_eq]
  dsimp only
  rw [node6210_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3110 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17241 (Flapjack.WordLangAddr.addr 17245 0#64)))).val
theorem input6212_def : input6212 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17241 (Flapjack.WordLangAddr.addr 17245 0#64))) := by
  unfold input6212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17241 (Flapjack.WordLangAddr.addr 17245 0#64)))).val
theorem output6212_def : output6212 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17241 (Flapjack.WordLangAddr.addr 17245 0#64))) := by
  unfold output6212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6212_skip : Flapjack.WordAlloc.isSkip output6212 = false := by
  rw [output6212_def]
  conv => lhs; cbv
  try rfl
theorem node6212_eq : Flapjack.WordAlloc.removeDeadStructural input6212 value5 value1 value2 = (output6212, value3110, value1) := by
  rw [input6212_def, output6212_def]
  try (conv => lhs; cbv)
  try rfl

def value3111 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17245, 17233)])).val
theorem input6213_def : input6213 = (Flapjack.WordLangProgHOL.move 0 [(17245, 17233)]) := by
  unfold input6213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17245, 17233)])).val
theorem output6213_def : output6213 = (Flapjack.WordLangProgHOL.move 0 [(17245, 17233)]) := by
  unfold output6213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6213_skip : Flapjack.WordAlloc.isSkip output6213 = false := by
  rw [output6213_def]
  conv => lhs; cbv
  try rfl
theorem node6213_eq : Flapjack.WordAlloc.removeDeadStructural input6213 value3110 value1 value2 = (output6213, value3111, value1) := by
  rw [input6213_def, output6213_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6213 input6212)).val
theorem input6214_def : input6214 = (.seq input6213 input6212) := by
  unfold input6214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6213 output6212)).val
theorem output6214_def : output6214 = (.seq output6213 output6212) := by
  unfold output6214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6214_skip : Flapjack.WordAlloc.isSkip output6214 = false := by
  rw [output6214_def]
  conv => lhs; cbv
  try rfl
theorem node6214_eq : Flapjack.WordAlloc.removeDeadStructural input6214 value5 value1 value2 = (output6214, value3111, value1) := by
  rw [input6214_def, output6214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6212_eq]
  dsimp only
  rw [node6213_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3112 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17241 5328758613570342114#64))).val
theorem input6215_def : input6215 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17241 5328758613570342114#64)) := by
  unfold input6215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17241 5328758613570342114#64))).val
theorem output6215_def : output6215 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17241 5328758613570342114#64)) := by
  unfold output6215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6215_skip : Flapjack.WordAlloc.isSkip output6215 = false := by
  rw [output6215_def]
  conv => lhs; cbv
  try rfl
theorem node6215_eq : Flapjack.WordAlloc.removeDeadStructural input6215 value3111 value1 value2 = (output6215, value3112, value1) := by
  rw [input6215_def, output6215_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17237 5328758613570342114#64))).val
theorem input6216_def : input6216 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17237 5328758613570342114#64)) := by
  unfold input6216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6216_def : output6216 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6216_skip : Flapjack.WordAlloc.isSkip output6216 = true := by
  rw [output6216_def]
  conv => lhs; cbv
  try rfl
theorem node6216_eq : Flapjack.WordAlloc.removeDeadStructural input6216 value3112 value1 value2 = (output6216, value3112, value1) := by
  rw [input6216_def, output6216_def]
  try (conv => lhs; cbv)
  try rfl

def value3113 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17233 17225 (Flapjack.WordRegImm.reg 17229))))).val
theorem input6217_def : input6217 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17233 17225 (Flapjack.WordRegImm.reg 17229)))) := by
  unfold input6217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17233 17225 (Flapjack.WordRegImm.reg 17229))))).val
theorem output6217_def : output6217 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17233 17225 (Flapjack.WordRegImm.reg 17229)))) := by
  unfold output6217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6217_skip : Flapjack.WordAlloc.isSkip output6217 = false := by
  rw [output6217_def]
  conv => lhs; cbv
  try rfl
theorem node6217_eq : Flapjack.WordAlloc.removeDeadStructural input6217 value3112 value1 value2 = (output6217, value3113, value1) := by
  rw [input6217_def, output6217_def]
  try (conv => lhs; cbv)
  try rfl

def value3114 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17229 4024#64))).val
theorem input6218_def : input6218 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17229 4024#64)) := by
  unfold input6218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17229 4024#64))).val
theorem output6218_def : output6218 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17229 4024#64)) := by
  unfold output6218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6218_skip : Flapjack.WordAlloc.isSkip output6218 = false := by
  rw [output6218_def]
  conv => lhs; cbv
  try rfl
theorem node6218_eq : Flapjack.WordAlloc.removeDeadStructural input6218 value3113 value1 value2 = (output6218, value3114, value1) := by
  rw [input6218_def, output6218_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6218 input6217)).val
theorem input6219_def : input6219 = (.seq input6218 input6217) := by
  unfold input6219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6218 output6217)).val
theorem output6219_def : output6219 = (.seq output6218 output6217) := by
  unfold output6219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6219_skip : Flapjack.WordAlloc.isSkip output6219 = false := by
  rw [output6219_def]
  conv => lhs; cbv
  try rfl
theorem node6219_eq : Flapjack.WordAlloc.removeDeadStructural input6219 value3112 value1 value2 = (output6219, value3114, value1) := by
  rw [input6219_def, output6219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6217_eq]
  dsimp only
  rw [node6218_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3115 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17225 (Flapjack.WordLangAddr.addr 17221 18446744073709551104#64)))).val
theorem input6220_def : input6220 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17225 (Flapjack.WordLangAddr.addr 17221 18446744073709551104#64))) := by
  unfold input6220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17225 (Flapjack.WordLangAddr.addr 17221 18446744073709551104#64)))).val
theorem output6220_def : output6220 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17225 (Flapjack.WordLangAddr.addr 17221 18446744073709551104#64))) := by
  unfold output6220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6220_skip : Flapjack.WordAlloc.isSkip output6220 = false := by
  rw [output6220_def]
  conv => lhs; cbv
  try rfl
theorem node6220_eq : Flapjack.WordAlloc.removeDeadStructural input6220 value3114 value1 value2 = (output6220, value3115, value1) := by
  rw [input6220_def, output6220_def]
  try (conv => lhs; cbv)
  try rfl

def value3116 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17221 17217)).val
theorem input6221_def : input6221 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17221 17217) := by
  unfold input6221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17221 17217)).val
theorem output6221_def : output6221 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17221 17217) := by
  unfold output6221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6221_skip : Flapjack.WordAlloc.isSkip output6221 = false := by
  rw [output6221_def]
  conv => lhs; cbv
  try rfl
theorem node6221_eq : Flapjack.WordAlloc.removeDeadStructural input6221 value3115 value1 value2 = (output6221, value3116, value1) := by
  rw [input6221_def, output6221_def]
  try (conv => lhs; cbv)
  try rfl

def value3117 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17217 17213 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6222_def : input6222 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17217 17213 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17217 17213 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6222_def : output6222 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17217 17213 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6222_skip : Flapjack.WordAlloc.isSkip output6222 = false := by
  rw [output6222_def]
  conv => lhs; cbv
  try rfl
theorem node6222_eq : Flapjack.WordAlloc.removeDeadStructural input6222 value3116 value1 value2 = (output6222, value3117, value1) := by
  rw [input6222_def, output6222_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17213 Flapjack.WordStore.heapLength)).val
theorem input6223_def : input6223 = (Flapjack.WordLangProgHOL.get 17213 Flapjack.WordStore.heapLength) := by
  unfold input6223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17213 Flapjack.WordStore.heapLength)).val
theorem output6223_def : output6223 = (Flapjack.WordLangProgHOL.get 17213 Flapjack.WordStore.heapLength) := by
  unfold output6223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6223_skip : Flapjack.WordAlloc.isSkip output6223 = false := by
  rw [output6223_def]
  conv => lhs; cbv
  try rfl
theorem node6223_eq : Flapjack.WordAlloc.removeDeadStructural input6223 value3117 value1 value2 = (output6223, value5, value1) := by
  rw [input6223_def, output6223_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6223 input6222)).val
theorem input6224_def : input6224 = (.seq input6223 input6222) := by
  unfold input6224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6223 output6222)).val
theorem output6224_def : output6224 = (.seq output6223 output6222) := by
  unfold output6224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6224_skip : Flapjack.WordAlloc.isSkip output6224 = false := by
  rw [output6224_def]
  conv => lhs; cbv
  try rfl
theorem node6224_eq : Flapjack.WordAlloc.removeDeadStructural input6224 value3116 value1 value2 = (output6224, value5, value1) := by
  rw [input6224_def, output6224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6222_eq]
  dsimp only
  rw [node6223_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6224 input6221)).val
theorem input6225_def : input6225 = (.seq input6224 input6221) := by
  unfold input6225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6224 output6221)).val
theorem output6225_def : output6225 = (.seq output6224 output6221) := by
  unfold output6225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6225_skip : Flapjack.WordAlloc.isSkip output6225 = false := by
  rw [output6225_def]
  conv => lhs; cbv
  try rfl
theorem node6225_eq : Flapjack.WordAlloc.removeDeadStructural input6225 value3115 value1 value2 = (output6225, value5, value1) := by
  rw [input6225_def, output6225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6221_eq]
  dsimp only
  rw [node6224_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6225 input6220)).val
theorem input6226_def : input6226 = (.seq input6225 input6220) := by
  unfold input6226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6225 output6220)).val
theorem output6226_def : output6226 = (.seq output6225 output6220) := by
  unfold output6226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6226_skip : Flapjack.WordAlloc.isSkip output6226 = false := by
  rw [output6226_def]
  conv => lhs; cbv
  try rfl
theorem node6226_eq : Flapjack.WordAlloc.removeDeadStructural input6226 value3114 value1 value2 = (output6226, value5, value1) := by
  rw [input6226_def, output6226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6220_eq]
  dsimp only
  rw [node6225_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6226 input6219)).val
theorem input6227_def : input6227 = (.seq input6226 input6219) := by
  unfold input6227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6226 output6219)).val
theorem output6227_def : output6227 = (.seq output6226 output6219) := by
  unfold output6227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6227_skip : Flapjack.WordAlloc.isSkip output6227 = false := by
  rw [output6227_def]
  conv => lhs; cbv
  try rfl
theorem node6227_eq : Flapjack.WordAlloc.removeDeadStructural input6227 value3112 value1 value2 = (output6227, value5, value1) := by
  rw [input6227_def, output6227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6219_eq]
  dsimp only
  rw [node6226_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3118 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
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
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17205 (Flapjack.WordLangAddr.addr 17209 0#64)))).val
theorem input6228_def : input6228 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17205 (Flapjack.WordLangAddr.addr 17209 0#64))) := by
  unfold input6228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17205 (Flapjack.WordLangAddr.addr 17209 0#64)))).val
theorem output6228_def : output6228 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17205 (Flapjack.WordLangAddr.addr 17209 0#64))) := by
  unfold output6228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6228_skip : Flapjack.WordAlloc.isSkip output6228 = false := by
  rw [output6228_def]
  conv => lhs; cbv
  try rfl
theorem node6228_eq : Flapjack.WordAlloc.removeDeadStructural input6228 value5 value1 value2 = (output6228, value3118, value1) := by
  rw [input6228_def, output6228_def]
  try (conv => lhs; cbv)
  try rfl

def value3119 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17209, 17197)])).val
theorem input6229_def : input6229 = (Flapjack.WordLangProgHOL.move 0 [(17209, 17197)]) := by
  unfold input6229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17209, 17197)])).val
theorem output6229_def : output6229 = (Flapjack.WordLangProgHOL.move 0 [(17209, 17197)]) := by
  unfold output6229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6229_skip : Flapjack.WordAlloc.isSkip output6229 = false := by
  rw [output6229_def]
  conv => lhs; cbv
  try rfl
theorem node6229_eq : Flapjack.WordAlloc.removeDeadStructural input6229 value3118 value1 value2 = (output6229, value3119, value1) := by
  rw [input6229_def, output6229_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6229 input6228)).val
theorem input6230_def : input6230 = (.seq input6229 input6228) := by
  unfold input6230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6229 output6228)).val
theorem output6230_def : output6230 = (.seq output6229 output6228) := by
  unfold output6230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6230_skip : Flapjack.WordAlloc.isSkip output6230 = false := by
  rw [output6230_def]
  conv => lhs; cbv
  try rfl
theorem node6230_eq : Flapjack.WordAlloc.removeDeadStructural input6230 value5 value1 value2 = (output6230, value3119, value1) := by
  rw [input6230_def, output6230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6228_eq]
  dsimp only
  rw [node6229_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3120 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17205 199925847119476652#64))).val
theorem input6231_def : input6231 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17205 199925847119476652#64)) := by
  unfold input6231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17205 199925847119476652#64))).val
theorem output6231_def : output6231 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17205 199925847119476652#64)) := by
  unfold output6231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6231_skip : Flapjack.WordAlloc.isSkip output6231 = false := by
  rw [output6231_def]
  conv => lhs; cbv
  try rfl
theorem node6231_eq : Flapjack.WordAlloc.removeDeadStructural input6231 value3119 value1 value2 = (output6231, value3120, value1) := by
  rw [input6231_def, output6231_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17201 199925847119476652#64))).val
theorem input6232_def : input6232 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17201 199925847119476652#64)) := by
  unfold input6232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6232_def : output6232 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6232_skip : Flapjack.WordAlloc.isSkip output6232 = true := by
  rw [output6232_def]
  conv => lhs; cbv
  try rfl
theorem node6232_eq : Flapjack.WordAlloc.removeDeadStructural input6232 value3120 value1 value2 = (output6232, value3120, value1) := by
  rw [input6232_def, output6232_def]
  try (conv => lhs; cbv)
  try rfl

def value3121 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17197 17189 (Flapjack.WordRegImm.reg 17193))))).val
theorem input6233_def : input6233 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17197 17189 (Flapjack.WordRegImm.reg 17193)))) := by
  unfold input6233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17197 17189 (Flapjack.WordRegImm.reg 17193))))).val
theorem output6233_def : output6233 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17197 17189 (Flapjack.WordRegImm.reg 17193)))) := by
  unfold output6233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6233_skip : Flapjack.WordAlloc.isSkip output6233 = false := by
  rw [output6233_def]
  conv => lhs; cbv
  try rfl
theorem node6233_eq : Flapjack.WordAlloc.removeDeadStructural input6233 value3120 value1 value2 = (output6233, value3121, value1) := by
  rw [input6233_def, output6233_def]
  try (conv => lhs; cbv)
  try rfl

def value3122 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17193 4016#64))).val
theorem input6234_def : input6234 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17193 4016#64)) := by
  unfold input6234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17193 4016#64))).val
theorem output6234_def : output6234 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17193 4016#64)) := by
  unfold output6234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6234_skip : Flapjack.WordAlloc.isSkip output6234 = false := by
  rw [output6234_def]
  conv => lhs; cbv
  try rfl
theorem node6234_eq : Flapjack.WordAlloc.removeDeadStructural input6234 value3121 value1 value2 = (output6234, value3122, value1) := by
  rw [input6234_def, output6234_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6234 input6233)).val
theorem input6235_def : input6235 = (.seq input6234 input6233) := by
  unfold input6235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6234 output6233)).val
theorem output6235_def : output6235 = (.seq output6234 output6233) := by
  unfold output6235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6235_skip : Flapjack.WordAlloc.isSkip output6235 = false := by
  rw [output6235_def]
  conv => lhs; cbv
  try rfl
theorem node6235_eq : Flapjack.WordAlloc.removeDeadStructural input6235 value3120 value1 value2 = (output6235, value3122, value1) := by
  rw [input6235_def, output6235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6233_eq]
  dsimp only
  rw [node6234_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3123 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17189 (Flapjack.WordLangAddr.addr 17185 18446744073709551104#64)))).val
theorem input6236_def : input6236 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17189 (Flapjack.WordLangAddr.addr 17185 18446744073709551104#64))) := by
  unfold input6236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17189 (Flapjack.WordLangAddr.addr 17185 18446744073709551104#64)))).val
theorem output6236_def : output6236 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17189 (Flapjack.WordLangAddr.addr 17185 18446744073709551104#64))) := by
  unfold output6236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6236_skip : Flapjack.WordAlloc.isSkip output6236 = false := by
  rw [output6236_def]
  conv => lhs; cbv
  try rfl
theorem node6236_eq : Flapjack.WordAlloc.removeDeadStructural input6236 value3122 value1 value2 = (output6236, value3123, value1) := by
  rw [input6236_def, output6236_def]
  try (conv => lhs; cbv)
  try rfl

def value3124 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17185 17181)).val
theorem input6237_def : input6237 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17185 17181) := by
  unfold input6237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17185 17181)).val
theorem output6237_def : output6237 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17185 17181) := by
  unfold output6237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6237_skip : Flapjack.WordAlloc.isSkip output6237 = false := by
  rw [output6237_def]
  conv => lhs; cbv
  try rfl
theorem node6237_eq : Flapjack.WordAlloc.removeDeadStructural input6237 value3123 value1 value2 = (output6237, value3124, value1) := by
  rw [input6237_def, output6237_def]
  try (conv => lhs; cbv)
  try rfl

def value3125 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17181 17177 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6238_def : input6238 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17181 17177 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17181 17177 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6238_def : output6238 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17181 17177 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6238_skip : Flapjack.WordAlloc.isSkip output6238 = false := by
  rw [output6238_def]
  conv => lhs; cbv
  try rfl
theorem node6238_eq : Flapjack.WordAlloc.removeDeadStructural input6238 value3124 value1 value2 = (output6238, value3125, value1) := by
  rw [input6238_def, output6238_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17177 Flapjack.WordStore.heapLength)).val
theorem input6239_def : input6239 = (Flapjack.WordLangProgHOL.get 17177 Flapjack.WordStore.heapLength) := by
  unfold input6239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17177 Flapjack.WordStore.heapLength)).val
theorem output6239_def : output6239 = (Flapjack.WordLangProgHOL.get 17177 Flapjack.WordStore.heapLength) := by
  unfold output6239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6239_skip : Flapjack.WordAlloc.isSkip output6239 = false := by
  rw [output6239_def]
  conv => lhs; cbv
  try rfl
theorem node6239_eq : Flapjack.WordAlloc.removeDeadStructural input6239 value3125 value1 value2 = (output6239, value5, value1) := by
  rw [input6239_def, output6239_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6239 input6238)).val
theorem input6240_def : input6240 = (.seq input6239 input6238) := by
  unfold input6240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6239 output6238)).val
theorem output6240_def : output6240 = (.seq output6239 output6238) := by
  unfold output6240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6240_skip : Flapjack.WordAlloc.isSkip output6240 = false := by
  rw [output6240_def]
  conv => lhs; cbv
  try rfl
theorem node6240_eq : Flapjack.WordAlloc.removeDeadStructural input6240 value3124 value1 value2 = (output6240, value5, value1) := by
  rw [input6240_def, output6240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6238_eq]
  dsimp only
  rw [node6239_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6240 input6237)).val
theorem input6241_def : input6241 = (.seq input6240 input6237) := by
  unfold input6241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6240 output6237)).val
theorem output6241_def : output6241 = (.seq output6240 output6237) := by
  unfold output6241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6241_skip : Flapjack.WordAlloc.isSkip output6241 = false := by
  rw [output6241_def]
  conv => lhs; cbv
  try rfl
theorem node6241_eq : Flapjack.WordAlloc.removeDeadStructural input6241 value3123 value1 value2 = (output6241, value5, value1) := by
  rw [input6241_def, output6241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6237_eq]
  dsimp only
  rw [node6240_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6241 input6236)).val
theorem input6242_def : input6242 = (.seq input6241 input6236) := by
  unfold input6242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6241 output6236)).val
theorem output6242_def : output6242 = (.seq output6241 output6236) := by
  unfold output6242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6242_skip : Flapjack.WordAlloc.isSkip output6242 = false := by
  rw [output6242_def]
  conv => lhs; cbv
  try rfl
theorem node6242_eq : Flapjack.WordAlloc.removeDeadStructural input6242 value3122 value1 value2 = (output6242, value5, value1) := by
  rw [input6242_def, output6242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6236_eq]
  dsimp only
  rw [node6241_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6242 input6235)).val
theorem input6243_def : input6243 = (.seq input6242 input6235) := by
  unfold input6243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6242 output6235)).val
theorem output6243_def : output6243 = (.seq output6242 output6235) := by
  unfold output6243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6243_skip : Flapjack.WordAlloc.isSkip output6243 = false := by
  rw [output6243_def]
  conv => lhs; cbv
  try rfl
theorem node6243_eq : Flapjack.WordAlloc.removeDeadStructural input6243 value3120 value1 value2 = (output6243, value5, value1) := by
  rw [input6243_def, output6243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6235_eq]
  dsimp only
  rw [node6242_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3126 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17169 (Flapjack.WordLangAddr.addr 17173 0#64)))).val
theorem input6244_def : input6244 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17169 (Flapjack.WordLangAddr.addr 17173 0#64))) := by
  unfold input6244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17169 (Flapjack.WordLangAddr.addr 17173 0#64)))).val
theorem output6244_def : output6244 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17169 (Flapjack.WordLangAddr.addr 17173 0#64))) := by
  unfold output6244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6244_skip : Flapjack.WordAlloc.isSkip output6244 = false := by
  rw [output6244_def]
  conv => lhs; cbv
  try rfl
theorem node6244_eq : Flapjack.WordAlloc.removeDeadStructural input6244 value5 value1 value2 = (output6244, value3126, value1) := by
  rw [input6244_def, output6244_def]
  try (conv => lhs; cbv)
  try rfl

def value3127 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17173, 17161)])).val
theorem input6245_def : input6245 = (Flapjack.WordLangProgHOL.move 0 [(17173, 17161)]) := by
  unfold input6245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17173, 17161)])).val
theorem output6245_def : output6245 = (Flapjack.WordLangProgHOL.move 0 [(17173, 17161)]) := by
  unfold output6245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6245_skip : Flapjack.WordAlloc.isSkip output6245 = false := by
  rw [output6245_def]
  conv => lhs; cbv
  try rfl
theorem node6245_eq : Flapjack.WordAlloc.removeDeadStructural input6245 value3126 value1 value2 = (output6245, value3127, value1) := by
  rw [input6245_def, output6245_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6245 input6244)).val
theorem input6246_def : input6246 = (.seq input6245 input6244) := by
  unfold input6246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6245 output6244)).val
theorem output6246_def : output6246 = (.seq output6245 output6244) := by
  unfold output6246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6246_skip : Flapjack.WordAlloc.isSkip output6246 = false := by
  rw [output6246_def]
  conv => lhs; cbv
  try rfl
theorem node6246_eq : Flapjack.WordAlloc.removeDeadStructural input6246 value5 value1 value2 = (output6246, value3127, value1) := by
  rw [input6246_def, output6246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6244_eq]
  dsimp only
  rw [node6245_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3128 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17169 855930740911588324#64))).val
theorem input6247_def : input6247 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17169 855930740911588324#64)) := by
  unfold input6247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17169 855930740911588324#64))).val
theorem output6247_def : output6247 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17169 855930740911588324#64)) := by
  unfold output6247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6247_skip : Flapjack.WordAlloc.isSkip output6247 = false := by
  rw [output6247_def]
  conv => lhs; cbv
  try rfl
theorem node6247_eq : Flapjack.WordAlloc.removeDeadStructural input6247 value3127 value1 value2 = (output6247, value3128, value1) := by
  rw [input6247_def, output6247_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17165 855930740911588324#64))).val
theorem input6248_def : input6248 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17165 855930740911588324#64)) := by
  unfold input6248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6248_def : output6248 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6248_skip : Flapjack.WordAlloc.isSkip output6248 = true := by
  rw [output6248_def]
  conv => lhs; cbv
  try rfl
theorem node6248_eq : Flapjack.WordAlloc.removeDeadStructural input6248 value3128 value1 value2 = (output6248, value3128, value1) := by
  rw [input6248_def, output6248_def]
  try (conv => lhs; cbv)
  try rfl

def value3129 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17161 17153 (Flapjack.WordRegImm.reg 17157))))).val
theorem input6249_def : input6249 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17161 17153 (Flapjack.WordRegImm.reg 17157)))) := by
  unfold input6249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17161 17153 (Flapjack.WordRegImm.reg 17157))))).val
theorem output6249_def : output6249 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17161 17153 (Flapjack.WordRegImm.reg 17157)))) := by
  unfold output6249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6249_skip : Flapjack.WordAlloc.isSkip output6249 = false := by
  rw [output6249_def]
  conv => lhs; cbv
  try rfl
theorem node6249_eq : Flapjack.WordAlloc.removeDeadStructural input6249 value3128 value1 value2 = (output6249, value3129, value1) := by
  rw [input6249_def, output6249_def]
  try (conv => lhs; cbv)
  try rfl

def value3130 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17157 4008#64))).val
theorem input6250_def : input6250 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17157 4008#64)) := by
  unfold input6250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17157 4008#64))).val
theorem output6250_def : output6250 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17157 4008#64)) := by
  unfold output6250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6250_skip : Flapjack.WordAlloc.isSkip output6250 = false := by
  rw [output6250_def]
  conv => lhs; cbv
  try rfl
theorem node6250_eq : Flapjack.WordAlloc.removeDeadStructural input6250 value3129 value1 value2 = (output6250, value3130, value1) := by
  rw [input6250_def, output6250_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6250 input6249)).val
theorem input6251_def : input6251 = (.seq input6250 input6249) := by
  unfold input6251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6250 output6249)).val
theorem output6251_def : output6251 = (.seq output6250 output6249) := by
  unfold output6251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6251_skip : Flapjack.WordAlloc.isSkip output6251 = false := by
  rw [output6251_def]
  conv => lhs; cbv
  try rfl
theorem node6251_eq : Flapjack.WordAlloc.removeDeadStructural input6251 value3128 value1 value2 = (output6251, value3130, value1) := by
  rw [input6251_def, output6251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6249_eq]
  dsimp only
  rw [node6250_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3131 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17153 (Flapjack.WordLangAddr.addr 17149 18446744073709551104#64)))).val
theorem input6252_def : input6252 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17153 (Flapjack.WordLangAddr.addr 17149 18446744073709551104#64))) := by
  unfold input6252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17153 (Flapjack.WordLangAddr.addr 17149 18446744073709551104#64)))).val
theorem output6252_def : output6252 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17153 (Flapjack.WordLangAddr.addr 17149 18446744073709551104#64))) := by
  unfold output6252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6252_skip : Flapjack.WordAlloc.isSkip output6252 = false := by
  rw [output6252_def]
  conv => lhs; cbv
  try rfl
theorem node6252_eq : Flapjack.WordAlloc.removeDeadStructural input6252 value3130 value1 value2 = (output6252, value3131, value1) := by
  rw [input6252_def, output6252_def]
  try (conv => lhs; cbv)
  try rfl

def value3132 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17149 17145)).val
theorem input6253_def : input6253 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17149 17145) := by
  unfold input6253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17149 17145)).val
theorem output6253_def : output6253 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17149 17145) := by
  unfold output6253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6253_skip : Flapjack.WordAlloc.isSkip output6253 = false := by
  rw [output6253_def]
  conv => lhs; cbv
  try rfl
theorem node6253_eq : Flapjack.WordAlloc.removeDeadStructural input6253 value3131 value1 value2 = (output6253, value3132, value1) := by
  rw [input6253_def, output6253_def]
  try (conv => lhs; cbv)
  try rfl

def value3133 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17145 17141 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6254_def : input6254 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17145 17141 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17145 17141 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6254_def : output6254 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17145 17141 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6254_skip : Flapjack.WordAlloc.isSkip output6254 = false := by
  rw [output6254_def]
  conv => lhs; cbv
  try rfl
theorem node6254_eq : Flapjack.WordAlloc.removeDeadStructural input6254 value3132 value1 value2 = (output6254, value3133, value1) := by
  rw [input6254_def, output6254_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17141 Flapjack.WordStore.heapLength)).val
theorem input6255_def : input6255 = (Flapjack.WordLangProgHOL.get 17141 Flapjack.WordStore.heapLength) := by
  unfold input6255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17141 Flapjack.WordStore.heapLength)).val
theorem output6255_def : output6255 = (Flapjack.WordLangProgHOL.get 17141 Flapjack.WordStore.heapLength) := by
  unfold output6255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6255_skip : Flapjack.WordAlloc.isSkip output6255 = false := by
  rw [output6255_def]
  conv => lhs; cbv
  try rfl
theorem node6255_eq : Flapjack.WordAlloc.removeDeadStructural input6255 value3133 value1 value2 = (output6255, value5, value1) := by
  rw [input6255_def, output6255_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6255 input6254)).val
theorem input6256_def : input6256 = (.seq input6255 input6254) := by
  unfold input6256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6255 output6254)).val
theorem output6256_def : output6256 = (.seq output6255 output6254) := by
  unfold output6256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6256_skip : Flapjack.WordAlloc.isSkip output6256 = false := by
  rw [output6256_def]
  conv => lhs; cbv
  try rfl
theorem node6256_eq : Flapjack.WordAlloc.removeDeadStructural input6256 value3132 value1 value2 = (output6256, value5, value1) := by
  rw [input6256_def, output6256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6254_eq]
  dsimp only
  rw [node6255_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6256 input6253)).val
theorem input6257_def : input6257 = (.seq input6256 input6253) := by
  unfold input6257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6256 output6253)).val
theorem output6257_def : output6257 = (.seq output6256 output6253) := by
  unfold output6257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6257_skip : Flapjack.WordAlloc.isSkip output6257 = false := by
  rw [output6257_def]
  conv => lhs; cbv
  try rfl
theorem node6257_eq : Flapjack.WordAlloc.removeDeadStructural input6257 value3131 value1 value2 = (output6257, value5, value1) := by
  rw [input6257_def, output6257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6253_eq]
  dsimp only
  rw [node6256_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6257 input6252)).val
theorem input6258_def : input6258 = (.seq input6257 input6252) := by
  unfold input6258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6257 output6252)).val
theorem output6258_def : output6258 = (.seq output6257 output6252) := by
  unfold output6258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6258_skip : Flapjack.WordAlloc.isSkip output6258 = false := by
  rw [output6258_def]
  conv => lhs; cbv
  try rfl
theorem node6258_eq : Flapjack.WordAlloc.removeDeadStructural input6258 value3130 value1 value2 = (output6258, value5, value1) := by
  rw [input6258_def, output6258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6252_eq]
  dsimp only
  rw [node6257_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6258 input6251)).val
theorem input6259_def : input6259 = (.seq input6258 input6251) := by
  unfold input6259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6258 output6251)).val
theorem output6259_def : output6259 = (.seq output6258 output6251) := by
  unfold output6259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6259_skip : Flapjack.WordAlloc.isSkip output6259 = false := by
  rw [output6259_def]
  conv => lhs; cbv
  try rfl
theorem node6259_eq : Flapjack.WordAlloc.removeDeadStructural input6259 value3128 value1 value2 = (output6259, value5, value1) := by
  rw [input6259_def, output6259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6251_eq]
  dsimp only
  rw [node6258_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3134 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17133 (Flapjack.WordLangAddr.addr 17137 0#64)))).val
theorem input6260_def : input6260 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17133 (Flapjack.WordLangAddr.addr 17137 0#64))) := by
  unfold input6260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17133 (Flapjack.WordLangAddr.addr 17137 0#64)))).val
theorem output6260_def : output6260 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17133 (Flapjack.WordLangAddr.addr 17137 0#64))) := by
  unfold output6260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6260_skip : Flapjack.WordAlloc.isSkip output6260 = false := by
  rw [output6260_def]
  conv => lhs; cbv
  try rfl
theorem node6260_eq : Flapjack.WordAlloc.removeDeadStructural input6260 value5 value1 value2 = (output6260, value3134, value1) := by
  rw [input6260_def, output6260_def]
  try (conv => lhs; cbv)
  try rfl

def value3135 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17137, 17125)])).val
theorem input6261_def : input6261 = (Flapjack.WordLangProgHOL.move 0 [(17137, 17125)]) := by
  unfold input6261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17137, 17125)])).val
theorem output6261_def : output6261 = (Flapjack.WordLangProgHOL.move 0 [(17137, 17125)]) := by
  unfold output6261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6261_skip : Flapjack.WordAlloc.isSkip output6261 = false := by
  rw [output6261_def]
  conv => lhs; cbv
  try rfl
theorem node6261_eq : Flapjack.WordAlloc.removeDeadStructural input6261 value3134 value1 value2 = (output6261, value3135, value1) := by
  rw [input6261_def, output6261_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6261 input6260)).val
theorem input6262_def : input6262 = (.seq input6261 input6260) := by
  unfold input6262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6261 output6260)).val
theorem output6262_def : output6262 = (.seq output6261 output6260) := by
  unfold output6262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6262_skip : Flapjack.WordAlloc.isSkip output6262 = false := by
  rw [output6262_def]
  conv => lhs; cbv
  try rfl
theorem node6262_eq : Flapjack.WordAlloc.removeDeadStructural input6262 value5 value1 value2 = (output6262, value3135, value1) := by
  rw [input6262_def, output6262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6260_eq]
  dsimp only
  rw [node6261_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3136 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17133 12685735333705453020#64))).val
theorem input6263_def : input6263 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17133 12685735333705453020#64)) := by
  unfold input6263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17133 12685735333705453020#64))).val
theorem output6263_def : output6263 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17133 12685735333705453020#64)) := by
  unfold output6263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6263_skip : Flapjack.WordAlloc.isSkip output6263 = false := by
  rw [output6263_def]
  conv => lhs; cbv
  try rfl
theorem node6263_eq : Flapjack.WordAlloc.removeDeadStructural input6263 value3135 value1 value2 = (output6263, value3136, value1) := by
  rw [input6263_def, output6263_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17129 12685735333705453020#64))).val
theorem input6264_def : input6264 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17129 12685735333705453020#64)) := by
  unfold input6264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6264_def : output6264 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6264_skip : Flapjack.WordAlloc.isSkip output6264 = true := by
  rw [output6264_def]
  conv => lhs; cbv
  try rfl
theorem node6264_eq : Flapjack.WordAlloc.removeDeadStructural input6264 value3136 value1 value2 = (output6264, value3136, value1) := by
  rw [input6264_def, output6264_def]
  try (conv => lhs; cbv)
  try rfl

def value3137 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17125 17117 (Flapjack.WordRegImm.reg 17121))))).val
theorem input6265_def : input6265 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17125 17117 (Flapjack.WordRegImm.reg 17121)))) := by
  unfold input6265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17125 17117 (Flapjack.WordRegImm.reg 17121))))).val
theorem output6265_def : output6265 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17125 17117 (Flapjack.WordRegImm.reg 17121)))) := by
  unfold output6265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6265_skip : Flapjack.WordAlloc.isSkip output6265 = false := by
  rw [output6265_def]
  conv => lhs; cbv
  try rfl
theorem node6265_eq : Flapjack.WordAlloc.removeDeadStructural input6265 value3136 value1 value2 = (output6265, value3137, value1) := by
  rw [input6265_def, output6265_def]
  try (conv => lhs; cbv)
  try rfl

def value3138 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17121 4000#64))).val
theorem input6266_def : input6266 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17121 4000#64)) := by
  unfold input6266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17121 4000#64))).val
theorem output6266_def : output6266 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17121 4000#64)) := by
  unfold output6266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6266_skip : Flapjack.WordAlloc.isSkip output6266 = false := by
  rw [output6266_def]
  conv => lhs; cbv
  try rfl
theorem node6266_eq : Flapjack.WordAlloc.removeDeadStructural input6266 value3137 value1 value2 = (output6266, value3138, value1) := by
  rw [input6266_def, output6266_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6266 input6265)).val
theorem input6267_def : input6267 = (.seq input6266 input6265) := by
  unfold input6267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6266 output6265)).val
theorem output6267_def : output6267 = (.seq output6266 output6265) := by
  unfold output6267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6267_skip : Flapjack.WordAlloc.isSkip output6267 = false := by
  rw [output6267_def]
  conv => lhs; cbv
  try rfl
theorem node6267_eq : Flapjack.WordAlloc.removeDeadStructural input6267 value3136 value1 value2 = (output6267, value3138, value1) := by
  rw [input6267_def, output6267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6265_eq]
  dsimp only
  rw [node6266_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3139 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17117 (Flapjack.WordLangAddr.addr 17113 18446744073709551104#64)))).val
theorem input6268_def : input6268 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17117 (Flapjack.WordLangAddr.addr 17113 18446744073709551104#64))) := by
  unfold input6268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17117 (Flapjack.WordLangAddr.addr 17113 18446744073709551104#64)))).val
theorem output6268_def : output6268 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17117 (Flapjack.WordLangAddr.addr 17113 18446744073709551104#64))) := by
  unfold output6268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6268_skip : Flapjack.WordAlloc.isSkip output6268 = false := by
  rw [output6268_def]
  conv => lhs; cbv
  try rfl
theorem node6268_eq : Flapjack.WordAlloc.removeDeadStructural input6268 value3138 value1 value2 = (output6268, value3139, value1) := by
  rw [input6268_def, output6268_def]
  try (conv => lhs; cbv)
  try rfl

def value3140 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17113 17109)).val
theorem input6269_def : input6269 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17113 17109) := by
  unfold input6269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17113 17109)).val
theorem output6269_def : output6269 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17113 17109) := by
  unfold output6269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6269_skip : Flapjack.WordAlloc.isSkip output6269 = false := by
  rw [output6269_def]
  conv => lhs; cbv
  try rfl
theorem node6269_eq : Flapjack.WordAlloc.removeDeadStructural input6269 value3139 value1 value2 = (output6269, value3140, value1) := by
  rw [input6269_def, output6269_def]
  try (conv => lhs; cbv)
  try rfl

def value3141 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17109 17105 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6270_def : input6270 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17109 17105 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17109 17105 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6270_def : output6270 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17109 17105 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6270_skip : Flapjack.WordAlloc.isSkip output6270 = false := by
  rw [output6270_def]
  conv => lhs; cbv
  try rfl
theorem node6270_eq : Flapjack.WordAlloc.removeDeadStructural input6270 value3140 value1 value2 = (output6270, value3141, value1) := by
  rw [input6270_def, output6270_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17105 Flapjack.WordStore.heapLength)).val
theorem input6271_def : input6271 = (Flapjack.WordLangProgHOL.get 17105 Flapjack.WordStore.heapLength) := by
  unfold input6271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17105 Flapjack.WordStore.heapLength)).val
theorem output6271_def : output6271 = (Flapjack.WordLangProgHOL.get 17105 Flapjack.WordStore.heapLength) := by
  unfold output6271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6271_skip : Flapjack.WordAlloc.isSkip output6271 = false := by
  rw [output6271_def]
  conv => lhs; cbv
  try rfl
theorem node6271_eq : Flapjack.WordAlloc.removeDeadStructural input6271 value3141 value1 value2 = (output6271, value5, value1) := by
  rw [input6271_def, output6271_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6271 input6270)).val
theorem input6272_def : input6272 = (.seq input6271 input6270) := by
  unfold input6272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6271 output6270)).val
theorem output6272_def : output6272 = (.seq output6271 output6270) := by
  unfold output6272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6272_skip : Flapjack.WordAlloc.isSkip output6272 = false := by
  rw [output6272_def]
  conv => lhs; cbv
  try rfl
theorem node6272_eq : Flapjack.WordAlloc.removeDeadStructural input6272 value3140 value1 value2 = (output6272, value5, value1) := by
  rw [input6272_def, output6272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6270_eq]
  dsimp only
  rw [node6271_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6272 input6269)).val
theorem input6273_def : input6273 = (.seq input6272 input6269) := by
  unfold input6273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6272 output6269)).val
theorem output6273_def : output6273 = (.seq output6272 output6269) := by
  unfold output6273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6273_skip : Flapjack.WordAlloc.isSkip output6273 = false := by
  rw [output6273_def]
  conv => lhs; cbv
  try rfl
theorem node6273_eq : Flapjack.WordAlloc.removeDeadStructural input6273 value3139 value1 value2 = (output6273, value5, value1) := by
  rw [input6273_def, output6273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6269_eq]
  dsimp only
  rw [node6272_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6273 input6268)).val
theorem input6274_def : input6274 = (.seq input6273 input6268) := by
  unfold input6274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6273 output6268)).val
theorem output6274_def : output6274 = (.seq output6273 output6268) := by
  unfold output6274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6274_skip : Flapjack.WordAlloc.isSkip output6274 = false := by
  rw [output6274_def]
  conv => lhs; cbv
  try rfl
theorem node6274_eq : Flapjack.WordAlloc.removeDeadStructural input6274 value3138 value1 value2 = (output6274, value5, value1) := by
  rw [input6274_def, output6274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6268_eq]
  dsimp only
  rw [node6273_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6274 input6267)).val
theorem input6275_def : input6275 = (.seq input6274 input6267) := by
  unfold input6275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6274 output6267)).val
theorem output6275_def : output6275 = (.seq output6274 output6267) := by
  unfold output6275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6275_skip : Flapjack.WordAlloc.isSkip output6275 = false := by
  rw [output6275_def]
  conv => lhs; cbv
  try rfl
theorem node6275_eq : Flapjack.WordAlloc.removeDeadStructural input6275 value3136 value1 value2 = (output6275, value5, value1) := by
  rw [input6275_def, output6275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6267_eq]
  dsimp only
  rw [node6274_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3142 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17097 (Flapjack.WordLangAddr.addr 17101 0#64)))).val
theorem input6276_def : input6276 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17097 (Flapjack.WordLangAddr.addr 17101 0#64))) := by
  unfold input6276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17097 (Flapjack.WordLangAddr.addr 17101 0#64)))).val
theorem output6276_def : output6276 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17097 (Flapjack.WordLangAddr.addr 17101 0#64))) := by
  unfold output6276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6276_skip : Flapjack.WordAlloc.isSkip output6276 = false := by
  rw [output6276_def]
  conv => lhs; cbv
  try rfl
theorem node6276_eq : Flapjack.WordAlloc.removeDeadStructural input6276 value5 value1 value2 = (output6276, value3142, value1) := by
  rw [input6276_def, output6276_def]
  try (conv => lhs; cbv)
  try rfl

def value3143 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17101, 17089)])).val
theorem input6277_def : input6277 = (Flapjack.WordLangProgHOL.move 0 [(17101, 17089)]) := by
  unfold input6277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17101, 17089)])).val
theorem output6277_def : output6277 = (Flapjack.WordLangProgHOL.move 0 [(17101, 17089)]) := by
  unfold output6277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6277_skip : Flapjack.WordAlloc.isSkip output6277 = false := by
  rw [output6277_def]
  conv => lhs; cbv
  try rfl
theorem node6277_eq : Flapjack.WordAlloc.removeDeadStructural input6277 value3142 value1 value2 = (output6277, value3143, value1) := by
  rw [input6277_def, output6277_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6277 input6276)).val
theorem input6278_def : input6278 = (.seq input6277 input6276) := by
  unfold input6278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6277 output6276)).val
theorem output6278_def : output6278 = (.seq output6277 output6276) := by
  unfold output6278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6278_skip : Flapjack.WordAlloc.isSkip output6278 = false := by
  rw [output6278_def]
  conv => lhs; cbv
  try rfl
theorem node6278_eq : Flapjack.WordAlloc.removeDeadStructural input6278 value5 value1 value2 = (output6278, value3143, value1) := by
  rw [input6278_def, output6278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6276_eq]
  dsimp only
  rw [node6277_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3144 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17097 14326404096614579120#64))).val
theorem input6279_def : input6279 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17097 14326404096614579120#64)) := by
  unfold input6279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17097 14326404096614579120#64))).val
theorem output6279_def : output6279 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17097 14326404096614579120#64)) := by
  unfold output6279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6279_skip : Flapjack.WordAlloc.isSkip output6279 = false := by
  rw [output6279_def]
  conv => lhs; cbv
  try rfl
theorem node6279_eq : Flapjack.WordAlloc.removeDeadStructural input6279 value3143 value1 value2 = (output6279, value3144, value1) := by
  rw [input6279_def, output6279_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17093 14326404096614579120#64))).val
theorem input6280_def : input6280 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17093 14326404096614579120#64)) := by
  unfold input6280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6280_def : output6280 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6280_skip : Flapjack.WordAlloc.isSkip output6280 = true := by
  rw [output6280_def]
  conv => lhs; cbv
  try rfl
theorem node6280_eq : Flapjack.WordAlloc.removeDeadStructural input6280 value3144 value1 value2 = (output6280, value3144, value1) := by
  rw [input6280_def, output6280_def]
  try (conv => lhs; cbv)
  try rfl

def value3145 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17089 17081 (Flapjack.WordRegImm.reg 17085))))).val
theorem input6281_def : input6281 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17089 17081 (Flapjack.WordRegImm.reg 17085)))) := by
  unfold input6281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17089 17081 (Flapjack.WordRegImm.reg 17085))))).val
theorem output6281_def : output6281 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17089 17081 (Flapjack.WordRegImm.reg 17085)))) := by
  unfold output6281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6281_skip : Flapjack.WordAlloc.isSkip output6281 = false := by
  rw [output6281_def]
  conv => lhs; cbv
  try rfl
theorem node6281_eq : Flapjack.WordAlloc.removeDeadStructural input6281 value3144 value1 value2 = (output6281, value3145, value1) := by
  rw [input6281_def, output6281_def]
  try (conv => lhs; cbv)
  try rfl

def value3146 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17085 3992#64))).val
theorem input6282_def : input6282 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17085 3992#64)) := by
  unfold input6282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17085 3992#64))).val
theorem output6282_def : output6282 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17085 3992#64)) := by
  unfold output6282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6282_skip : Flapjack.WordAlloc.isSkip output6282 = false := by
  rw [output6282_def]
  conv => lhs; cbv
  try rfl
theorem node6282_eq : Flapjack.WordAlloc.removeDeadStructural input6282 value3145 value1 value2 = (output6282, value3146, value1) := by
  rw [input6282_def, output6282_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6282 input6281)).val
theorem input6283_def : input6283 = (.seq input6282 input6281) := by
  unfold input6283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6282 output6281)).val
theorem output6283_def : output6283 = (.seq output6282 output6281) := by
  unfold output6283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6283_skip : Flapjack.WordAlloc.isSkip output6283 = false := by
  rw [output6283_def]
  conv => lhs; cbv
  try rfl
theorem node6283_eq : Flapjack.WordAlloc.removeDeadStructural input6283 value3144 value1 value2 = (output6283, value3146, value1) := by
  rw [input6283_def, output6283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6281_eq]
  dsimp only
  rw [node6282_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3147 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17081 (Flapjack.WordLangAddr.addr 17077 18446744073709551104#64)))).val
theorem input6284_def : input6284 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17081 (Flapjack.WordLangAddr.addr 17077 18446744073709551104#64))) := by
  unfold input6284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17081 (Flapjack.WordLangAddr.addr 17077 18446744073709551104#64)))).val
theorem output6284_def : output6284 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17081 (Flapjack.WordLangAddr.addr 17077 18446744073709551104#64))) := by
  unfold output6284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6284_skip : Flapjack.WordAlloc.isSkip output6284 = false := by
  rw [output6284_def]
  conv => lhs; cbv
  try rfl
theorem node6284_eq : Flapjack.WordAlloc.removeDeadStructural input6284 value3146 value1 value2 = (output6284, value3147, value1) := by
  rw [input6284_def, output6284_def]
  try (conv => lhs; cbv)
  try rfl

def value3148 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17077 17073)).val
theorem input6285_def : input6285 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17077 17073) := by
  unfold input6285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17077 17073)).val
theorem output6285_def : output6285 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17077 17073) := by
  unfold output6285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6285_skip : Flapjack.WordAlloc.isSkip output6285 = false := by
  rw [output6285_def]
  conv => lhs; cbv
  try rfl
theorem node6285_eq : Flapjack.WordAlloc.removeDeadStructural input6285 value3147 value1 value2 = (output6285, value3148, value1) := by
  rw [input6285_def, output6285_def]
  try (conv => lhs; cbv)
  try rfl

def value3149 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17073 17069 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6286_def : input6286 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17073 17069 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17073 17069 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6286_def : output6286 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17073 17069 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6286_skip : Flapjack.WordAlloc.isSkip output6286 = false := by
  rw [output6286_def]
  conv => lhs; cbv
  try rfl
theorem node6286_eq : Flapjack.WordAlloc.removeDeadStructural input6286 value3148 value1 value2 = (output6286, value3149, value1) := by
  rw [input6286_def, output6286_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17069 Flapjack.WordStore.heapLength)).val
theorem input6287_def : input6287 = (Flapjack.WordLangProgHOL.get 17069 Flapjack.WordStore.heapLength) := by
  unfold input6287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17069 Flapjack.WordStore.heapLength)).val
theorem output6287_def : output6287 = (Flapjack.WordLangProgHOL.get 17069 Flapjack.WordStore.heapLength) := by
  unfold output6287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6287_skip : Flapjack.WordAlloc.isSkip output6287 = false := by
  rw [output6287_def]
  conv => lhs; cbv
  try rfl
theorem node6287_eq : Flapjack.WordAlloc.removeDeadStructural input6287 value3149 value1 value2 = (output6287, value5, value1) := by
  rw [input6287_def, output6287_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6287 input6286)).val
theorem input6288_def : input6288 = (.seq input6287 input6286) := by
  unfold input6288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6287 output6286)).val
theorem output6288_def : output6288 = (.seq output6287 output6286) := by
  unfold output6288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6288_skip : Flapjack.WordAlloc.isSkip output6288 = false := by
  rw [output6288_def]
  conv => lhs; cbv
  try rfl
theorem node6288_eq : Flapjack.WordAlloc.removeDeadStructural input6288 value3148 value1 value2 = (output6288, value5, value1) := by
  rw [input6288_def, output6288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6286_eq]
  dsimp only
  rw [node6287_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6288 input6285)).val
theorem input6289_def : input6289 = (.seq input6288 input6285) := by
  unfold input6289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6288 output6285)).val
theorem output6289_def : output6289 = (.seq output6288 output6285) := by
  unfold output6289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6289_skip : Flapjack.WordAlloc.isSkip output6289 = false := by
  rw [output6289_def]
  conv => lhs; cbv
  try rfl
theorem node6289_eq : Flapjack.WordAlloc.removeDeadStructural input6289 value3147 value1 value2 = (output6289, value5, value1) := by
  rw [input6289_def, output6289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6285_eq]
  dsimp only
  rw [node6288_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6289 input6284)).val
theorem input6290_def : input6290 = (.seq input6289 input6284) := by
  unfold input6290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6289 output6284)).val
theorem output6290_def : output6290 = (.seq output6289 output6284) := by
  unfold output6290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6290_skip : Flapjack.WordAlloc.isSkip output6290 = false := by
  rw [output6290_def]
  conv => lhs; cbv
  try rfl
theorem node6290_eq : Flapjack.WordAlloc.removeDeadStructural input6290 value3146 value1 value2 = (output6290, value5, value1) := by
  rw [input6290_def, output6290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6284_eq]
  dsimp only
  rw [node6289_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6290 input6283)).val
theorem input6291_def : input6291 = (.seq input6290 input6283) := by
  unfold input6291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6290 output6283)).val
theorem output6291_def : output6291 = (.seq output6290 output6283) := by
  unfold output6291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6291_skip : Flapjack.WordAlloc.isSkip output6291 = false := by
  rw [output6291_def]
  conv => lhs; cbv
  try rfl
theorem node6291_eq : Flapjack.WordAlloc.removeDeadStructural input6291 value3144 value1 value2 = (output6291, value5, value1) := by
  rw [input6291_def, output6291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6283_eq]
  dsimp only
  rw [node6290_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3150 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17061 (Flapjack.WordLangAddr.addr 17065 0#64)))).val
theorem input6292_def : input6292 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17061 (Flapjack.WordLangAddr.addr 17065 0#64))) := by
  unfold input6292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17061 (Flapjack.WordLangAddr.addr 17065 0#64)))).val
theorem output6292_def : output6292 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17061 (Flapjack.WordLangAddr.addr 17065 0#64))) := by
  unfold output6292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6292_skip : Flapjack.WordAlloc.isSkip output6292 = false := by
  rw [output6292_def]
  conv => lhs; cbv
  try rfl
theorem node6292_eq : Flapjack.WordAlloc.removeDeadStructural input6292 value5 value1 value2 = (output6292, value3150, value1) := by
  rw [input6292_def, output6292_def]
  try (conv => lhs; cbv)
  try rfl

def value3151 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17065, 17053)])).val
theorem input6293_def : input6293 = (Flapjack.WordLangProgHOL.move 0 [(17065, 17053)]) := by
  unfold input6293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17065, 17053)])).val
theorem output6293_def : output6293 = (Flapjack.WordLangProgHOL.move 0 [(17065, 17053)]) := by
  unfold output6293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6293_skip : Flapjack.WordAlloc.isSkip output6293 = false := by
  rw [output6293_def]
  conv => lhs; cbv
  try rfl
theorem node6293_eq : Flapjack.WordAlloc.removeDeadStructural input6293 value3150 value1 value2 = (output6293, value3151, value1) := by
  rw [input6293_def, output6293_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6293 input6292)).val
theorem input6294_def : input6294 = (.seq input6293 input6292) := by
  unfold input6294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6293 output6292)).val
theorem output6294_def : output6294 = (.seq output6293 output6292) := by
  unfold output6294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6294_skip : Flapjack.WordAlloc.isSkip output6294 = false := by
  rw [output6294_def]
  conv => lhs; cbv
  try rfl
theorem node6294_eq : Flapjack.WordAlloc.removeDeadStructural input6294 value5 value1 value2 = (output6294, value3151, value1) := by
  rw [input6294_def, output6294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6292_eq]
  dsimp only
  rw [node6293_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3152 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17061 6066025509460822294#64))).val
theorem input6295_def : input6295 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17061 6066025509460822294#64)) := by
  unfold input6295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17061 6066025509460822294#64))).val
theorem output6295_def : output6295 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17061 6066025509460822294#64)) := by
  unfold output6295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6295_skip : Flapjack.WordAlloc.isSkip output6295 = false := by
  rw [output6295_def]
  conv => lhs; cbv
  try rfl
theorem node6295_eq : Flapjack.WordAlloc.removeDeadStructural input6295 value3151 value1 value2 = (output6295, value3152, value1) := by
  rw [input6295_def, output6295_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17057 6066025509460822294#64))).val
theorem input6296_def : input6296 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17057 6066025509460822294#64)) := by
  unfold input6296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6296_def : output6296 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6296_skip : Flapjack.WordAlloc.isSkip output6296 = true := by
  rw [output6296_def]
  conv => lhs; cbv
  try rfl
theorem node6296_eq : Flapjack.WordAlloc.removeDeadStructural input6296 value3152 value1 value2 = (output6296, value3152, value1) := by
  rw [input6296_def, output6296_def]
  try (conv => lhs; cbv)
  try rfl

def value3153 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17053 17045 (Flapjack.WordRegImm.reg 17049))))).val
theorem input6297_def : input6297 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17053 17045 (Flapjack.WordRegImm.reg 17049)))) := by
  unfold input6297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17053 17045 (Flapjack.WordRegImm.reg 17049))))).val
theorem output6297_def : output6297 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17053 17045 (Flapjack.WordRegImm.reg 17049)))) := by
  unfold output6297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6297_skip : Flapjack.WordAlloc.isSkip output6297 = false := by
  rw [output6297_def]
  conv => lhs; cbv
  try rfl
theorem node6297_eq : Flapjack.WordAlloc.removeDeadStructural input6297 value3152 value1 value2 = (output6297, value3153, value1) := by
  rw [input6297_def, output6297_def]
  try (conv => lhs; cbv)
  try rfl

def value3154 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17049 3984#64))).val
theorem input6298_def : input6298 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17049 3984#64)) := by
  unfold input6298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17049 3984#64))).val
theorem output6298_def : output6298 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17049 3984#64)) := by
  unfold output6298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6298_skip : Flapjack.WordAlloc.isSkip output6298 = false := by
  rw [output6298_def]
  conv => lhs; cbv
  try rfl
theorem node6298_eq : Flapjack.WordAlloc.removeDeadStructural input6298 value3153 value1 value2 = (output6298, value3154, value1) := by
  rw [input6298_def, output6298_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6298 input6297)).val
theorem input6299_def : input6299 = (.seq input6298 input6297) := by
  unfold input6299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6298 output6297)).val
theorem output6299_def : output6299 = (.seq output6298 output6297) := by
  unfold output6299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6299_skip : Flapjack.WordAlloc.isSkip output6299 = false := by
  rw [output6299_def]
  conv => lhs; cbv
  try rfl
theorem node6299_eq : Flapjack.WordAlloc.removeDeadStructural input6299 value3152 value1 value2 = (output6299, value3154, value1) := by
  rw [input6299_def, output6299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6297_eq]
  dsimp only
  rw [node6298_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3155 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17045 (Flapjack.WordLangAddr.addr 17041 18446744073709551104#64)))).val
theorem input6300_def : input6300 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17045 (Flapjack.WordLangAddr.addr 17041 18446744073709551104#64))) := by
  unfold input6300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17045 (Flapjack.WordLangAddr.addr 17041 18446744073709551104#64)))).val
theorem output6300_def : output6300 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17045 (Flapjack.WordLangAddr.addr 17041 18446744073709551104#64))) := by
  unfold output6300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6300_skip : Flapjack.WordAlloc.isSkip output6300 = false := by
  rw [output6300_def]
  conv => lhs; cbv
  try rfl
theorem node6300_eq : Flapjack.WordAlloc.removeDeadStructural input6300 value3154 value1 value2 = (output6300, value3155, value1) := by
  rw [input6300_def, output6300_def]
  try (conv => lhs; cbv)
  try rfl

def value3156 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17041 17037)).val
theorem input6301_def : input6301 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17041 17037) := by
  unfold input6301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17041 17037)).val
theorem output6301_def : output6301 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17041 17037) := by
  unfold output6301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6301_skip : Flapjack.WordAlloc.isSkip output6301 = false := by
  rw [output6301_def]
  conv => lhs; cbv
  try rfl
theorem node6301_eq : Flapjack.WordAlloc.removeDeadStructural input6301 value3155 value1 value2 = (output6301, value3156, value1) := by
  rw [input6301_def, output6301_def]
  try (conv => lhs; cbv)
  try rfl

def value3157 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17037 17033 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6302_def : input6302 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17037 17033 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17037 17033 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6302_def : output6302 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17037 17033 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6302_skip : Flapjack.WordAlloc.isSkip output6302 = false := by
  rw [output6302_def]
  conv => lhs; cbv
  try rfl
theorem node6302_eq : Flapjack.WordAlloc.removeDeadStructural input6302 value3156 value1 value2 = (output6302, value3157, value1) := by
  rw [input6302_def, output6302_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17033 Flapjack.WordStore.heapLength)).val
theorem input6303_def : input6303 = (Flapjack.WordLangProgHOL.get 17033 Flapjack.WordStore.heapLength) := by
  unfold input6303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 17033 Flapjack.WordStore.heapLength)).val
theorem output6303_def : output6303 = (Flapjack.WordLangProgHOL.get 17033 Flapjack.WordStore.heapLength) := by
  unfold output6303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6303_skip : Flapjack.WordAlloc.isSkip output6303 = false := by
  rw [output6303_def]
  conv => lhs; cbv
  try rfl
theorem node6303_eq : Flapjack.WordAlloc.removeDeadStructural input6303 value3157 value1 value2 = (output6303, value5, value1) := by
  rw [input6303_def, output6303_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6303 input6302)).val
theorem input6304_def : input6304 = (.seq input6303 input6302) := by
  unfold input6304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6303 output6302)).val
theorem output6304_def : output6304 = (.seq output6303 output6302) := by
  unfold output6304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6304_skip : Flapjack.WordAlloc.isSkip output6304 = false := by
  rw [output6304_def]
  conv => lhs; cbv
  try rfl
theorem node6304_eq : Flapjack.WordAlloc.removeDeadStructural input6304 value3156 value1 value2 = (output6304, value5, value1) := by
  rw [input6304_def, output6304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6302_eq]
  dsimp only
  rw [node6303_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6304 input6301)).val
theorem input6305_def : input6305 = (.seq input6304 input6301) := by
  unfold input6305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6304 output6301)).val
theorem output6305_def : output6305 = (.seq output6304 output6301) := by
  unfold output6305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6305_skip : Flapjack.WordAlloc.isSkip output6305 = false := by
  rw [output6305_def]
  conv => lhs; cbv
  try rfl
theorem node6305_eq : Flapjack.WordAlloc.removeDeadStructural input6305 value3155 value1 value2 = (output6305, value5, value1) := by
  rw [input6305_def, output6305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6301_eq]
  dsimp only
  rw [node6304_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6305 input6300)).val
theorem input6306_def : input6306 = (.seq input6305 input6300) := by
  unfold input6306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6305 output6300)).val
theorem output6306_def : output6306 = (.seq output6305 output6300) := by
  unfold output6306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6306_skip : Flapjack.WordAlloc.isSkip output6306 = false := by
  rw [output6306_def]
  conv => lhs; cbv
  try rfl
theorem node6306_eq : Flapjack.WordAlloc.removeDeadStructural input6306 value3154 value1 value2 = (output6306, value5, value1) := by
  rw [input6306_def, output6306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6300_eq]
  dsimp only
  rw [node6305_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6306 input6299)).val
theorem input6307_def : input6307 = (.seq input6306 input6299) := by
  unfold input6307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6306 output6299)).val
theorem output6307_def : output6307 = (.seq output6306 output6299) := by
  unfold output6307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6307_skip : Flapjack.WordAlloc.isSkip output6307 = false := by
  rw [output6307_def]
  conv => lhs; cbv
  try rfl
theorem node6307_eq : Flapjack.WordAlloc.removeDeadStructural input6307 value3152 value1 value2 = (output6307, value5, value1) := by
  rw [input6307_def, output6307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6299_eq]
  dsimp only
  rw [node6306_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3158 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17025 (Flapjack.WordLangAddr.addr 17029 0#64)))).val
theorem input6308_def : input6308 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17025 (Flapjack.WordLangAddr.addr 17029 0#64))) := by
  unfold input6308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17025 (Flapjack.WordLangAddr.addr 17029 0#64)))).val
theorem output6308_def : output6308 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 17025 (Flapjack.WordLangAddr.addr 17029 0#64))) := by
  unfold output6308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6308_skip : Flapjack.WordAlloc.isSkip output6308 = false := by
  rw [output6308_def]
  conv => lhs; cbv
  try rfl
theorem node6308_eq : Flapjack.WordAlloc.removeDeadStructural input6308 value5 value1 value2 = (output6308, value3158, value1) := by
  rw [input6308_def, output6308_def]
  try (conv => lhs; cbv)
  try rfl

def value3159 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17029, 17017)])).val
theorem input6309_def : input6309 = (Flapjack.WordLangProgHOL.move 0 [(17029, 17017)]) := by
  unfold input6309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(17029, 17017)])).val
theorem output6309_def : output6309 = (Flapjack.WordLangProgHOL.move 0 [(17029, 17017)]) := by
  unfold output6309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6309_skip : Flapjack.WordAlloc.isSkip output6309 = false := by
  rw [output6309_def]
  conv => lhs; cbv
  try rfl
theorem node6309_eq : Flapjack.WordAlloc.removeDeadStructural input6309 value3158 value1 value2 = (output6309, value3159, value1) := by
  rw [input6309_def, output6309_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6309 input6308)).val
theorem input6310_def : input6310 = (.seq input6309 input6308) := by
  unfold input6310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6309 output6308)).val
theorem output6310_def : output6310 = (.seq output6309 output6308) := by
  unfold output6310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6310_skip : Flapjack.WordAlloc.isSkip output6310 = false := by
  rw [output6310_def]
  conv => lhs; cbv
  try rfl
theorem node6310_eq : Flapjack.WordAlloc.removeDeadStructural input6310 value5 value1 value2 = (output6310, value3159, value1) := by
  rw [input6310_def, output6310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6308_eq]
  dsimp only
  rw [node6309_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3160 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17025 11676450493790612973#64))).val
theorem input6311_def : input6311 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17025 11676450493790612973#64)) := by
  unfold input6311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17025 11676450493790612973#64))).val
theorem output6311_def : output6311 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17025 11676450493790612973#64)) := by
  unfold output6311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6311_skip : Flapjack.WordAlloc.isSkip output6311 = false := by
  rw [output6311_def]
  conv => lhs; cbv
  try rfl
theorem node6311_eq : Flapjack.WordAlloc.removeDeadStructural input6311 value3159 value1 value2 = (output6311, value3160, value1) := by
  rw [input6311_def, output6311_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17021 11676450493790612973#64))).val
theorem input6312_def : input6312 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17021 11676450493790612973#64)) := by
  unfold input6312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6312_def : output6312 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6312_skip : Flapjack.WordAlloc.isSkip output6312 = true := by
  rw [output6312_def]
  conv => lhs; cbv
  try rfl
theorem node6312_eq : Flapjack.WordAlloc.removeDeadStructural input6312 value3160 value1 value2 = (output6312, value3160, value1) := by
  rw [input6312_def, output6312_def]
  try (conv => lhs; cbv)
  try rfl

def value3161 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17017 17009 (Flapjack.WordRegImm.reg 17013))))).val
theorem input6313_def : input6313 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17017 17009 (Flapjack.WordRegImm.reg 17013)))) := by
  unfold input6313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17017 17009 (Flapjack.WordRegImm.reg 17013))))).val
theorem output6313_def : output6313 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 17017 17009 (Flapjack.WordRegImm.reg 17013)))) := by
  unfold output6313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6313_skip : Flapjack.WordAlloc.isSkip output6313 = false := by
  rw [output6313_def]
  conv => lhs; cbv
  try rfl
theorem node6313_eq : Flapjack.WordAlloc.removeDeadStructural input6313 value3160 value1 value2 = (output6313, value3161, value1) := by
  rw [input6313_def, output6313_def]
  try (conv => lhs; cbv)
  try rfl

def value3162 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17013 3976#64))).val
theorem input6314_def : input6314 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17013 3976#64)) := by
  unfold input6314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17013 3976#64))).val
theorem output6314_def : output6314 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 17013 3976#64)) := by
  unfold output6314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6314_skip : Flapjack.WordAlloc.isSkip output6314 = false := by
  rw [output6314_def]
  conv => lhs; cbv
  try rfl
theorem node6314_eq : Flapjack.WordAlloc.removeDeadStructural input6314 value3161 value1 value2 = (output6314, value3162, value1) := by
  rw [input6314_def, output6314_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6314 input6313)).val
theorem input6315_def : input6315 = (.seq input6314 input6313) := by
  unfold input6315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6314 output6313)).val
theorem output6315_def : output6315 = (.seq output6314 output6313) := by
  unfold output6315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6315_skip : Flapjack.WordAlloc.isSkip output6315 = false := by
  rw [output6315_def]
  conv => lhs; cbv
  try rfl
theorem node6315_eq : Flapjack.WordAlloc.removeDeadStructural input6315 value3160 value1 value2 = (output6315, value3162, value1) := by
  rw [input6315_def, output6315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6313_eq]
  dsimp only
  rw [node6314_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3163 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17009 (Flapjack.WordLangAddr.addr 17005 18446744073709551104#64)))).val
theorem input6316_def : input6316 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17009 (Flapjack.WordLangAddr.addr 17005 18446744073709551104#64))) := by
  unfold input6316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17009 (Flapjack.WordLangAddr.addr 17005 18446744073709551104#64)))).val
theorem output6316_def : output6316 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 17009 (Flapjack.WordLangAddr.addr 17005 18446744073709551104#64))) := by
  unfold output6316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6316_skip : Flapjack.WordAlloc.isSkip output6316 = false := by
  rw [output6316_def]
  conv => lhs; cbv
  try rfl
theorem node6316_eq : Flapjack.WordAlloc.removeDeadStructural input6316 value3162 value1 value2 = (output6316, value3163, value1) := by
  rw [input6316_def, output6316_def]
  try (conv => lhs; cbv)
  try rfl

def value3164 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17005 17001)).val
theorem input6317_def : input6317 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17005 17001) := by
  unfold input6317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17005 17001)).val
theorem output6317_def : output6317 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 17005 17001) := by
  unfold output6317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6317_skip : Flapjack.WordAlloc.isSkip output6317 = false := by
  rw [output6317_def]
  conv => lhs; cbv
  try rfl
theorem node6317_eq : Flapjack.WordAlloc.removeDeadStructural input6317 value3163 value1 value2 = (output6317, value3164, value1) := by
  rw [input6317_def, output6317_def]
  try (conv => lhs; cbv)
  try rfl

def value3165 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17001 16997 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6318_def : input6318 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17001 16997 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17001 16997 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6318_def : output6318 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 17001 16997 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6318_skip : Flapjack.WordAlloc.isSkip output6318 = false := by
  rw [output6318_def]
  conv => lhs; cbv
  try rfl
theorem node6318_eq : Flapjack.WordAlloc.removeDeadStructural input6318 value3164 value1 value2 = (output6318, value3165, value1) := by
  rw [input6318_def, output6318_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16997 Flapjack.WordStore.heapLength)).val
theorem input6319_def : input6319 = (Flapjack.WordLangProgHOL.get 16997 Flapjack.WordStore.heapLength) := by
  unfold input6319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16997 Flapjack.WordStore.heapLength)).val
theorem output6319_def : output6319 = (Flapjack.WordLangProgHOL.get 16997 Flapjack.WordStore.heapLength) := by
  unfold output6319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6319_skip : Flapjack.WordAlloc.isSkip output6319 = false := by
  rw [output6319_def]
  conv => lhs; cbv
  try rfl
theorem node6319_eq : Flapjack.WordAlloc.removeDeadStructural input6319 value3165 value1 value2 = (output6319, value5, value1) := by
  rw [input6319_def, output6319_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6319 input6318)).val
theorem input6320_def : input6320 = (.seq input6319 input6318) := by
  unfold input6320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6319 output6318)).val
theorem output6320_def : output6320 = (.seq output6319 output6318) := by
  unfold output6320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6320_skip : Flapjack.WordAlloc.isSkip output6320 = false := by
  rw [output6320_def]
  conv => lhs; cbv
  try rfl
theorem node6320_eq : Flapjack.WordAlloc.removeDeadStructural input6320 value3164 value1 value2 = (output6320, value5, value1) := by
  rw [input6320_def, output6320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6318_eq]
  dsimp only
  rw [node6319_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6320 input6317)).val
theorem input6321_def : input6321 = (.seq input6320 input6317) := by
  unfold input6321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6320 output6317)).val
theorem output6321_def : output6321 = (.seq output6320 output6317) := by
  unfold output6321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6321_skip : Flapjack.WordAlloc.isSkip output6321 = false := by
  rw [output6321_def]
  conv => lhs; cbv
  try rfl
theorem node6321_eq : Flapjack.WordAlloc.removeDeadStructural input6321 value3163 value1 value2 = (output6321, value5, value1) := by
  rw [input6321_def, output6321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6317_eq]
  dsimp only
  rw [node6320_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6321 input6316)).val
theorem input6322_def : input6322 = (.seq input6321 input6316) := by
  unfold input6322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6321 output6316)).val
theorem output6322_def : output6322 = (.seq output6321 output6316) := by
  unfold output6322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6322_skip : Flapjack.WordAlloc.isSkip output6322 = false := by
  rw [output6322_def]
  conv => lhs; cbv
  try rfl
theorem node6322_eq : Flapjack.WordAlloc.removeDeadStructural input6322 value3162 value1 value2 = (output6322, value5, value1) := by
  rw [input6322_def, output6322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6316_eq]
  dsimp only
  rw [node6321_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6322 input6315)).val
theorem input6323_def : input6323 = (.seq input6322 input6315) := by
  unfold input6323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6322 output6315)).val
theorem output6323_def : output6323 = (.seq output6322 output6315) := by
  unfold output6323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6323_skip : Flapjack.WordAlloc.isSkip output6323 = false := by
  rw [output6323_def]
  conv => lhs; cbv
  try rfl
theorem node6323_eq : Flapjack.WordAlloc.removeDeadStructural input6323 value3160 value1 value2 = (output6323, value5, value1) := by
  rw [input6323_def, output6323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6315_eq]
  dsimp only
  rw [node6322_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3166 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16989 (Flapjack.WordLangAddr.addr 16993 0#64)))).val
theorem input6324_def : input6324 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16989 (Flapjack.WordLangAddr.addr 16993 0#64))) := by
  unfold input6324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16989 (Flapjack.WordLangAddr.addr 16993 0#64)))).val
theorem output6324_def : output6324 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16989 (Flapjack.WordLangAddr.addr 16993 0#64))) := by
  unfold output6324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6324_skip : Flapjack.WordAlloc.isSkip output6324 = false := by
  rw [output6324_def]
  conv => lhs; cbv
  try rfl
theorem node6324_eq : Flapjack.WordAlloc.removeDeadStructural input6324 value5 value1 value2 = (output6324, value3166, value1) := by
  rw [input6324_def, output6324_def]
  try (conv => lhs; cbv)
  try rfl

def value3167 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16993, 16981)])).val
theorem input6325_def : input6325 = (Flapjack.WordLangProgHOL.move 0 [(16993, 16981)]) := by
  unfold input6325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16993, 16981)])).val
theorem output6325_def : output6325 = (Flapjack.WordLangProgHOL.move 0 [(16993, 16981)]) := by
  unfold output6325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6325_skip : Flapjack.WordAlloc.isSkip output6325 = false := by
  rw [output6325_def]
  conv => lhs; cbv
  try rfl
theorem node6325_eq : Flapjack.WordAlloc.removeDeadStructural input6325 value3166 value1 value2 = (output6325, value3167, value1) := by
  rw [input6325_def, output6325_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6325 input6324)).val
theorem input6326_def : input6326 = (.seq input6325 input6324) := by
  unfold input6326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6325 output6324)).val
theorem output6326_def : output6326 = (.seq output6325 output6324) := by
  unfold output6326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6326_skip : Flapjack.WordAlloc.isSkip output6326 = false := by
  rw [output6326_def]
  conv => lhs; cbv
  try rfl
theorem node6326_eq : Flapjack.WordAlloc.removeDeadStructural input6326 value5 value1 value2 = (output6326, value3167, value1) := by
  rw [input6326_def, output6326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6324_eq]
  dsimp only
  rw [node6325_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3168 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16989 15724621714793234461#64))).val
theorem input6327_def : input6327 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16989 15724621714793234461#64)) := by
  unfold input6327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16989 15724621714793234461#64))).val
theorem output6327_def : output6327 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16989 15724621714793234461#64)) := by
  unfold output6327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6327_skip : Flapjack.WordAlloc.isSkip output6327 = false := by
  rw [output6327_def]
  conv => lhs; cbv
  try rfl
theorem node6327_eq : Flapjack.WordAlloc.removeDeadStructural input6327 value3167 value1 value2 = (output6327, value3168, value1) := by
  rw [input6327_def, output6327_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16985 15724621714793234461#64))).val
theorem input6328_def : input6328 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16985 15724621714793234461#64)) := by
  unfold input6328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6328_def : output6328 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6328_skip : Flapjack.WordAlloc.isSkip output6328 = true := by
  rw [output6328_def]
  conv => lhs; cbv
  try rfl
theorem node6328_eq : Flapjack.WordAlloc.removeDeadStructural input6328 value3168 value1 value2 = (output6328, value3168, value1) := by
  rw [input6328_def, output6328_def]
  try (conv => lhs; cbv)
  try rfl

def value3169 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16981 16973 (Flapjack.WordRegImm.reg 16977))))).val
theorem input6329_def : input6329 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16981 16973 (Flapjack.WordRegImm.reg 16977)))) := by
  unfold input6329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16981 16973 (Flapjack.WordRegImm.reg 16977))))).val
theorem output6329_def : output6329 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16981 16973 (Flapjack.WordRegImm.reg 16977)))) := by
  unfold output6329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6329_skip : Flapjack.WordAlloc.isSkip output6329 = false := by
  rw [output6329_def]
  conv => lhs; cbv
  try rfl
theorem node6329_eq : Flapjack.WordAlloc.removeDeadStructural input6329 value3168 value1 value2 = (output6329, value3169, value1) := by
  rw [input6329_def, output6329_def]
  try (conv => lhs; cbv)
  try rfl

def value3170 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16977 3968#64))).val
theorem input6330_def : input6330 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16977 3968#64)) := by
  unfold input6330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16977 3968#64))).val
theorem output6330_def : output6330 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16977 3968#64)) := by
  unfold output6330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6330_skip : Flapjack.WordAlloc.isSkip output6330 = false := by
  rw [output6330_def]
  conv => lhs; cbv
  try rfl
theorem node6330_eq : Flapjack.WordAlloc.removeDeadStructural input6330 value3169 value1 value2 = (output6330, value3170, value1) := by
  rw [input6330_def, output6330_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6330 input6329)).val
theorem input6331_def : input6331 = (.seq input6330 input6329) := by
  unfold input6331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6330 output6329)).val
theorem output6331_def : output6331 = (.seq output6330 output6329) := by
  unfold output6331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6331_skip : Flapjack.WordAlloc.isSkip output6331 = false := by
  rw [output6331_def]
  conv => lhs; cbv
  try rfl
theorem node6331_eq : Flapjack.WordAlloc.removeDeadStructural input6331 value3168 value1 value2 = (output6331, value3170, value1) := by
  rw [input6331_def, output6331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6329_eq]
  dsimp only
  rw [node6330_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3171 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16973 (Flapjack.WordLangAddr.addr 16969 18446744073709551104#64)))).val
theorem input6332_def : input6332 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16973 (Flapjack.WordLangAddr.addr 16969 18446744073709551104#64))) := by
  unfold input6332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16973 (Flapjack.WordLangAddr.addr 16969 18446744073709551104#64)))).val
theorem output6332_def : output6332 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16973 (Flapjack.WordLangAddr.addr 16969 18446744073709551104#64))) := by
  unfold output6332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6332_skip : Flapjack.WordAlloc.isSkip output6332 = false := by
  rw [output6332_def]
  conv => lhs; cbv
  try rfl
theorem node6332_eq : Flapjack.WordAlloc.removeDeadStructural input6332 value3170 value1 value2 = (output6332, value3171, value1) := by
  rw [input6332_def, output6332_def]
  try (conv => lhs; cbv)
  try rfl

def value3172 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16969 16965)).val
theorem input6333_def : input6333 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16969 16965) := by
  unfold input6333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16969 16965)).val
theorem output6333_def : output6333 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16969 16965) := by
  unfold output6333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6333_skip : Flapjack.WordAlloc.isSkip output6333 = false := by
  rw [output6333_def]
  conv => lhs; cbv
  try rfl
theorem node6333_eq : Flapjack.WordAlloc.removeDeadStructural input6333 value3171 value1 value2 = (output6333, value3172, value1) := by
  rw [input6333_def, output6333_def]
  try (conv => lhs; cbv)
  try rfl

def value3173 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16965 16961 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6334_def : input6334 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16965 16961 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16965 16961 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6334_def : output6334 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16965 16961 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6334_skip : Flapjack.WordAlloc.isSkip output6334 = false := by
  rw [output6334_def]
  conv => lhs; cbv
  try rfl
theorem node6334_eq : Flapjack.WordAlloc.removeDeadStructural input6334 value3172 value1 value2 = (output6334, value3173, value1) := by
  rw [input6334_def, output6334_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16961 Flapjack.WordStore.heapLength)).val
theorem input6335_def : input6335 = (Flapjack.WordLangProgHOL.get 16961 Flapjack.WordStore.heapLength) := by
  unfold input6335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16961 Flapjack.WordStore.heapLength)).val
theorem output6335_def : output6335 = (Flapjack.WordLangProgHOL.get 16961 Flapjack.WordStore.heapLength) := by
  unfold output6335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6335_skip : Flapjack.WordAlloc.isSkip output6335 = false := by
  rw [output6335_def]
  conv => lhs; cbv
  try rfl
theorem node6335_eq : Flapjack.WordAlloc.removeDeadStructural input6335 value3173 value1 value2 = (output6335, value5, value1) := by
  rw [input6335_def, output6335_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6335 input6334)).val
theorem input6336_def : input6336 = (.seq input6335 input6334) := by
  unfold input6336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6335 output6334)).val
theorem output6336_def : output6336 = (.seq output6335 output6334) := by
  unfold output6336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6336_skip : Flapjack.WordAlloc.isSkip output6336 = false := by
  rw [output6336_def]
  conv => lhs; cbv
  try rfl
theorem node6336_eq : Flapjack.WordAlloc.removeDeadStructural input6336 value3172 value1 value2 = (output6336, value5, value1) := by
  rw [input6336_def, output6336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6334_eq]
  dsimp only
  rw [node6335_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6336 input6333)).val
theorem input6337_def : input6337 = (.seq input6336 input6333) := by
  unfold input6337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6336 output6333)).val
theorem output6337_def : output6337 = (.seq output6336 output6333) := by
  unfold output6337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6337_skip : Flapjack.WordAlloc.isSkip output6337 = false := by
  rw [output6337_def]
  conv => lhs; cbv
  try rfl
theorem node6337_eq : Flapjack.WordAlloc.removeDeadStructural input6337 value3171 value1 value2 = (output6337, value5, value1) := by
  rw [input6337_def, output6337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6333_eq]
  dsimp only
  rw [node6336_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6337 input6332)).val
theorem input6338_def : input6338 = (.seq input6337 input6332) := by
  unfold input6338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6337 output6332)).val
theorem output6338_def : output6338 = (.seq output6337 output6332) := by
  unfold output6338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6338_skip : Flapjack.WordAlloc.isSkip output6338 = false := by
  rw [output6338_def]
  conv => lhs; cbv
  try rfl
theorem node6338_eq : Flapjack.WordAlloc.removeDeadStructural input6338 value3170 value1 value2 = (output6338, value5, value1) := by
  rw [input6338_def, output6338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6332_eq]
  dsimp only
  rw [node6337_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6338 input6331)).val
theorem input6339_def : input6339 = (.seq input6338 input6331) := by
  unfold input6339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6338 output6331)).val
theorem output6339_def : output6339 = (.seq output6338 output6331) := by
  unfold output6339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6339_skip : Flapjack.WordAlloc.isSkip output6339 = false := by
  rw [output6339_def]
  conv => lhs; cbv
  try rfl
theorem node6339_eq : Flapjack.WordAlloc.removeDeadStructural input6339 value3168 value1 value2 = (output6339, value5, value1) := by
  rw [input6339_def, output6339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6331_eq]
  dsimp only
  rw [node6338_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3174 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
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
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16953 (Flapjack.WordLangAddr.addr 16957 0#64)))).val
theorem input6340_def : input6340 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16953 (Flapjack.WordLangAddr.addr 16957 0#64))) := by
  unfold input6340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16953 (Flapjack.WordLangAddr.addr 16957 0#64)))).val
theorem output6340_def : output6340 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16953 (Flapjack.WordLangAddr.addr 16957 0#64))) := by
  unfold output6340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6340_skip : Flapjack.WordAlloc.isSkip output6340 = false := by
  rw [output6340_def]
  conv => lhs; cbv
  try rfl
theorem node6340_eq : Flapjack.WordAlloc.removeDeadStructural input6340 value5 value1 value2 = (output6340, value3174, value1) := by
  rw [input6340_def, output6340_def]
  try (conv => lhs; cbv)
  try rfl

def value3175 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16957, 16945)])).val
theorem input6341_def : input6341 = (Flapjack.WordLangProgHOL.move 0 [(16957, 16945)]) := by
  unfold input6341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16957, 16945)])).val
theorem output6341_def : output6341 = (Flapjack.WordLangProgHOL.move 0 [(16957, 16945)]) := by
  unfold output6341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6341_skip : Flapjack.WordAlloc.isSkip output6341 = false := by
  rw [output6341_def]
  conv => lhs; cbv
  try rfl
theorem node6341_eq : Flapjack.WordAlloc.removeDeadStructural input6341 value3174 value1 value2 = (output6341, value3175, value1) := by
  rw [input6341_def, output6341_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6341 input6340)).val
theorem input6342_def : input6342 = (.seq input6341 input6340) := by
  unfold input6342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6341 output6340)).val
theorem output6342_def : output6342 = (.seq output6341 output6340) := by
  unfold output6342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6342_skip : Flapjack.WordAlloc.isSkip output6342 = false := by
  rw [output6342_def]
  conv => lhs; cbv
  try rfl
theorem node6342_eq : Flapjack.WordAlloc.removeDeadStructural input6342 value5 value1 value2 = (output6342, value3175, value1) := by
  rw [input6342_def, output6342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6340_eq]
  dsimp only
  rw [node6341_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3176 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16953 1637008473169220501#64))).val
theorem input6343_def : input6343 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16953 1637008473169220501#64)) := by
  unfold input6343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16953 1637008473169220501#64))).val
theorem output6343_def : output6343 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16953 1637008473169220501#64)) := by
  unfold output6343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6343_skip : Flapjack.WordAlloc.isSkip output6343 = false := by
  rw [output6343_def]
  conv => lhs; cbv
  try rfl
theorem node6343_eq : Flapjack.WordAlloc.removeDeadStructural input6343 value3175 value1 value2 = (output6343, value3176, value1) := by
  rw [input6343_def, output6343_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16949 1637008473169220501#64))).val
theorem input6344_def : input6344 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16949 1637008473169220501#64)) := by
  unfold input6344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6344_def : output6344 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6344_skip : Flapjack.WordAlloc.isSkip output6344 = true := by
  rw [output6344_def]
  conv => lhs; cbv
  try rfl
theorem node6344_eq : Flapjack.WordAlloc.removeDeadStructural input6344 value3176 value1 value2 = (output6344, value3176, value1) := by
  rw [input6344_def, output6344_def]
  try (conv => lhs; cbv)
  try rfl

def value3177 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16945 16937 (Flapjack.WordRegImm.reg 16941))))).val
theorem input6345_def : input6345 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16945 16937 (Flapjack.WordRegImm.reg 16941)))) := by
  unfold input6345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16945 16937 (Flapjack.WordRegImm.reg 16941))))).val
theorem output6345_def : output6345 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16945 16937 (Flapjack.WordRegImm.reg 16941)))) := by
  unfold output6345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6345_skip : Flapjack.WordAlloc.isSkip output6345 = false := by
  rw [output6345_def]
  conv => lhs; cbv
  try rfl
theorem node6345_eq : Flapjack.WordAlloc.removeDeadStructural input6345 value3176 value1 value2 = (output6345, value3177, value1) := by
  rw [input6345_def, output6345_def]
  try (conv => lhs; cbv)
  try rfl

def value3178 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16941 3960#64))).val
theorem input6346_def : input6346 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16941 3960#64)) := by
  unfold input6346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16941 3960#64))).val
theorem output6346_def : output6346 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16941 3960#64)) := by
  unfold output6346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6346_skip : Flapjack.WordAlloc.isSkip output6346 = false := by
  rw [output6346_def]
  conv => lhs; cbv
  try rfl
theorem node6346_eq : Flapjack.WordAlloc.removeDeadStructural input6346 value3177 value1 value2 = (output6346, value3178, value1) := by
  rw [input6346_def, output6346_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6346 input6345)).val
theorem input6347_def : input6347 = (.seq input6346 input6345) := by
  unfold input6347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6346 output6345)).val
theorem output6347_def : output6347 = (.seq output6346 output6345) := by
  unfold output6347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6347_skip : Flapjack.WordAlloc.isSkip output6347 = false := by
  rw [output6347_def]
  conv => lhs; cbv
  try rfl
theorem node6347_eq : Flapjack.WordAlloc.removeDeadStructural input6347 value3176 value1 value2 = (output6347, value3178, value1) := by
  rw [input6347_def, output6347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6345_eq]
  dsimp only
  rw [node6346_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3179 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16937 (Flapjack.WordLangAddr.addr 16933 18446744073709551104#64)))).val
theorem input6348_def : input6348 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16937 (Flapjack.WordLangAddr.addr 16933 18446744073709551104#64))) := by
  unfold input6348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16937 (Flapjack.WordLangAddr.addr 16933 18446744073709551104#64)))).val
theorem output6348_def : output6348 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16937 (Flapjack.WordLangAddr.addr 16933 18446744073709551104#64))) := by
  unfold output6348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6348_skip : Flapjack.WordAlloc.isSkip output6348 = false := by
  rw [output6348_def]
  conv => lhs; cbv
  try rfl
theorem node6348_eq : Flapjack.WordAlloc.removeDeadStructural input6348 value3178 value1 value2 = (output6348, value3179, value1) := by
  rw [input6348_def, output6348_def]
  try (conv => lhs; cbv)
  try rfl

def value3180 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16933 16929)).val
theorem input6349_def : input6349 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16933 16929) := by
  unfold input6349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16933 16929)).val
theorem output6349_def : output6349 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16933 16929) := by
  unfold output6349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6349_skip : Flapjack.WordAlloc.isSkip output6349 = false := by
  rw [output6349_def]
  conv => lhs; cbv
  try rfl
theorem node6349_eq : Flapjack.WordAlloc.removeDeadStructural input6349 value3179 value1 value2 = (output6349, value3180, value1) := by
  rw [input6349_def, output6349_def]
  try (conv => lhs; cbv)
  try rfl

def value3181 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16929 16925 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6350_def : input6350 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16929 16925 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16929 16925 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6350_def : output6350 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16929 16925 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6350_skip : Flapjack.WordAlloc.isSkip output6350 = false := by
  rw [output6350_def]
  conv => lhs; cbv
  try rfl
theorem node6350_eq : Flapjack.WordAlloc.removeDeadStructural input6350 value3180 value1 value2 = (output6350, value3181, value1) := by
  rw [input6350_def, output6350_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16925 Flapjack.WordStore.heapLength)).val
theorem input6351_def : input6351 = (Flapjack.WordLangProgHOL.get 16925 Flapjack.WordStore.heapLength) := by
  unfold input6351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16925 Flapjack.WordStore.heapLength)).val
theorem output6351_def : output6351 = (Flapjack.WordLangProgHOL.get 16925 Flapjack.WordStore.heapLength) := by
  unfold output6351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6351_skip : Flapjack.WordAlloc.isSkip output6351 = false := by
  rw [output6351_def]
  conv => lhs; cbv
  try rfl
theorem node6351_eq : Flapjack.WordAlloc.removeDeadStructural input6351 value3181 value1 value2 = (output6351, value5, value1) := by
  rw [input6351_def, output6351_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6351 input6350)).val
theorem input6352_def : input6352 = (.seq input6351 input6350) := by
  unfold input6352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6351 output6350)).val
theorem output6352_def : output6352 = (.seq output6351 output6350) := by
  unfold output6352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6352_skip : Flapjack.WordAlloc.isSkip output6352 = false := by
  rw [output6352_def]
  conv => lhs; cbv
  try rfl
theorem node6352_eq : Flapjack.WordAlloc.removeDeadStructural input6352 value3180 value1 value2 = (output6352, value5, value1) := by
  rw [input6352_def, output6352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6350_eq]
  dsimp only
  rw [node6351_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6352 input6349)).val
theorem input6353_def : input6353 = (.seq input6352 input6349) := by
  unfold input6353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6352 output6349)).val
theorem output6353_def : output6353 = (.seq output6352 output6349) := by
  unfold output6353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6353_skip : Flapjack.WordAlloc.isSkip output6353 = false := by
  rw [output6353_def]
  conv => lhs; cbv
  try rfl
theorem node6353_eq : Flapjack.WordAlloc.removeDeadStructural input6353 value3179 value1 value2 = (output6353, value5, value1) := by
  rw [input6353_def, output6353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6349_eq]
  dsimp only
  rw [node6352_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6353 input6348)).val
theorem input6354_def : input6354 = (.seq input6353 input6348) := by
  unfold input6354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6353 output6348)).val
theorem output6354_def : output6354 = (.seq output6353 output6348) := by
  unfold output6354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6354_skip : Flapjack.WordAlloc.isSkip output6354 = false := by
  rw [output6354_def]
  conv => lhs; cbv
  try rfl
theorem node6354_eq : Flapjack.WordAlloc.removeDeadStructural input6354 value3178 value1 value2 = (output6354, value5, value1) := by
  rw [input6354_def, output6354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6348_eq]
  dsimp only
  rw [node6353_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6354 input6347)).val
theorem input6355_def : input6355 = (.seq input6354 input6347) := by
  unfold input6355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6354 output6347)).val
theorem output6355_def : output6355 = (.seq output6354 output6347) := by
  unfold output6355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6355_skip : Flapjack.WordAlloc.isSkip output6355 = false := by
  rw [output6355_def]
  conv => lhs; cbv
  try rfl
theorem node6355_eq : Flapjack.WordAlloc.removeDeadStructural input6355 value3176 value1 value2 = (output6355, value5, value1) := by
  rw [input6355_def, output6355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6347_eq]
  dsimp only
  rw [node6354_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3182 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
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
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16917 (Flapjack.WordLangAddr.addr 16921 0#64)))).val
theorem input6356_def : input6356 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16917 (Flapjack.WordLangAddr.addr 16921 0#64))) := by
  unfold input6356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16917 (Flapjack.WordLangAddr.addr 16921 0#64)))).val
theorem output6356_def : output6356 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16917 (Flapjack.WordLangAddr.addr 16921 0#64))) := by
  unfold output6356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6356_skip : Flapjack.WordAlloc.isSkip output6356 = false := by
  rw [output6356_def]
  conv => lhs; cbv
  try rfl
theorem node6356_eq : Flapjack.WordAlloc.removeDeadStructural input6356 value5 value1 value2 = (output6356, value3182, value1) := by
  rw [input6356_def, output6356_def]
  try (conv => lhs; cbv)
  try rfl

def value3183 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16921, 16909)])).val
theorem input6357_def : input6357 = (Flapjack.WordLangProgHOL.move 0 [(16921, 16909)]) := by
  unfold input6357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16921, 16909)])).val
theorem output6357_def : output6357 = (Flapjack.WordLangProgHOL.move 0 [(16921, 16909)]) := by
  unfold output6357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6357_skip : Flapjack.WordAlloc.isSkip output6357 = false := by
  rw [output6357_def]
  conv => lhs; cbv
  try rfl
theorem node6357_eq : Flapjack.WordAlloc.removeDeadStructural input6357 value3182 value1 value2 = (output6357, value3183, value1) := by
  rw [input6357_def, output6357_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6357 input6356)).val
theorem input6358_def : input6358 = (.seq input6357 input6356) := by
  unfold input6358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6357 output6356)).val
theorem output6358_def : output6358 = (.seq output6357 output6356) := by
  unfold output6358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6358_skip : Flapjack.WordAlloc.isSkip output6358 = false := by
  rw [output6358_def]
  conv => lhs; cbv
  try rfl
theorem node6358_eq : Flapjack.WordAlloc.removeDeadStructural input6358 value5 value1 value2 = (output6358, value3183, value1) := by
  rw [input6358_def, output6358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6356_eq]
  dsimp only
  rw [node6357_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3184 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16917 17441636237435581649#64))).val
theorem input6359_def : input6359 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16917 17441636237435581649#64)) := by
  unfold input6359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16917 17441636237435581649#64))).val
theorem output6359_def : output6359 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16917 17441636237435581649#64)) := by
  unfold output6359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6359_skip : Flapjack.WordAlloc.isSkip output6359 = false := by
  rw [output6359_def]
  conv => lhs; cbv
  try rfl
theorem node6359_eq : Flapjack.WordAlloc.removeDeadStructural input6359 value3183 value1 value2 = (output6359, value3184, value1) := by
  rw [input6359_def, output6359_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16913 17441636237435581649#64))).val
theorem input6360_def : input6360 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16913 17441636237435581649#64)) := by
  unfold input6360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6360_def : output6360 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6360_skip : Flapjack.WordAlloc.isSkip output6360 = true := by
  rw [output6360_def]
  conv => lhs; cbv
  try rfl
theorem node6360_eq : Flapjack.WordAlloc.removeDeadStructural input6360 value3184 value1 value2 = (output6360, value3184, value1) := by
  rw [input6360_def, output6360_def]
  try (conv => lhs; cbv)
  try rfl

def value3185 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16909 16901 (Flapjack.WordRegImm.reg 16905))))).val
theorem input6361_def : input6361 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16909 16901 (Flapjack.WordRegImm.reg 16905)))) := by
  unfold input6361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16909 16901 (Flapjack.WordRegImm.reg 16905))))).val
theorem output6361_def : output6361 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16909 16901 (Flapjack.WordRegImm.reg 16905)))) := by
  unfold output6361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6361_skip : Flapjack.WordAlloc.isSkip output6361 = false := by
  rw [output6361_def]
  conv => lhs; cbv
  try rfl
theorem node6361_eq : Flapjack.WordAlloc.removeDeadStructural input6361 value3184 value1 value2 = (output6361, value3185, value1) := by
  rw [input6361_def, output6361_def]
  try (conv => lhs; cbv)
  try rfl

def value3186 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln)))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16905 3952#64))).val
theorem input6362_def : input6362 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16905 3952#64)) := by
  unfold input6362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16905 3952#64))).val
theorem output6362_def : output6362 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16905 3952#64)) := by
  unfold output6362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6362_skip : Flapjack.WordAlloc.isSkip output6362 = false := by
  rw [output6362_def]
  conv => lhs; cbv
  try rfl
theorem node6362_eq : Flapjack.WordAlloc.removeDeadStructural input6362 value3185 value1 value2 = (output6362, value3186, value1) := by
  rw [input6362_def, output6362_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6362 input6361)).val
theorem input6363_def : input6363 = (.seq input6362 input6361) := by
  unfold input6363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6362 output6361)).val
theorem output6363_def : output6363 = (.seq output6362 output6361) := by
  unfold output6363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6363_skip : Flapjack.WordAlloc.isSkip output6363 = false := by
  rw [output6363_def]
  conv => lhs; cbv
  try rfl
theorem node6363_eq : Flapjack.WordAlloc.removeDeadStructural input6363 value3184 value1 value2 = (output6363, value3186, value1) := by
  rw [input6363_def, output6363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6361_eq]
  dsimp only
  rw [node6362_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3187 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                    Flapjack.Spt.ln))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16901 (Flapjack.WordLangAddr.addr 16897 18446744073709551104#64)))).val
theorem input6364_def : input6364 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16901 (Flapjack.WordLangAddr.addr 16897 18446744073709551104#64))) := by
  unfold input6364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16901 (Flapjack.WordLangAddr.addr 16897 18446744073709551104#64)))).val
theorem output6364_def : output6364 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16901 (Flapjack.WordLangAddr.addr 16897 18446744073709551104#64))) := by
  unfold output6364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6364_skip : Flapjack.WordAlloc.isSkip output6364 = false := by
  rw [output6364_def]
  conv => lhs; cbv
  try rfl
theorem node6364_eq : Flapjack.WordAlloc.removeDeadStructural input6364 value3186 value1 value2 = (output6364, value3187, value1) := by
  rw [input6364_def, output6364_def]
  try (conv => lhs; cbv)
  try rfl

def value3188 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16897 16893)).val
theorem input6365_def : input6365 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16897 16893) := by
  unfold input6365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16897 16893)).val
theorem output6365_def : output6365 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16897 16893) := by
  unfold output6365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6365_skip : Flapjack.WordAlloc.isSkip output6365 = false := by
  rw [output6365_def]
  conv => lhs; cbv
  try rfl
theorem node6365_eq : Flapjack.WordAlloc.removeDeadStructural input6365 value3187 value1 value2 = (output6365, value3188, value1) := by
  rw [input6365_def, output6365_def]
  try (conv => lhs; cbv)
  try rfl

def value3189 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16893 16889 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6366_def : input6366 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16893 16889 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16893 16889 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6366_def : output6366 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16893 16889 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6366_skip : Flapjack.WordAlloc.isSkip output6366 = false := by
  rw [output6366_def]
  conv => lhs; cbv
  try rfl
theorem node6366_eq : Flapjack.WordAlloc.removeDeadStructural input6366 value3188 value1 value2 = (output6366, value3189, value1) := by
  rw [input6366_def, output6366_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16889 Flapjack.WordStore.heapLength)).val
theorem input6367_def : input6367 = (Flapjack.WordLangProgHOL.get 16889 Flapjack.WordStore.heapLength) := by
  unfold input6367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16889 Flapjack.WordStore.heapLength)).val
theorem output6367_def : output6367 = (Flapjack.WordLangProgHOL.get 16889 Flapjack.WordStore.heapLength) := by
  unfold output6367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6367_skip : Flapjack.WordAlloc.isSkip output6367 = false := by
  rw [output6367_def]
  conv => lhs; cbv
  try rfl
theorem node6367_eq : Flapjack.WordAlloc.removeDeadStructural input6367 value3189 value1 value2 = (output6367, value5, value1) := by
  rw [input6367_def, output6367_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6367 input6366)).val
theorem input6368_def : input6368 = (.seq input6367 input6366) := by
  unfold input6368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6367 output6366)).val
theorem output6368_def : output6368 = (.seq output6367 output6366) := by
  unfold output6368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6368_skip : Flapjack.WordAlloc.isSkip output6368 = false := by
  rw [output6368_def]
  conv => lhs; cbv
  try rfl
theorem node6368_eq : Flapjack.WordAlloc.removeDeadStructural input6368 value3188 value1 value2 = (output6368, value5, value1) := by
  rw [input6368_def, output6368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6366_eq]
  dsimp only
  rw [node6367_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6368 input6365)).val
theorem input6369_def : input6369 = (.seq input6368 input6365) := by
  unfold input6369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6368 output6365)).val
theorem output6369_def : output6369 = (.seq output6368 output6365) := by
  unfold output6369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6369_skip : Flapjack.WordAlloc.isSkip output6369 = false := by
  rw [output6369_def]
  conv => lhs; cbv
  try rfl
theorem node6369_eq : Flapjack.WordAlloc.removeDeadStructural input6369 value3187 value1 value2 = (output6369, value5, value1) := by
  rw [input6369_def, output6369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6365_eq]
  dsimp only
  rw [node6368_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6369 input6364)).val
theorem input6370_def : input6370 = (.seq input6369 input6364) := by
  unfold input6370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6369 output6364)).val
theorem output6370_def : output6370 = (.seq output6369 output6364) := by
  unfold output6370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6370_skip : Flapjack.WordAlloc.isSkip output6370 = false := by
  rw [output6370_def]
  conv => lhs; cbv
  try rfl
theorem node6370_eq : Flapjack.WordAlloc.removeDeadStructural input6370 value3186 value1 value2 = (output6370, value5, value1) := by
  rw [input6370_def, output6370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6364_eq]
  dsimp only
  rw [node6369_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6370 input6363)).val
theorem input6371_def : input6371 = (.seq input6370 input6363) := by
  unfold input6371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6370 output6363)).val
theorem output6371_def : output6371 = (.seq output6370 output6363) := by
  unfold output6371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6371_skip : Flapjack.WordAlloc.isSkip output6371 = false := by
  rw [output6371_def]
  conv => lhs; cbv
  try rfl
theorem node6371_eq : Flapjack.WordAlloc.removeDeadStructural input6371 value3184 value1 value2 = (output6371, value5, value1) := by
  rw [input6371_def, output6371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6363_eq]
  dsimp only
  rw [node6370_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3190 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16881 (Flapjack.WordLangAddr.addr 16885 0#64)))).val
theorem input6372_def : input6372 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16881 (Flapjack.WordLangAddr.addr 16885 0#64))) := by
  unfold input6372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16881 (Flapjack.WordLangAddr.addr 16885 0#64)))).val
theorem output6372_def : output6372 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16881 (Flapjack.WordLangAddr.addr 16885 0#64))) := by
  unfold output6372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6372_skip : Flapjack.WordAlloc.isSkip output6372 = false := by
  rw [output6372_def]
  conv => lhs; cbv
  try rfl
theorem node6372_eq : Flapjack.WordAlloc.removeDeadStructural input6372 value5 value1 value2 = (output6372, value3190, value1) := by
  rw [input6372_def, output6372_def]
  try (conv => lhs; cbv)
  try rfl

def value3191 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16885, 16873)])).val
theorem input6373_def : input6373 = (Flapjack.WordLangProgHOL.move 0 [(16885, 16873)]) := by
  unfold input6373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16885, 16873)])).val
theorem output6373_def : output6373 = (Flapjack.WordLangProgHOL.move 0 [(16885, 16873)]) := by
  unfold output6373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6373_skip : Flapjack.WordAlloc.isSkip output6373 = false := by
  rw [output6373_def]
  conv => lhs; cbv
  try rfl
theorem node6373_eq : Flapjack.WordAlloc.removeDeadStructural input6373 value3190 value1 value2 = (output6373, value3191, value1) := by
  rw [input6373_def, output6373_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6373 input6372)).val
theorem input6374_def : input6374 = (.seq input6373 input6372) := by
  unfold input6374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6373 output6372)).val
theorem output6374_def : output6374 = (.seq output6373 output6372) := by
  unfold output6374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6374_skip : Flapjack.WordAlloc.isSkip output6374 = false := by
  rw [output6374_def]
  conv => lhs; cbv
  try rfl
theorem node6374_eq : Flapjack.WordAlloc.removeDeadStructural input6374 value5 value1 value2 = (output6374, value3191, value1) := by
  rw [input6374_def, output6374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6372_eq]
  dsimp only
  rw [node6373_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3192 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16881 15066165676546511630#64))).val
theorem input6375_def : input6375 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16881 15066165676546511630#64)) := by
  unfold input6375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16881 15066165676546511630#64))).val
theorem output6375_def : output6375 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16881 15066165676546511630#64)) := by
  unfold output6375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6375_skip : Flapjack.WordAlloc.isSkip output6375 = false := by
  rw [output6375_def]
  conv => lhs; cbv
  try rfl
theorem node6375_eq : Flapjack.WordAlloc.removeDeadStructural input6375 value3191 value1 value2 = (output6375, value3192, value1) := by
  rw [input6375_def, output6375_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16877 15066165676546511630#64))).val
theorem input6376_def : input6376 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16877 15066165676546511630#64)) := by
  unfold input6376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6376_def : output6376 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6376_skip : Flapjack.WordAlloc.isSkip output6376 = true := by
  rw [output6376_def]
  conv => lhs; cbv
  try rfl
theorem node6376_eq : Flapjack.WordAlloc.removeDeadStructural input6376 value3192 value1 value2 = (output6376, value3192, value1) := by
  rw [input6376_def, output6376_def]
  try (conv => lhs; cbv)
  try rfl

def value3193 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16873 16865 (Flapjack.WordRegImm.reg 16869))))).val
theorem input6377_def : input6377 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16873 16865 (Flapjack.WordRegImm.reg 16869)))) := by
  unfold input6377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16873 16865 (Flapjack.WordRegImm.reg 16869))))).val
theorem output6377_def : output6377 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16873 16865 (Flapjack.WordRegImm.reg 16869)))) := by
  unfold output6377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6377_skip : Flapjack.WordAlloc.isSkip output6377 = false := by
  rw [output6377_def]
  conv => lhs; cbv
  try rfl
theorem node6377_eq : Flapjack.WordAlloc.removeDeadStructural input6377 value3192 value1 value2 = (output6377, value3193, value1) := by
  rw [input6377_def, output6377_def]
  try (conv => lhs; cbv)
  try rfl

def value3194 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16869 3944#64))).val
theorem input6378_def : input6378 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16869 3944#64)) := by
  unfold input6378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16869 3944#64))).val
theorem output6378_def : output6378 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16869 3944#64)) := by
  unfold output6378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6378_skip : Flapjack.WordAlloc.isSkip output6378 = false := by
  rw [output6378_def]
  conv => lhs; cbv
  try rfl
theorem node6378_eq : Flapjack.WordAlloc.removeDeadStructural input6378 value3193 value1 value2 = (output6378, value3194, value1) := by
  rw [input6378_def, output6378_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6378 input6377)).val
theorem input6379_def : input6379 = (.seq input6378 input6377) := by
  unfold input6379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6378 output6377)).val
theorem output6379_def : output6379 = (.seq output6378 output6377) := by
  unfold output6379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6379_skip : Flapjack.WordAlloc.isSkip output6379 = false := by
  rw [output6379_def]
  conv => lhs; cbv
  try rfl
theorem node6379_eq : Flapjack.WordAlloc.removeDeadStructural input6379 value3192 value1 value2 = (output6379, value3194, value1) := by
  rw [input6379_def, output6379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6377_eq]
  dsimp only
  rw [node6378_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3195 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16865 (Flapjack.WordLangAddr.addr 16861 18446744073709551104#64)))).val
theorem input6380_def : input6380 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16865 (Flapjack.WordLangAddr.addr 16861 18446744073709551104#64))) := by
  unfold input6380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16865 (Flapjack.WordLangAddr.addr 16861 18446744073709551104#64)))).val
theorem output6380_def : output6380 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16865 (Flapjack.WordLangAddr.addr 16861 18446744073709551104#64))) := by
  unfold output6380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6380_skip : Flapjack.WordAlloc.isSkip output6380 = false := by
  rw [output6380_def]
  conv => lhs; cbv
  try rfl
theorem node6380_eq : Flapjack.WordAlloc.removeDeadStructural input6380 value3194 value1 value2 = (output6380, value3195, value1) := by
  rw [input6380_def, output6380_def]
  try (conv => lhs; cbv)
  try rfl

def value3196 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16861 16857)).val
theorem input6381_def : input6381 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16861 16857) := by
  unfold input6381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16861 16857)).val
theorem output6381_def : output6381 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16861 16857) := by
  unfold output6381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6381_skip : Flapjack.WordAlloc.isSkip output6381 = false := by
  rw [output6381_def]
  conv => lhs; cbv
  try rfl
theorem node6381_eq : Flapjack.WordAlloc.removeDeadStructural input6381 value3195 value1 value2 = (output6381, value3196, value1) := by
  rw [input6381_def, output6381_def]
  try (conv => lhs; cbv)
  try rfl

def value3197 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16857 16853 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6382_def : input6382 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16857 16853 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16857 16853 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6382_def : output6382 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16857 16853 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6382_skip : Flapjack.WordAlloc.isSkip output6382 = false := by
  rw [output6382_def]
  conv => lhs; cbv
  try rfl
theorem node6382_eq : Flapjack.WordAlloc.removeDeadStructural input6382 value3196 value1 value2 = (output6382, value3197, value1) := by
  rw [input6382_def, output6382_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16853 Flapjack.WordStore.heapLength)).val
theorem input6383_def : input6383 = (Flapjack.WordLangProgHOL.get 16853 Flapjack.WordStore.heapLength) := by
  unfold input6383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16853 Flapjack.WordStore.heapLength)).val
theorem output6383_def : output6383 = (Flapjack.WordLangProgHOL.get 16853 Flapjack.WordStore.heapLength) := by
  unfold output6383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6383_skip : Flapjack.WordAlloc.isSkip output6383 = false := by
  rw [output6383_def]
  conv => lhs; cbv
  try rfl
theorem node6383_eq : Flapjack.WordAlloc.removeDeadStructural input6383 value3197 value1 value2 = (output6383, value5, value1) := by
  rw [input6383_def, output6383_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6383 input6382)).val
theorem input6384_def : input6384 = (.seq input6383 input6382) := by
  unfold input6384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6383 output6382)).val
theorem output6384_def : output6384 = (.seq output6383 output6382) := by
  unfold output6384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6384_skip : Flapjack.WordAlloc.isSkip output6384 = false := by
  rw [output6384_def]
  conv => lhs; cbv
  try rfl
theorem node6384_eq : Flapjack.WordAlloc.removeDeadStructural input6384 value3196 value1 value2 = (output6384, value5, value1) := by
  rw [input6384_def, output6384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6382_eq]
  dsimp only
  rw [node6383_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6384 input6381)).val
theorem input6385_def : input6385 = (.seq input6384 input6381) := by
  unfold input6385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6384 output6381)).val
theorem output6385_def : output6385 = (.seq output6384 output6381) := by
  unfold output6385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6385_skip : Flapjack.WordAlloc.isSkip output6385 = false := by
  rw [output6385_def]
  conv => lhs; cbv
  try rfl
theorem node6385_eq : Flapjack.WordAlloc.removeDeadStructural input6385 value3195 value1 value2 = (output6385, value5, value1) := by
  rw [input6385_def, output6385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6381_eq]
  dsimp only
  rw [node6384_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6385 input6380)).val
theorem input6386_def : input6386 = (.seq input6385 input6380) := by
  unfold input6386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6385 output6380)).val
theorem output6386_def : output6386 = (.seq output6385 output6380) := by
  unfold output6386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6386_skip : Flapjack.WordAlloc.isSkip output6386 = false := by
  rw [output6386_def]
  conv => lhs; cbv
  try rfl
theorem node6386_eq : Flapjack.WordAlloc.removeDeadStructural input6386 value3194 value1 value2 = (output6386, value5, value1) := by
  rw [input6386_def, output6386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6380_eq]
  dsimp only
  rw [node6385_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6386 input6379)).val
theorem input6387_def : input6387 = (.seq input6386 input6379) := by
  unfold input6387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6386 output6379)).val
theorem output6387_def : output6387 = (.seq output6386 output6379) := by
  unfold output6387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6387_skip : Flapjack.WordAlloc.isSkip output6387 = false := by
  rw [output6387_def]
  conv => lhs; cbv
  try rfl
theorem node6387_eq : Flapjack.WordAlloc.removeDeadStructural input6387 value3192 value1 value2 = (output6387, value5, value1) := by
  rw [input6387_def, output6387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6379_eq]
  dsimp only
  rw [node6386_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3198 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16845 (Flapjack.WordLangAddr.addr 16849 0#64)))).val
theorem input6388_def : input6388 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16845 (Flapjack.WordLangAddr.addr 16849 0#64))) := by
  unfold input6388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16845 (Flapjack.WordLangAddr.addr 16849 0#64)))).val
theorem output6388_def : output6388 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 16845 (Flapjack.WordLangAddr.addr 16849 0#64))) := by
  unfold output6388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6388_skip : Flapjack.WordAlloc.isSkip output6388 = false := by
  rw [output6388_def]
  conv => lhs; cbv
  try rfl
theorem node6388_eq : Flapjack.WordAlloc.removeDeadStructural input6388 value5 value1 value2 = (output6388, value3198, value1) := by
  rw [input6388_def, output6388_def]
  try (conv => lhs; cbv)
  try rfl

def value3199 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
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
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16849, 16837)])).val
theorem input6389_def : input6389 = (Flapjack.WordLangProgHOL.move 0 [(16849, 16837)]) := by
  unfold input6389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(16849, 16837)])).val
theorem output6389_def : output6389 = (Flapjack.WordLangProgHOL.move 0 [(16849, 16837)]) := by
  unfold output6389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6389_skip : Flapjack.WordAlloc.isSkip output6389 = false := by
  rw [output6389_def]
  conv => lhs; cbv
  try rfl
theorem node6389_eq : Flapjack.WordAlloc.removeDeadStructural input6389 value3198 value1 value2 = (output6389, value3199, value1) := by
  rw [input6389_def, output6389_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6389 input6388)).val
theorem input6390_def : input6390 = (.seq input6389 input6388) := by
  unfold input6390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6389 output6388)).val
theorem output6390_def : output6390 = (.seq output6389 output6388) := by
  unfold output6390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6390_skip : Flapjack.WordAlloc.isSkip output6390 = false := by
  rw [output6390_def]
  conv => lhs; cbv
  try rfl
theorem node6390_eq : Flapjack.WordAlloc.removeDeadStructural input6390 value5 value1 value2 = (output6390, value3199, value1) := by
  rw [input6390_def, output6390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6388_eq]
  dsimp only
  rw [node6389_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3200 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16845 1314387578457599809#64))).val
theorem input6391_def : input6391 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16845 1314387578457599809#64)) := by
  unfold input6391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16845 1314387578457599809#64))).val
theorem output6391_def : output6391 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16845 1314387578457599809#64)) := by
  unfold output6391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6391_skip : Flapjack.WordAlloc.isSkip output6391 = false := by
  rw [output6391_def]
  conv => lhs; cbv
  try rfl
theorem node6391_eq : Flapjack.WordAlloc.removeDeadStructural input6391 value3199 value1 value2 = (output6391, value3200, value1) := by
  rw [input6391_def, output6391_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16841 1314387578457599809#64))).val
theorem input6392_def : input6392 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16841 1314387578457599809#64)) := by
  unfold input6392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output6392_def : output6392 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output6392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6392_skip : Flapjack.WordAlloc.isSkip output6392 = true := by
  rw [output6392_def]
  conv => lhs; cbv
  try rfl
theorem node6392_eq : Flapjack.WordAlloc.removeDeadStructural input6392 value3200 value1 value2 = (output6392, value3200, value1) := by
  rw [input6392_def, output6392_def]
  try (conv => lhs; cbv)
  try rfl

def value3201 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16837 16829 (Flapjack.WordRegImm.reg 16833))))).val
theorem input6393_def : input6393 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16837 16829 (Flapjack.WordRegImm.reg 16833)))) := by
  unfold input6393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16837 16829 (Flapjack.WordRegImm.reg 16833))))).val
theorem output6393_def : output6393 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 16837 16829 (Flapjack.WordRegImm.reg 16833)))) := by
  unfold output6393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6393_skip : Flapjack.WordAlloc.isSkip output6393 = false := by
  rw [output6393_def]
  conv => lhs; cbv
  try rfl
theorem node6393_eq : Flapjack.WordAlloc.removeDeadStructural input6393 value3200 value1 value2 = (output6393, value3201, value1) := by
  rw [input6393_def, output6393_def]
  try (conv => lhs; cbv)
  try rfl

def value3202 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16833 3936#64))).val
theorem input6394_def : input6394 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16833 3936#64)) := by
  unfold input6394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16833 3936#64))).val
theorem output6394_def : output6394 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 16833 3936#64)) := by
  unfold output6394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6394_skip : Flapjack.WordAlloc.isSkip output6394 = false := by
  rw [output6394_def]
  conv => lhs; cbv
  try rfl
theorem node6394_eq : Flapjack.WordAlloc.removeDeadStructural input6394 value3201 value1 value2 = (output6394, value3202, value1) := by
  rw [input6394_def, output6394_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input6394 input6393)).val
theorem input6395_def : input6395 = (.seq input6394 input6393) := by
  unfold input6395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output6394 output6393)).val
theorem output6395_def : output6395 = (.seq output6394 output6393) := by
  unfold output6395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6395_skip : Flapjack.WordAlloc.isSkip output6395 = false := by
  rw [output6395_def]
  conv => lhs; cbv
  try rfl
theorem node6395_eq : Flapjack.WordAlloc.removeDeadStructural input6395 value3200 value1 value2 = (output6395, value3202, value1) := by
  rw [input6395_def, output6395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node6393_eq]
  dsimp only
  rw [node6394_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value3203 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16829 (Flapjack.WordLangAddr.addr 16825 18446744073709551104#64)))).val
theorem input6396_def : input6396 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16829 (Flapjack.WordLangAddr.addr 16825 18446744073709551104#64))) := by
  unfold input6396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16829 (Flapjack.WordLangAddr.addr 16825 18446744073709551104#64)))).val
theorem output6396_def : output6396 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 16829 (Flapjack.WordLangAddr.addr 16825 18446744073709551104#64))) := by
  unfold output6396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6396_skip : Flapjack.WordAlloc.isSkip output6396 = false := by
  rw [output6396_def]
  conv => lhs; cbv
  try rfl
theorem node6396_eq : Flapjack.WordAlloc.removeDeadStructural input6396 value3202 value1 value2 = (output6396, value3203, value1) := by
  rw [input6396_def, output6396_def]
  try (conv => lhs; cbv)
  try rfl

def value3204 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16825 16821)).val
theorem input6397_def : input6397 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16825 16821) := by
  unfold input6397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16825 16821)).val
theorem output6397_def : output6397 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 16825 16821) := by
  unfold output6397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6397_skip : Flapjack.WordAlloc.isSkip output6397 = false := by
  rw [output6397_def]
  conv => lhs; cbv
  try rfl
theorem node6397_eq : Flapjack.WordAlloc.removeDeadStructural input6397 value3203 value1 value2 = (output6397, value3204, value1) := by
  rw [input6397_def, output6397_def]
  try (conv => lhs; cbv)
  try rfl

def value3205 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn Flapjack.Spt.ln
                          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input6398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16821 16817 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input6398_def : input6398 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16821 16817 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input6398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16821 16817 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output6398_def : output6398 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 16821 16817 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output6398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6398_skip : Flapjack.WordAlloc.isSkip output6398 = false := by
  rw [output6398_def]
  conv => lhs; cbv
  try rfl
theorem node6398_eq : Flapjack.WordAlloc.removeDeadStructural input6398 value3204 value1 value2 = (output6398, value3205, value1) := by
  rw [input6398_def, output6398_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input6399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16817 Flapjack.WordStore.heapLength)).val
theorem input6399_def : input6399 = (Flapjack.WordLangProgHOL.get 16817 Flapjack.WordStore.heapLength) := by
  unfold input6399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output6399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 16817 Flapjack.WordStore.heapLength)).val
theorem output6399_def : output6399 = (Flapjack.WordLangProgHOL.get 16817 Flapjack.WordStore.heapLength) := by
  unfold output6399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output6399_skip : Flapjack.WordAlloc.isSkip output6399 = false := by
  rw [output6399_def]
  conv => lhs; cbv
  try rfl
theorem node6399_eq : Flapjack.WordAlloc.removeDeadStructural input6399 value3205 value1 value2 = (output6399, value5, value1) := by
  rw [input6399_def, output6399_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node6399_eq
end InitECandidate.Proofs.DeadStages713
