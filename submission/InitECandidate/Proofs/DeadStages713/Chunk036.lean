import InitECandidate.Proofs.DeadStages713.Chunk035
import InitECandidate.Proofs.ComputationCache
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages713
@[irreducible, cbv_opaque] def input9216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9215 input9214)).val
theorem input9216_def : input9216 = (.seq input9215 input9214) := by
  unfold input9216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9215 output9214)).val
theorem output9216_def : output9216 = (.seq output9215 output9214) := by
  unfold output9216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9216_skip : Flapjack.WordAlloc.isSkip output9216 = false := by
  rw [output9216_def]
  conv => lhs; cbv
  try rfl
theorem node9216_eq : Flapjack.WordAlloc.removeDeadStructural input9216 value4612 value1 value2 = (output9216, value5, value1) := by
  rw [input9216_def, output9216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9214_eq]
  dsimp only
  rw [node9215_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9216 input9213)).val
theorem input9217_def : input9217 = (.seq input9216 input9213) := by
  unfold input9217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9216 output9213)).val
theorem output9217_def : output9217 = (.seq output9216 output9213) := by
  unfold output9217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9217_skip : Flapjack.WordAlloc.isSkip output9217 = false := by
  rw [output9217_def]
  conv => lhs; cbv
  try rfl
theorem node9217_eq : Flapjack.WordAlloc.removeDeadStructural input9217 value4611 value1 value2 = (output9217, value5, value1) := by
  rw [input9217_def, output9217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9213_eq]
  dsimp only
  rw [node9216_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9217 input9212)).val
theorem input9218_def : input9218 = (.seq input9217 input9212) := by
  unfold input9218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9217 output9212)).val
theorem output9218_def : output9218 = (.seq output9217 output9212) := by
  unfold output9218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9218_skip : Flapjack.WordAlloc.isSkip output9218 = false := by
  rw [output9218_def]
  conv => lhs; cbv
  try rfl
theorem node9218_eq : Flapjack.WordAlloc.removeDeadStructural input9218 value4610 value1 value2 = (output9218, value5, value1) := by
  rw [input9218_def, output9218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9212_eq]
  dsimp only
  rw [node9217_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9218 input9211)).val
theorem input9219_def : input9219 = (.seq input9218 input9211) := by
  unfold input9219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9218 output9211)).val
theorem output9219_def : output9219 = (.seq output9218 output9211) := by
  unfold output9219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9219_skip : Flapjack.WordAlloc.isSkip output9219 = false := by
  rw [output9219_def]
  conv => lhs; cbv
  try rfl
theorem node9219_eq : Flapjack.WordAlloc.removeDeadStructural input9219 value4608 value1 value2 = (output9219, value5, value1) := by
  rw [input9219_def, output9219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9211_eq]
  dsimp only
  rw [node9218_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4614 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10473 (Flapjack.WordLangAddr.addr 10477 0#64)))).val
theorem input9220_def : input9220 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10473 (Flapjack.WordLangAddr.addr 10477 0#64))) := by
  unfold input9220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10473 (Flapjack.WordLangAddr.addr 10477 0#64)))).val
theorem output9220_def : output9220 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10473 (Flapjack.WordLangAddr.addr 10477 0#64))) := by
  unfold output9220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9220_skip : Flapjack.WordAlloc.isSkip output9220 = false := by
  rw [output9220_def]
  conv => lhs; cbv
  try rfl
theorem node9220_eq : Flapjack.WordAlloc.removeDeadStructural input9220 value5 value1 value2 = (output9220, value4614, value1) := by
  rw [input9220_def, output9220_def]
  try (conv => lhs; cbv)
  try rfl

def value4615 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(10477, 10465)])).val
theorem input9221_def : input9221 = (Flapjack.WordLangProgHOL.move 0 [(10477, 10465)]) := by
  unfold input9221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(10477, 10465)])).val
theorem output9221_def : output9221 = (Flapjack.WordLangProgHOL.move 0 [(10477, 10465)]) := by
  unfold output9221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9221_skip : Flapjack.WordAlloc.isSkip output9221 = false := by
  rw [output9221_def]
  conv => lhs; cbv
  try rfl
theorem node9221_eq : Flapjack.WordAlloc.removeDeadStructural input9221 value4614 value1 value2 = (output9221, value4615, value1) := by
  rw [input9221_def, output9221_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9221 input9220)).val
theorem input9222_def : input9222 = (.seq input9221 input9220) := by
  unfold input9222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9221 output9220)).val
theorem output9222_def : output9222 = (.seq output9221 output9220) := by
  unfold output9222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9222_skip : Flapjack.WordAlloc.isSkip output9222 = false := by
  rw [output9222_def]
  conv => lhs; cbv
  try rfl
theorem node9222_eq : Flapjack.WordAlloc.removeDeadStructural input9222 value5 value1 value2 = (output9222, value4615, value1) := by
  rw [input9222_def, output9222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9220_eq]
  dsimp only
  rw [node9221_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4616 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10473 633474091881273774#64))).val
theorem input9223_def : input9223 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10473 633474091881273774#64)) := by
  unfold input9223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10473 633474091881273774#64))).val
theorem output9223_def : output9223 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10473 633474091881273774#64)) := by
  unfold output9223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9223_skip : Flapjack.WordAlloc.isSkip output9223 = false := by
  rw [output9223_def]
  conv => lhs; cbv
  try rfl
theorem node9223_eq : Flapjack.WordAlloc.removeDeadStructural input9223 value4615 value1 value2 = (output9223, value4616, value1) := by
  rw [input9223_def, output9223_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10469 633474091881273774#64))).val
theorem input9224_def : input9224 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10469 633474091881273774#64)) := by
  unfold input9224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9224_def : output9224 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9224_skip : Flapjack.WordAlloc.isSkip output9224 = true := by
  rw [output9224_def]
  conv => lhs; cbv
  try rfl
theorem node9224_eq : Flapjack.WordAlloc.removeDeadStructural input9224 value4616 value1 value2 = (output9224, value4616, value1) := by
  rw [input9224_def, output9224_def]
  try (conv => lhs; cbv)
  try rfl

def value4617 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10465 10457 (Flapjack.WordRegImm.reg 10461))))).val
theorem input9225_def : input9225 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10465 10457 (Flapjack.WordRegImm.reg 10461)))) := by
  unfold input9225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10465 10457 (Flapjack.WordRegImm.reg 10461))))).val
theorem output9225_def : output9225 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10465 10457 (Flapjack.WordRegImm.reg 10461)))) := by
  unfold output9225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9225_skip : Flapjack.WordAlloc.isSkip output9225 = false := by
  rw [output9225_def]
  conv => lhs; cbv
  try rfl
theorem node9225_eq : Flapjack.WordAlloc.removeDeadStructural input9225 value4616 value1 value2 = (output9225, value4617, value1) := by
  rw [input9225_def, output9225_def]
  try (conv => lhs; cbv)
  try rfl

def value4618 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10461 2520#64))).val
theorem input9226_def : input9226 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10461 2520#64)) := by
  unfold input9226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10461 2520#64))).val
theorem output9226_def : output9226 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10461 2520#64)) := by
  unfold output9226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9226_skip : Flapjack.WordAlloc.isSkip output9226 = false := by
  rw [output9226_def]
  conv => lhs; cbv
  try rfl
theorem node9226_eq : Flapjack.WordAlloc.removeDeadStructural input9226 value4617 value1 value2 = (output9226, value4618, value1) := by
  rw [input9226_def, output9226_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9226 input9225)).val
theorem input9227_def : input9227 = (.seq input9226 input9225) := by
  unfold input9227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9226 output9225)).val
theorem output9227_def : output9227 = (.seq output9226 output9225) := by
  unfold output9227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9227_skip : Flapjack.WordAlloc.isSkip output9227 = false := by
  rw [output9227_def]
  conv => lhs; cbv
  try rfl
theorem node9227_eq : Flapjack.WordAlloc.removeDeadStructural input9227 value4616 value1 value2 = (output9227, value4618, value1) := by
  rw [input9227_def, output9227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9225_eq]
  dsimp only
  rw [node9226_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4619 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10457 (Flapjack.WordLangAddr.addr 10453 18446744073709551104#64)))).val
theorem input9228_def : input9228 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10457 (Flapjack.WordLangAddr.addr 10453 18446744073709551104#64))) := by
  unfold input9228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10457 (Flapjack.WordLangAddr.addr 10453 18446744073709551104#64)))).val
theorem output9228_def : output9228 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10457 (Flapjack.WordLangAddr.addr 10453 18446744073709551104#64))) := by
  unfold output9228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9228_skip : Flapjack.WordAlloc.isSkip output9228 = false := by
  rw [output9228_def]
  conv => lhs; cbv
  try rfl
theorem node9228_eq : Flapjack.WordAlloc.removeDeadStructural input9228 value4618 value1 value2 = (output9228, value4619, value1) := by
  rw [input9228_def, output9228_def]
  try (conv => lhs; cbv)
  try rfl

def value4620 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10453 10449)).val
theorem input9229_def : input9229 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10453 10449) := by
  unfold input9229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10453 10449)).val
theorem output9229_def : output9229 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10453 10449) := by
  unfold output9229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9229_skip : Flapjack.WordAlloc.isSkip output9229 = false := by
  rw [output9229_def]
  conv => lhs; cbv
  try rfl
theorem node9229_eq : Flapjack.WordAlloc.removeDeadStructural input9229 value4619 value1 value2 = (output9229, value4620, value1) := by
  rw [input9229_def, output9229_def]
  try (conv => lhs; cbv)
  try rfl

def value4621 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10449 10445 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9230_def : input9230 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10449 10445 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10449 10445 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9230_def : output9230 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10449 10445 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9230_skip : Flapjack.WordAlloc.isSkip output9230 = false := by
  rw [output9230_def]
  conv => lhs; cbv
  try rfl
theorem node9230_eq : Flapjack.WordAlloc.removeDeadStructural input9230 value4620 value1 value2 = (output9230, value4621, value1) := by
  rw [input9230_def, output9230_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 10445 Flapjack.WordStore.heapLength)).val
theorem input9231_def : input9231 = (Flapjack.WordLangProgHOL.get 10445 Flapjack.WordStore.heapLength) := by
  unfold input9231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 10445 Flapjack.WordStore.heapLength)).val
theorem output9231_def : output9231 = (Flapjack.WordLangProgHOL.get 10445 Flapjack.WordStore.heapLength) := by
  unfold output9231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9231_skip : Flapjack.WordAlloc.isSkip output9231 = false := by
  rw [output9231_def]
  conv => lhs; cbv
  try rfl
theorem node9231_eq : Flapjack.WordAlloc.removeDeadStructural input9231 value4621 value1 value2 = (output9231, value5, value1) := by
  rw [input9231_def, output9231_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9231 input9230)).val
theorem input9232_def : input9232 = (.seq input9231 input9230) := by
  unfold input9232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9231 output9230)).val
theorem output9232_def : output9232 = (.seq output9231 output9230) := by
  unfold output9232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9232_skip : Flapjack.WordAlloc.isSkip output9232 = false := by
  rw [output9232_def]
  conv => lhs; cbv
  try rfl
theorem node9232_eq : Flapjack.WordAlloc.removeDeadStructural input9232 value4620 value1 value2 = (output9232, value5, value1) := by
  rw [input9232_def, output9232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9230_eq]
  dsimp only
  rw [node9231_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9232 input9229)).val
theorem input9233_def : input9233 = (.seq input9232 input9229) := by
  unfold input9233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9232 output9229)).val
theorem output9233_def : output9233 = (.seq output9232 output9229) := by
  unfold output9233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9233_skip : Flapjack.WordAlloc.isSkip output9233 = false := by
  rw [output9233_def]
  conv => lhs; cbv
  try rfl
theorem node9233_eq : Flapjack.WordAlloc.removeDeadStructural input9233 value4619 value1 value2 = (output9233, value5, value1) := by
  rw [input9233_def, output9233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9229_eq]
  dsimp only
  rw [node9232_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9233 input9228)).val
theorem input9234_def : input9234 = (.seq input9233 input9228) := by
  unfold input9234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9233 output9228)).val
theorem output9234_def : output9234 = (.seq output9233 output9228) := by
  unfold output9234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9234_skip : Flapjack.WordAlloc.isSkip output9234 = false := by
  rw [output9234_def]
  conv => lhs; cbv
  try rfl
theorem node9234_eq : Flapjack.WordAlloc.removeDeadStructural input9234 value4618 value1 value2 = (output9234, value5, value1) := by
  rw [input9234_def, output9234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9228_eq]
  dsimp only
  rw [node9233_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9234 input9227)).val
theorem input9235_def : input9235 = (.seq input9234 input9227) := by
  unfold input9235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9234 output9227)).val
theorem output9235_def : output9235 = (.seq output9234 output9227) := by
  unfold output9235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9235_skip : Flapjack.WordAlloc.isSkip output9235 = false := by
  rw [output9235_def]
  conv => lhs; cbv
  try rfl
theorem node9235_eq : Flapjack.WordAlloc.removeDeadStructural input9235 value4616 value1 value2 = (output9235, value5, value1) := by
  rw [input9235_def, output9235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9227_eq]
  dsimp only
  rw [node9234_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4622 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10437 (Flapjack.WordLangAddr.addr 10441 0#64)))).val
theorem input9236_def : input9236 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10437 (Flapjack.WordLangAddr.addr 10441 0#64))) := by
  unfold input9236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10437 (Flapjack.WordLangAddr.addr 10441 0#64)))).val
theorem output9236_def : output9236 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10437 (Flapjack.WordLangAddr.addr 10441 0#64))) := by
  unfold output9236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9236_skip : Flapjack.WordAlloc.isSkip output9236 = false := by
  rw [output9236_def]
  conv => lhs; cbv
  try rfl
theorem node9236_eq : Flapjack.WordAlloc.removeDeadStructural input9236 value5 value1 value2 = (output9236, value4622, value1) := by
  rw [input9236_def, output9236_def]
  try (conv => lhs; cbv)
  try rfl

def value4623 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(10441, 10429)])).val
theorem input9237_def : input9237 = (Flapjack.WordLangProgHOL.move 0 [(10441, 10429)]) := by
  unfold input9237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(10441, 10429)])).val
theorem output9237_def : output9237 = (Flapjack.WordLangProgHOL.move 0 [(10441, 10429)]) := by
  unfold output9237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9237_skip : Flapjack.WordAlloc.isSkip output9237 = false := by
  rw [output9237_def]
  conv => lhs; cbv
  try rfl
theorem node9237_eq : Flapjack.WordAlloc.removeDeadStructural input9237 value4622 value1 value2 = (output9237, value4623, value1) := by
  rw [input9237_def, output9237_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9237 input9236)).val
theorem input9238_def : input9238 = (.seq input9237 input9236) := by
  unfold input9238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9237 output9236)).val
theorem output9238_def : output9238 = (.seq output9237 output9236) := by
  unfold output9238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9238_skip : Flapjack.WordAlloc.isSkip output9238 = false := by
  rw [output9238_def]
  conv => lhs; cbv
  try rfl
theorem node9238_eq : Flapjack.WordAlloc.removeDeadStructural input9238 value5 value1 value2 = (output9238, value4623, value1) := by
  rw [input9238_def, output9238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9236_eq]
  dsimp only
  rw [node9237_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4624 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10437 1779737893574802031#64))).val
theorem input9239_def : input9239 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10437 1779737893574802031#64)) := by
  unfold input9239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10437 1779737893574802031#64))).val
theorem output9239_def : output9239 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10437 1779737893574802031#64)) := by
  unfold output9239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9239_skip : Flapjack.WordAlloc.isSkip output9239 = false := by
  rw [output9239_def]
  conv => lhs; cbv
  try rfl
theorem node9239_eq : Flapjack.WordAlloc.removeDeadStructural input9239 value4623 value1 value2 = (output9239, value4624, value1) := by
  rw [input9239_def, output9239_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10433 1779737893574802031#64))).val
theorem input9240_def : input9240 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10433 1779737893574802031#64)) := by
  unfold input9240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9240_def : output9240 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9240_skip : Flapjack.WordAlloc.isSkip output9240 = true := by
  rw [output9240_def]
  conv => lhs; cbv
  try rfl
theorem node9240_eq : Flapjack.WordAlloc.removeDeadStructural input9240 value4624 value1 value2 = (output9240, value4624, value1) := by
  rw [input9240_def, output9240_def]
  try (conv => lhs; cbv)
  try rfl

def value4625 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10429 10421 (Flapjack.WordRegImm.reg 10425))))).val
theorem input9241_def : input9241 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10429 10421 (Flapjack.WordRegImm.reg 10425)))) := by
  unfold input9241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10429 10421 (Flapjack.WordRegImm.reg 10425))))).val
theorem output9241_def : output9241 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10429 10421 (Flapjack.WordRegImm.reg 10425)))) := by
  unfold output9241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9241_skip : Flapjack.WordAlloc.isSkip output9241 = false := by
  rw [output9241_def]
  conv => lhs; cbv
  try rfl
theorem node9241_eq : Flapjack.WordAlloc.removeDeadStructural input9241 value4624 value1 value2 = (output9241, value4625, value1) := by
  rw [input9241_def, output9241_def]
  try (conv => lhs; cbv)
  try rfl

def value4626 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10425 2512#64))).val
theorem input9242_def : input9242 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10425 2512#64)) := by
  unfold input9242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10425 2512#64))).val
theorem output9242_def : output9242 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10425 2512#64)) := by
  unfold output9242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9242_skip : Flapjack.WordAlloc.isSkip output9242 = false := by
  rw [output9242_def]
  conv => lhs; cbv
  try rfl
theorem node9242_eq : Flapjack.WordAlloc.removeDeadStructural input9242 value4625 value1 value2 = (output9242, value4626, value1) := by
  rw [input9242_def, output9242_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9242 input9241)).val
theorem input9243_def : input9243 = (.seq input9242 input9241) := by
  unfold input9243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9242 output9241)).val
theorem output9243_def : output9243 = (.seq output9242 output9241) := by
  unfold output9243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9243_skip : Flapjack.WordAlloc.isSkip output9243 = false := by
  rw [output9243_def]
  conv => lhs; cbv
  try rfl
theorem node9243_eq : Flapjack.WordAlloc.removeDeadStructural input9243 value4624 value1 value2 = (output9243, value4626, value1) := by
  rw [input9243_def, output9243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9241_eq]
  dsimp only
  rw [node9242_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4627 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10421 (Flapjack.WordLangAddr.addr 10417 18446744073709551104#64)))).val
theorem input9244_def : input9244 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10421 (Flapjack.WordLangAddr.addr 10417 18446744073709551104#64))) := by
  unfold input9244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10421 (Flapjack.WordLangAddr.addr 10417 18446744073709551104#64)))).val
theorem output9244_def : output9244 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10421 (Flapjack.WordLangAddr.addr 10417 18446744073709551104#64))) := by
  unfold output9244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9244_skip : Flapjack.WordAlloc.isSkip output9244 = false := by
  rw [output9244_def]
  conv => lhs; cbv
  try rfl
theorem node9244_eq : Flapjack.WordAlloc.removeDeadStructural input9244 value4626 value1 value2 = (output9244, value4627, value1) := by
  rw [input9244_def, output9244_def]
  try (conv => lhs; cbv)
  try rfl

def value4628 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10417 10413)).val
theorem input9245_def : input9245 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10417 10413) := by
  unfold input9245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10417 10413)).val
theorem output9245_def : output9245 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10417 10413) := by
  unfold output9245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9245_skip : Flapjack.WordAlloc.isSkip output9245 = false := by
  rw [output9245_def]
  conv => lhs; cbv
  try rfl
theorem node9245_eq : Flapjack.WordAlloc.removeDeadStructural input9245 value4627 value1 value2 = (output9245, value4628, value1) := by
  rw [input9245_def, output9245_def]
  try (conv => lhs; cbv)
  try rfl

def value4629 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10413 10409 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9246_def : input9246 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10413 10409 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10413 10409 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9246_def : output9246 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10413 10409 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9246_skip : Flapjack.WordAlloc.isSkip output9246 = false := by
  rw [output9246_def]
  conv => lhs; cbv
  try rfl
theorem node9246_eq : Flapjack.WordAlloc.removeDeadStructural input9246 value4628 value1 value2 = (output9246, value4629, value1) := by
  rw [input9246_def, output9246_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 10409 Flapjack.WordStore.heapLength)).val
theorem input9247_def : input9247 = (Flapjack.WordLangProgHOL.get 10409 Flapjack.WordStore.heapLength) := by
  unfold input9247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 10409 Flapjack.WordStore.heapLength)).val
theorem output9247_def : output9247 = (Flapjack.WordLangProgHOL.get 10409 Flapjack.WordStore.heapLength) := by
  unfold output9247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9247_skip : Flapjack.WordAlloc.isSkip output9247 = false := by
  rw [output9247_def]
  conv => lhs; cbv
  try rfl
theorem node9247_eq : Flapjack.WordAlloc.removeDeadStructural input9247 value4629 value1 value2 = (output9247, value5, value1) := by
  rw [input9247_def, output9247_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9247 input9246)).val
theorem input9248_def : input9248 = (.seq input9247 input9246) := by
  unfold input9248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9247 output9246)).val
theorem output9248_def : output9248 = (.seq output9247 output9246) := by
  unfold output9248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9248_skip : Flapjack.WordAlloc.isSkip output9248 = false := by
  rw [output9248_def]
  conv => lhs; cbv
  try rfl
theorem node9248_eq : Flapjack.WordAlloc.removeDeadStructural input9248 value4628 value1 value2 = (output9248, value5, value1) := by
  rw [input9248_def, output9248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9246_eq]
  dsimp only
  rw [node9247_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9248 input9245)).val
theorem input9249_def : input9249 = (.seq input9248 input9245) := by
  unfold input9249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9248 output9245)).val
theorem output9249_def : output9249 = (.seq output9248 output9245) := by
  unfold output9249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9249_skip : Flapjack.WordAlloc.isSkip output9249 = false := by
  rw [output9249_def]
  conv => lhs; cbv
  try rfl
theorem node9249_eq : Flapjack.WordAlloc.removeDeadStructural input9249 value4627 value1 value2 = (output9249, value5, value1) := by
  rw [input9249_def, output9249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9245_eq]
  dsimp only
  rw [node9248_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9249 input9244)).val
theorem input9250_def : input9250 = (.seq input9249 input9244) := by
  unfold input9250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9249 output9244)).val
theorem output9250_def : output9250 = (.seq output9249 output9244) := by
  unfold output9250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9250_skip : Flapjack.WordAlloc.isSkip output9250 = false := by
  rw [output9250_def]
  conv => lhs; cbv
  try rfl
theorem node9250_eq : Flapjack.WordAlloc.removeDeadStructural input9250 value4626 value1 value2 = (output9250, value5, value1) := by
  rw [input9250_def, output9250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9244_eq]
  dsimp only
  rw [node9249_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9250 input9243)).val
theorem input9251_def : input9251 = (.seq input9250 input9243) := by
  unfold input9251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9250 output9243)).val
theorem output9251_def : output9251 = (.seq output9250 output9243) := by
  unfold output9251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9251_skip : Flapjack.WordAlloc.isSkip output9251 = false := by
  rw [output9251_def]
  conv => lhs; cbv
  try rfl
theorem node9251_eq : Flapjack.WordAlloc.removeDeadStructural input9251 value4624 value1 value2 = (output9251, value5, value1) := by
  rw [input9251_def, output9251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9243_eq]
  dsimp only
  rw [node9250_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4630 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10401 (Flapjack.WordLangAddr.addr 10405 0#64)))).val
theorem input9252_def : input9252 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10401 (Flapjack.WordLangAddr.addr 10405 0#64))) := by
  unfold input9252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10401 (Flapjack.WordLangAddr.addr 10405 0#64)))).val
theorem output9252_def : output9252 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10401 (Flapjack.WordLangAddr.addr 10405 0#64))) := by
  unfold output9252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9252_skip : Flapjack.WordAlloc.isSkip output9252 = false := by
  rw [output9252_def]
  conv => lhs; cbv
  try rfl
theorem node9252_eq : Flapjack.WordAlloc.removeDeadStructural input9252 value5 value1 value2 = (output9252, value4630, value1) := by
  rw [input9252_def, output9252_def]
  try (conv => lhs; cbv)
  try rfl

def value4631 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(10405, 10393)])).val
theorem input9253_def : input9253 = (Flapjack.WordLangProgHOL.move 0 [(10405, 10393)]) := by
  unfold input9253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(10405, 10393)])).val
theorem output9253_def : output9253 = (Flapjack.WordLangProgHOL.move 0 [(10405, 10393)]) := by
  unfold output9253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9253_skip : Flapjack.WordAlloc.isSkip output9253 = false := by
  rw [output9253_def]
  conv => lhs; cbv
  try rfl
theorem node9253_eq : Flapjack.WordAlloc.removeDeadStructural input9253 value4630 value1 value2 = (output9253, value4631, value1) := by
  rw [input9253_def, output9253_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9253 input9252)).val
theorem input9254_def : input9254 = (.seq input9253 input9252) := by
  unfold input9254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9253 output9252)).val
theorem output9254_def : output9254 = (.seq output9253 output9252) := by
  unfold output9254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9254_skip : Flapjack.WordAlloc.isSkip output9254 = false := by
  rw [output9254_def]
  conv => lhs; cbv
  try rfl
theorem node9254_eq : Flapjack.WordAlloc.removeDeadStructural input9254 value5 value1 value2 = (output9254, value4631, value1) := by
  rw [input9254_def, output9254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9252_eq]
  dsimp only
  rw [node9253_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4632 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10401 132274872219551930#64))).val
theorem input9255_def : input9255 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10401 132274872219551930#64)) := by
  unfold input9255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10401 132274872219551930#64))).val
theorem output9255_def : output9255 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10401 132274872219551930#64)) := by
  unfold output9255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9255_skip : Flapjack.WordAlloc.isSkip output9255 = false := by
  rw [output9255_def]
  conv => lhs; cbv
  try rfl
theorem node9255_eq : Flapjack.WordAlloc.removeDeadStructural input9255 value4631 value1 value2 = (output9255, value4632, value1) := by
  rw [input9255_def, output9255_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10397 132274872219551930#64))).val
theorem input9256_def : input9256 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10397 132274872219551930#64)) := by
  unfold input9256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9256_def : output9256 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9256_skip : Flapjack.WordAlloc.isSkip output9256 = true := by
  rw [output9256_def]
  conv => lhs; cbv
  try rfl
theorem node9256_eq : Flapjack.WordAlloc.removeDeadStructural input9256 value4632 value1 value2 = (output9256, value4632, value1) := by
  rw [input9256_def, output9256_def]
  try (conv => lhs; cbv)
  try rfl

def value4633 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10393 10385 (Flapjack.WordRegImm.reg 10389))))).val
theorem input9257_def : input9257 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10393 10385 (Flapjack.WordRegImm.reg 10389)))) := by
  unfold input9257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10393 10385 (Flapjack.WordRegImm.reg 10389))))).val
theorem output9257_def : output9257 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10393 10385 (Flapjack.WordRegImm.reg 10389)))) := by
  unfold output9257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9257_skip : Flapjack.WordAlloc.isSkip output9257 = false := by
  rw [output9257_def]
  conv => lhs; cbv
  try rfl
theorem node9257_eq : Flapjack.WordAlloc.removeDeadStructural input9257 value4632 value1 value2 = (output9257, value4633, value1) := by
  rw [input9257_def, output9257_def]
  try (conv => lhs; cbv)
  try rfl

def value4634 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10389 2504#64))).val
theorem input9258_def : input9258 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10389 2504#64)) := by
  unfold input9258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10389 2504#64))).val
theorem output9258_def : output9258 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10389 2504#64)) := by
  unfold output9258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9258_skip : Flapjack.WordAlloc.isSkip output9258 = false := by
  rw [output9258_def]
  conv => lhs; cbv
  try rfl
theorem node9258_eq : Flapjack.WordAlloc.removeDeadStructural input9258 value4633 value1 value2 = (output9258, value4634, value1) := by
  rw [input9258_def, output9258_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9258 input9257)).val
theorem input9259_def : input9259 = (.seq input9258 input9257) := by
  unfold input9259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9258 output9257)).val
theorem output9259_def : output9259 = (.seq output9258 output9257) := by
  unfold output9259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9259_skip : Flapjack.WordAlloc.isSkip output9259 = false := by
  rw [output9259_def]
  conv => lhs; cbv
  try rfl
theorem node9259_eq : Flapjack.WordAlloc.removeDeadStructural input9259 value4632 value1 value2 = (output9259, value4634, value1) := by
  rw [input9259_def, output9259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9257_eq]
  dsimp only
  rw [node9258_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4635 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10385 (Flapjack.WordLangAddr.addr 10381 18446744073709551104#64)))).val
theorem input9260_def : input9260 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10385 (Flapjack.WordLangAddr.addr 10381 18446744073709551104#64))) := by
  unfold input9260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10385 (Flapjack.WordLangAddr.addr 10381 18446744073709551104#64)))).val
theorem output9260_def : output9260 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10385 (Flapjack.WordLangAddr.addr 10381 18446744073709551104#64))) := by
  unfold output9260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9260_skip : Flapjack.WordAlloc.isSkip output9260 = false := by
  rw [output9260_def]
  conv => lhs; cbv
  try rfl
theorem node9260_eq : Flapjack.WordAlloc.removeDeadStructural input9260 value4634 value1 value2 = (output9260, value4635, value1) := by
  rw [input9260_def, output9260_def]
  try (conv => lhs; cbv)
  try rfl

def value4636 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10381 10377)).val
theorem input9261_def : input9261 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10381 10377) := by
  unfold input9261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10381 10377)).val
theorem output9261_def : output9261 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10381 10377) := by
  unfold output9261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9261_skip : Flapjack.WordAlloc.isSkip output9261 = false := by
  rw [output9261_def]
  conv => lhs; cbv
  try rfl
theorem node9261_eq : Flapjack.WordAlloc.removeDeadStructural input9261 value4635 value1 value2 = (output9261, value4636, value1) := by
  rw [input9261_def, output9261_def]
  try (conv => lhs; cbv)
  try rfl

def value4637 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln)))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10377 10373 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9262_def : input9262 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10377 10373 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10377 10373 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9262_def : output9262 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10377 10373 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9262_skip : Flapjack.WordAlloc.isSkip output9262 = false := by
  rw [output9262_def]
  conv => lhs; cbv
  try rfl
theorem node9262_eq : Flapjack.WordAlloc.removeDeadStructural input9262 value4636 value1 value2 = (output9262, value4637, value1) := by
  rw [input9262_def, output9262_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 10373 Flapjack.WordStore.heapLength)).val
theorem input9263_def : input9263 = (Flapjack.WordLangProgHOL.get 10373 Flapjack.WordStore.heapLength) := by
  unfold input9263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 10373 Flapjack.WordStore.heapLength)).val
theorem output9263_def : output9263 = (Flapjack.WordLangProgHOL.get 10373 Flapjack.WordStore.heapLength) := by
  unfold output9263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9263_skip : Flapjack.WordAlloc.isSkip output9263 = false := by
  rw [output9263_def]
  conv => lhs; cbv
  try rfl
theorem node9263_eq : Flapjack.WordAlloc.removeDeadStructural input9263 value4637 value1 value2 = (output9263, value5, value1) := by
  rw [input9263_def, output9263_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9263 input9262)).val
theorem input9264_def : input9264 = (.seq input9263 input9262) := by
  unfold input9264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9263 output9262)).val
theorem output9264_def : output9264 = (.seq output9263 output9262) := by
  unfold output9264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9264_skip : Flapjack.WordAlloc.isSkip output9264 = false := by
  rw [output9264_def]
  conv => lhs; cbv
  try rfl
theorem node9264_eq : Flapjack.WordAlloc.removeDeadStructural input9264 value4636 value1 value2 = (output9264, value5, value1) := by
  rw [input9264_def, output9264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9262_eq]
  dsimp only
  rw [node9263_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9264 input9261)).val
theorem input9265_def : input9265 = (.seq input9264 input9261) := by
  unfold input9265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9264 output9261)).val
theorem output9265_def : output9265 = (.seq output9264 output9261) := by
  unfold output9265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9265_skip : Flapjack.WordAlloc.isSkip output9265 = false := by
  rw [output9265_def]
  conv => lhs; cbv
  try rfl
theorem node9265_eq : Flapjack.WordAlloc.removeDeadStructural input9265 value4635 value1 value2 = (output9265, value5, value1) := by
  rw [input9265_def, output9265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9261_eq]
  dsimp only
  rw [node9264_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9265 input9260)).val
theorem input9266_def : input9266 = (.seq input9265 input9260) := by
  unfold input9266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9265 output9260)).val
theorem output9266_def : output9266 = (.seq output9265 output9260) := by
  unfold output9266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9266_skip : Flapjack.WordAlloc.isSkip output9266 = false := by
  rw [output9266_def]
  conv => lhs; cbv
  try rfl
theorem node9266_eq : Flapjack.WordAlloc.removeDeadStructural input9266 value4634 value1 value2 = (output9266, value5, value1) := by
  rw [input9266_def, output9266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9260_eq]
  dsimp only
  rw [node9265_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9266 input9259)).val
theorem input9267_def : input9267 = (.seq input9266 input9259) := by
  unfold input9267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9266 output9259)).val
theorem output9267_def : output9267 = (.seq output9266 output9259) := by
  unfold output9267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9267_skip : Flapjack.WordAlloc.isSkip output9267 = false := by
  rw [output9267_def]
  conv => lhs; cbv
  try rfl
theorem node9267_eq : Flapjack.WordAlloc.removeDeadStructural input9267 value4632 value1 value2 = (output9267, value5, value1) := by
  rw [input9267_def, output9267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9259_eq]
  dsimp only
  rw [node9266_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4638 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10365 (Flapjack.WordLangAddr.addr 10369 0#64)))).val
theorem input9268_def : input9268 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10365 (Flapjack.WordLangAddr.addr 10369 0#64))) := by
  unfold input9268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10365 (Flapjack.WordLangAddr.addr 10369 0#64)))).val
theorem output9268_def : output9268 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10365 (Flapjack.WordLangAddr.addr 10369 0#64))) := by
  unfold output9268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9268_skip : Flapjack.WordAlloc.isSkip output9268 = false := by
  rw [output9268_def]
  conv => lhs; cbv
  try rfl
theorem node9268_eq : Flapjack.WordAlloc.removeDeadStructural input9268 value5 value1 value2 = (output9268, value4638, value1) := by
  rw [input9268_def, output9268_def]
  try (conv => lhs; cbv)
  try rfl

def value4639 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln)))))
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(10369, 10357)])).val
theorem input9269_def : input9269 = (Flapjack.WordLangProgHOL.move 0 [(10369, 10357)]) := by
  unfold input9269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(10369, 10357)])).val
theorem output9269_def : output9269 = (Flapjack.WordLangProgHOL.move 0 [(10369, 10357)]) := by
  unfold output9269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9269_skip : Flapjack.WordAlloc.isSkip output9269 = false := by
  rw [output9269_def]
  conv => lhs; cbv
  try rfl
theorem node9269_eq : Flapjack.WordAlloc.removeDeadStructural input9269 value4638 value1 value2 = (output9269, value4639, value1) := by
  rw [input9269_def, output9269_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9269 input9268)).val
theorem input9270_def : input9270 = (.seq input9269 input9268) := by
  unfold input9270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9269 output9268)).val
theorem output9270_def : output9270 = (.seq output9269 output9268) := by
  unfold output9270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9270_skip : Flapjack.WordAlloc.isSkip output9270 = false := by
  rw [output9270_def]
  conv => lhs; cbv
  try rfl
theorem node9270_eq : Flapjack.WordAlloc.removeDeadStructural input9270 value5 value1 value2 = (output9270, value4639, value1) := by
  rw [input9270_def, output9270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9268_eq]
  dsimp only
  rw [node9269_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4640 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10365 11283074393783708770#64))).val
theorem input9271_def : input9271 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10365 11283074393783708770#64)) := by
  unfold input9271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10365 11283074393783708770#64))).val
theorem output9271_def : output9271 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10365 11283074393783708770#64)) := by
  unfold output9271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9271_skip : Flapjack.WordAlloc.isSkip output9271 = false := by
  rw [output9271_def]
  conv => lhs; cbv
  try rfl
theorem node9271_eq : Flapjack.WordAlloc.removeDeadStructural input9271 value4639 value1 value2 = (output9271, value4640, value1) := by
  rw [input9271_def, output9271_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10361 11283074393783708770#64))).val
theorem input9272_def : input9272 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10361 11283074393783708770#64)) := by
  unfold input9272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9272_def : output9272 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9272_skip : Flapjack.WordAlloc.isSkip output9272 = true := by
  rw [output9272_def]
  conv => lhs; cbv
  try rfl
theorem node9272_eq : Flapjack.WordAlloc.removeDeadStructural input9272 value4640 value1 value2 = (output9272, value4640, value1) := by
  rw [input9272_def, output9272_def]
  try (conv => lhs; cbv)
  try rfl

def value4641 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10357 10349 (Flapjack.WordRegImm.reg 10353))))).val
theorem input9273_def : input9273 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10357 10349 (Flapjack.WordRegImm.reg 10353)))) := by
  unfold input9273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10357 10349 (Flapjack.WordRegImm.reg 10353))))).val
theorem output9273_def : output9273 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10357 10349 (Flapjack.WordRegImm.reg 10353)))) := by
  unfold output9273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9273_skip : Flapjack.WordAlloc.isSkip output9273 = false := by
  rw [output9273_def]
  conv => lhs; cbv
  try rfl
theorem node9273_eq : Flapjack.WordAlloc.removeDeadStructural input9273 value4640 value1 value2 = (output9273, value4641, value1) := by
  rw [input9273_def, output9273_def]
  try (conv => lhs; cbv)
  try rfl

def value4642 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10353 2496#64))).val
theorem input9274_def : input9274 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10353 2496#64)) := by
  unfold input9274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10353 2496#64))).val
theorem output9274_def : output9274 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10353 2496#64)) := by
  unfold output9274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9274_skip : Flapjack.WordAlloc.isSkip output9274 = false := by
  rw [output9274_def]
  conv => lhs; cbv
  try rfl
theorem node9274_eq : Flapjack.WordAlloc.removeDeadStructural input9274 value4641 value1 value2 = (output9274, value4642, value1) := by
  rw [input9274_def, output9274_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9274 input9273)).val
theorem input9275_def : input9275 = (.seq input9274 input9273) := by
  unfold input9275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9274 output9273)).val
theorem output9275_def : output9275 = (.seq output9274 output9273) := by
  unfold output9275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9275_skip : Flapjack.WordAlloc.isSkip output9275 = false := by
  rw [output9275_def]
  conv => lhs; cbv
  try rfl
theorem node9275_eq : Flapjack.WordAlloc.removeDeadStructural input9275 value4640 value1 value2 = (output9275, value4642, value1) := by
  rw [input9275_def, output9275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9273_eq]
  dsimp only
  rw [node9274_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4643 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10349 (Flapjack.WordLangAddr.addr 10345 18446744073709551104#64)))).val
theorem input9276_def : input9276 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10349 (Flapjack.WordLangAddr.addr 10345 18446744073709551104#64))) := by
  unfold input9276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10349 (Flapjack.WordLangAddr.addr 10345 18446744073709551104#64)))).val
theorem output9276_def : output9276 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10349 (Flapjack.WordLangAddr.addr 10345 18446744073709551104#64))) := by
  unfold output9276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9276_skip : Flapjack.WordAlloc.isSkip output9276 = false := by
  rw [output9276_def]
  conv => lhs; cbv
  try rfl
theorem node9276_eq : Flapjack.WordAlloc.removeDeadStructural input9276 value4642 value1 value2 = (output9276, value4643, value1) := by
  rw [input9276_def, output9276_def]
  try (conv => lhs; cbv)
  try rfl

def value4644 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10345 10341)).val
theorem input9277_def : input9277 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10345 10341) := by
  unfold input9277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10345 10341)).val
theorem output9277_def : output9277 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10345 10341) := by
  unfold output9277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9277_skip : Flapjack.WordAlloc.isSkip output9277 = false := by
  rw [output9277_def]
  conv => lhs; cbv
  try rfl
theorem node9277_eq : Flapjack.WordAlloc.removeDeadStructural input9277 value4643 value1 value2 = (output9277, value4644, value1) := by
  rw [input9277_def, output9277_def]
  try (conv => lhs; cbv)
  try rfl

def value4645 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10341 10337 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9278_def : input9278 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10341 10337 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10341 10337 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9278_def : output9278 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10341 10337 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9278_skip : Flapjack.WordAlloc.isSkip output9278 = false := by
  rw [output9278_def]
  conv => lhs; cbv
  try rfl
theorem node9278_eq : Flapjack.WordAlloc.removeDeadStructural input9278 value4644 value1 value2 = (output9278, value4645, value1) := by
  rw [input9278_def, output9278_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 10337 Flapjack.WordStore.heapLength)).val
theorem input9279_def : input9279 = (Flapjack.WordLangProgHOL.get 10337 Flapjack.WordStore.heapLength) := by
  unfold input9279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 10337 Flapjack.WordStore.heapLength)).val
theorem output9279_def : output9279 = (Flapjack.WordLangProgHOL.get 10337 Flapjack.WordStore.heapLength) := by
  unfold output9279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9279_skip : Flapjack.WordAlloc.isSkip output9279 = false := by
  rw [output9279_def]
  conv => lhs; cbv
  try rfl
theorem node9279_eq : Flapjack.WordAlloc.removeDeadStructural input9279 value4645 value1 value2 = (output9279, value5, value1) := by
  rw [input9279_def, output9279_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9279 input9278)).val
theorem input9280_def : input9280 = (.seq input9279 input9278) := by
  unfold input9280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9279 output9278)).val
theorem output9280_def : output9280 = (.seq output9279 output9278) := by
  unfold output9280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9280_skip : Flapjack.WordAlloc.isSkip output9280 = false := by
  rw [output9280_def]
  conv => lhs; cbv
  try rfl
theorem node9280_eq : Flapjack.WordAlloc.removeDeadStructural input9280 value4644 value1 value2 = (output9280, value5, value1) := by
  rw [input9280_def, output9280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9278_eq]
  dsimp only
  rw [node9279_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9280 input9277)).val
theorem input9281_def : input9281 = (.seq input9280 input9277) := by
  unfold input9281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9280 output9277)).val
theorem output9281_def : output9281 = (.seq output9280 output9277) := by
  unfold output9281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9281_skip : Flapjack.WordAlloc.isSkip output9281 = false := by
  rw [output9281_def]
  conv => lhs; cbv
  try rfl
theorem node9281_eq : Flapjack.WordAlloc.removeDeadStructural input9281 value4643 value1 value2 = (output9281, value5, value1) := by
  rw [input9281_def, output9281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9277_eq]
  dsimp only
  rw [node9280_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9281 input9276)).val
theorem input9282_def : input9282 = (.seq input9281 input9276) := by
  unfold input9282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9281 output9276)).val
theorem output9282_def : output9282 = (.seq output9281 output9276) := by
  unfold output9282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9282_skip : Flapjack.WordAlloc.isSkip output9282 = false := by
  rw [output9282_def]
  conv => lhs; cbv
  try rfl
theorem node9282_eq : Flapjack.WordAlloc.removeDeadStructural input9282 value4642 value1 value2 = (output9282, value5, value1) := by
  rw [input9282_def, output9282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9276_eq]
  dsimp only
  rw [node9281_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9282 input9275)).val
theorem input9283_def : input9283 = (.seq input9282 input9275) := by
  unfold input9283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9282 output9275)).val
theorem output9283_def : output9283 = (.seq output9282 output9275) := by
  unfold output9283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9283_skip : Flapjack.WordAlloc.isSkip output9283 = false := by
  rw [output9283_def]
  conv => lhs; cbv
  try rfl
theorem node9283_eq : Flapjack.WordAlloc.removeDeadStructural input9283 value4640 value1 value2 = (output9283, value5, value1) := by
  rw [input9283_def, output9283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9275_eq]
  dsimp only
  rw [node9282_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4646 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln)))))
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10329 (Flapjack.WordLangAddr.addr 10333 0#64)))).val
theorem input9284_def : input9284 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10329 (Flapjack.WordLangAddr.addr 10333 0#64))) := by
  unfold input9284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10329 (Flapjack.WordLangAddr.addr 10333 0#64)))).val
theorem output9284_def : output9284 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10329 (Flapjack.WordLangAddr.addr 10333 0#64))) := by
  unfold output9284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9284_skip : Flapjack.WordAlloc.isSkip output9284 = false := by
  rw [output9284_def]
  conv => lhs; cbv
  try rfl
theorem node9284_eq : Flapjack.WordAlloc.removeDeadStructural input9284 value5 value1 value2 = (output9284, value4646, value1) := by
  rw [input9284_def, output9284_def]
  try (conv => lhs; cbv)
  try rfl

def value4647 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(10333, 10321)])).val
theorem input9285_def : input9285 = (Flapjack.WordLangProgHOL.move 0 [(10333, 10321)]) := by
  unfold input9285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(10333, 10321)])).val
theorem output9285_def : output9285 = (Flapjack.WordLangProgHOL.move 0 [(10333, 10321)]) := by
  unfold output9285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9285_skip : Flapjack.WordAlloc.isSkip output9285 = false := by
  rw [output9285_def]
  conv => lhs; cbv
  try rfl
theorem node9285_eq : Flapjack.WordAlloc.removeDeadStructural input9285 value4646 value1 value2 = (output9285, value4647, value1) := by
  rw [input9285_def, output9285_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9285 input9284)).val
theorem input9286_def : input9286 = (.seq input9285 input9284) := by
  unfold input9286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9285 output9284)).val
theorem output9286_def : output9286 = (.seq output9285 output9284) := by
  unfold output9286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9286_skip : Flapjack.WordAlloc.isSkip output9286 = false := by
  rw [output9286_def]
  conv => lhs; cbv
  try rfl
theorem node9286_eq : Flapjack.WordAlloc.removeDeadStructural input9286 value5 value1 value2 = (output9286, value4647, value1) := by
  rw [input9286_def, output9286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9284_eq]
  dsimp only
  rw [node9285_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4648 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10329 13067430171545714168#64))).val
theorem input9287_def : input9287 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10329 13067430171545714168#64)) := by
  unfold input9287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10329 13067430171545714168#64))).val
theorem output9287_def : output9287 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10329 13067430171545714168#64)) := by
  unfold output9287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9287_skip : Flapjack.WordAlloc.isSkip output9287 = false := by
  rw [output9287_def]
  conv => lhs; cbv
  try rfl
theorem node9287_eq : Flapjack.WordAlloc.removeDeadStructural input9287 value4647 value1 value2 = (output9287, value4648, value1) := by
  rw [input9287_def, output9287_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10325 13067430171545714168#64))).val
theorem input9288_def : input9288 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10325 13067430171545714168#64)) := by
  unfold input9288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9288_def : output9288 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9288_skip : Flapjack.WordAlloc.isSkip output9288 = true := by
  rw [output9288_def]
  conv => lhs; cbv
  try rfl
theorem node9288_eq : Flapjack.WordAlloc.removeDeadStructural input9288 value4648 value1 value2 = (output9288, value4648, value1) := by
  rw [input9288_def, output9288_def]
  try (conv => lhs; cbv)
  try rfl

def value4649 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10321 10313 (Flapjack.WordRegImm.reg 10317))))).val
theorem input9289_def : input9289 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10321 10313 (Flapjack.WordRegImm.reg 10317)))) := by
  unfold input9289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10321 10313 (Flapjack.WordRegImm.reg 10317))))).val
theorem output9289_def : output9289 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10321 10313 (Flapjack.WordRegImm.reg 10317)))) := by
  unfold output9289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9289_skip : Flapjack.WordAlloc.isSkip output9289 = false := by
  rw [output9289_def]
  conv => lhs; cbv
  try rfl
theorem node9289_eq : Flapjack.WordAlloc.removeDeadStructural input9289 value4648 value1 value2 = (output9289, value4649, value1) := by
  rw [input9289_def, output9289_def]
  try (conv => lhs; cbv)
  try rfl

def value4650 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10317 2488#64))).val
theorem input9290_def : input9290 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10317 2488#64)) := by
  unfold input9290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10317 2488#64))).val
theorem output9290_def : output9290 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10317 2488#64)) := by
  unfold output9290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9290_skip : Flapjack.WordAlloc.isSkip output9290 = false := by
  rw [output9290_def]
  conv => lhs; cbv
  try rfl
theorem node9290_eq : Flapjack.WordAlloc.removeDeadStructural input9290 value4649 value1 value2 = (output9290, value4650, value1) := by
  rw [input9290_def, output9290_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9290 input9289)).val
theorem input9291_def : input9291 = (.seq input9290 input9289) := by
  unfold input9291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9290 output9289)).val
theorem output9291_def : output9291 = (.seq output9290 output9289) := by
  unfold output9291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9291_skip : Flapjack.WordAlloc.isSkip output9291 = false := by
  rw [output9291_def]
  conv => lhs; cbv
  try rfl
theorem node9291_eq : Flapjack.WordAlloc.removeDeadStructural input9291 value4648 value1 value2 = (output9291, value4650, value1) := by
  rw [input9291_def, output9291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9289_eq]
  dsimp only
  rw [node9290_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4651 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10313 (Flapjack.WordLangAddr.addr 10309 18446744073709551104#64)))).val
theorem input9292_def : input9292 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10313 (Flapjack.WordLangAddr.addr 10309 18446744073709551104#64))) := by
  unfold input9292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10313 (Flapjack.WordLangAddr.addr 10309 18446744073709551104#64)))).val
theorem output9292_def : output9292 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10313 (Flapjack.WordLangAddr.addr 10309 18446744073709551104#64))) := by
  unfold output9292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9292_skip : Flapjack.WordAlloc.isSkip output9292 = false := by
  rw [output9292_def]
  conv => lhs; cbv
  try rfl
theorem node9292_eq : Flapjack.WordAlloc.removeDeadStructural input9292 value4650 value1 value2 = (output9292, value4651, value1) := by
  rw [input9292_def, output9292_def]
  try (conv => lhs; cbv)
  try rfl

def value4652 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln)))))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10309 10305)).val
theorem input9293_def : input9293 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10309 10305) := by
  unfold input9293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10309 10305)).val
theorem output9293_def : output9293 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10309 10305) := by
  unfold output9293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9293_skip : Flapjack.WordAlloc.isSkip output9293 = false := by
  rw [output9293_def]
  conv => lhs; cbv
  try rfl
theorem node9293_eq : Flapjack.WordAlloc.removeDeadStructural input9293 value4651 value1 value2 = (output9293, value4652, value1) := by
  rw [input9293_def, output9293_def]
  try (conv => lhs; cbv)
  try rfl

def value4653 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10305 10301 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9294_def : input9294 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10305 10301 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10305 10301 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9294_def : output9294 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10305 10301 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9294_skip : Flapjack.WordAlloc.isSkip output9294 = false := by
  rw [output9294_def]
  conv => lhs; cbv
  try rfl
theorem node9294_eq : Flapjack.WordAlloc.removeDeadStructural input9294 value4652 value1 value2 = (output9294, value4653, value1) := by
  rw [input9294_def, output9294_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 10301 Flapjack.WordStore.heapLength)).val
theorem input9295_def : input9295 = (Flapjack.WordLangProgHOL.get 10301 Flapjack.WordStore.heapLength) := by
  unfold input9295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 10301 Flapjack.WordStore.heapLength)).val
theorem output9295_def : output9295 = (Flapjack.WordLangProgHOL.get 10301 Flapjack.WordStore.heapLength) := by
  unfold output9295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9295_skip : Flapjack.WordAlloc.isSkip output9295 = false := by
  rw [output9295_def]
  conv => lhs; cbv
  try rfl
theorem node9295_eq : Flapjack.WordAlloc.removeDeadStructural input9295 value4653 value1 value2 = (output9295, value5, value1) := by
  rw [input9295_def, output9295_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9295 input9294)).val
theorem input9296_def : input9296 = (.seq input9295 input9294) := by
  unfold input9296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9295 output9294)).val
theorem output9296_def : output9296 = (.seq output9295 output9294) := by
  unfold output9296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9296_skip : Flapjack.WordAlloc.isSkip output9296 = false := by
  rw [output9296_def]
  conv => lhs; cbv
  try rfl
theorem node9296_eq : Flapjack.WordAlloc.removeDeadStructural input9296 value4652 value1 value2 = (output9296, value5, value1) := by
  rw [input9296_def, output9296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9294_eq]
  dsimp only
  rw [node9295_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9296 input9293)).val
theorem input9297_def : input9297 = (.seq input9296 input9293) := by
  unfold input9297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9296 output9293)).val
theorem output9297_def : output9297 = (.seq output9296 output9293) := by
  unfold output9297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9297_skip : Flapjack.WordAlloc.isSkip output9297 = false := by
  rw [output9297_def]
  conv => lhs; cbv
  try rfl
theorem node9297_eq : Flapjack.WordAlloc.removeDeadStructural input9297 value4651 value1 value2 = (output9297, value5, value1) := by
  rw [input9297_def, output9297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9293_eq]
  dsimp only
  rw [node9296_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9297 input9292)).val
theorem input9298_def : input9298 = (.seq input9297 input9292) := by
  unfold input9298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9297 output9292)).val
theorem output9298_def : output9298 = (.seq output9297 output9292) := by
  unfold output9298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9298_skip : Flapjack.WordAlloc.isSkip output9298 = false := by
  rw [output9298_def]
  conv => lhs; cbv
  try rfl
theorem node9298_eq : Flapjack.WordAlloc.removeDeadStructural input9298 value4650 value1 value2 = (output9298, value5, value1) := by
  rw [input9298_def, output9298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9292_eq]
  dsimp only
  rw [node9297_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9298 input9291)).val
theorem input9299_def : input9299 = (.seq input9298 input9291) := by
  unfold input9299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9298 output9291)).val
theorem output9299_def : output9299 = (.seq output9298 output9291) := by
  unfold output9299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9299_skip : Flapjack.WordAlloc.isSkip output9299 = false := by
  rw [output9299_def]
  conv => lhs; cbv
  try rfl
theorem node9299_eq : Flapjack.WordAlloc.removeDeadStructural input9299 value4648 value1 value2 = (output9299, value5, value1) := by
  rw [input9299_def, output9299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9291_eq]
  dsimp only
  rw [node9298_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4654 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10293 (Flapjack.WordLangAddr.addr 10297 0#64)))).val
theorem input9300_def : input9300 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10293 (Flapjack.WordLangAddr.addr 10297 0#64))) := by
  unfold input9300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10293 (Flapjack.WordLangAddr.addr 10297 0#64)))).val
theorem output9300_def : output9300 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10293 (Flapjack.WordLangAddr.addr 10297 0#64))) := by
  unfold output9300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9300_skip : Flapjack.WordAlloc.isSkip output9300 = false := by
  rw [output9300_def]
  conv => lhs; cbv
  try rfl
theorem node9300_eq : Flapjack.WordAlloc.removeDeadStructural input9300 value5 value1 value2 = (output9300, value4654, value1) := by
  rw [input9300_def, output9300_def]
  try (conv => lhs; cbv)
  try rfl

def value4655 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(10297, 10285)])).val
theorem input9301_def : input9301 = (Flapjack.WordLangProgHOL.move 0 [(10297, 10285)]) := by
  unfold input9301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(10297, 10285)])).val
theorem output9301_def : output9301 = (Flapjack.WordLangProgHOL.move 0 [(10297, 10285)]) := by
  unfold output9301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9301_skip : Flapjack.WordAlloc.isSkip output9301 = false := by
  rw [output9301_def]
  conv => lhs; cbv
  try rfl
theorem node9301_eq : Flapjack.WordAlloc.removeDeadStructural input9301 value4654 value1 value2 = (output9301, value4655, value1) := by
  rw [input9301_def, output9301_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9301 input9300)).val
theorem input9302_def : input9302 = (.seq input9301 input9300) := by
  unfold input9302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9301 output9300)).val
theorem output9302_def : output9302 = (.seq output9301 output9300) := by
  unfold output9302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9302_skip : Flapjack.WordAlloc.isSkip output9302 = false := by
  rw [output9302_def]
  conv => lhs; cbv
  try rfl
theorem node9302_eq : Flapjack.WordAlloc.removeDeadStructural input9302 value5 value1 value2 = (output9302, value4655, value1) := by
  rw [input9302_def, output9302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9300_eq]
  dsimp only
  rw [node9301_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4656 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10293 11041975239630265116#64))).val
theorem input9303_def : input9303 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10293 11041975239630265116#64)) := by
  unfold input9303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10293 11041975239630265116#64))).val
theorem output9303_def : output9303 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10293 11041975239630265116#64)) := by
  unfold output9303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9303_skip : Flapjack.WordAlloc.isSkip output9303 = false := by
  rw [output9303_def]
  conv => lhs; cbv
  try rfl
theorem node9303_eq : Flapjack.WordAlloc.removeDeadStructural input9303 value4655 value1 value2 = (output9303, value4656, value1) := by
  rw [input9303_def, output9303_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10289 11041975239630265116#64))).val
theorem input9304_def : input9304 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10289 11041975239630265116#64)) := by
  unfold input9304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9304_def : output9304 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9304_skip : Flapjack.WordAlloc.isSkip output9304 = true := by
  rw [output9304_def]
  conv => lhs; cbv
  try rfl
theorem node9304_eq : Flapjack.WordAlloc.removeDeadStructural input9304 value4656 value1 value2 = (output9304, value4656, value1) := by
  rw [input9304_def, output9304_def]
  try (conv => lhs; cbv)
  try rfl

def value4657 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10285 10277 (Flapjack.WordRegImm.reg 10281))))).val
theorem input9305_def : input9305 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10285 10277 (Flapjack.WordRegImm.reg 10281)))) := by
  unfold input9305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10285 10277 (Flapjack.WordRegImm.reg 10281))))).val
theorem output9305_def : output9305 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10285 10277 (Flapjack.WordRegImm.reg 10281)))) := by
  unfold output9305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9305_skip : Flapjack.WordAlloc.isSkip output9305 = false := by
  rw [output9305_def]
  conv => lhs; cbv
  try rfl
theorem node9305_eq : Flapjack.WordAlloc.removeDeadStructural input9305 value4656 value1 value2 = (output9305, value4657, value1) := by
  rw [input9305_def, output9305_def]
  try (conv => lhs; cbv)
  try rfl

def value4658 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10281 2480#64))).val
theorem input9306_def : input9306 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10281 2480#64)) := by
  unfold input9306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10281 2480#64))).val
theorem output9306_def : output9306 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10281 2480#64)) := by
  unfold output9306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9306_skip : Flapjack.WordAlloc.isSkip output9306 = false := by
  rw [output9306_def]
  conv => lhs; cbv
  try rfl
theorem node9306_eq : Flapjack.WordAlloc.removeDeadStructural input9306 value4657 value1 value2 = (output9306, value4658, value1) := by
  rw [input9306_def, output9306_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9306 input9305)).val
theorem input9307_def : input9307 = (.seq input9306 input9305) := by
  unfold input9307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9306 output9305)).val
theorem output9307_def : output9307 = (.seq output9306 output9305) := by
  unfold output9307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9307_skip : Flapjack.WordAlloc.isSkip output9307 = false := by
  rw [output9307_def]
  conv => lhs; cbv
  try rfl
theorem node9307_eq : Flapjack.WordAlloc.removeDeadStructural input9307 value4656 value1 value2 = (output9307, value4658, value1) := by
  rw [input9307_def, output9307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9305_eq]
  dsimp only
  rw [node9306_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4659 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10277 (Flapjack.WordLangAddr.addr 10273 18446744073709551104#64)))).val
theorem input9308_def : input9308 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10277 (Flapjack.WordLangAddr.addr 10273 18446744073709551104#64))) := by
  unfold input9308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10277 (Flapjack.WordLangAddr.addr 10273 18446744073709551104#64)))).val
theorem output9308_def : output9308 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10277 (Flapjack.WordLangAddr.addr 10273 18446744073709551104#64))) := by
  unfold output9308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9308_skip : Flapjack.WordAlloc.isSkip output9308 = false := by
  rw [output9308_def]
  conv => lhs; cbv
  try rfl
theorem node9308_eq : Flapjack.WordAlloc.removeDeadStructural input9308 value4658 value1 value2 = (output9308, value4659, value1) := by
  rw [input9308_def, output9308_def]
  try (conv => lhs; cbv)
  try rfl

def value4660 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln)))))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10273 10269)).val
theorem input9309_def : input9309 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10273 10269) := by
  unfold input9309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10273 10269)).val
theorem output9309_def : output9309 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10273 10269) := by
  unfold output9309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9309_skip : Flapjack.WordAlloc.isSkip output9309 = false := by
  rw [output9309_def]
  conv => lhs; cbv
  try rfl
theorem node9309_eq : Flapjack.WordAlloc.removeDeadStructural input9309 value4659 value1 value2 = (output9309, value4660, value1) := by
  rw [input9309_def, output9309_def]
  try (conv => lhs; cbv)
  try rfl

def value4661 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln)))))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10269 10265 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9310_def : input9310 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10269 10265 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10269 10265 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9310_def : output9310 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10269 10265 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9310_skip : Flapjack.WordAlloc.isSkip output9310 = false := by
  rw [output9310_def]
  conv => lhs; cbv
  try rfl
theorem node9310_eq : Flapjack.WordAlloc.removeDeadStructural input9310 value4660 value1 value2 = (output9310, value4661, value1) := by
  rw [input9310_def, output9310_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 10265 Flapjack.WordStore.heapLength)).val
theorem input9311_def : input9311 = (Flapjack.WordLangProgHOL.get 10265 Flapjack.WordStore.heapLength) := by
  unfold input9311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 10265 Flapjack.WordStore.heapLength)).val
theorem output9311_def : output9311 = (Flapjack.WordLangProgHOL.get 10265 Flapjack.WordStore.heapLength) := by
  unfold output9311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9311_skip : Flapjack.WordAlloc.isSkip output9311 = false := by
  rw [output9311_def]
  conv => lhs; cbv
  try rfl
theorem node9311_eq : Flapjack.WordAlloc.removeDeadStructural input9311 value4661 value1 value2 = (output9311, value5, value1) := by
  rw [input9311_def, output9311_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9311 input9310)).val
theorem input9312_def : input9312 = (.seq input9311 input9310) := by
  unfold input9312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9311 output9310)).val
theorem output9312_def : output9312 = (.seq output9311 output9310) := by
  unfold output9312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9312_skip : Flapjack.WordAlloc.isSkip output9312 = false := by
  rw [output9312_def]
  conv => lhs; cbv
  try rfl
theorem node9312_eq : Flapjack.WordAlloc.removeDeadStructural input9312 value4660 value1 value2 = (output9312, value5, value1) := by
  rw [input9312_def, output9312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9310_eq]
  dsimp only
  rw [node9311_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9312 input9309)).val
theorem input9313_def : input9313 = (.seq input9312 input9309) := by
  unfold input9313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9312 output9309)).val
theorem output9313_def : output9313 = (.seq output9312 output9309) := by
  unfold output9313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9313_skip : Flapjack.WordAlloc.isSkip output9313 = false := by
  rw [output9313_def]
  conv => lhs; cbv
  try rfl
theorem node9313_eq : Flapjack.WordAlloc.removeDeadStructural input9313 value4659 value1 value2 = (output9313, value5, value1) := by
  rw [input9313_def, output9313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9309_eq]
  dsimp only
  rw [node9312_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9313 input9308)).val
theorem input9314_def : input9314 = (.seq input9313 input9308) := by
  unfold input9314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9313 output9308)).val
theorem output9314_def : output9314 = (.seq output9313 output9308) := by
  unfold output9314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9314_skip : Flapjack.WordAlloc.isSkip output9314 = false := by
  rw [output9314_def]
  conv => lhs; cbv
  try rfl
theorem node9314_eq : Flapjack.WordAlloc.removeDeadStructural input9314 value4658 value1 value2 = (output9314, value5, value1) := by
  rw [input9314_def, output9314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9308_eq]
  dsimp only
  rw [node9313_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9314 input9307)).val
theorem input9315_def : input9315 = (.seq input9314 input9307) := by
  unfold input9315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9314 output9307)).val
theorem output9315_def : output9315 = (.seq output9314 output9307) := by
  unfold output9315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9315_skip : Flapjack.WordAlloc.isSkip output9315 = false := by
  rw [output9315_def]
  conv => lhs; cbv
  try rfl
theorem node9315_eq : Flapjack.WordAlloc.removeDeadStructural input9315 value4656 value1 value2 = (output9315, value5, value1) := by
  rw [input9315_def, output9315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9307_eq]
  dsimp only
  rw [node9314_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4662 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln)))))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln)))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10257 (Flapjack.WordLangAddr.addr 10261 0#64)))).val
theorem input9316_def : input9316 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10257 (Flapjack.WordLangAddr.addr 10261 0#64))) := by
  unfold input9316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10257 (Flapjack.WordLangAddr.addr 10261 0#64)))).val
theorem output9316_def : output9316 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10257 (Flapjack.WordLangAddr.addr 10261 0#64))) := by
  unfold output9316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9316_skip : Flapjack.WordAlloc.isSkip output9316 = false := by
  rw [output9316_def]
  conv => lhs; cbv
  try rfl
theorem node9316_eq : Flapjack.WordAlloc.removeDeadStructural input9316 value5 value1 value2 = (output9316, value4662, value1) := by
  rw [input9316_def, output9316_def]
  try (conv => lhs; cbv)
  try rfl

def value4663 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln)))))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(10261, 10249)])).val
theorem input9317_def : input9317 = (Flapjack.WordLangProgHOL.move 0 [(10261, 10249)]) := by
  unfold input9317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(10261, 10249)])).val
theorem output9317_def : output9317 = (Flapjack.WordLangProgHOL.move 0 [(10261, 10249)]) := by
  unfold output9317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9317_skip : Flapjack.WordAlloc.isSkip output9317 = false := by
  rw [output9317_def]
  conv => lhs; cbv
  try rfl
theorem node9317_eq : Flapjack.WordAlloc.removeDeadStructural input9317 value4662 value1 value2 = (output9317, value4663, value1) := by
  rw [input9317_def, output9317_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9317 input9316)).val
theorem input9318_def : input9318 = (.seq input9317 input9316) := by
  unfold input9318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9317 output9316)).val
theorem output9318_def : output9318 = (.seq output9317 output9316) := by
  unfold output9318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9318_skip : Flapjack.WordAlloc.isSkip output9318 = false := by
  rw [output9318_def]
  conv => lhs; cbv
  try rfl
theorem node9318_eq : Flapjack.WordAlloc.removeDeadStructural input9318 value5 value1 value2 = (output9318, value4663, value1) := by
  rw [input9318_def, output9318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9316_eq]
  dsimp only
  rw [node9317_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4664 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10257 495550047642324592#64))).val
theorem input9319_def : input9319 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10257 495550047642324592#64)) := by
  unfold input9319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10257 495550047642324592#64))).val
theorem output9319_def : output9319 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10257 495550047642324592#64)) := by
  unfold output9319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9319_skip : Flapjack.WordAlloc.isSkip output9319 = false := by
  rw [output9319_def]
  conv => lhs; cbv
  try rfl
theorem node9319_eq : Flapjack.WordAlloc.removeDeadStructural input9319 value4663 value1 value2 = (output9319, value4664, value1) := by
  rw [input9319_def, output9319_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10253 495550047642324592#64))).val
theorem input9320_def : input9320 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10253 495550047642324592#64)) := by
  unfold input9320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9320_def : output9320 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9320_skip : Flapjack.WordAlloc.isSkip output9320 = true := by
  rw [output9320_def]
  conv => lhs; cbv
  try rfl
theorem node9320_eq : Flapjack.WordAlloc.removeDeadStructural input9320 value4664 value1 value2 = (output9320, value4664, value1) := by
  rw [input9320_def, output9320_def]
  try (conv => lhs; cbv)
  try rfl

def value4665 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln)))))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10249 10241 (Flapjack.WordRegImm.reg 10245))))).val
theorem input9321_def : input9321 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10249 10241 (Flapjack.WordRegImm.reg 10245)))) := by
  unfold input9321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10249 10241 (Flapjack.WordRegImm.reg 10245))))).val
theorem output9321_def : output9321 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10249 10241 (Flapjack.WordRegImm.reg 10245)))) := by
  unfold output9321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9321_skip : Flapjack.WordAlloc.isSkip output9321 = false := by
  rw [output9321_def]
  conv => lhs; cbv
  try rfl
theorem node9321_eq : Flapjack.WordAlloc.removeDeadStructural input9321 value4664 value1 value2 = (output9321, value4665, value1) := by
  rw [input9321_def, output9321_def]
  try (conv => lhs; cbv)
  try rfl

def value4666 : Flapjack.NumSet :=
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
                      (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
                        Flapjack.Spt.ln))))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10245 2472#64))).val
theorem input9322_def : input9322 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10245 2472#64)) := by
  unfold input9322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10245 2472#64))).val
theorem output9322_def : output9322 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10245 2472#64)) := by
  unfold output9322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9322_skip : Flapjack.WordAlloc.isSkip output9322 = false := by
  rw [output9322_def]
  conv => lhs; cbv
  try rfl
theorem node9322_eq : Flapjack.WordAlloc.removeDeadStructural input9322 value4665 value1 value2 = (output9322, value4666, value1) := by
  rw [input9322_def, output9322_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9322 input9321)).val
theorem input9323_def : input9323 = (.seq input9322 input9321) := by
  unfold input9323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9322 output9321)).val
theorem output9323_def : output9323 = (.seq output9322 output9321) := by
  unfold output9323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9323_skip : Flapjack.WordAlloc.isSkip output9323 = false := by
  rw [output9323_def]
  conv => lhs; cbv
  try rfl
theorem node9323_eq : Flapjack.WordAlloc.removeDeadStructural input9323 value4664 value1 value2 = (output9323, value4666, value1) := by
  rw [input9323_def, output9323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9321_eq]
  dsimp only
  rw [node9322_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4667 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10241 (Flapjack.WordLangAddr.addr 10237 18446744073709551104#64)))).val
theorem input9324_def : input9324 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10241 (Flapjack.WordLangAddr.addr 10237 18446744073709551104#64))) := by
  unfold input9324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10241 (Flapjack.WordLangAddr.addr 10237 18446744073709551104#64)))).val
theorem output9324_def : output9324 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10241 (Flapjack.WordLangAddr.addr 10237 18446744073709551104#64))) := by
  unfold output9324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9324_skip : Flapjack.WordAlloc.isSkip output9324 = false := by
  rw [output9324_def]
  conv => lhs; cbv
  try rfl
theorem node9324_eq : Flapjack.WordAlloc.removeDeadStructural input9324 value4666 value1 value2 = (output9324, value4667, value1) := by
  rw [input9324_def, output9324_def]
  try (conv => lhs; cbv)
  try rfl

def value4668 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10237 10233)).val
theorem input9325_def : input9325 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10237 10233) := by
  unfold input9325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10237 10233)).val
theorem output9325_def : output9325 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10237 10233) := by
  unfold output9325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9325_skip : Flapjack.WordAlloc.isSkip output9325 = false := by
  rw [output9325_def]
  conv => lhs; cbv
  try rfl
theorem node9325_eq : Flapjack.WordAlloc.removeDeadStructural input9325 value4667 value1 value2 = (output9325, value4668, value1) := by
  rw [input9325_def, output9325_def]
  try (conv => lhs; cbv)
  try rfl

def value4669 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10233 10229 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9326_def : input9326 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10233 10229 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10233 10229 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9326_def : output9326 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10233 10229 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9326_skip : Flapjack.WordAlloc.isSkip output9326 = false := by
  rw [output9326_def]
  conv => lhs; cbv
  try rfl
theorem node9326_eq : Flapjack.WordAlloc.removeDeadStructural input9326 value4668 value1 value2 = (output9326, value4669, value1) := by
  rw [input9326_def, output9326_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 10229 Flapjack.WordStore.heapLength)).val
theorem input9327_def : input9327 = (Flapjack.WordLangProgHOL.get 10229 Flapjack.WordStore.heapLength) := by
  unfold input9327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 10229 Flapjack.WordStore.heapLength)).val
theorem output9327_def : output9327 = (Flapjack.WordLangProgHOL.get 10229 Flapjack.WordStore.heapLength) := by
  unfold output9327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9327_skip : Flapjack.WordAlloc.isSkip output9327 = false := by
  rw [output9327_def]
  conv => lhs; cbv
  try rfl
theorem node9327_eq : Flapjack.WordAlloc.removeDeadStructural input9327 value4669 value1 value2 = (output9327, value5, value1) := by
  rw [input9327_def, output9327_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9327 input9326)).val
theorem input9328_def : input9328 = (.seq input9327 input9326) := by
  unfold input9328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9328 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9327 output9326)).val
theorem output9328_def : output9328 = (.seq output9327 output9326) := by
  unfold output9328
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9328_skip : Flapjack.WordAlloc.isSkip output9328 = false := by
  rw [output9328_def]
  conv => lhs; cbv
  try rfl
theorem node9328_eq : Flapjack.WordAlloc.removeDeadStructural input9328 value4668 value1 value2 = (output9328, value5, value1) := by
  rw [input9328_def, output9328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9326_eq]
  dsimp only
  rw [node9327_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9328 input9325)).val
theorem input9329_def : input9329 = (.seq input9328 input9325) := by
  unfold input9329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9329 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9328 output9325)).val
theorem output9329_def : output9329 = (.seq output9328 output9325) := by
  unfold output9329
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9329_skip : Flapjack.WordAlloc.isSkip output9329 = false := by
  rw [output9329_def]
  conv => lhs; cbv
  try rfl
theorem node9329_eq : Flapjack.WordAlloc.removeDeadStructural input9329 value4667 value1 value2 = (output9329, value5, value1) := by
  rw [input9329_def, output9329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9325_eq]
  dsimp only
  rw [node9328_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9329 input9324)).val
theorem input9330_def : input9330 = (.seq input9329 input9324) := by
  unfold input9330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9330 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9329 output9324)).val
theorem output9330_def : output9330 = (.seq output9329 output9324) := by
  unfold output9330
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9330_skip : Flapjack.WordAlloc.isSkip output9330 = false := by
  rw [output9330_def]
  conv => lhs; cbv
  try rfl
theorem node9330_eq : Flapjack.WordAlloc.removeDeadStructural input9330 value4666 value1 value2 = (output9330, value5, value1) := by
  rw [input9330_def, output9330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9324_eq]
  dsimp only
  rw [node9329_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9330 input9323)).val
theorem input9331_def : input9331 = (.seq input9330 input9323) := by
  unfold input9331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9331 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9330 output9323)).val
theorem output9331_def : output9331 = (.seq output9330 output9323) := by
  unfold output9331
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9331_skip : Flapjack.WordAlloc.isSkip output9331 = false := by
  rw [output9331_def]
  conv => lhs; cbv
  try rfl
theorem node9331_eq : Flapjack.WordAlloc.removeDeadStructural input9331 value4664 value1 value2 = (output9331, value5, value1) := by
  rw [input9331_def, output9331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9323_eq]
  dsimp only
  rw [node9330_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4670 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10221 (Flapjack.WordLangAddr.addr 10225 0#64)))).val
theorem input9332_def : input9332 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10221 (Flapjack.WordLangAddr.addr 10225 0#64))) := by
  unfold input9332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9332 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10221 (Flapjack.WordLangAddr.addr 10225 0#64)))).val
theorem output9332_def : output9332 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10221 (Flapjack.WordLangAddr.addr 10225 0#64))) := by
  unfold output9332
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9332_skip : Flapjack.WordAlloc.isSkip output9332 = false := by
  rw [output9332_def]
  conv => lhs; cbv
  try rfl
theorem node9332_eq : Flapjack.WordAlloc.removeDeadStructural input9332 value5 value1 value2 = (output9332, value4670, value1) := by
  rw [input9332_def, output9332_def]
  try (conv => lhs; cbv)
  try rfl

def value4671 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(10225, 10213)])).val
theorem input9333_def : input9333 = (Flapjack.WordLangProgHOL.move 0 [(10225, 10213)]) := by
  unfold input9333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9333 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(10225, 10213)])).val
theorem output9333_def : output9333 = (Flapjack.WordLangProgHOL.move 0 [(10225, 10213)]) := by
  unfold output9333
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9333_skip : Flapjack.WordAlloc.isSkip output9333 = false := by
  rw [output9333_def]
  conv => lhs; cbv
  try rfl
theorem node9333_eq : Flapjack.WordAlloc.removeDeadStructural input9333 value4670 value1 value2 = (output9333, value4671, value1) := by
  rw [input9333_def, output9333_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9333 input9332)).val
theorem input9334_def : input9334 = (.seq input9333 input9332) := by
  unfold input9334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9334 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9333 output9332)).val
theorem output9334_def : output9334 = (.seq output9333 output9332) := by
  unfold output9334
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9334_skip : Flapjack.WordAlloc.isSkip output9334 = false := by
  rw [output9334_def]
  conv => lhs; cbv
  try rfl
theorem node9334_eq : Flapjack.WordAlloc.removeDeadStructural input9334 value5 value1 value2 = (output9334, value4671, value1) := by
  rw [input9334_def, output9334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9332_eq]
  dsimp only
  rw [node9333_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4672 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10221 13627494601717575229#64))).val
theorem input9335_def : input9335 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10221 13627494601717575229#64)) := by
  unfold input9335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9335 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10221 13627494601717575229#64))).val
theorem output9335_def : output9335 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10221 13627494601717575229#64)) := by
  unfold output9335
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9335_skip : Flapjack.WordAlloc.isSkip output9335 = false := by
  rw [output9335_def]
  conv => lhs; cbv
  try rfl
theorem node9335_eq : Flapjack.WordAlloc.removeDeadStructural input9335 value4671 value1 value2 = (output9335, value4672, value1) := by
  rw [input9335_def, output9335_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10217 13627494601717575229#64))).val
theorem input9336_def : input9336 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10217 13627494601717575229#64)) := by
  unfold input9336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9336 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9336_def : output9336 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9336
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9336_skip : Flapjack.WordAlloc.isSkip output9336 = true := by
  rw [output9336_def]
  conv => lhs; cbv
  try rfl
theorem node9336_eq : Flapjack.WordAlloc.removeDeadStructural input9336 value4672 value1 value2 = (output9336, value4672, value1) := by
  rw [input9336_def, output9336_def]
  try (conv => lhs; cbv)
  try rfl

def value4673 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10213 10205 (Flapjack.WordRegImm.reg 10209))))).val
theorem input9337_def : input9337 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10213 10205 (Flapjack.WordRegImm.reg 10209)))) := by
  unfold input9337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9337 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10213 10205 (Flapjack.WordRegImm.reg 10209))))).val
theorem output9337_def : output9337 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10213 10205 (Flapjack.WordRegImm.reg 10209)))) := by
  unfold output9337
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9337_skip : Flapjack.WordAlloc.isSkip output9337 = false := by
  rw [output9337_def]
  conv => lhs; cbv
  try rfl
theorem node9337_eq : Flapjack.WordAlloc.removeDeadStructural input9337 value4672 value1 value2 = (output9337, value4673, value1) := by
  rw [input9337_def, output9337_def]
  try (conv => lhs; cbv)
  try rfl

def value4674 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10209 2464#64))).val
theorem input9338_def : input9338 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10209 2464#64)) := by
  unfold input9338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9338 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10209 2464#64))).val
theorem output9338_def : output9338 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10209 2464#64)) := by
  unfold output9338
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9338_skip : Flapjack.WordAlloc.isSkip output9338 = false := by
  rw [output9338_def]
  conv => lhs; cbv
  try rfl
theorem node9338_eq : Flapjack.WordAlloc.removeDeadStructural input9338 value4673 value1 value2 = (output9338, value4674, value1) := by
  rw [input9338_def, output9338_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9338 input9337)).val
theorem input9339_def : input9339 = (.seq input9338 input9337) := by
  unfold input9339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9339 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9338 output9337)).val
theorem output9339_def : output9339 = (.seq output9338 output9337) := by
  unfold output9339
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9339_skip : Flapjack.WordAlloc.isSkip output9339 = false := by
  rw [output9339_def]
  conv => lhs; cbv
  try rfl
theorem node9339_eq : Flapjack.WordAlloc.removeDeadStructural input9339 value4672 value1 value2 = (output9339, value4674, value1) := by
  rw [input9339_def, output9339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9337_eq]
  dsimp only
  rw [node9338_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4675 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10205 (Flapjack.WordLangAddr.addr 10201 18446744073709551104#64)))).val
theorem input9340_def : input9340 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10205 (Flapjack.WordLangAddr.addr 10201 18446744073709551104#64))) := by
  unfold input9340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9340 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10205 (Flapjack.WordLangAddr.addr 10201 18446744073709551104#64)))).val
theorem output9340_def : output9340 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10205 (Flapjack.WordLangAddr.addr 10201 18446744073709551104#64))) := by
  unfold output9340
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9340_skip : Flapjack.WordAlloc.isSkip output9340 = false := by
  rw [output9340_def]
  conv => lhs; cbv
  try rfl
theorem node9340_eq : Flapjack.WordAlloc.removeDeadStructural input9340 value4674 value1 value2 = (output9340, value4675, value1) := by
  rw [input9340_def, output9340_def]
  try (conv => lhs; cbv)
  try rfl

def value4676 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10201 10197)).val
theorem input9341_def : input9341 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10201 10197) := by
  unfold input9341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9341 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10201 10197)).val
theorem output9341_def : output9341 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10201 10197) := by
  unfold output9341
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9341_skip : Flapjack.WordAlloc.isSkip output9341 = false := by
  rw [output9341_def]
  conv => lhs; cbv
  try rfl
theorem node9341_eq : Flapjack.WordAlloc.removeDeadStructural input9341 value4675 value1 value2 = (output9341, value4676, value1) := by
  rw [input9341_def, output9341_def]
  try (conv => lhs; cbv)
  try rfl

def value4677 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10197 10193 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9342_def : input9342 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10197 10193 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9342 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10197 10193 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9342_def : output9342 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10197 10193 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9342
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9342_skip : Flapjack.WordAlloc.isSkip output9342 = false := by
  rw [output9342_def]
  conv => lhs; cbv
  try rfl
theorem node9342_eq : Flapjack.WordAlloc.removeDeadStructural input9342 value4676 value1 value2 = (output9342, value4677, value1) := by
  rw [input9342_def, output9342_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 10193 Flapjack.WordStore.heapLength)).val
theorem input9343_def : input9343 = (Flapjack.WordLangProgHOL.get 10193 Flapjack.WordStore.heapLength) := by
  unfold input9343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9343 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 10193 Flapjack.WordStore.heapLength)).val
theorem output9343_def : output9343 = (Flapjack.WordLangProgHOL.get 10193 Flapjack.WordStore.heapLength) := by
  unfold output9343
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9343_skip : Flapjack.WordAlloc.isSkip output9343 = false := by
  rw [output9343_def]
  conv => lhs; cbv
  try rfl
theorem node9343_eq : Flapjack.WordAlloc.removeDeadStructural input9343 value4677 value1 value2 = (output9343, value5, value1) := by
  rw [input9343_def, output9343_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9343 input9342)).val
theorem input9344_def : input9344 = (.seq input9343 input9342) := by
  unfold input9344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9344 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9343 output9342)).val
theorem output9344_def : output9344 = (.seq output9343 output9342) := by
  unfold output9344
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9344_skip : Flapjack.WordAlloc.isSkip output9344 = false := by
  rw [output9344_def]
  conv => lhs; cbv
  try rfl
theorem node9344_eq : Flapjack.WordAlloc.removeDeadStructural input9344 value4676 value1 value2 = (output9344, value5, value1) := by
  rw [input9344_def, output9344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9342_eq]
  dsimp only
  rw [node9343_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9344 input9341)).val
theorem input9345_def : input9345 = (.seq input9344 input9341) := by
  unfold input9345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9345 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9344 output9341)).val
theorem output9345_def : output9345 = (.seq output9344 output9341) := by
  unfold output9345
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9345_skip : Flapjack.WordAlloc.isSkip output9345 = false := by
  rw [output9345_def]
  conv => lhs; cbv
  try rfl
theorem node9345_eq : Flapjack.WordAlloc.removeDeadStructural input9345 value4675 value1 value2 = (output9345, value5, value1) := by
  rw [input9345_def, output9345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9341_eq]
  dsimp only
  rw [node9344_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9345 input9340)).val
theorem input9346_def : input9346 = (.seq input9345 input9340) := by
  unfold input9346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9346 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9345 output9340)).val
theorem output9346_def : output9346 = (.seq output9345 output9340) := by
  unfold output9346
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9346_skip : Flapjack.WordAlloc.isSkip output9346 = false := by
  rw [output9346_def]
  conv => lhs; cbv
  try rfl
theorem node9346_eq : Flapjack.WordAlloc.removeDeadStructural input9346 value4674 value1 value2 = (output9346, value5, value1) := by
  rw [input9346_def, output9346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9340_eq]
  dsimp only
  rw [node9345_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9346 input9339)).val
theorem input9347_def : input9347 = (.seq input9346 input9339) := by
  unfold input9347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9347 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9346 output9339)).val
theorem output9347_def : output9347 = (.seq output9346 output9339) := by
  unfold output9347
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9347_skip : Flapjack.WordAlloc.isSkip output9347 = false := by
  rw [output9347_def]
  conv => lhs; cbv
  try rfl
theorem node9347_eq : Flapjack.WordAlloc.removeDeadStructural input9347 value4672 value1 value2 = (output9347, value5, value1) := by
  rw [input9347_def, output9347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9339_eq]
  dsimp only
  rw [node9346_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4678 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10185 (Flapjack.WordLangAddr.addr 10189 0#64)))).val
theorem input9348_def : input9348 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10185 (Flapjack.WordLangAddr.addr 10189 0#64))) := by
  unfold input9348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9348 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10185 (Flapjack.WordLangAddr.addr 10189 0#64)))).val
theorem output9348_def : output9348 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10185 (Flapjack.WordLangAddr.addr 10189 0#64))) := by
  unfold output9348
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9348_skip : Flapjack.WordAlloc.isSkip output9348 = false := by
  rw [output9348_def]
  conv => lhs; cbv
  try rfl
theorem node9348_eq : Flapjack.WordAlloc.removeDeadStructural input9348 value5 value1 value2 = (output9348, value4678, value1) := by
  rw [input9348_def, output9348_def]
  try (conv => lhs; cbv)
  try rfl

def value4679 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(10189, 10177)])).val
theorem input9349_def : input9349 = (Flapjack.WordLangProgHOL.move 0 [(10189, 10177)]) := by
  unfold input9349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9349 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(10189, 10177)])).val
theorem output9349_def : output9349 = (Flapjack.WordLangProgHOL.move 0 [(10189, 10177)]) := by
  unfold output9349
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9349_skip : Flapjack.WordAlloc.isSkip output9349 = false := by
  rw [output9349_def]
  conv => lhs; cbv
  try rfl
theorem node9349_eq : Flapjack.WordAlloc.removeDeadStructural input9349 value4678 value1 value2 = (output9349, value4679, value1) := by
  rw [input9349_def, output9349_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9349 input9348)).val
theorem input9350_def : input9350 = (.seq input9349 input9348) := by
  unfold input9350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9350 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9349 output9348)).val
theorem output9350_def : output9350 = (.seq output9349 output9348) := by
  unfold output9350
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9350_skip : Flapjack.WordAlloc.isSkip output9350 = false := by
  rw [output9350_def]
  conv => lhs; cbv
  try rfl
theorem node9350_eq : Flapjack.WordAlloc.removeDeadStructural input9350 value5 value1 value2 = (output9350, value4679, value1) := by
  rw [input9350_def, output9350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9348_eq]
  dsimp only
  rw [node9349_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4680 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10185 3591512392926246844#64))).val
theorem input9351_def : input9351 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10185 3591512392926246844#64)) := by
  unfold input9351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9351 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10185 3591512392926246844#64))).val
theorem output9351_def : output9351 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10185 3591512392926246844#64)) := by
  unfold output9351
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9351_skip : Flapjack.WordAlloc.isSkip output9351 = false := by
  rw [output9351_def]
  conv => lhs; cbv
  try rfl
theorem node9351_eq : Flapjack.WordAlloc.removeDeadStructural input9351 value4679 value1 value2 = (output9351, value4680, value1) := by
  rw [input9351_def, output9351_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10181 3591512392926246844#64))).val
theorem input9352_def : input9352 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10181 3591512392926246844#64)) := by
  unfold input9352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9352 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9352_def : output9352 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9352
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9352_skip : Flapjack.WordAlloc.isSkip output9352 = true := by
  rw [output9352_def]
  conv => lhs; cbv
  try rfl
theorem node9352_eq : Flapjack.WordAlloc.removeDeadStructural input9352 value4680 value1 value2 = (output9352, value4680, value1) := by
  rw [input9352_def, output9352_def]
  try (conv => lhs; cbv)
  try rfl

def value4681 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10177 10169 (Flapjack.WordRegImm.reg 10173))))).val
theorem input9353_def : input9353 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10177 10169 (Flapjack.WordRegImm.reg 10173)))) := by
  unfold input9353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9353 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10177 10169 (Flapjack.WordRegImm.reg 10173))))).val
theorem output9353_def : output9353 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10177 10169 (Flapjack.WordRegImm.reg 10173)))) := by
  unfold output9353
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9353_skip : Flapjack.WordAlloc.isSkip output9353 = false := by
  rw [output9353_def]
  conv => lhs; cbv
  try rfl
theorem node9353_eq : Flapjack.WordAlloc.removeDeadStructural input9353 value4680 value1 value2 = (output9353, value4681, value1) := by
  rw [input9353_def, output9353_def]
  try (conv => lhs; cbv)
  try rfl

def value4682 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10173 2456#64))).val
theorem input9354_def : input9354 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10173 2456#64)) := by
  unfold input9354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9354 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10173 2456#64))).val
theorem output9354_def : output9354 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10173 2456#64)) := by
  unfold output9354
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9354_skip : Flapjack.WordAlloc.isSkip output9354 = false := by
  rw [output9354_def]
  conv => lhs; cbv
  try rfl
theorem node9354_eq : Flapjack.WordAlloc.removeDeadStructural input9354 value4681 value1 value2 = (output9354, value4682, value1) := by
  rw [input9354_def, output9354_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9354 input9353)).val
theorem input9355_def : input9355 = (.seq input9354 input9353) := by
  unfold input9355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9355 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9354 output9353)).val
theorem output9355_def : output9355 = (.seq output9354 output9353) := by
  unfold output9355
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9355_skip : Flapjack.WordAlloc.isSkip output9355 = false := by
  rw [output9355_def]
  conv => lhs; cbv
  try rfl
theorem node9355_eq : Flapjack.WordAlloc.removeDeadStructural input9355 value4680 value1 value2 = (output9355, value4682, value1) := by
  rw [input9355_def, output9355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9353_eq]
  dsimp only
  rw [node9354_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4683 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10169 (Flapjack.WordLangAddr.addr 10165 18446744073709551104#64)))).val
theorem input9356_def : input9356 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10169 (Flapjack.WordLangAddr.addr 10165 18446744073709551104#64))) := by
  unfold input9356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9356 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10169 (Flapjack.WordLangAddr.addr 10165 18446744073709551104#64)))).val
theorem output9356_def : output9356 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10169 (Flapjack.WordLangAddr.addr 10165 18446744073709551104#64))) := by
  unfold output9356
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9356_skip : Flapjack.WordAlloc.isSkip output9356 = false := by
  rw [output9356_def]
  conv => lhs; cbv
  try rfl
theorem node9356_eq : Flapjack.WordAlloc.removeDeadStructural input9356 value4682 value1 value2 = (output9356, value4683, value1) := by
  rw [input9356_def, output9356_def]
  try (conv => lhs; cbv)
  try rfl

def value4684 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10165 10161)).val
theorem input9357_def : input9357 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10165 10161) := by
  unfold input9357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9357 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10165 10161)).val
theorem output9357_def : output9357 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10165 10161) := by
  unfold output9357
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9357_skip : Flapjack.WordAlloc.isSkip output9357 = false := by
  rw [output9357_def]
  conv => lhs; cbv
  try rfl
theorem node9357_eq : Flapjack.WordAlloc.removeDeadStructural input9357 value4683 value1 value2 = (output9357, value4684, value1) := by
  rw [input9357_def, output9357_def]
  try (conv => lhs; cbv)
  try rfl

def value4685 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10161 10157 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9358_def : input9358 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10161 10157 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9358 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10161 10157 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9358_def : output9358 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10161 10157 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9358
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9358_skip : Flapjack.WordAlloc.isSkip output9358 = false := by
  rw [output9358_def]
  conv => lhs; cbv
  try rfl
theorem node9358_eq : Flapjack.WordAlloc.removeDeadStructural input9358 value4684 value1 value2 = (output9358, value4685, value1) := by
  rw [input9358_def, output9358_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 10157 Flapjack.WordStore.heapLength)).val
theorem input9359_def : input9359 = (Flapjack.WordLangProgHOL.get 10157 Flapjack.WordStore.heapLength) := by
  unfold input9359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9359 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 10157 Flapjack.WordStore.heapLength)).val
theorem output9359_def : output9359 = (Flapjack.WordLangProgHOL.get 10157 Flapjack.WordStore.heapLength) := by
  unfold output9359
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9359_skip : Flapjack.WordAlloc.isSkip output9359 = false := by
  rw [output9359_def]
  conv => lhs; cbv
  try rfl
theorem node9359_eq : Flapjack.WordAlloc.removeDeadStructural input9359 value4685 value1 value2 = (output9359, value5, value1) := by
  rw [input9359_def, output9359_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9359 input9358)).val
theorem input9360_def : input9360 = (.seq input9359 input9358) := by
  unfold input9360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9360 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9359 output9358)).val
theorem output9360_def : output9360 = (.seq output9359 output9358) := by
  unfold output9360
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9360_skip : Flapjack.WordAlloc.isSkip output9360 = false := by
  rw [output9360_def]
  conv => lhs; cbv
  try rfl
theorem node9360_eq : Flapjack.WordAlloc.removeDeadStructural input9360 value4684 value1 value2 = (output9360, value5, value1) := by
  rw [input9360_def, output9360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9358_eq]
  dsimp only
  rw [node9359_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9360 input9357)).val
theorem input9361_def : input9361 = (.seq input9360 input9357) := by
  unfold input9361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9361 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9360 output9357)).val
theorem output9361_def : output9361 = (.seq output9360 output9357) := by
  unfold output9361
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9361_skip : Flapjack.WordAlloc.isSkip output9361 = false := by
  rw [output9361_def]
  conv => lhs; cbv
  try rfl
theorem node9361_eq : Flapjack.WordAlloc.removeDeadStructural input9361 value4683 value1 value2 = (output9361, value5, value1) := by
  rw [input9361_def, output9361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9357_eq]
  dsimp only
  rw [node9360_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9361 input9356)).val
theorem input9362_def : input9362 = (.seq input9361 input9356) := by
  unfold input9362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9362 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9361 output9356)).val
theorem output9362_def : output9362 = (.seq output9361 output9356) := by
  unfold output9362
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9362_skip : Flapjack.WordAlloc.isSkip output9362 = false := by
  rw [output9362_def]
  conv => lhs; cbv
  try rfl
theorem node9362_eq : Flapjack.WordAlloc.removeDeadStructural input9362 value4682 value1 value2 = (output9362, value5, value1) := by
  rw [input9362_def, output9362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9356_eq]
  dsimp only
  rw [node9361_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9362 input9355)).val
theorem input9363_def : input9363 = (.seq input9362 input9355) := by
  unfold input9363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9363 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9362 output9355)).val
theorem output9363_def : output9363 = (.seq output9362 output9355) := by
  unfold output9363
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9363_skip : Flapjack.WordAlloc.isSkip output9363 = false := by
  rw [output9363_def]
  conv => lhs; cbv
  try rfl
theorem node9363_eq : Flapjack.WordAlloc.removeDeadStructural input9363 value4680 value1 value2 = (output9363, value5, value1) := by
  rw [input9363_def, output9363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9355_eq]
  dsimp only
  rw [node9362_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4686 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10149 (Flapjack.WordLangAddr.addr 10153 0#64)))).val
theorem input9364_def : input9364 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10149 (Flapjack.WordLangAddr.addr 10153 0#64))) := by
  unfold input9364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9364 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10149 (Flapjack.WordLangAddr.addr 10153 0#64)))).val
theorem output9364_def : output9364 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10149 (Flapjack.WordLangAddr.addr 10153 0#64))) := by
  unfold output9364
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9364_skip : Flapjack.WordAlloc.isSkip output9364 = false := by
  rw [output9364_def]
  conv => lhs; cbv
  try rfl
theorem node9364_eq : Flapjack.WordAlloc.removeDeadStructural input9364 value5 value1 value2 = (output9364, value4686, value1) := by
  rw [input9364_def, output9364_def]
  try (conv => lhs; cbv)
  try rfl

def value4687 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(10153, 10141)])).val
theorem input9365_def : input9365 = (Flapjack.WordLangProgHOL.move 0 [(10153, 10141)]) := by
  unfold input9365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9365 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(10153, 10141)])).val
theorem output9365_def : output9365 = (Flapjack.WordLangProgHOL.move 0 [(10153, 10141)]) := by
  unfold output9365
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9365_skip : Flapjack.WordAlloc.isSkip output9365 = false := by
  rw [output9365_def]
  conv => lhs; cbv
  try rfl
theorem node9365_eq : Flapjack.WordAlloc.removeDeadStructural input9365 value4686 value1 value2 = (output9365, value4687, value1) := by
  rw [input9365_def, output9365_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9365 input9364)).val
theorem input9366_def : input9366 = (.seq input9365 input9364) := by
  unfold input9366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9366 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9365 output9364)).val
theorem output9366_def : output9366 = (.seq output9365 output9364) := by
  unfold output9366
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9366_skip : Flapjack.WordAlloc.isSkip output9366 = false := by
  rw [output9366_def]
  conv => lhs; cbv
  try rfl
theorem node9366_eq : Flapjack.WordAlloc.removeDeadStructural input9366 value5 value1 value2 = (output9366, value4687, value1) := by
  rw [input9366_def, output9366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9364_eq]
  dsimp only
  rw [node9365_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4688 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10149 2576269112800734056#64))).val
theorem input9367_def : input9367 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10149 2576269112800734056#64)) := by
  unfold input9367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9367 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10149 2576269112800734056#64))).val
theorem output9367_def : output9367 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10149 2576269112800734056#64)) := by
  unfold output9367
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9367_skip : Flapjack.WordAlloc.isSkip output9367 = false := by
  rw [output9367_def]
  conv => lhs; cbv
  try rfl
theorem node9367_eq : Flapjack.WordAlloc.removeDeadStructural input9367 value4687 value1 value2 = (output9367, value4688, value1) := by
  rw [input9367_def, output9367_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10145 2576269112800734056#64))).val
theorem input9368_def : input9368 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10145 2576269112800734056#64)) := by
  unfold input9368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9368 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9368_def : output9368 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9368
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9368_skip : Flapjack.WordAlloc.isSkip output9368 = true := by
  rw [output9368_def]
  conv => lhs; cbv
  try rfl
theorem node9368_eq : Flapjack.WordAlloc.removeDeadStructural input9368 value4688 value1 value2 = (output9368, value4688, value1) := by
  rw [input9368_def, output9368_def]
  try (conv => lhs; cbv)
  try rfl

def value4689 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10141 10133 (Flapjack.WordRegImm.reg 10137))))).val
theorem input9369_def : input9369 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10141 10133 (Flapjack.WordRegImm.reg 10137)))) := by
  unfold input9369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9369 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10141 10133 (Flapjack.WordRegImm.reg 10137))))).val
theorem output9369_def : output9369 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10141 10133 (Flapjack.WordRegImm.reg 10137)))) := by
  unfold output9369
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9369_skip : Flapjack.WordAlloc.isSkip output9369 = false := by
  rw [output9369_def]
  conv => lhs; cbv
  try rfl
theorem node9369_eq : Flapjack.WordAlloc.removeDeadStructural input9369 value4688 value1 value2 = (output9369, value4689, value1) := by
  rw [input9369_def, output9369_def]
  try (conv => lhs; cbv)
  try rfl

def value4690 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10137 2448#64))).val
theorem input9370_def : input9370 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10137 2448#64)) := by
  unfold input9370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9370 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10137 2448#64))).val
theorem output9370_def : output9370 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10137 2448#64)) := by
  unfold output9370
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9370_skip : Flapjack.WordAlloc.isSkip output9370 = false := by
  rw [output9370_def]
  conv => lhs; cbv
  try rfl
theorem node9370_eq : Flapjack.WordAlloc.removeDeadStructural input9370 value4689 value1 value2 = (output9370, value4690, value1) := by
  rw [input9370_def, output9370_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9370 input9369)).val
theorem input9371_def : input9371 = (.seq input9370 input9369) := by
  unfold input9371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9371 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9370 output9369)).val
theorem output9371_def : output9371 = (.seq output9370 output9369) := by
  unfold output9371
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9371_skip : Flapjack.WordAlloc.isSkip output9371 = false := by
  rw [output9371_def]
  conv => lhs; cbv
  try rfl
theorem node9371_eq : Flapjack.WordAlloc.removeDeadStructural input9371 value4688 value1 value2 = (output9371, value4690, value1) := by
  rw [input9371_def, output9371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9369_eq]
  dsimp only
  rw [node9370_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4691 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10133 (Flapjack.WordLangAddr.addr 10129 18446744073709551104#64)))).val
theorem input9372_def : input9372 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10133 (Flapjack.WordLangAddr.addr 10129 18446744073709551104#64))) := by
  unfold input9372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9372 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10133 (Flapjack.WordLangAddr.addr 10129 18446744073709551104#64)))).val
theorem output9372_def : output9372 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10133 (Flapjack.WordLangAddr.addr 10129 18446744073709551104#64))) := by
  unfold output9372
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9372_skip : Flapjack.WordAlloc.isSkip output9372 = false := by
  rw [output9372_def]
  conv => lhs; cbv
  try rfl
theorem node9372_eq : Flapjack.WordAlloc.removeDeadStructural input9372 value4690 value1 value2 = (output9372, value4691, value1) := by
  rw [input9372_def, output9372_def]
  try (conv => lhs; cbv)
  try rfl

def value4692 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10129 10125)).val
theorem input9373_def : input9373 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10129 10125) := by
  unfold input9373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9373 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10129 10125)).val
theorem output9373_def : output9373 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10129 10125) := by
  unfold output9373
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9373_skip : Flapjack.WordAlloc.isSkip output9373 = false := by
  rw [output9373_def]
  conv => lhs; cbv
  try rfl
theorem node9373_eq : Flapjack.WordAlloc.removeDeadStructural input9373 value4691 value1 value2 = (output9373, value4692, value1) := by
  rw [input9373_def, output9373_def]
  try (conv => lhs; cbv)
  try rfl

def value4693 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10125 10121 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9374_def : input9374 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10125 10121 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9374 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10125 10121 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9374_def : output9374 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10125 10121 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9374
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9374_skip : Flapjack.WordAlloc.isSkip output9374 = false := by
  rw [output9374_def]
  conv => lhs; cbv
  try rfl
theorem node9374_eq : Flapjack.WordAlloc.removeDeadStructural input9374 value4692 value1 value2 = (output9374, value4693, value1) := by
  rw [input9374_def, output9374_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 10121 Flapjack.WordStore.heapLength)).val
theorem input9375_def : input9375 = (Flapjack.WordLangProgHOL.get 10121 Flapjack.WordStore.heapLength) := by
  unfold input9375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9375 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 10121 Flapjack.WordStore.heapLength)).val
theorem output9375_def : output9375 = (Flapjack.WordLangProgHOL.get 10121 Flapjack.WordStore.heapLength) := by
  unfold output9375
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9375_skip : Flapjack.WordAlloc.isSkip output9375 = false := by
  rw [output9375_def]
  conv => lhs; cbv
  try rfl
theorem node9375_eq : Flapjack.WordAlloc.removeDeadStructural input9375 value4693 value1 value2 = (output9375, value5, value1) := by
  rw [input9375_def, output9375_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9375 input9374)).val
theorem input9376_def : input9376 = (.seq input9375 input9374) := by
  unfold input9376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9376 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9375 output9374)).val
theorem output9376_def : output9376 = (.seq output9375 output9374) := by
  unfold output9376
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9376_skip : Flapjack.WordAlloc.isSkip output9376 = false := by
  rw [output9376_def]
  conv => lhs; cbv
  try rfl
theorem node9376_eq : Flapjack.WordAlloc.removeDeadStructural input9376 value4692 value1 value2 = (output9376, value5, value1) := by
  rw [input9376_def, output9376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9374_eq]
  dsimp only
  rw [node9375_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9376 input9373)).val
theorem input9377_def : input9377 = (.seq input9376 input9373) := by
  unfold input9377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9377 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9376 output9373)).val
theorem output9377_def : output9377 = (.seq output9376 output9373) := by
  unfold output9377
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9377_skip : Flapjack.WordAlloc.isSkip output9377 = false := by
  rw [output9377_def]
  conv => lhs; cbv
  try rfl
theorem node9377_eq : Flapjack.WordAlloc.removeDeadStructural input9377 value4691 value1 value2 = (output9377, value5, value1) := by
  rw [input9377_def, output9377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9373_eq]
  dsimp only
  rw [node9376_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9377 input9372)).val
theorem input9378_def : input9378 = (.seq input9377 input9372) := by
  unfold input9378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9378 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9377 output9372)).val
theorem output9378_def : output9378 = (.seq output9377 output9372) := by
  unfold output9378
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9378_skip : Flapjack.WordAlloc.isSkip output9378 = false := by
  rw [output9378_def]
  conv => lhs; cbv
  try rfl
theorem node9378_eq : Flapjack.WordAlloc.removeDeadStructural input9378 value4690 value1 value2 = (output9378, value5, value1) := by
  rw [input9378_def, output9378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9372_eq]
  dsimp only
  rw [node9377_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9378 input9371)).val
theorem input9379_def : input9379 = (.seq input9378 input9371) := by
  unfold input9379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9379 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9378 output9371)).val
theorem output9379_def : output9379 = (.seq output9378 output9371) := by
  unfold output9379
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9379_skip : Flapjack.WordAlloc.isSkip output9379 = false := by
  rw [output9379_def]
  conv => lhs; cbv
  try rfl
theorem node9379_eq : Flapjack.WordAlloc.removeDeadStructural input9379 value4688 value1 value2 = (output9379, value5, value1) := by
  rw [input9379_def, output9379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9371_eq]
  dsimp only
  rw [node9378_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4694 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10113 (Flapjack.WordLangAddr.addr 10117 0#64)))).val
theorem input9380_def : input9380 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10113 (Flapjack.WordLangAddr.addr 10117 0#64))) := by
  unfold input9380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9380 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10113 (Flapjack.WordLangAddr.addr 10117 0#64)))).val
theorem output9380_def : output9380 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10113 (Flapjack.WordLangAddr.addr 10117 0#64))) := by
  unfold output9380
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9380_skip : Flapjack.WordAlloc.isSkip output9380 = false := by
  rw [output9380_def]
  conv => lhs; cbv
  try rfl
theorem node9380_eq : Flapjack.WordAlloc.removeDeadStructural input9380 value5 value1 value2 = (output9380, value4694, value1) := by
  rw [input9380_def, output9380_def]
  try (conv => lhs; cbv)
  try rfl

def value4695 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(10117, 10105)])).val
theorem input9381_def : input9381 = (Flapjack.WordLangProgHOL.move 0 [(10117, 10105)]) := by
  unfold input9381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9381 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(10117, 10105)])).val
theorem output9381_def : output9381 = (Flapjack.WordLangProgHOL.move 0 [(10117, 10105)]) := by
  unfold output9381
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9381_skip : Flapjack.WordAlloc.isSkip output9381 = false := by
  rw [output9381_def]
  conv => lhs; cbv
  try rfl
theorem node9381_eq : Flapjack.WordAlloc.removeDeadStructural input9381 value4694 value1 value2 = (output9381, value4695, value1) := by
  rw [input9381_def, output9381_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9381 input9380)).val
theorem input9382_def : input9382 = (.seq input9381 input9380) := by
  unfold input9382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9382 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9381 output9380)).val
theorem output9382_def : output9382 = (.seq output9381 output9380) := by
  unfold output9382
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9382_skip : Flapjack.WordAlloc.isSkip output9382 = false := by
  rw [output9382_def]
  conv => lhs; cbv
  try rfl
theorem node9382_eq : Flapjack.WordAlloc.removeDeadStructural input9382 value5 value1 value2 = (output9382, value4695, value1) := by
  rw [input9382_def, output9382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9380_eq]
  dsimp only
  rw [node9381_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4696 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10113 14000314106239596831#64))).val
theorem input9383_def : input9383 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10113 14000314106239596831#64)) := by
  unfold input9383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9383 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10113 14000314106239596831#64))).val
theorem output9383_def : output9383 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10113 14000314106239596831#64)) := by
  unfold output9383
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9383_skip : Flapjack.WordAlloc.isSkip output9383 = false := by
  rw [output9383_def]
  conv => lhs; cbv
  try rfl
theorem node9383_eq : Flapjack.WordAlloc.removeDeadStructural input9383 value4695 value1 value2 = (output9383, value4696, value1) := by
  rw [input9383_def, output9383_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10109 14000314106239596831#64))).val
theorem input9384_def : input9384 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10109 14000314106239596831#64)) := by
  unfold input9384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9384 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9384_def : output9384 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9384
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9384_skip : Flapjack.WordAlloc.isSkip output9384 = true := by
  rw [output9384_def]
  conv => lhs; cbv
  try rfl
theorem node9384_eq : Flapjack.WordAlloc.removeDeadStructural input9384 value4696 value1 value2 = (output9384, value4696, value1) := by
  rw [input9384_def, output9384_def]
  try (conv => lhs; cbv)
  try rfl

def value4697 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10105 10097 (Flapjack.WordRegImm.reg 10101))))).val
theorem input9385_def : input9385 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10105 10097 (Flapjack.WordRegImm.reg 10101)))) := by
  unfold input9385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9385 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10105 10097 (Flapjack.WordRegImm.reg 10101))))).val
theorem output9385_def : output9385 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10105 10097 (Flapjack.WordRegImm.reg 10101)))) := by
  unfold output9385
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9385_skip : Flapjack.WordAlloc.isSkip output9385 = false := by
  rw [output9385_def]
  conv => lhs; cbv
  try rfl
theorem node9385_eq : Flapjack.WordAlloc.removeDeadStructural input9385 value4696 value1 value2 = (output9385, value4697, value1) := by
  rw [input9385_def, output9385_def]
  try (conv => lhs; cbv)
  try rfl

def value4698 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10101 2440#64))).val
theorem input9386_def : input9386 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10101 2440#64)) := by
  unfold input9386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9386 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10101 2440#64))).val
theorem output9386_def : output9386 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10101 2440#64)) := by
  unfold output9386
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9386_skip : Flapjack.WordAlloc.isSkip output9386 = false := by
  rw [output9386_def]
  conv => lhs; cbv
  try rfl
theorem node9386_eq : Flapjack.WordAlloc.removeDeadStructural input9386 value4697 value1 value2 = (output9386, value4698, value1) := by
  rw [input9386_def, output9386_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9386 input9385)).val
theorem input9387_def : input9387 = (.seq input9386 input9385) := by
  unfold input9387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9387 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9386 output9385)).val
theorem output9387_def : output9387 = (.seq output9386 output9385) := by
  unfold output9387
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9387_skip : Flapjack.WordAlloc.isSkip output9387 = false := by
  rw [output9387_def]
  conv => lhs; cbv
  try rfl
theorem node9387_eq : Flapjack.WordAlloc.removeDeadStructural input9387 value4696 value1 value2 = (output9387, value4698, value1) := by
  rw [input9387_def, output9387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9385_eq]
  dsimp only
  rw [node9386_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4699 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10097 (Flapjack.WordLangAddr.addr 10093 18446744073709551104#64)))).val
theorem input9388_def : input9388 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10097 (Flapjack.WordLangAddr.addr 10093 18446744073709551104#64))) := by
  unfold input9388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9388 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10097 (Flapjack.WordLangAddr.addr 10093 18446744073709551104#64)))).val
theorem output9388_def : output9388 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10097 (Flapjack.WordLangAddr.addr 10093 18446744073709551104#64))) := by
  unfold output9388
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9388_skip : Flapjack.WordAlloc.isSkip output9388 = false := by
  rw [output9388_def]
  conv => lhs; cbv
  try rfl
theorem node9388_eq : Flapjack.WordAlloc.removeDeadStructural input9388 value4698 value1 value2 = (output9388, value4699, value1) := by
  rw [input9388_def, output9388_def]
  try (conv => lhs; cbv)
  try rfl

def value4700 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10093 10089)).val
theorem input9389_def : input9389 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10093 10089) := by
  unfold input9389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9389 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10093 10089)).val
theorem output9389_def : output9389 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10093 10089) := by
  unfold output9389
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9389_skip : Flapjack.WordAlloc.isSkip output9389 = false := by
  rw [output9389_def]
  conv => lhs; cbv
  try rfl
theorem node9389_eq : Flapjack.WordAlloc.removeDeadStructural input9389 value4699 value1 value2 = (output9389, value4700, value1) := by
  rw [input9389_def, output9389_def]
  try (conv => lhs; cbv)
  try rfl

def value4701 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10089 10085 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9390_def : input9390 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10089 10085 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9390 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10089 10085 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9390_def : output9390 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10089 10085 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9390
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9390_skip : Flapjack.WordAlloc.isSkip output9390 = false := by
  rw [output9390_def]
  conv => lhs; cbv
  try rfl
theorem node9390_eq : Flapjack.WordAlloc.removeDeadStructural input9390 value4700 value1 value2 = (output9390, value4701, value1) := by
  rw [input9390_def, output9390_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 10085 Flapjack.WordStore.heapLength)).val
theorem input9391_def : input9391 = (Flapjack.WordLangProgHOL.get 10085 Flapjack.WordStore.heapLength) := by
  unfold input9391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9391 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 10085 Flapjack.WordStore.heapLength)).val
theorem output9391_def : output9391 = (Flapjack.WordLangProgHOL.get 10085 Flapjack.WordStore.heapLength) := by
  unfold output9391
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9391_skip : Flapjack.WordAlloc.isSkip output9391 = false := by
  rw [output9391_def]
  conv => lhs; cbv
  try rfl
theorem node9391_eq : Flapjack.WordAlloc.removeDeadStructural input9391 value4701 value1 value2 = (output9391, value5, value1) := by
  rw [input9391_def, output9391_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9391 input9390)).val
theorem input9392_def : input9392 = (.seq input9391 input9390) := by
  unfold input9392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9392 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9391 output9390)).val
theorem output9392_def : output9392 = (.seq output9391 output9390) := by
  unfold output9392
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9392_skip : Flapjack.WordAlloc.isSkip output9392 = false := by
  rw [output9392_def]
  conv => lhs; cbv
  try rfl
theorem node9392_eq : Flapjack.WordAlloc.removeDeadStructural input9392 value4700 value1 value2 = (output9392, value5, value1) := by
  rw [input9392_def, output9392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9390_eq]
  dsimp only
  rw [node9391_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9392 input9389)).val
theorem input9393_def : input9393 = (.seq input9392 input9389) := by
  unfold input9393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9393 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9392 output9389)).val
theorem output9393_def : output9393 = (.seq output9392 output9389) := by
  unfold output9393
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9393_skip : Flapjack.WordAlloc.isSkip output9393 = false := by
  rw [output9393_def]
  conv => lhs; cbv
  try rfl
theorem node9393_eq : Flapjack.WordAlloc.removeDeadStructural input9393 value4699 value1 value2 = (output9393, value5, value1) := by
  rw [input9393_def, output9393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9389_eq]
  dsimp only
  rw [node9392_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9393 input9388)).val
theorem input9394_def : input9394 = (.seq input9393 input9388) := by
  unfold input9394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9394 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9393 output9388)).val
theorem output9394_def : output9394 = (.seq output9393 output9388) := by
  unfold output9394
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9394_skip : Flapjack.WordAlloc.isSkip output9394 = false := by
  rw [output9394_def]
  conv => lhs; cbv
  try rfl
theorem node9394_eq : Flapjack.WordAlloc.removeDeadStructural input9394 value4698 value1 value2 = (output9394, value5, value1) := by
  rw [input9394_def, output9394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9388_eq]
  dsimp only
  rw [node9393_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9394 input9387)).val
theorem input9395_def : input9395 = (.seq input9394 input9387) := by
  unfold input9395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9395 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9394 output9387)).val
theorem output9395_def : output9395 = (.seq output9394 output9387) := by
  unfold output9395
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9395_skip : Flapjack.WordAlloc.isSkip output9395 = false := by
  rw [output9395_def]
  conv => lhs; cbv
  try rfl
theorem node9395_eq : Flapjack.WordAlloc.removeDeadStructural input9395 value4696 value1 value2 = (output9395, value5, value1) := by
  rw [input9395_def, output9395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9387_eq]
  dsimp only
  rw [node9394_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4702 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10077 (Flapjack.WordLangAddr.addr 10081 0#64)))).val
theorem input9396_def : input9396 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10077 (Flapjack.WordLangAddr.addr 10081 0#64))) := by
  unfold input9396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9396 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10077 (Flapjack.WordLangAddr.addr 10081 0#64)))).val
theorem output9396_def : output9396 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10077 (Flapjack.WordLangAddr.addr 10081 0#64))) := by
  unfold output9396
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9396_skip : Flapjack.WordAlloc.isSkip output9396 = false := by
  rw [output9396_def]
  conv => lhs; cbv
  try rfl
theorem node9396_eq : Flapjack.WordAlloc.removeDeadStructural input9396 value5 value1 value2 = (output9396, value4702, value1) := by
  rw [input9396_def, output9396_def]
  try (conv => lhs; cbv)
  try rfl

def value4703 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(10081, 10069)])).val
theorem input9397_def : input9397 = (Flapjack.WordLangProgHOL.move 0 [(10081, 10069)]) := by
  unfold input9397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9397 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(10081, 10069)])).val
theorem output9397_def : output9397 = (Flapjack.WordLangProgHOL.move 0 [(10081, 10069)]) := by
  unfold output9397
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9397_skip : Flapjack.WordAlloc.isSkip output9397 = false := by
  rw [output9397_def]
  conv => lhs; cbv
  try rfl
theorem node9397_eq : Flapjack.WordAlloc.removeDeadStructural input9397 value4702 value1 value2 = (output9397, value4703, value1) := by
  rw [input9397_def, output9397_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9397 input9396)).val
theorem input9398_def : input9398 = (.seq input9397 input9396) := by
  unfold input9398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9398 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9397 output9396)).val
theorem output9398_def : output9398 = (.seq output9397 output9396) := by
  unfold output9398
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9398_skip : Flapjack.WordAlloc.isSkip output9398 = false := by
  rw [output9398_def]
  conv => lhs; cbv
  try rfl
theorem node9398_eq : Flapjack.WordAlloc.removeDeadStructural input9398 value5 value1 value2 = (output9398, value4703, value1) := by
  rw [input9398_def, output9398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9396_eq]
  dsimp only
  rw [node9397_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4704 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10077 12234233096825917993#64))).val
theorem input9399_def : input9399 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10077 12234233096825917993#64)) := by
  unfold input9399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9399 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10077 12234233096825917993#64))).val
theorem output9399_def : output9399 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10077 12234233096825917993#64)) := by
  unfold output9399
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9399_skip : Flapjack.WordAlloc.isSkip output9399 = false := by
  rw [output9399_def]
  conv => lhs; cbv
  try rfl
theorem node9399_eq : Flapjack.WordAlloc.removeDeadStructural input9399 value4703 value1 value2 = (output9399, value4704, value1) := by
  rw [input9399_def, output9399_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10073 12234233096825917993#64))).val
theorem input9400_def : input9400 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10073 12234233096825917993#64)) := by
  unfold input9400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9400 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9400_def : output9400 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9400
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9400_skip : Flapjack.WordAlloc.isSkip output9400 = true := by
  rw [output9400_def]
  conv => lhs; cbv
  try rfl
theorem node9400_eq : Flapjack.WordAlloc.removeDeadStructural input9400 value4704 value1 value2 = (output9400, value4704, value1) := by
  rw [input9400_def, output9400_def]
  try (conv => lhs; cbv)
  try rfl

def value4705 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10069 10061 (Flapjack.WordRegImm.reg 10065))))).val
theorem input9401_def : input9401 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10069 10061 (Flapjack.WordRegImm.reg 10065)))) := by
  unfold input9401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9401 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10069 10061 (Flapjack.WordRegImm.reg 10065))))).val
theorem output9401_def : output9401 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10069 10061 (Flapjack.WordRegImm.reg 10065)))) := by
  unfold output9401
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9401_skip : Flapjack.WordAlloc.isSkip output9401 = false := by
  rw [output9401_def]
  conv => lhs; cbv
  try rfl
theorem node9401_eq : Flapjack.WordAlloc.removeDeadStructural input9401 value4704 value1 value2 = (output9401, value4705, value1) := by
  rw [input9401_def, output9401_def]
  try (conv => lhs; cbv)
  try rfl

def value4706 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10065 2432#64))).val
theorem input9402_def : input9402 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10065 2432#64)) := by
  unfold input9402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9402 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10065 2432#64))).val
theorem output9402_def : output9402 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10065 2432#64)) := by
  unfold output9402
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9402_skip : Flapjack.WordAlloc.isSkip output9402 = false := by
  rw [output9402_def]
  conv => lhs; cbv
  try rfl
theorem node9402_eq : Flapjack.WordAlloc.removeDeadStructural input9402 value4705 value1 value2 = (output9402, value4706, value1) := by
  rw [input9402_def, output9402_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9402 input9401)).val
theorem input9403_def : input9403 = (.seq input9402 input9401) := by
  unfold input9403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9403 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9402 output9401)).val
theorem output9403_def : output9403 = (.seq output9402 output9401) := by
  unfold output9403
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9403_skip : Flapjack.WordAlloc.isSkip output9403 = false := by
  rw [output9403_def]
  conv => lhs; cbv
  try rfl
theorem node9403_eq : Flapjack.WordAlloc.removeDeadStructural input9403 value4704 value1 value2 = (output9403, value4706, value1) := by
  rw [input9403_def, output9403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9401_eq]
  dsimp only
  rw [node9402_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4707 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10061 (Flapjack.WordLangAddr.addr 10057 18446744073709551104#64)))).val
theorem input9404_def : input9404 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10061 (Flapjack.WordLangAddr.addr 10057 18446744073709551104#64))) := by
  unfold input9404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9404 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10061 (Flapjack.WordLangAddr.addr 10057 18446744073709551104#64)))).val
theorem output9404_def : output9404 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10061 (Flapjack.WordLangAddr.addr 10057 18446744073709551104#64))) := by
  unfold output9404
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9404_skip : Flapjack.WordAlloc.isSkip output9404 = false := by
  rw [output9404_def]
  conv => lhs; cbv
  try rfl
theorem node9404_eq : Flapjack.WordAlloc.removeDeadStructural input9404 value4706 value1 value2 = (output9404, value4707, value1) := by
  rw [input9404_def, output9404_def]
  try (conv => lhs; cbv)
  try rfl

def value4708 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10057 10053)).val
theorem input9405_def : input9405 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10057 10053) := by
  unfold input9405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9405 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10057 10053)).val
theorem output9405_def : output9405 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10057 10053) := by
  unfold output9405
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9405_skip : Flapjack.WordAlloc.isSkip output9405 = false := by
  rw [output9405_def]
  conv => lhs; cbv
  try rfl
theorem node9405_eq : Flapjack.WordAlloc.removeDeadStructural input9405 value4707 value1 value2 = (output9405, value4708, value1) := by
  rw [input9405_def, output9405_def]
  try (conv => lhs; cbv)
  try rfl

def value4709 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10053 10049 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9406_def : input9406 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10053 10049 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9406 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10053 10049 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9406_def : output9406 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10053 10049 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9406
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9406_skip : Flapjack.WordAlloc.isSkip output9406 = false := by
  rw [output9406_def]
  conv => lhs; cbv
  try rfl
theorem node9406_eq : Flapjack.WordAlloc.removeDeadStructural input9406 value4708 value1 value2 = (output9406, value4709, value1) := by
  rw [input9406_def, output9406_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 10049 Flapjack.WordStore.heapLength)).val
theorem input9407_def : input9407 = (Flapjack.WordLangProgHOL.get 10049 Flapjack.WordStore.heapLength) := by
  unfold input9407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9407 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 10049 Flapjack.WordStore.heapLength)).val
theorem output9407_def : output9407 = (Flapjack.WordLangProgHOL.get 10049 Flapjack.WordStore.heapLength) := by
  unfold output9407
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9407_skip : Flapjack.WordAlloc.isSkip output9407 = false := by
  rw [output9407_def]
  conv => lhs; cbv
  try rfl
theorem node9407_eq : Flapjack.WordAlloc.removeDeadStructural input9407 value4709 value1 value2 = (output9407, value5, value1) := by
  rw [input9407_def, output9407_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9407 input9406)).val
theorem input9408_def : input9408 = (.seq input9407 input9406) := by
  unfold input9408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9408 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9407 output9406)).val
theorem output9408_def : output9408 = (.seq output9407 output9406) := by
  unfold output9408
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9408_skip : Flapjack.WordAlloc.isSkip output9408 = false := by
  rw [output9408_def]
  conv => lhs; cbv
  try rfl
theorem node9408_eq : Flapjack.WordAlloc.removeDeadStructural input9408 value4708 value1 value2 = (output9408, value5, value1) := by
  rw [input9408_def, output9408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9406_eq]
  dsimp only
  rw [node9407_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9408 input9405)).val
theorem input9409_def : input9409 = (.seq input9408 input9405) := by
  unfold input9409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9409 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9408 output9405)).val
theorem output9409_def : output9409 = (.seq output9408 output9405) := by
  unfold output9409
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9409_skip : Flapjack.WordAlloc.isSkip output9409 = false := by
  rw [output9409_def]
  conv => lhs; cbv
  try rfl
theorem node9409_eq : Flapjack.WordAlloc.removeDeadStructural input9409 value4707 value1 value2 = (output9409, value5, value1) := by
  rw [input9409_def, output9409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9405_eq]
  dsimp only
  rw [node9408_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9409 input9404)).val
theorem input9410_def : input9410 = (.seq input9409 input9404) := by
  unfold input9410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9410 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9409 output9404)).val
theorem output9410_def : output9410 = (.seq output9409 output9404) := by
  unfold output9410
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9410_skip : Flapjack.WordAlloc.isSkip output9410 = false := by
  rw [output9410_def]
  conv => lhs; cbv
  try rfl
theorem node9410_eq : Flapjack.WordAlloc.removeDeadStructural input9410 value4706 value1 value2 = (output9410, value5, value1) := by
  rw [input9410_def, output9410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9404_eq]
  dsimp only
  rw [node9409_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9410 input9403)).val
theorem input9411_def : input9411 = (.seq input9410 input9403) := by
  unfold input9411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9411 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9410 output9403)).val
theorem output9411_def : output9411 = (.seq output9410 output9403) := by
  unfold output9411
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9411_skip : Flapjack.WordAlloc.isSkip output9411 = false := by
  rw [output9411_def]
  conv => lhs; cbv
  try rfl
theorem node9411_eq : Flapjack.WordAlloc.removeDeadStructural input9411 value4704 value1 value2 = (output9411, value5, value1) := by
  rw [input9411_def, output9411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9403_eq]
  dsimp only
  rw [node9410_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4710 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10041 (Flapjack.WordLangAddr.addr 10045 0#64)))).val
theorem input9412_def : input9412 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10041 (Flapjack.WordLangAddr.addr 10045 0#64))) := by
  unfold input9412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9412 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10041 (Flapjack.WordLangAddr.addr 10045 0#64)))).val
theorem output9412_def : output9412 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10041 (Flapjack.WordLangAddr.addr 10045 0#64))) := by
  unfold output9412
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9412_skip : Flapjack.WordAlloc.isSkip output9412 = false := by
  rw [output9412_def]
  conv => lhs; cbv
  try rfl
theorem node9412_eq : Flapjack.WordAlloc.removeDeadStructural input9412 value5 value1 value2 = (output9412, value4710, value1) := by
  rw [input9412_def, output9412_def]
  try (conv => lhs; cbv)
  try rfl

def value4711 : Flapjack.NumSet :=
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
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(10045, 10033)])).val
theorem input9413_def : input9413 = (Flapjack.WordLangProgHOL.move 0 [(10045, 10033)]) := by
  unfold input9413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9413 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(10045, 10033)])).val
theorem output9413_def : output9413 = (Flapjack.WordLangProgHOL.move 0 [(10045, 10033)]) := by
  unfold output9413
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9413_skip : Flapjack.WordAlloc.isSkip output9413 = false := by
  rw [output9413_def]
  conv => lhs; cbv
  try rfl
theorem node9413_eq : Flapjack.WordAlloc.removeDeadStructural input9413 value4710 value1 value2 = (output9413, value4711, value1) := by
  rw [input9413_def, output9413_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9413 input9412)).val
theorem input9414_def : input9414 = (.seq input9413 input9412) := by
  unfold input9414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9414 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9413 output9412)).val
theorem output9414_def : output9414 = (.seq output9413 output9412) := by
  unfold output9414
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9414_skip : Flapjack.WordAlloc.isSkip output9414 = false := by
  rw [output9414_def]
  conv => lhs; cbv
  try rfl
theorem node9414_eq : Flapjack.WordAlloc.removeDeadStructural input9414 value5 value1 value2 = (output9414, value4711, value1) := by
  rw [input9414_def, output9414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9412_eq]
  dsimp only
  rw [node9413_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4712 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10041 1167027828517898210#64))).val
theorem input9415_def : input9415 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10041 1167027828517898210#64)) := by
  unfold input9415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9415 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10041 1167027828517898210#64))).val
theorem output9415_def : output9415 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10041 1167027828517898210#64)) := by
  unfold output9415
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9415_skip : Flapjack.WordAlloc.isSkip output9415 = false := by
  rw [output9415_def]
  conv => lhs; cbv
  try rfl
theorem node9415_eq : Flapjack.WordAlloc.removeDeadStructural input9415 value4711 value1 value2 = (output9415, value4712, value1) := by
  rw [input9415_def, output9415_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10037 1167027828517898210#64))).val
theorem input9416_def : input9416 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10037 1167027828517898210#64)) := by
  unfold input9416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9416 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9416_def : output9416 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9416
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9416_skip : Flapjack.WordAlloc.isSkip output9416 = true := by
  rw [output9416_def]
  conv => lhs; cbv
  try rfl
theorem node9416_eq : Flapjack.WordAlloc.removeDeadStructural input9416 value4712 value1 value2 = (output9416, value4712, value1) := by
  rw [input9416_def, output9416_def]
  try (conv => lhs; cbv)
  try rfl

def value4713 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10033 10025 (Flapjack.WordRegImm.reg 10029))))).val
theorem input9417_def : input9417 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10033 10025 (Flapjack.WordRegImm.reg 10029)))) := by
  unfold input9417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9417 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10033 10025 (Flapjack.WordRegImm.reg 10029))))).val
theorem output9417_def : output9417 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 10033 10025 (Flapjack.WordRegImm.reg 10029)))) := by
  unfold output9417
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9417_skip : Flapjack.WordAlloc.isSkip output9417 = false := by
  rw [output9417_def]
  conv => lhs; cbv
  try rfl
theorem node9417_eq : Flapjack.WordAlloc.removeDeadStructural input9417 value4712 value1 value2 = (output9417, value4713, value1) := by
  rw [input9417_def, output9417_def]
  try (conv => lhs; cbv)
  try rfl

def value4714 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10029 2424#64))).val
theorem input9418_def : input9418 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10029 2424#64)) := by
  unfold input9418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9418 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10029 2424#64))).val
theorem output9418_def : output9418 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10029 2424#64)) := by
  unfold output9418
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9418_skip : Flapjack.WordAlloc.isSkip output9418 = false := by
  rw [output9418_def]
  conv => lhs; cbv
  try rfl
theorem node9418_eq : Flapjack.WordAlloc.removeDeadStructural input9418 value4713 value1 value2 = (output9418, value4714, value1) := by
  rw [input9418_def, output9418_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9418 input9417)).val
theorem input9419_def : input9419 = (.seq input9418 input9417) := by
  unfold input9419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9419 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9418 output9417)).val
theorem output9419_def : output9419 = (.seq output9418 output9417) := by
  unfold output9419
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9419_skip : Flapjack.WordAlloc.isSkip output9419 = false := by
  rw [output9419_def]
  conv => lhs; cbv
  try rfl
theorem node9419_eq : Flapjack.WordAlloc.removeDeadStructural input9419 value4712 value1 value2 = (output9419, value4714, value1) := by
  rw [input9419_def, output9419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9417_eq]
  dsimp only
  rw [node9418_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4715 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10025 (Flapjack.WordLangAddr.addr 10021 18446744073709551104#64)))).val
theorem input9420_def : input9420 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10025 (Flapjack.WordLangAddr.addr 10021 18446744073709551104#64))) := by
  unfold input9420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9420 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10025 (Flapjack.WordLangAddr.addr 10021 18446744073709551104#64)))).val
theorem output9420_def : output9420 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 10025 (Flapjack.WordLangAddr.addr 10021 18446744073709551104#64))) := by
  unfold output9420
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9420_skip : Flapjack.WordAlloc.isSkip output9420 = false := by
  rw [output9420_def]
  conv => lhs; cbv
  try rfl
theorem node9420_eq : Flapjack.WordAlloc.removeDeadStructural input9420 value4714 value1 value2 = (output9420, value4715, value1) := by
  rw [input9420_def, output9420_def]
  try (conv => lhs; cbv)
  try rfl

def value4716 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10021 10017)).val
theorem input9421_def : input9421 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10021 10017) := by
  unfold input9421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9421 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10021 10017)).val
theorem output9421_def : output9421 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 10021 10017) := by
  unfold output9421
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9421_skip : Flapjack.WordAlloc.isSkip output9421 = false := by
  rw [output9421_def]
  conv => lhs; cbv
  try rfl
theorem node9421_eq : Flapjack.WordAlloc.removeDeadStructural input9421 value4715 value1 value2 = (output9421, value4716, value1) := by
  rw [input9421_def, output9421_def]
  try (conv => lhs; cbv)
  try rfl

def value4717 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10017 10013 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9422_def : input9422 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10017 10013 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9422 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10017 10013 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9422_def : output9422 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 10017 10013 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9422
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9422_skip : Flapjack.WordAlloc.isSkip output9422 = false := by
  rw [output9422_def]
  conv => lhs; cbv
  try rfl
theorem node9422_eq : Flapjack.WordAlloc.removeDeadStructural input9422 value4716 value1 value2 = (output9422, value4717, value1) := by
  rw [input9422_def, output9422_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 10013 Flapjack.WordStore.heapLength)).val
theorem input9423_def : input9423 = (Flapjack.WordLangProgHOL.get 10013 Flapjack.WordStore.heapLength) := by
  unfold input9423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9423 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 10013 Flapjack.WordStore.heapLength)).val
theorem output9423_def : output9423 = (Flapjack.WordLangProgHOL.get 10013 Flapjack.WordStore.heapLength) := by
  unfold output9423
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9423_skip : Flapjack.WordAlloc.isSkip output9423 = false := by
  rw [output9423_def]
  conv => lhs; cbv
  try rfl
theorem node9423_eq : Flapjack.WordAlloc.removeDeadStructural input9423 value4717 value1 value2 = (output9423, value5, value1) := by
  rw [input9423_def, output9423_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9423 input9422)).val
theorem input9424_def : input9424 = (.seq input9423 input9422) := by
  unfold input9424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9424 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9423 output9422)).val
theorem output9424_def : output9424 = (.seq output9423 output9422) := by
  unfold output9424
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9424_skip : Flapjack.WordAlloc.isSkip output9424 = false := by
  rw [output9424_def]
  conv => lhs; cbv
  try rfl
theorem node9424_eq : Flapjack.WordAlloc.removeDeadStructural input9424 value4716 value1 value2 = (output9424, value5, value1) := by
  rw [input9424_def, output9424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9422_eq]
  dsimp only
  rw [node9423_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9424 input9421)).val
theorem input9425_def : input9425 = (.seq input9424 input9421) := by
  unfold input9425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9425 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9424 output9421)).val
theorem output9425_def : output9425 = (.seq output9424 output9421) := by
  unfold output9425
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9425_skip : Flapjack.WordAlloc.isSkip output9425 = false := by
  rw [output9425_def]
  conv => lhs; cbv
  try rfl
theorem node9425_eq : Flapjack.WordAlloc.removeDeadStructural input9425 value4715 value1 value2 = (output9425, value5, value1) := by
  rw [input9425_def, output9425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9421_eq]
  dsimp only
  rw [node9424_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9425 input9420)).val
theorem input9426_def : input9426 = (.seq input9425 input9420) := by
  unfold input9426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9426 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9425 output9420)).val
theorem output9426_def : output9426 = (.seq output9425 output9420) := by
  unfold output9426
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9426_skip : Flapjack.WordAlloc.isSkip output9426 = false := by
  rw [output9426_def]
  conv => lhs; cbv
  try rfl
theorem node9426_eq : Flapjack.WordAlloc.removeDeadStructural input9426 value4714 value1 value2 = (output9426, value5, value1) := by
  rw [input9426_def, output9426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9420_eq]
  dsimp only
  rw [node9425_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9426 input9419)).val
theorem input9427_def : input9427 = (.seq input9426 input9419) := by
  unfold input9427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9427 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9426 output9419)).val
theorem output9427_def : output9427 = (.seq output9426 output9419) := by
  unfold output9427
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9427_skip : Flapjack.WordAlloc.isSkip output9427 = false := by
  rw [output9427_def]
  conv => lhs; cbv
  try rfl
theorem node9427_eq : Flapjack.WordAlloc.removeDeadStructural input9427 value4712 value1 value2 = (output9427, value5, value1) := by
  rw [input9427_def, output9427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9419_eq]
  dsimp only
  rw [node9426_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4718 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10005 (Flapjack.WordLangAddr.addr 10009 0#64)))).val
theorem input9428_def : input9428 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10005 (Flapjack.WordLangAddr.addr 10009 0#64))) := by
  unfold input9428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9428 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10005 (Flapjack.WordLangAddr.addr 10009 0#64)))).val
theorem output9428_def : output9428 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 10005 (Flapjack.WordLangAddr.addr 10009 0#64))) := by
  unfold output9428
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9428_skip : Flapjack.WordAlloc.isSkip output9428 = false := by
  rw [output9428_def]
  conv => lhs; cbv
  try rfl
theorem node9428_eq : Flapjack.WordAlloc.removeDeadStructural input9428 value5 value1 value2 = (output9428, value4718, value1) := by
  rw [input9428_def, output9428_def]
  try (conv => lhs; cbv)
  try rfl

def value4719 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(10009, 9997)])).val
theorem input9429_def : input9429 = (Flapjack.WordLangProgHOL.move 0 [(10009, 9997)]) := by
  unfold input9429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9429 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(10009, 9997)])).val
theorem output9429_def : output9429 = (Flapjack.WordLangProgHOL.move 0 [(10009, 9997)]) := by
  unfold output9429
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9429_skip : Flapjack.WordAlloc.isSkip output9429 = false := by
  rw [output9429_def]
  conv => lhs; cbv
  try rfl
theorem node9429_eq : Flapjack.WordAlloc.removeDeadStructural input9429 value4718 value1 value2 = (output9429, value4719, value1) := by
  rw [input9429_def, output9429_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9429 input9428)).val
theorem input9430_def : input9430 = (.seq input9429 input9428) := by
  unfold input9430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9430 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9429 output9428)).val
theorem output9430_def : output9430 = (.seq output9429 output9428) := by
  unfold output9430
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9430_skip : Flapjack.WordAlloc.isSkip output9430 = false := by
  rw [output9430_def]
  conv => lhs; cbv
  try rfl
theorem node9430_eq : Flapjack.WordAlloc.removeDeadStructural input9430 value5 value1 value2 = (output9430, value4719, value1) := by
  rw [input9430_def, output9430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9428_eq]
  dsimp only
  rw [node9429_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4720 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10005 8275623842221021965#64))).val
theorem input9431_def : input9431 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10005 8275623842221021965#64)) := by
  unfold input9431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9431 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10005 8275623842221021965#64))).val
theorem output9431_def : output9431 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10005 8275623842221021965#64)) := by
  unfold output9431
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9431_skip : Flapjack.WordAlloc.isSkip output9431 = false := by
  rw [output9431_def]
  conv => lhs; cbv
  try rfl
theorem node9431_eq : Flapjack.WordAlloc.removeDeadStructural input9431 value4719 value1 value2 = (output9431, value4720, value1) := by
  rw [input9431_def, output9431_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10001 8275623842221021965#64))).val
theorem input9432_def : input9432 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 10001 8275623842221021965#64)) := by
  unfold input9432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9432 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9432_def : output9432 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9432
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9432_skip : Flapjack.WordAlloc.isSkip output9432 = true := by
  rw [output9432_def]
  conv => lhs; cbv
  try rfl
theorem node9432_eq : Flapjack.WordAlloc.removeDeadStructural input9432 value4720 value1 value2 = (output9432, value4720, value1) := by
  rw [input9432_def, output9432_def]
  try (conv => lhs; cbv)
  try rfl

def value4721 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9997 9989 (Flapjack.WordRegImm.reg 9993))))).val
theorem input9433_def : input9433 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9997 9989 (Flapjack.WordRegImm.reg 9993)))) := by
  unfold input9433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9433 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9997 9989 (Flapjack.WordRegImm.reg 9993))))).val
theorem output9433_def : output9433 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9997 9989 (Flapjack.WordRegImm.reg 9993)))) := by
  unfold output9433
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9433_skip : Flapjack.WordAlloc.isSkip output9433 = false := by
  rw [output9433_def]
  conv => lhs; cbv
  try rfl
theorem node9433_eq : Flapjack.WordAlloc.removeDeadStructural input9433 value4720 value1 value2 = (output9433, value4721, value1) := by
  rw [input9433_def, output9433_def]
  try (conv => lhs; cbv)
  try rfl

def value4722 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln))))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9993 2416#64))).val
theorem input9434_def : input9434 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9993 2416#64)) := by
  unfold input9434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9434 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9993 2416#64))).val
theorem output9434_def : output9434 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9993 2416#64)) := by
  unfold output9434
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9434_skip : Flapjack.WordAlloc.isSkip output9434 = false := by
  rw [output9434_def]
  conv => lhs; cbv
  try rfl
theorem node9434_eq : Flapjack.WordAlloc.removeDeadStructural input9434 value4721 value1 value2 = (output9434, value4722, value1) := by
  rw [input9434_def, output9434_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9434 input9433)).val
theorem input9435_def : input9435 = (.seq input9434 input9433) := by
  unfold input9435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9435 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9434 output9433)).val
theorem output9435_def : output9435 = (.seq output9434 output9433) := by
  unfold output9435
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9435_skip : Flapjack.WordAlloc.isSkip output9435 = false := by
  rw [output9435_def]
  conv => lhs; cbv
  try rfl
theorem node9435_eq : Flapjack.WordAlloc.removeDeadStructural input9435 value4720 value1 value2 = (output9435, value4722, value1) := by
  rw [input9435_def, output9435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9433_eq]
  dsimp only
  rw [node9434_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4723 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9989 (Flapjack.WordLangAddr.addr 9985 18446744073709551104#64)))).val
theorem input9436_def : input9436 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9989 (Flapjack.WordLangAddr.addr 9985 18446744073709551104#64))) := by
  unfold input9436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9436 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9989 (Flapjack.WordLangAddr.addr 9985 18446744073709551104#64)))).val
theorem output9436_def : output9436 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9989 (Flapjack.WordLangAddr.addr 9985 18446744073709551104#64))) := by
  unfold output9436
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9436_skip : Flapjack.WordAlloc.isSkip output9436 = false := by
  rw [output9436_def]
  conv => lhs; cbv
  try rfl
theorem node9436_eq : Flapjack.WordAlloc.removeDeadStructural input9436 value4722 value1 value2 = (output9436, value4723, value1) := by
  rw [input9436_def, output9436_def]
  try (conv => lhs; cbv)
  try rfl

def value4724 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9985 9981)).val
theorem input9437_def : input9437 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9985 9981) := by
  unfold input9437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9437 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9985 9981)).val
theorem output9437_def : output9437 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9985 9981) := by
  unfold output9437
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9437_skip : Flapjack.WordAlloc.isSkip output9437 = false := by
  rw [output9437_def]
  conv => lhs; cbv
  try rfl
theorem node9437_eq : Flapjack.WordAlloc.removeDeadStructural input9437 value4723 value1 value2 = (output9437, value4724, value1) := by
  rw [input9437_def, output9437_def]
  try (conv => lhs; cbv)
  try rfl

def value4725 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9981 9977 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9438_def : input9438 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9981 9977 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9438 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9981 9977 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9438_def : output9438 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9981 9977 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9438
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9438_skip : Flapjack.WordAlloc.isSkip output9438 = false := by
  rw [output9438_def]
  conv => lhs; cbv
  try rfl
theorem node9438_eq : Flapjack.WordAlloc.removeDeadStructural input9438 value4724 value1 value2 = (output9438, value4725, value1) := by
  rw [input9438_def, output9438_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9977 Flapjack.WordStore.heapLength)).val
theorem input9439_def : input9439 = (Flapjack.WordLangProgHOL.get 9977 Flapjack.WordStore.heapLength) := by
  unfold input9439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9439 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9977 Flapjack.WordStore.heapLength)).val
theorem output9439_def : output9439 = (Flapjack.WordLangProgHOL.get 9977 Flapjack.WordStore.heapLength) := by
  unfold output9439
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9439_skip : Flapjack.WordAlloc.isSkip output9439 = false := by
  rw [output9439_def]
  conv => lhs; cbv
  try rfl
theorem node9439_eq : Flapjack.WordAlloc.removeDeadStructural input9439 value4725 value1 value2 = (output9439, value5, value1) := by
  rw [input9439_def, output9439_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9439 input9438)).val
theorem input9440_def : input9440 = (.seq input9439 input9438) := by
  unfold input9440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9440 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9439 output9438)).val
theorem output9440_def : output9440 = (.seq output9439 output9438) := by
  unfold output9440
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9440_skip : Flapjack.WordAlloc.isSkip output9440 = false := by
  rw [output9440_def]
  conv => lhs; cbv
  try rfl
theorem node9440_eq : Flapjack.WordAlloc.removeDeadStructural input9440 value4724 value1 value2 = (output9440, value5, value1) := by
  rw [input9440_def, output9440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9438_eq]
  dsimp only
  rw [node9439_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9440 input9437)).val
theorem input9441_def : input9441 = (.seq input9440 input9437) := by
  unfold input9441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9441 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9440 output9437)).val
theorem output9441_def : output9441 = (.seq output9440 output9437) := by
  unfold output9441
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9441_skip : Flapjack.WordAlloc.isSkip output9441 = false := by
  rw [output9441_def]
  conv => lhs; cbv
  try rfl
theorem node9441_eq : Flapjack.WordAlloc.removeDeadStructural input9441 value4723 value1 value2 = (output9441, value5, value1) := by
  rw [input9441_def, output9441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9437_eq]
  dsimp only
  rw [node9440_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9441 input9436)).val
theorem input9442_def : input9442 = (.seq input9441 input9436) := by
  unfold input9442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9442 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9441 output9436)).val
theorem output9442_def : output9442 = (.seq output9441 output9436) := by
  unfold output9442
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9442_skip : Flapjack.WordAlloc.isSkip output9442 = false := by
  rw [output9442_def]
  conv => lhs; cbv
  try rfl
theorem node9442_eq : Flapjack.WordAlloc.removeDeadStructural input9442 value4722 value1 value2 = (output9442, value5, value1) := by
  rw [input9442_def, output9442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9436_eq]
  dsimp only
  rw [node9441_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9442 input9435)).val
theorem input9443_def : input9443 = (.seq input9442 input9435) := by
  unfold input9443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9443 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9442 output9435)).val
theorem output9443_def : output9443 = (.seq output9442 output9435) := by
  unfold output9443
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9443_skip : Flapjack.WordAlloc.isSkip output9443 = false := by
  rw [output9443_def]
  conv => lhs; cbv
  try rfl
theorem node9443_eq : Flapjack.WordAlloc.removeDeadStructural input9443 value4720 value1 value2 = (output9443, value5, value1) := by
  rw [input9443_def, output9443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9435_eq]
  dsimp only
  rw [node9442_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4726 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9969 (Flapjack.WordLangAddr.addr 9973 0#64)))).val
theorem input9444_def : input9444 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9969 (Flapjack.WordLangAddr.addr 9973 0#64))) := by
  unfold input9444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9444 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9969 (Flapjack.WordLangAddr.addr 9973 0#64)))).val
theorem output9444_def : output9444 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9969 (Flapjack.WordLangAddr.addr 9973 0#64))) := by
  unfold output9444
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9444_skip : Flapjack.WordAlloc.isSkip output9444 = false := by
  rw [output9444_def]
  conv => lhs; cbv
  try rfl
theorem node9444_eq : Flapjack.WordAlloc.removeDeadStructural input9444 value5 value1 value2 = (output9444, value4726, value1) := by
  rw [input9444_def, output9444_def]
  try (conv => lhs; cbv)
  try rfl

def value4727 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9973, 9961)])).val
theorem input9445_def : input9445 = (Flapjack.WordLangProgHOL.move 0 [(9973, 9961)]) := by
  unfold input9445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9445 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9973, 9961)])).val
theorem output9445_def : output9445 = (Flapjack.WordLangProgHOL.move 0 [(9973, 9961)]) := by
  unfold output9445
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9445_skip : Flapjack.WordAlloc.isSkip output9445 = false := by
  rw [output9445_def]
  conv => lhs; cbv
  try rfl
theorem node9445_eq : Flapjack.WordAlloc.removeDeadStructural input9445 value4726 value1 value2 = (output9445, value4727, value1) := by
  rw [input9445_def, output9445_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9445 input9444)).val
theorem input9446_def : input9446 = (.seq input9445 input9444) := by
  unfold input9446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9446 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9445 output9444)).val
theorem output9446_def : output9446 = (.seq output9445 output9444) := by
  unfold output9446
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9446_skip : Flapjack.WordAlloc.isSkip output9446 = false := by
  rw [output9446_def]
  conv => lhs; cbv
  try rfl
theorem node9446_eq : Flapjack.WordAlloc.removeDeadStructural input9446 value5 value1 value2 = (output9446, value4727, value1) := by
  rw [input9446_def, output9446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9444_eq]
  dsimp only
  rw [node9445_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4728 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9969 18049808134997311382#64))).val
theorem input9447_def : input9447 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9969 18049808134997311382#64)) := by
  unfold input9447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9447 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9969 18049808134997311382#64))).val
theorem output9447_def : output9447 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9969 18049808134997311382#64)) := by
  unfold output9447
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9447_skip : Flapjack.WordAlloc.isSkip output9447 = false := by
  rw [output9447_def]
  conv => lhs; cbv
  try rfl
theorem node9447_eq : Flapjack.WordAlloc.removeDeadStructural input9447 value4727 value1 value2 = (output9447, value4728, value1) := by
  rw [input9447_def, output9447_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9965 18049808134997311382#64))).val
theorem input9448_def : input9448 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9965 18049808134997311382#64)) := by
  unfold input9448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9448 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9448_def : output9448 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9448
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9448_skip : Flapjack.WordAlloc.isSkip output9448 = true := by
  rw [output9448_def]
  conv => lhs; cbv
  try rfl
theorem node9448_eq : Flapjack.WordAlloc.removeDeadStructural input9448 value4728 value1 value2 = (output9448, value4728, value1) := by
  rw [input9448_def, output9448_def]
  try (conv => lhs; cbv)
  try rfl

def value4729 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9961 9953 (Flapjack.WordRegImm.reg 9957))))).val
theorem input9449_def : input9449 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9961 9953 (Flapjack.WordRegImm.reg 9957)))) := by
  unfold input9449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9449 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9961 9953 (Flapjack.WordRegImm.reg 9957))))).val
theorem output9449_def : output9449 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9961 9953 (Flapjack.WordRegImm.reg 9957)))) := by
  unfold output9449
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9449_skip : Flapjack.WordAlloc.isSkip output9449 = false := by
  rw [output9449_def]
  conv => lhs; cbv
  try rfl
theorem node9449_eq : Flapjack.WordAlloc.removeDeadStructural input9449 value4728 value1 value2 = (output9449, value4729, value1) := by
  rw [input9449_def, output9449_def]
  try (conv => lhs; cbv)
  try rfl

def value4730 : Flapjack.NumSet :=
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
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9957 2408#64))).val
theorem input9450_def : input9450 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9957 2408#64)) := by
  unfold input9450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9450 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9957 2408#64))).val
theorem output9450_def : output9450 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9957 2408#64)) := by
  unfold output9450
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9450_skip : Flapjack.WordAlloc.isSkip output9450 = false := by
  rw [output9450_def]
  conv => lhs; cbv
  try rfl
theorem node9450_eq : Flapjack.WordAlloc.removeDeadStructural input9450 value4729 value1 value2 = (output9450, value4730, value1) := by
  rw [input9450_def, output9450_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9450 input9449)).val
theorem input9451_def : input9451 = (.seq input9450 input9449) := by
  unfold input9451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9451 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9450 output9449)).val
theorem output9451_def : output9451 = (.seq output9450 output9449) := by
  unfold output9451
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9451_skip : Flapjack.WordAlloc.isSkip output9451 = false := by
  rw [output9451_def]
  conv => lhs; cbv
  try rfl
theorem node9451_eq : Flapjack.WordAlloc.removeDeadStructural input9451 value4728 value1 value2 = (output9451, value4730, value1) := by
  rw [input9451_def, output9451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9449_eq]
  dsimp only
  rw [node9450_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4731 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9953 (Flapjack.WordLangAddr.addr 9949 18446744073709551104#64)))).val
theorem input9452_def : input9452 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9953 (Flapjack.WordLangAddr.addr 9949 18446744073709551104#64))) := by
  unfold input9452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9452 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9953 (Flapjack.WordLangAddr.addr 9949 18446744073709551104#64)))).val
theorem output9452_def : output9452 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9953 (Flapjack.WordLangAddr.addr 9949 18446744073709551104#64))) := by
  unfold output9452
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9452_skip : Flapjack.WordAlloc.isSkip output9452 = false := by
  rw [output9452_def]
  conv => lhs; cbv
  try rfl
theorem node9452_eq : Flapjack.WordAlloc.removeDeadStructural input9452 value4730 value1 value2 = (output9452, value4731, value1) := by
  rw [input9452_def, output9452_def]
  try (conv => lhs; cbv)
  try rfl

def value4732 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9949 9945)).val
theorem input9453_def : input9453 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9949 9945) := by
  unfold input9453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9453 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9949 9945)).val
theorem output9453_def : output9453 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9949 9945) := by
  unfold output9453
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9453_skip : Flapjack.WordAlloc.isSkip output9453 = false := by
  rw [output9453_def]
  conv => lhs; cbv
  try rfl
theorem node9453_eq : Flapjack.WordAlloc.removeDeadStructural input9453 value4731 value1 value2 = (output9453, value4732, value1) := by
  rw [input9453_def, output9453_def]
  try (conv => lhs; cbv)
  try rfl

def value4733 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              PUnit.unit Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9945 9941 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9454_def : input9454 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9945 9941 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9454 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9945 9941 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9454_def : output9454 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9945 9941 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9454
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9454_skip : Flapjack.WordAlloc.isSkip output9454 = false := by
  rw [output9454_def]
  conv => lhs; cbv
  try rfl
theorem node9454_eq : Flapjack.WordAlloc.removeDeadStructural input9454 value4732 value1 value2 = (output9454, value4733, value1) := by
  rw [input9454_def, output9454_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9941 Flapjack.WordStore.heapLength)).val
theorem input9455_def : input9455 = (Flapjack.WordLangProgHOL.get 9941 Flapjack.WordStore.heapLength) := by
  unfold input9455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9455 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9941 Flapjack.WordStore.heapLength)).val
theorem output9455_def : output9455 = (Flapjack.WordLangProgHOL.get 9941 Flapjack.WordStore.heapLength) := by
  unfold output9455
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9455_skip : Flapjack.WordAlloc.isSkip output9455 = false := by
  rw [output9455_def]
  conv => lhs; cbv
  try rfl
theorem node9455_eq : Flapjack.WordAlloc.removeDeadStructural input9455 value4733 value1 value2 = (output9455, value5, value1) := by
  rw [input9455_def, output9455_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9455 input9454)).val
theorem input9456_def : input9456 = (.seq input9455 input9454) := by
  unfold input9456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9456 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9455 output9454)).val
theorem output9456_def : output9456 = (.seq output9455 output9454) := by
  unfold output9456
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9456_skip : Flapjack.WordAlloc.isSkip output9456 = false := by
  rw [output9456_def]
  conv => lhs; cbv
  try rfl
theorem node9456_eq : Flapjack.WordAlloc.removeDeadStructural input9456 value4732 value1 value2 = (output9456, value5, value1) := by
  rw [input9456_def, output9456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9454_eq]
  dsimp only
  rw [node9455_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9456 input9453)).val
theorem input9457_def : input9457 = (.seq input9456 input9453) := by
  unfold input9457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9457 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9456 output9453)).val
theorem output9457_def : output9457 = (.seq output9456 output9453) := by
  unfold output9457
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9457_skip : Flapjack.WordAlloc.isSkip output9457 = false := by
  rw [output9457_def]
  conv => lhs; cbv
  try rfl
theorem node9457_eq : Flapjack.WordAlloc.removeDeadStructural input9457 value4731 value1 value2 = (output9457, value5, value1) := by
  rw [input9457_def, output9457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9453_eq]
  dsimp only
  rw [node9456_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9457 input9452)).val
theorem input9458_def : input9458 = (.seq input9457 input9452) := by
  unfold input9458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9458 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9457 output9452)).val
theorem output9458_def : output9458 = (.seq output9457 output9452) := by
  unfold output9458
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9458_skip : Flapjack.WordAlloc.isSkip output9458 = false := by
  rw [output9458_def]
  conv => lhs; cbv
  try rfl
theorem node9458_eq : Flapjack.WordAlloc.removeDeadStructural input9458 value4730 value1 value2 = (output9458, value5, value1) := by
  rw [input9458_def, output9458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9452_eq]
  dsimp only
  rw [node9457_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9458 input9451)).val
theorem input9459_def : input9459 = (.seq input9458 input9451) := by
  unfold input9459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9459 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9458 output9451)).val
theorem output9459_def : output9459 = (.seq output9458 output9451) := by
  unfold output9459
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9459_skip : Flapjack.WordAlloc.isSkip output9459 = false := by
  rw [output9459_def]
  conv => lhs; cbv
  try rfl
theorem node9459_eq : Flapjack.WordAlloc.removeDeadStructural input9459 value4728 value1 value2 = (output9459, value5, value1) := by
  rw [input9459_def, output9459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9451_eq]
  dsimp only
  rw [node9458_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4734 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9933 (Flapjack.WordLangAddr.addr 9937 0#64)))).val
theorem input9460_def : input9460 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9933 (Flapjack.WordLangAddr.addr 9937 0#64))) := by
  unfold input9460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9460 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9933 (Flapjack.WordLangAddr.addr 9937 0#64)))).val
theorem output9460_def : output9460 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 9933 (Flapjack.WordLangAddr.addr 9937 0#64))) := by
  unfold output9460
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9460_skip : Flapjack.WordAlloc.isSkip output9460 = false := by
  rw [output9460_def]
  conv => lhs; cbv
  try rfl
theorem node9460_eq : Flapjack.WordAlloc.removeDeadStructural input9460 value5 value1 value2 = (output9460, value4734, value1) := by
  rw [input9460_def, output9460_def]
  try (conv => lhs; cbv)
  try rfl

def value4735 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9937, 9925)])).val
theorem input9461_def : input9461 = (Flapjack.WordLangProgHOL.move 0 [(9937, 9925)]) := by
  unfold input9461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9461 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(9937, 9925)])).val
theorem output9461_def : output9461 = (Flapjack.WordLangProgHOL.move 0 [(9937, 9925)]) := by
  unfold output9461
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9461_skip : Flapjack.WordAlloc.isSkip output9461 = false := by
  rw [output9461_def]
  conv => lhs; cbv
  try rfl
theorem node9461_eq : Flapjack.WordAlloc.removeDeadStructural input9461 value4734 value1 value2 = (output9461, value4735, value1) := by
  rw [input9461_def, output9461_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9461 input9460)).val
theorem input9462_def : input9462 = (.seq input9461 input9460) := by
  unfold input9462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9462 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9461 output9460)).val
theorem output9462_def : output9462 = (.seq output9461 output9460) := by
  unfold output9462
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9462_skip : Flapjack.WordAlloc.isSkip output9462 = false := by
  rw [output9462_def]
  conv => lhs; cbv
  try rfl
theorem node9462_eq : Flapjack.WordAlloc.removeDeadStructural input9462 value5 value1 value2 = (output9462, value4735, value1) := by
  rw [input9462_def, output9462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9460_eq]
  dsimp only
  rw [node9461_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4736 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9933 15351349873550116966#64))).val
theorem input9463_def : input9463 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9933 15351349873550116966#64)) := by
  unfold input9463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9463 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9933 15351349873550116966#64))).val
theorem output9463_def : output9463 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9933 15351349873550116966#64)) := by
  unfold output9463
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9463_skip : Flapjack.WordAlloc.isSkip output9463 = false := by
  rw [output9463_def]
  conv => lhs; cbv
  try rfl
theorem node9463_eq : Flapjack.WordAlloc.removeDeadStructural input9463 value4735 value1 value2 = (output9463, value4736, value1) := by
  rw [input9463_def, output9463_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9929 15351349873550116966#64))).val
theorem input9464_def : input9464 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9929 15351349873550116966#64)) := by
  unfold input9464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9464 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output9464_def : output9464 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output9464
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9464_skip : Flapjack.WordAlloc.isSkip output9464 = true := by
  rw [output9464_def]
  conv => lhs; cbv
  try rfl
theorem node9464_eq : Flapjack.WordAlloc.removeDeadStructural input9464 value4736 value1 value2 = (output9464, value4736, value1) := by
  rw [input9464_def, output9464_def]
  try (conv => lhs; cbv)
  try rfl

def value4737 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9925 9917 (Flapjack.WordRegImm.reg 9921))))).val
theorem input9465_def : input9465 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9925 9917 (Flapjack.WordRegImm.reg 9921)))) := by
  unfold input9465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9465 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9925 9917 (Flapjack.WordRegImm.reg 9921))))).val
theorem output9465_def : output9465 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 9925 9917 (Flapjack.WordRegImm.reg 9921)))) := by
  unfold output9465
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9465_skip : Flapjack.WordAlloc.isSkip output9465 = false := by
  rw [output9465_def]
  conv => lhs; cbv
  try rfl
theorem node9465_eq : Flapjack.WordAlloc.removeDeadStructural input9465 value4736 value1 value2 = (output9465, value4737, value1) := by
  rw [input9465_def, output9465_def]
  try (conv => lhs; cbv)
  try rfl

def value4738 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9921 2400#64))).val
theorem input9466_def : input9466 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9921 2400#64)) := by
  unfold input9466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9466 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9921 2400#64))).val
theorem output9466_def : output9466 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 9921 2400#64)) := by
  unfold output9466
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9466_skip : Flapjack.WordAlloc.isSkip output9466 = false := by
  rw [output9466_def]
  conv => lhs; cbv
  try rfl
theorem node9466_eq : Flapjack.WordAlloc.removeDeadStructural input9466 value4737 value1 value2 = (output9466, value4738, value1) := by
  rw [input9466_def, output9466_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input9466 input9465)).val
theorem input9467_def : input9467 = (.seq input9466 input9465) := by
  unfold input9467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9467 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output9466 output9465)).val
theorem output9467_def : output9467 = (.seq output9466 output9465) := by
  unfold output9467
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9467_skip : Flapjack.WordAlloc.isSkip output9467 = false := by
  rw [output9467_def]
  conv => lhs; cbv
  try rfl
theorem node9467_eq : Flapjack.WordAlloc.removeDeadStructural input9467 value4736 value1 value2 = (output9467, value4738, value1) := by
  rw [input9467_def, output9467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node9465_eq]
  dsimp only
  rw [node9466_eq]
  dsimp only
  try (conv => lhs; cbv)
  try rfl

def value4739 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9917 (Flapjack.WordLangAddr.addr 9913 18446744073709551104#64)))).val
theorem input9468_def : input9468 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9917 (Flapjack.WordLangAddr.addr 9913 18446744073709551104#64))) := by
  unfold input9468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9468 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9917 (Flapjack.WordLangAddr.addr 9913 18446744073709551104#64)))).val
theorem output9468_def : output9468 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 9917 (Flapjack.WordLangAddr.addr 9913 18446744073709551104#64))) := by
  unfold output9468
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9468_skip : Flapjack.WordAlloc.isSkip output9468 = false := by
  rw [output9468_def]
  conv => lhs; cbv
  try rfl
theorem node9468_eq : Flapjack.WordAlloc.removeDeadStructural input9468 value4738 value1 value2 = (output9468, value4739, value1) := by
  rw [input9468_def, output9468_def]
  try (conv => lhs; cbv)
  try rfl

def value4740 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            (Flapjack.Spt.ls PUnit.unit))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9913 9909)).val
theorem input9469_def : input9469 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9913 9909) := by
  unfold input9469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9469 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9913 9909)).val
theorem output9469_def : output9469 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 9913 9909) := by
  unfold output9469
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9469_skip : Flapjack.WordAlloc.isSkip output9469 = false := by
  rw [output9469_def]
  conv => lhs; cbv
  try rfl
theorem node9469_eq : Flapjack.WordAlloc.removeDeadStructural input9469 value4739 value1 value2 = (output9469, value4740, value1) := by
  rw [input9469_def, output9469_def]
  try (conv => lhs; cbv)
  try rfl

def value4741 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input9470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9909 9905 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input9470_def : input9470 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9909 9905 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input9470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9470 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9909 9905 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output9470_def : output9470 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 9909 9905 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output9470
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9470_skip : Flapjack.WordAlloc.isSkip output9470 = false := by
  rw [output9470_def]
  conv => lhs; cbv
  try rfl
theorem node9470_eq : Flapjack.WordAlloc.removeDeadStructural input9470 value4740 value1 value2 = (output9470, value4741, value1) := by
  rw [input9470_def, output9470_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input9471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9905 Flapjack.WordStore.heapLength)).val
theorem input9471_def : input9471 = (Flapjack.WordLangProgHOL.get 9905 Flapjack.WordStore.heapLength) := by
  unfold input9471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output9471 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 9905 Flapjack.WordStore.heapLength)).val
theorem output9471_def : output9471 = (Flapjack.WordLangProgHOL.get 9905 Flapjack.WordStore.heapLength) := by
  unfold output9471
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output9471_skip : Flapjack.WordAlloc.isSkip output9471 = false := by
  rw [output9471_def]
  conv => lhs; cbv
  try rfl
theorem node9471_eq : Flapjack.WordAlloc.removeDeadStructural input9471 value4741 value1 value2 = (output9471, value5, value1) := by
  rw [input9471_def, output9471_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node9471_eq
end InitECandidate.Proofs.DeadStages713
