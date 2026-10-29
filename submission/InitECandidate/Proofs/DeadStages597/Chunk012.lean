import InitECandidate.Proofs.DeadStages597.Chunk011
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages597
@[irreducible, cbv_opaque] def input3072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3071 input3068)).val
theorem input3072_def : input3072 = (.seq input3071 input3068) := by
  unfold input3072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3072 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3071)).val
theorem output3072_def : output3072 = (output3071) := by
  unfold output3072
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3072_skip : Flapjack.WordAlloc.isSkip output3072 = false := by
  rw [output3072_def]
  conv => lhs; cbv
  try rfl
theorem node3072_eq : Flapjack.WordAlloc.removeDeadStructural input3072 value572 value1 value2 = (output3072, value567, value1) := by
  rw [input3072_def, output3072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3068_eq]
  try dsimp only
  rw [node3071_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3072 input3067)).val
theorem input3073_def : input3073 = (.seq input3072 input3067) := by
  unfold input3073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3073 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3072)).val
theorem output3073_def : output3073 = (output3072) := by
  unfold output3073
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3073_skip : Flapjack.WordAlloc.isSkip output3073 = false := by
  rw [output3073_def]
  conv => lhs; cbv
  try rfl
theorem node3073_eq : Flapjack.WordAlloc.removeDeadStructural input3073 value572 value1 value2 = (output3073, value567, value1) := by
  rw [input3073_def, output3073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3067_eq]
  try dsimp only
  rw [node3072_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3073 input3066)).val
theorem input3074_def : input3074 = (.seq input3073 input3066) := by
  unfold input3074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3074 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3073)).val
theorem output3074_def : output3074 = (output3073) := by
  unfold output3074
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3074_skip : Flapjack.WordAlloc.isSkip output3074 = false := by
  rw [output3074_def]
  conv => lhs; cbv
  try rfl
theorem node3074_eq : Flapjack.WordAlloc.removeDeadStructural input3074 value572 value1 value2 = (output3074, value567, value1) := by
  rw [input3074_def, output3074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3066_eq]
  try dsimp only
  rw [node3073_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value573 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(4321, 4289), (4317, 4305), (4313, 4309)])).val
theorem input3075_def : input3075 = (Flapjack.WordLangProgHOL.move 1 [(4321, 4289), (4317, 4305), (4313, 4309)]) := by
  unfold input3075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3075 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(4321, 4289)])).val
theorem output3075_def : output3075 = (Flapjack.WordLangProgHOL.move 1 [(4321, 4289)]) := by
  unfold output3075
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3075_skip : Flapjack.WordAlloc.isSkip output3075 = false := by
  rw [output3075_def]
  conv => lhs; cbv
  try rfl
theorem node3075_eq : Flapjack.WordAlloc.removeDeadStructural input3075 value567 value1 value2 = (output3075, value573, value1) := by
  rw [input3075_def, output3075_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3075 input3074)).val
theorem input3076_def : input3076 = (.seq input3075 input3074) := by
  unfold input3076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3076 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3075 output3074)).val
theorem output3076_def : output3076 = (.seq output3075 output3074) := by
  unfold output3076
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3076_skip : Flapjack.WordAlloc.isSkip output3076 = false := by
  rw [output3076_def]
  conv => lhs; cbv
  try rfl
theorem node3076_eq : Flapjack.WordAlloc.removeDeadStructural input3076 value572 value1 value2 = (output3076, value573, value1) := by
  rw [input3076_def, output3076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3074_eq]
  try dsimp only
  rw [node3075_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value574 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
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
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 4289 [2])).val
theorem input3077_def : input3077 = (Flapjack.WordLangProgHOL.return 4289 [2]) := by
  unfold input3077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3077 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 4289 [2])).val
theorem output3077_def : output3077 = (Flapjack.WordLangProgHOL.return 4289 [2]) := by
  unfold output3077
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3077_skip : Flapjack.WordAlloc.isSkip output3077 = false := by
  rw [output3077_def]
  conv => lhs; cbv
  try rfl
theorem node3077_eq : Flapjack.WordAlloc.removeDeadStructural input3077 value573 value1 value2 = (output3077, value574, value1) := by
  rw [input3077_def, output3077_def]
  try (conv => lhs; cbv)
  try rfl

def value575 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
      (Flapjack.Spt.bn Flapjack.Spt.ln
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

@[irreducible, cbv_opaque] def input3078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 4309)])).val
theorem input3078_def : input3078 = (Flapjack.WordLangProgHOL.move 0 [(2, 4309)]) := by
  unfold input3078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3078 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 4309)])).val
theorem output3078_def : output3078 = (Flapjack.WordLangProgHOL.move 0 [(2, 4309)]) := by
  unfold output3078
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3078_skip : Flapjack.WordAlloc.isSkip output3078 = false := by
  rw [output3078_def]
  conv => lhs; cbv
  try rfl
theorem node3078_eq : Flapjack.WordAlloc.removeDeadStructural input3078 value574 value1 value2 = (output3078, value575, value1) := by
  rw [input3078_def, output3078_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3078 input3077)).val
theorem input3079_def : input3079 = (.seq input3078 input3077) := by
  unfold input3079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3079 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3078 output3077)).val
theorem output3079_def : output3079 = (.seq output3078 output3077) := by
  unfold output3079
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3079_skip : Flapjack.WordAlloc.isSkip output3079 = false := by
  rw [output3079_def]
  conv => lhs; cbv
  try rfl
theorem node3079_eq : Flapjack.WordAlloc.removeDeadStructural input3079 value573 value1 value2 = (output3079, value575, value1) := by
  rw [input3079_def, output3079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3077_eq]
  try dsimp only
  rw [node3078_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4309 0#64))).val
theorem input3080_def : input3080 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4309 0#64)) := by
  unfold input3080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3080 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4309 0#64))).val
theorem output3080_def : output3080 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4309 0#64)) := by
  unfold output3080
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3080_skip : Flapjack.WordAlloc.isSkip output3080 = false := by
  rw [output3080_def]
  conv => lhs; cbv
  try rfl
theorem node3080_eq : Flapjack.WordAlloc.removeDeadStructural input3080 value575 value1 value2 = (output3080, value573, value1) := by
  rw [input3080_def, output3080_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3081_def : input3081 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3081 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3081_def : output3081 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3081
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3081_skip : Flapjack.WordAlloc.isSkip output3081 = false := by
  rw [output3081_def]
  conv => lhs; cbv
  try rfl
theorem node3081_eq : Flapjack.WordAlloc.removeDeadStructural input3081 value573 value1 value2 = (output3081, value573, value1) := by
  rw [input3081_def, output3081_def]
  try (conv => lhs; cbv)
  try rfl

def value576 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
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

@[irreducible, cbv_opaque] def input3082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
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
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(4289, 4283)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(4293, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(4301, 4293)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4305 0#64)))),
      597, 102))
  (some 583) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(4289, 4283)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(4297, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 4297)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4301 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(4305, 4297)]))),
      597, 103)))).val
theorem input3082_def : input3082 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
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
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(4289, 4283)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(4293, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(4301, 4293)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4305 0#64)))),
      597, 102))
  (some 583) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(4289, 4283)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(4297, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 4297)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4301 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(4305, 4297)]))),
      597, 103))) := by
  unfold input3082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3082 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
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
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(4289, 4283)], 597, 102))
  (some 583) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(4289, 4283)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(4297, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 4297)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 103)))).val
theorem output3082_def : output3082 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
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
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                        Flapjack.Spt.ln))
                    Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(4289, 4283)], 597, 102))
  (some 583) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(4289, 4283)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(4297, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 4297)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 103))) := by
  unfold output3082
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3082_skip : Flapjack.WordAlloc.isSkip output3082 = false := by
  rw [output3082_def]
  conv => lhs; cbv
  try rfl
theorem node3082_eq : Flapjack.WordAlloc.removeDeadStructural input3082 value573 value1 value2 = (output3082, value576, value1) := by
  rw [input3082_def, output3082_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input3083_def : input3083 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input3083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3083 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3083_def : output3083 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3083
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3083_skip : Flapjack.WordAlloc.isSkip output3083 = true := by
  rw [output3083_def]
  conv => lhs; cbv
  try rfl
theorem node3083_eq : Flapjack.WordAlloc.removeDeadStructural input3083 value576 value1 value2 = (output3083, value576, value1) := by
  rw [input3083_def, output3083_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3083 input3082)).val
theorem input3084_def : input3084 = (.seq input3083 input3082) := by
  unfold input3084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3084 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3082)).val
theorem output3084_def : output3084 = (output3082) := by
  unfold output3084
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3084_skip : Flapjack.WordAlloc.isSkip output3084 = false := by
  rw [output3084_def]
  conv => lhs; cbv
  try rfl
theorem node3084_eq : Flapjack.WordAlloc.removeDeadStructural input3084 value573 value1 value2 = (output3084, value576, value1) := by
  rw [input3084_def, output3084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3082_eq]
  try dsimp only
  rw [node3083_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value577 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4283, 4237)])).val
theorem input3085_def : input3085 = (Flapjack.WordLangProgHOL.move 0 [(4283, 4237)]) := by
  unfold input3085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3085 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4283, 4237)])).val
theorem output3085_def : output3085 = (Flapjack.WordLangProgHOL.move 0 [(4283, 4237)]) := by
  unfold output3085
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3085_skip : Flapjack.WordAlloc.isSkip output3085 = false := by
  rw [output3085_def]
  conv => lhs; cbv
  try rfl
theorem node3085_eq : Flapjack.WordAlloc.removeDeadStructural input3085 value576 value1 value2 = (output3085, value577, value1) := by
  rw [input3085_def, output3085_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3085 input3084)).val
theorem input3086_def : input3086 = (.seq input3085 input3084) := by
  unfold input3086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3086 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3085 output3084)).val
theorem output3086_def : output3086 = (.seq output3085 output3084) := by
  unfold output3086
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3086_skip : Flapjack.WordAlloc.isSkip output3086 = false := by
  rw [output3086_def]
  conv => lhs; cbv
  try rfl
theorem node3086_eq : Flapjack.WordAlloc.removeDeadStructural input3086 value573 value1 value2 = (output3086, value577, value1) := by
  rw [input3086_def, output3086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3084_eq]
  try dsimp only
  rw [node3085_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4277 1#64))).val
theorem input3087_def : input3087 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4277 1#64)) := by
  unfold input3087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3087 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3087_def : output3087 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3087
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3087_skip : Flapjack.WordAlloc.isSkip output3087 = true := by
  rw [output3087_def]
  conv => lhs; cbv
  try rfl
theorem node3087_eq : Flapjack.WordAlloc.removeDeadStructural input3087 value577 value1 value2 = (output3087, value577, value1) := by
  rw [input3087_def, output3087_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3088_def : input3088 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3088 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3088_def : output3088 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3088
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3088_skip : Flapjack.WordAlloc.isSkip output3088 = false := by
  rw [output3088_def]
  conv => lhs; cbv
  try rfl
theorem node3088_eq : Flapjack.WordAlloc.removeDeadStructural input3088 value577 value1 value2 = (output3088, value577, value1) := by
  rw [input3088_def, output3088_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4273 1#64))).val
theorem input3089_def : input3089 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4273 1#64)) := by
  unfold input3089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3089 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3089_def : output3089 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3089
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3089_skip : Flapjack.WordAlloc.isSkip output3089 = true := by
  rw [output3089_def]
  conv => lhs; cbv
  try rfl
theorem node3089_eq : Flapjack.WordAlloc.removeDeadStructural input3089 value577 value1 value2 = (output3089, value577, value1) := by
  rw [input3089_def, output3089_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3089 input3088)).val
theorem input3090_def : input3090 = (.seq input3089 input3088) := by
  unfold input3090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3090 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3088)).val
theorem output3090_def : output3090 = (output3088) := by
  unfold output3090
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3090_skip : Flapjack.WordAlloc.isSkip output3090 = false := by
  rw [output3090_def]
  conv => lhs; cbv
  try rfl
theorem node3090_eq : Flapjack.WordAlloc.removeDeadStructural input3090 value577 value1 value2 = (output3090, value577, value1) := by
  rw [input3090_def, output3090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3088_eq]
  try dsimp only
  rw [node3089_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3090 input3087)).val
theorem input3091_def : input3091 = (.seq input3090 input3087) := by
  unfold input3091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3091 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3090)).val
theorem output3091_def : output3091 = (output3090) := by
  unfold output3091
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3091_skip : Flapjack.WordAlloc.isSkip output3091 = false := by
  rw [output3091_def]
  conv => lhs; cbv
  try rfl
theorem node3091_eq : Flapjack.WordAlloc.removeDeadStructural input3091 value577 value1 value2 = (output3091, value577, value1) := by
  rw [input3091_def, output3091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3087_eq]
  try dsimp only
  rw [node3090_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3091 input3086)).val
theorem input3092_def : input3092 = (.seq input3091 input3086) := by
  unfold input3092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3092 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3091 output3086)).val
theorem output3092_def : output3092 = (.seq output3091 output3086) := by
  unfold output3092
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3092_skip : Flapjack.WordAlloc.isSkip output3092 = false := by
  rw [output3092_def]
  conv => lhs; cbv
  try rfl
theorem node3092_eq : Flapjack.WordAlloc.removeDeadStructural input3092 value573 value1 value2 = (output3092, value577, value1) := by
  rw [input3092_def, output3092_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3086_eq]
  try dsimp only
  rw [node3091_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3092 input3081)).val
theorem input3093_def : input3093 = (.seq input3092 input3081) := by
  unfold input3093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3093 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3092 output3081)).val
theorem output3093_def : output3093 = (.seq output3092 output3081) := by
  unfold output3093
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3093_skip : Flapjack.WordAlloc.isSkip output3093 = false := by
  rw [output3093_def]
  conv => lhs; cbv
  try rfl
theorem node3093_eq : Flapjack.WordAlloc.removeDeadStructural input3093 value573 value1 value2 = (output3093, value577, value1) := by
  rw [input3093_def, output3093_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3081_eq]
  try dsimp only
  rw [node3092_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3093 input3080)).val
theorem input3094_def : input3094 = (.seq input3093 input3080) := by
  unfold input3094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3094 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3093 output3080)).val
theorem output3094_def : output3094 = (.seq output3093 output3080) := by
  unfold output3094
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3094_skip : Flapjack.WordAlloc.isSkip output3094 = false := by
  rw [output3094_def]
  conv => lhs; cbv
  try rfl
theorem node3094_eq : Flapjack.WordAlloc.removeDeadStructural input3094 value575 value1 value2 = (output3094, value577, value1) := by
  rw [input3094_def, output3094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3080_eq]
  try dsimp only
  rw [node3093_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3094 input3079)).val
theorem input3095_def : input3095 = (.seq input3094 input3079) := by
  unfold input3095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3095 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3094 output3079)).val
theorem output3095_def : output3095 = (.seq output3094 output3079) := by
  unfold output3095
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3095_skip : Flapjack.WordAlloc.isSkip output3095 = false := by
  rw [output3095_def]
  conv => lhs; cbv
  try rfl
theorem node3095_eq : Flapjack.WordAlloc.removeDeadStructural input3095 value573 value1 value2 = (output3095, value577, value1) := by
  rw [input3095_def, output3095_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3079_eq]
  try dsimp only
  rw [node3094_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3095 input3076)).val
theorem input3096_def : input3096 = (.seq input3095 input3076) := by
  unfold input3096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3096 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3095 output3076)).val
theorem output3096_def : output3096 = (.seq output3095 output3076) := by
  unfold output3096
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3096_skip : Flapjack.WordAlloc.isSkip output3096 = false := by
  rw [output3096_def]
  conv => lhs; cbv
  try rfl
theorem node3096_eq : Flapjack.WordAlloc.removeDeadStructural input3096 value572 value1 value2 = (output3096, value577, value1) := by
  rw [input3096_def, output3096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3076_eq]
  try dsimp only
  rw [node3095_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4337, 4253)])).val
theorem input3097_def : input3097 = (Flapjack.WordLangProgHOL.move 2 [(4337, 4253)]) := by
  unfold input3097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3097 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3097_def : output3097 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3097
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3097_skip : Flapjack.WordAlloc.isSkip output3097 = true := by
  rw [output3097_def]
  conv => lhs; cbv
  try rfl
theorem node3097_eq : Flapjack.WordAlloc.removeDeadStructural input3097 value572 value1 value2 = (output3097, value572, value1) := by
  rw [input3097_def, output3097_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4333, 4261)])).val
theorem input3098_def : input3098 = (Flapjack.WordLangProgHOL.move 2 [(4333, 4261)]) := by
  unfold input3098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3098 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3098_def : output3098 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3098
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3098_skip : Flapjack.WordAlloc.isSkip output3098 = true := by
  rw [output3098_def]
  conv => lhs; cbv
  try rfl
theorem node3098_eq : Flapjack.WordAlloc.removeDeadStructural input3098 value572 value1 value2 = (output3098, value572, value1) := by
  rw [input3098_def, output3098_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4329, 4269)])).val
theorem input3099_def : input3099 = (Flapjack.WordLangProgHOL.move 2 [(4329, 4269)]) := by
  unfold input3099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3099 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3099_def : output3099 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3099
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3099_skip : Flapjack.WordAlloc.isSkip output3099 = true := by
  rw [output3099_def]
  conv => lhs; cbv
  try rfl
theorem node3099_eq : Flapjack.WordAlloc.removeDeadStructural input3099 value572 value1 value2 = (output3099, value572, value1) := by
  rw [input3099_def, output3099_def]
  try (conv => lhs; cbv)
  try rfl

def value578 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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

@[irreducible, cbv_opaque] def input3100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4325, 4265)])).val
theorem input3100_def : input3100 = (Flapjack.WordLangProgHOL.move 2 [(4325, 4265)]) := by
  unfold input3100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3100 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4325, 4265)])).val
theorem output3100_def : output3100 = (Flapjack.WordLangProgHOL.move 2 [(4325, 4265)]) := by
  unfold output3100
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3100_skip : Flapjack.WordAlloc.isSkip output3100 = false := by
  rw [output3100_def]
  conv => lhs; cbv
  try rfl
theorem node3100_eq : Flapjack.WordAlloc.removeDeadStructural input3100 value572 value1 value2 = (output3100, value578, value1) := by
  rw [input3100_def, output3100_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3101_def : input3101 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3101 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3101_def : output3101 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3101
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3101_skip : Flapjack.WordAlloc.isSkip output3101 = true := by
  rw [output3101_def]
  conv => lhs; cbv
  try rfl
theorem node3101_eq : Flapjack.WordAlloc.removeDeadStructural input3101 value578 value1 value2 = (output3101, value578, value1) := by
  rw [input3101_def, output3101_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3101 input3100)).val
theorem input3102_def : input3102 = (.seq input3101 input3100) := by
  unfold input3102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3102 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3100)).val
theorem output3102_def : output3102 = (output3100) := by
  unfold output3102
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3102_skip : Flapjack.WordAlloc.isSkip output3102 = false := by
  rw [output3102_def]
  conv => lhs; cbv
  try rfl
theorem node3102_eq : Flapjack.WordAlloc.removeDeadStructural input3102 value572 value1 value2 = (output3102, value578, value1) := by
  rw [input3102_def, output3102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3100_eq]
  try dsimp only
  rw [node3101_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3102 input3099)).val
theorem input3103_def : input3103 = (.seq input3102 input3099) := by
  unfold input3103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3103 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3102)).val
theorem output3103_def : output3103 = (output3102) := by
  unfold output3103
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3103_skip : Flapjack.WordAlloc.isSkip output3103 = false := by
  rw [output3103_def]
  conv => lhs; cbv
  try rfl
theorem node3103_eq : Flapjack.WordAlloc.removeDeadStructural input3103 value572 value1 value2 = (output3103, value578, value1) := by
  rw [input3103_def, output3103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3099_eq]
  try dsimp only
  rw [node3102_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3103 input3098)).val
theorem input3104_def : input3104 = (.seq input3103 input3098) := by
  unfold input3104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3104 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3103)).val
theorem output3104_def : output3104 = (output3103) := by
  unfold output3104
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3104_skip : Flapjack.WordAlloc.isSkip output3104 = false := by
  rw [output3104_def]
  conv => lhs; cbv
  try rfl
theorem node3104_eq : Flapjack.WordAlloc.removeDeadStructural input3104 value572 value1 value2 = (output3104, value578, value1) := by
  rw [input3104_def, output3104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3098_eq]
  try dsimp only
  rw [node3103_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3104 input3097)).val
theorem input3105_def : input3105 = (.seq input3104 input3097) := by
  unfold input3105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3105 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3104)).val
theorem output3105_def : output3105 = (output3104) := by
  unfold output3105
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3105_skip : Flapjack.WordAlloc.isSkip output3105 = false := by
  rw [output3105_def]
  conv => lhs; cbv
  try rfl
theorem node3105_eq : Flapjack.WordAlloc.removeDeadStructural input3105 value572 value1 value2 = (output3105, value578, value1) := by
  rw [input3105_def, output3105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3097_eq]
  try dsimp only
  rw [node3104_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value579 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln)
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4321, 4237), (4317, 4265), (4313, 4229)])).val
theorem input3106_def : input3106 = (Flapjack.WordLangProgHOL.move 2 [(4321, 4237), (4317, 4265), (4313, 4229)]) := by
  unfold input3106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3106 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4321, 4237)])).val
theorem output3106_def : output3106 = (Flapjack.WordLangProgHOL.move 2 [(4321, 4237)]) := by
  unfold output3106
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3106_skip : Flapjack.WordAlloc.isSkip output3106 = false := by
  rw [output3106_def]
  conv => lhs; cbv
  try rfl
theorem node3106_eq : Flapjack.WordAlloc.removeDeadStructural input3106 value578 value1 value2 = (output3106, value579, value1) := by
  rw [input3106_def, output3106_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3106 input3105)).val
theorem input3107_def : input3107 = (.seq input3106 input3105) := by
  unfold input3107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3107 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3106 output3105)).val
theorem output3107_def : output3107 = (.seq output3106 output3105) := by
  unfold output3107
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3107_skip : Flapjack.WordAlloc.isSkip output3107 = false := by
  rw [output3107_def]
  conv => lhs; cbv
  try rfl
theorem node3107_eq : Flapjack.WordAlloc.removeDeadStructural input3107 value572 value1 value2 = (output3107, value579, value1) := by
  rw [input3107_def, output3107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3105_eq]
  try dsimp only
  rw [node3106_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3108_def : input3108 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3108 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3108_def : output3108 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3108
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3108_skip : Flapjack.WordAlloc.isSkip output3108 = true := by
  rw [output3108_def]
  conv => lhs; cbv
  try rfl
theorem node3108_eq : Flapjack.WordAlloc.removeDeadStructural input3108 value579 value1 value2 = (output3108, value579, value1) := by
  rw [input3108_def, output3108_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3108 input3107)).val
theorem input3109_def : input3109 = (.seq input3108 input3107) := by
  unfold input3109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3109 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3107)).val
theorem output3109_def : output3109 = (output3107) := by
  unfold output3109
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3109_skip : Flapjack.WordAlloc.isSkip output3109 = false := by
  rw [output3109_def]
  conv => lhs; cbv
  try rfl
theorem node3109_eq : Flapjack.WordAlloc.removeDeadStructural input3109 value572 value1 value2 = (output3109, value579, value1) := by
  rw [input3109_def, output3109_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3107_eq]
  try dsimp only
  rw [node3108_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value580 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 4269

def value581 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln)
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 4265 value580 input3096 input3109)).val
theorem input3110_def : input3110 = (.ite value15 4265 value580 input3096 input3109) := by
  unfold input3110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3110 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 4265 value580 output3096 output3109)).val
theorem output3110_def : output3110 = (.ite value15 4265 value580 output3096 output3109) := by
  unfold output3110
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3110_skip : Flapjack.WordAlloc.isSkip output3110 = false := by
  rw [output3110_def]
  conv => lhs; cbv
  try rfl
theorem node3110_eq : Flapjack.WordAlloc.removeDeadStructural input3110 value572 value1 value2 = (output3110, value581, value1) := by
  rw [input3110_def, output3110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node3096_eq]
  try dsimp only
  rw [node3109_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3110 input3065)).val
theorem input3111_def : input3111 = (.seq input3110 input3065) := by
  unfold input3111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3111 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3110 output3065)).val
theorem output3111_def : output3111 = (.seq output3110 output3065) := by
  unfold output3111
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3111_skip : Flapjack.WordAlloc.isSkip output3111 = false := by
  rw [output3111_def]
  conv => lhs; cbv
  try rfl
theorem node3111_eq : Flapjack.WordAlloc.removeDeadStructural input3111 value572 value1 value2 = (output3111, value581, value1) := by
  rw [input3111_def, output3111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3065_eq]
  try dsimp only
  rw [node3110_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4269 70#64))).val
theorem input3112_def : input3112 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4269 70#64)) := by
  unfold input3112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3112 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4269 70#64))).val
theorem output3112_def : output3112 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4269 70#64)) := by
  unfold output3112
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3112_skip : Flapjack.WordAlloc.isSkip output3112 = false := by
  rw [output3112_def]
  conv => lhs; cbv
  try rfl
theorem node3112_eq : Flapjack.WordAlloc.removeDeadStructural input3112 value581 value1 value2 = (output3112, value579, value1) := by
  rw [input3112_def, output3112_def]
  try (conv => lhs; cbv)
  try rfl

def value582 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
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

@[irreducible, cbv_opaque] def input3113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4265, 4241)])).val
theorem input3113_def : input3113 = (Flapjack.WordLangProgHOL.move 0 [(4265, 4241)]) := by
  unfold input3113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3113 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4265, 4241)])).val
theorem output3113_def : output3113 = (Flapjack.WordLangProgHOL.move 0 [(4265, 4241)]) := by
  unfold output3113
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3113_skip : Flapjack.WordAlloc.isSkip output3113 = false := by
  rw [output3113_def]
  conv => lhs; cbv
  try rfl
theorem node3113_eq : Flapjack.WordAlloc.removeDeadStructural input3113 value579 value1 value2 = (output3113, value582, value1) := by
  rw [input3113_def, output3113_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3114_def : input3114 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3114 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3114_def : output3114 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3114
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3114_skip : Flapjack.WordAlloc.isSkip output3114 = false := by
  rw [output3114_def]
  conv => lhs; cbv
  try rfl
theorem node3114_eq : Flapjack.WordAlloc.removeDeadStructural input3114 value582 value1 value2 = (output3114, value582, value1) := by
  rw [input3114_def, output3114_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4261 0#64))).val
theorem input3115_def : input3115 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4261 0#64)) := by
  unfold input3115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3115 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3115_def : output3115 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3115
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3115_skip : Flapjack.WordAlloc.isSkip output3115 = true := by
  rw [output3115_def]
  conv => lhs; cbv
  try rfl
theorem node3115_eq : Flapjack.WordAlloc.removeDeadStructural input3115 value582 value1 value2 = (output3115, value582, value1) := by
  rw [input3115_def, output3115_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3116_def : input3116 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3116 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3116_def : output3116 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3116
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3116_skip : Flapjack.WordAlloc.isSkip output3116 = false := by
  rw [output3116_def]
  conv => lhs; cbv
  try rfl
theorem node3116_eq : Flapjack.WordAlloc.removeDeadStructural input3116 value582 value1 value2 = (output3116, value582, value1) := by
  rw [input3116_def, output3116_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4257 0#64))).val
theorem input3117_def : input3117 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4257 0#64)) := by
  unfold input3117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3117 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3117_def : output3117 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3117
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3117_skip : Flapjack.WordAlloc.isSkip output3117 = true := by
  rw [output3117_def]
  conv => lhs; cbv
  try rfl
theorem node3117_eq : Flapjack.WordAlloc.removeDeadStructural input3117 value582 value1 value2 = (output3117, value582, value1) := by
  rw [input3117_def, output3117_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3117 input3116)).val
theorem input3118_def : input3118 = (.seq input3117 input3116) := by
  unfold input3118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3118 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3116)).val
theorem output3118_def : output3118 = (output3116) := by
  unfold output3118
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3118_skip : Flapjack.WordAlloc.isSkip output3118 = false := by
  rw [output3118_def]
  conv => lhs; cbv
  try rfl
theorem node3118_eq : Flapjack.WordAlloc.removeDeadStructural input3118 value582 value1 value2 = (output3118, value582, value1) := by
  rw [input3118_def, output3118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3116_eq]
  try dsimp only
  rw [node3117_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3118 input3115)).val
theorem input3119_def : input3119 = (.seq input3118 input3115) := by
  unfold input3119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3119 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3118)).val
theorem output3119_def : output3119 = (output3118) := by
  unfold output3119
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3119_skip : Flapjack.WordAlloc.isSkip output3119 = false := by
  rw [output3119_def]
  conv => lhs; cbv
  try rfl
theorem node3119_eq : Flapjack.WordAlloc.removeDeadStructural input3119 value582 value1 value2 = (output3119, value582, value1) := by
  rw [input3119_def, output3119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3115_eq]
  try dsimp only
  rw [node3118_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4253 0#64))).val
theorem input3120_def : input3120 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4253 0#64)) := by
  unfold input3120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3120 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3120_def : output3120 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3120
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3120_skip : Flapjack.WordAlloc.isSkip output3120 = true := by
  rw [output3120_def]
  conv => lhs; cbv
  try rfl
theorem node3120_eq : Flapjack.WordAlloc.removeDeadStructural input3120 value582 value1 value2 = (output3120, value582, value1) := by
  rw [input3120_def, output3120_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4249 0#64))).val
theorem input3121_def : input3121 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4249 0#64)) := by
  unfold input3121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3121 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3121_def : output3121 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3121
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3121_skip : Flapjack.WordAlloc.isSkip output3121 = true := by
  rw [output3121_def]
  conv => lhs; cbv
  try rfl
theorem node3121_eq : Flapjack.WordAlloc.removeDeadStructural input3121 value582 value1 value2 = (output3121, value582, value1) := by
  rw [input3121_def, output3121_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4245 0#64))).val
theorem input3122_def : input3122 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4245 0#64)) := by
  unfold input3122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3122 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3122_def : output3122 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3122
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3122_skip : Flapjack.WordAlloc.isSkip output3122 = true := by
  rw [output3122_def]
  conv => lhs; cbv
  try rfl
theorem node3122_eq : Flapjack.WordAlloc.removeDeadStructural input3122 value582 value1 value2 = (output3122, value582, value1) := by
  rw [input3122_def, output3122_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4241 0#64))).val
theorem input3123_def : input3123 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4241 0#64)) := by
  unfold input3123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3123 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4241 0#64))).val
theorem output3123_def : output3123 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4241 0#64)) := by
  unfold output3123
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3123_skip : Flapjack.WordAlloc.isSkip output3123 = false := by
  rw [output3123_def]
  conv => lhs; cbv
  try rfl
theorem node3123_eq : Flapjack.WordAlloc.removeDeadStructural input3123 value582 value1 value2 = (output3123, value577, value1) := by
  rw [input3123_def, output3123_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3124_def : input3124 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3124 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3124_def : output3124 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3124
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3124_skip : Flapjack.WordAlloc.isSkip output3124 = true := by
  rw [output3124_def]
  conv => lhs; cbv
  try rfl
theorem node3124_eq : Flapjack.WordAlloc.removeDeadStructural input3124 value577 value1 value2 = (output3124, value577, value1) := by
  rw [input3124_def, output3124_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3124 input3123)).val
theorem input3125_def : input3125 = (.seq input3124 input3123) := by
  unfold input3125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3125 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3123)).val
theorem output3125_def : output3125 = (output3123) := by
  unfold output3125
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3125_skip : Flapjack.WordAlloc.isSkip output3125 = false := by
  rw [output3125_def]
  conv => lhs; cbv
  try rfl
theorem node3125_eq : Flapjack.WordAlloc.removeDeadStructural input3125 value582 value1 value2 = (output3125, value577, value1) := by
  rw [input3125_def, output3125_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3123_eq]
  try dsimp only
  rw [node3124_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3125 input3122)).val
theorem input3126_def : input3126 = (.seq input3125 input3122) := by
  unfold input3126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3126 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3125)).val
theorem output3126_def : output3126 = (output3125) := by
  unfold output3126
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3126_skip : Flapjack.WordAlloc.isSkip output3126 = false := by
  rw [output3126_def]
  conv => lhs; cbv
  try rfl
theorem node3126_eq : Flapjack.WordAlloc.removeDeadStructural input3126 value582 value1 value2 = (output3126, value577, value1) := by
  rw [input3126_def, output3126_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3122_eq]
  try dsimp only
  rw [node3125_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3126 input3121)).val
theorem input3127_def : input3127 = (.seq input3126 input3121) := by
  unfold input3127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3127 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3126)).val
theorem output3127_def : output3127 = (output3126) := by
  unfold output3127
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3127_skip : Flapjack.WordAlloc.isSkip output3127 = false := by
  rw [output3127_def]
  conv => lhs; cbv
  try rfl
theorem node3127_eq : Flapjack.WordAlloc.removeDeadStructural input3127 value582 value1 value2 = (output3127, value577, value1) := by
  rw [input3127_def, output3127_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3121_eq]
  try dsimp only
  rw [node3126_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3127 input3120)).val
theorem input3128_def : input3128 = (.seq input3127 input3120) := by
  unfold input3128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3128 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3127)).val
theorem output3128_def : output3128 = (output3127) := by
  unfold output3128
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3128_skip : Flapjack.WordAlloc.isSkip output3128 = false := by
  rw [output3128_def]
  conv => lhs; cbv
  try rfl
theorem node3128_eq : Flapjack.WordAlloc.removeDeadStructural input3128 value582 value1 value2 = (output3128, value577, value1) := by
  rw [input3128_def, output3128_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3120_eq]
  try dsimp only
  rw [node3127_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value583 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(4237, 4205), (4233, 4221), (4229, 4225)])).val
theorem input3129_def : input3129 = (Flapjack.WordLangProgHOL.move 1 [(4237, 4205), (4233, 4221), (4229, 4225)]) := by
  unfold input3129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3129 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(4237, 4205)])).val
theorem output3129_def : output3129 = (Flapjack.WordLangProgHOL.move 1 [(4237, 4205)]) := by
  unfold output3129
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3129_skip : Flapjack.WordAlloc.isSkip output3129 = false := by
  rw [output3129_def]
  conv => lhs; cbv
  try rfl
theorem node3129_eq : Flapjack.WordAlloc.removeDeadStructural input3129 value577 value1 value2 = (output3129, value583, value1) := by
  rw [input3129_def, output3129_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3129 input3128)).val
theorem input3130_def : input3130 = (.seq input3129 input3128) := by
  unfold input3130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3130 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3129 output3128)).val
theorem output3130_def : output3130 = (.seq output3129 output3128) := by
  unfold output3130
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3130_skip : Flapjack.WordAlloc.isSkip output3130 = false := by
  rw [output3130_def]
  conv => lhs; cbv
  try rfl
theorem node3130_eq : Flapjack.WordAlloc.removeDeadStructural input3130 value582 value1 value2 = (output3130, value583, value1) := by
  rw [input3130_def, output3130_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3128_eq]
  try dsimp only
  rw [node3129_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value584 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 4205 [2])).val
theorem input3131_def : input3131 = (Flapjack.WordLangProgHOL.return 4205 [2]) := by
  unfold input3131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3131 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 4205 [2])).val
theorem output3131_def : output3131 = (Flapjack.WordLangProgHOL.return 4205 [2]) := by
  unfold output3131
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3131_skip : Flapjack.WordAlloc.isSkip output3131 = false := by
  rw [output3131_def]
  conv => lhs; cbv
  try rfl
theorem node3131_eq : Flapjack.WordAlloc.removeDeadStructural input3131 value583 value1 value2 = (output3131, value584, value1) := by
  rw [input3131_def, output3131_def]
  try (conv => lhs; cbv)
  try rfl

def value585 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 4225)])).val
theorem input3132_def : input3132 = (Flapjack.WordLangProgHOL.move 0 [(2, 4225)]) := by
  unfold input3132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3132 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 4225)])).val
theorem output3132_def : output3132 = (Flapjack.WordLangProgHOL.move 0 [(2, 4225)]) := by
  unfold output3132
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3132_skip : Flapjack.WordAlloc.isSkip output3132 = false := by
  rw [output3132_def]
  conv => lhs; cbv
  try rfl
theorem node3132_eq : Flapjack.WordAlloc.removeDeadStructural input3132 value584 value1 value2 = (output3132, value585, value1) := by
  rw [input3132_def, output3132_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3132 input3131)).val
theorem input3133_def : input3133 = (.seq input3132 input3131) := by
  unfold input3133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3133 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3132 output3131)).val
theorem output3133_def : output3133 = (.seq output3132 output3131) := by
  unfold output3133
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3133_skip : Flapjack.WordAlloc.isSkip output3133 = false := by
  rw [output3133_def]
  conv => lhs; cbv
  try rfl
theorem node3133_eq : Flapjack.WordAlloc.removeDeadStructural input3133 value583 value1 value2 = (output3133, value585, value1) := by
  rw [input3133_def, output3133_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3131_eq]
  try dsimp only
  rw [node3132_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4225 0#64))).val
theorem input3134_def : input3134 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4225 0#64)) := by
  unfold input3134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3134 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4225 0#64))).val
theorem output3134_def : output3134 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4225 0#64)) := by
  unfold output3134
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3134_skip : Flapjack.WordAlloc.isSkip output3134 = false := by
  rw [output3134_def]
  conv => lhs; cbv
  try rfl
theorem node3134_eq : Flapjack.WordAlloc.removeDeadStructural input3134 value585 value1 value2 = (output3134, value583, value1) := by
  rw [input3134_def, output3134_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3135_def : input3135 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3135 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3135_def : output3135 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3135
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3135_skip : Flapjack.WordAlloc.isSkip output3135 = false := by
  rw [output3135_def]
  conv => lhs; cbv
  try rfl
theorem node3135_eq : Flapjack.WordAlloc.removeDeadStructural input3135 value583 value1 value2 = (output3135, value583, value1) := by
  rw [input3135_def, output3135_def]
  try (conv => lhs; cbv)
  try rfl

def value586 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)))

@[irreducible, cbv_opaque] def input3136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
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
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(4205, 4199)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(4209, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(4217, 4209)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4221 0#64)))),
      597, 100))
  (some 582) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(4205, 4199)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(4213, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 4213)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4217 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(4221, 4213)]))),
      597, 101)))).val
theorem input3136_def : input3136 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
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
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(4205, 4199)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(4209, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(4217, 4209)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4221 0#64)))),
      597, 100))
  (some 582) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(4205, 4199)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(4213, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 4213)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4217 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(4221, 4213)]))),
      597, 101))) := by
  unfold input3136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3136 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
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
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(4205, 4199)], 597, 100))
  (some 582) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(4205, 4199)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(4213, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 4213)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 101)))).val
theorem output3136_def : output3136 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
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
                            (Flapjack.Spt.bn Flapjack.Spt.ln
                              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(4205, 4199)], 597, 100))
  (some 582) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(4205, 4199)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(4213, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 4213)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 101))) := by
  unfold output3136
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3136_skip : Flapjack.WordAlloc.isSkip output3136 = false := by
  rw [output3136_def]
  conv => lhs; cbv
  try rfl
theorem node3136_eq : Flapjack.WordAlloc.removeDeadStructural input3136 value583 value1 value2 = (output3136, value586, value1) := by
  rw [input3136_def, output3136_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input3137_def : input3137 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input3137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3137 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3137_def : output3137 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3137
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3137_skip : Flapjack.WordAlloc.isSkip output3137 = true := by
  rw [output3137_def]
  conv => lhs; cbv
  try rfl
theorem node3137_eq : Flapjack.WordAlloc.removeDeadStructural input3137 value586 value1 value2 = (output3137, value586, value1) := by
  rw [input3137_def, output3137_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3137 input3136)).val
theorem input3138_def : input3138 = (.seq input3137 input3136) := by
  unfold input3138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3138 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3136)).val
theorem output3138_def : output3138 = (output3136) := by
  unfold output3138
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3138_skip : Flapjack.WordAlloc.isSkip output3138 = false := by
  rw [output3138_def]
  conv => lhs; cbv
  try rfl
theorem node3138_eq : Flapjack.WordAlloc.removeDeadStructural input3138 value583 value1 value2 = (output3138, value586, value1) := by
  rw [input3138_def, output3138_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3136_eq]
  try dsimp only
  rw [node3137_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value587 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4199, 4153)])).val
theorem input3139_def : input3139 = (Flapjack.WordLangProgHOL.move 0 [(4199, 4153)]) := by
  unfold input3139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3139 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4199, 4153)])).val
theorem output3139_def : output3139 = (Flapjack.WordLangProgHOL.move 0 [(4199, 4153)]) := by
  unfold output3139
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3139_skip : Flapjack.WordAlloc.isSkip output3139 = false := by
  rw [output3139_def]
  conv => lhs; cbv
  try rfl
theorem node3139_eq : Flapjack.WordAlloc.removeDeadStructural input3139 value586 value1 value2 = (output3139, value587, value1) := by
  rw [input3139_def, output3139_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3139 input3138)).val
theorem input3140_def : input3140 = (.seq input3139 input3138) := by
  unfold input3140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3140 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3139 output3138)).val
theorem output3140_def : output3140 = (.seq output3139 output3138) := by
  unfold output3140
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3140_skip : Flapjack.WordAlloc.isSkip output3140 = false := by
  rw [output3140_def]
  conv => lhs; cbv
  try rfl
theorem node3140_eq : Flapjack.WordAlloc.removeDeadStructural input3140 value583 value1 value2 = (output3140, value587, value1) := by
  rw [input3140_def, output3140_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3138_eq]
  try dsimp only
  rw [node3139_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4193 1#64))).val
theorem input3141_def : input3141 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4193 1#64)) := by
  unfold input3141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3141 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3141_def : output3141 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3141
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3141_skip : Flapjack.WordAlloc.isSkip output3141 = true := by
  rw [output3141_def]
  conv => lhs; cbv
  try rfl
theorem node3141_eq : Flapjack.WordAlloc.removeDeadStructural input3141 value587 value1 value2 = (output3141, value587, value1) := by
  rw [input3141_def, output3141_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3142_def : input3142 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3142 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3142_def : output3142 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3142
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3142_skip : Flapjack.WordAlloc.isSkip output3142 = false := by
  rw [output3142_def]
  conv => lhs; cbv
  try rfl
theorem node3142_eq : Flapjack.WordAlloc.removeDeadStructural input3142 value587 value1 value2 = (output3142, value587, value1) := by
  rw [input3142_def, output3142_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4189 1#64))).val
theorem input3143_def : input3143 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4189 1#64)) := by
  unfold input3143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3143 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3143_def : output3143 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3143
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3143_skip : Flapjack.WordAlloc.isSkip output3143 = true := by
  rw [output3143_def]
  conv => lhs; cbv
  try rfl
theorem node3143_eq : Flapjack.WordAlloc.removeDeadStructural input3143 value587 value1 value2 = (output3143, value587, value1) := by
  rw [input3143_def, output3143_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3143 input3142)).val
theorem input3144_def : input3144 = (.seq input3143 input3142) := by
  unfold input3144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3144 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3142)).val
theorem output3144_def : output3144 = (output3142) := by
  unfold output3144
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3144_skip : Flapjack.WordAlloc.isSkip output3144 = false := by
  rw [output3144_def]
  conv => lhs; cbv
  try rfl
theorem node3144_eq : Flapjack.WordAlloc.removeDeadStructural input3144 value587 value1 value2 = (output3144, value587, value1) := by
  rw [input3144_def, output3144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3142_eq]
  try dsimp only
  rw [node3143_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3144 input3141)).val
theorem input3145_def : input3145 = (.seq input3144 input3141) := by
  unfold input3145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3145 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3144)).val
theorem output3145_def : output3145 = (output3144) := by
  unfold output3145
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3145_skip : Flapjack.WordAlloc.isSkip output3145 = false := by
  rw [output3145_def]
  conv => lhs; cbv
  try rfl
theorem node3145_eq : Flapjack.WordAlloc.removeDeadStructural input3145 value587 value1 value2 = (output3145, value587, value1) := by
  rw [input3145_def, output3145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3141_eq]
  try dsimp only
  rw [node3144_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3145 input3140)).val
theorem input3146_def : input3146 = (.seq input3145 input3140) := by
  unfold input3146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3146 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3145 output3140)).val
theorem output3146_def : output3146 = (.seq output3145 output3140) := by
  unfold output3146
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3146_skip : Flapjack.WordAlloc.isSkip output3146 = false := by
  rw [output3146_def]
  conv => lhs; cbv
  try rfl
theorem node3146_eq : Flapjack.WordAlloc.removeDeadStructural input3146 value583 value1 value2 = (output3146, value587, value1) := by
  rw [input3146_def, output3146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3140_eq]
  try dsimp only
  rw [node3145_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3146 input3135)).val
theorem input3147_def : input3147 = (.seq input3146 input3135) := by
  unfold input3147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3147 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3146 output3135)).val
theorem output3147_def : output3147 = (.seq output3146 output3135) := by
  unfold output3147
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3147_skip : Flapjack.WordAlloc.isSkip output3147 = false := by
  rw [output3147_def]
  conv => lhs; cbv
  try rfl
theorem node3147_eq : Flapjack.WordAlloc.removeDeadStructural input3147 value583 value1 value2 = (output3147, value587, value1) := by
  rw [input3147_def, output3147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3135_eq]
  try dsimp only
  rw [node3146_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3147 input3134)).val
theorem input3148_def : input3148 = (.seq input3147 input3134) := by
  unfold input3148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3148 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3147 output3134)).val
theorem output3148_def : output3148 = (.seq output3147 output3134) := by
  unfold output3148
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3148_skip : Flapjack.WordAlloc.isSkip output3148 = false := by
  rw [output3148_def]
  conv => lhs; cbv
  try rfl
theorem node3148_eq : Flapjack.WordAlloc.removeDeadStructural input3148 value585 value1 value2 = (output3148, value587, value1) := by
  rw [input3148_def, output3148_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3134_eq]
  try dsimp only
  rw [node3147_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3148 input3133)).val
theorem input3149_def : input3149 = (.seq input3148 input3133) := by
  unfold input3149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3149 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3148 output3133)).val
theorem output3149_def : output3149 = (.seq output3148 output3133) := by
  unfold output3149
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3149_skip : Flapjack.WordAlloc.isSkip output3149 = false := by
  rw [output3149_def]
  conv => lhs; cbv
  try rfl
theorem node3149_eq : Flapjack.WordAlloc.removeDeadStructural input3149 value583 value1 value2 = (output3149, value587, value1) := by
  rw [input3149_def, output3149_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3133_eq]
  try dsimp only
  rw [node3148_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3149 input3130)).val
theorem input3150_def : input3150 = (.seq input3149 input3130) := by
  unfold input3150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3150 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3149 output3130)).val
theorem output3150_def : output3150 = (.seq output3149 output3130) := by
  unfold output3150
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3150_skip : Flapjack.WordAlloc.isSkip output3150 = false := by
  rw [output3150_def]
  conv => lhs; cbv
  try rfl
theorem node3150_eq : Flapjack.WordAlloc.removeDeadStructural input3150 value582 value1 value2 = (output3150, value587, value1) := by
  rw [input3150_def, output3150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3130_eq]
  try dsimp only
  rw [node3149_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4253, 4169)])).val
theorem input3151_def : input3151 = (Flapjack.WordLangProgHOL.move 2 [(4253, 4169)]) := by
  unfold input3151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3151 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3151_def : output3151 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3151
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3151_skip : Flapjack.WordAlloc.isSkip output3151 = true := by
  rw [output3151_def]
  conv => lhs; cbv
  try rfl
theorem node3151_eq : Flapjack.WordAlloc.removeDeadStructural input3151 value582 value1 value2 = (output3151, value582, value1) := by
  rw [input3151_def, output3151_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4249, 4177)])).val
theorem input3152_def : input3152 = (Flapjack.WordLangProgHOL.move 2 [(4249, 4177)]) := by
  unfold input3152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3152 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3152_def : output3152 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3152
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3152_skip : Flapjack.WordAlloc.isSkip output3152 = true := by
  rw [output3152_def]
  conv => lhs; cbv
  try rfl
theorem node3152_eq : Flapjack.WordAlloc.removeDeadStructural input3152 value582 value1 value2 = (output3152, value582, value1) := by
  rw [input3152_def, output3152_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4245, 4185)])).val
theorem input3153_def : input3153 = (Flapjack.WordLangProgHOL.move 2 [(4245, 4185)]) := by
  unfold input3153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3153 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3153_def : output3153 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3153
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3153_skip : Flapjack.WordAlloc.isSkip output3153 = true := by
  rw [output3153_def]
  conv => lhs; cbv
  try rfl
theorem node3153_eq : Flapjack.WordAlloc.removeDeadStructural input3153 value582 value1 value2 = (output3153, value582, value1) := by
  rw [input3153_def, output3153_def]
  try (conv => lhs; cbv)
  try rfl

def value588 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
                Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4241, 4181)])).val
theorem input3154_def : input3154 = (Flapjack.WordLangProgHOL.move 2 [(4241, 4181)]) := by
  unfold input3154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3154 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4241, 4181)])).val
theorem output3154_def : output3154 = (Flapjack.WordLangProgHOL.move 2 [(4241, 4181)]) := by
  unfold output3154
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3154_skip : Flapjack.WordAlloc.isSkip output3154 = false := by
  rw [output3154_def]
  conv => lhs; cbv
  try rfl
theorem node3154_eq : Flapjack.WordAlloc.removeDeadStructural input3154 value582 value1 value2 = (output3154, value588, value1) := by
  rw [input3154_def, output3154_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3155_def : input3155 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3155 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3155_def : output3155 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3155
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3155_skip : Flapjack.WordAlloc.isSkip output3155 = true := by
  rw [output3155_def]
  conv => lhs; cbv
  try rfl
theorem node3155_eq : Flapjack.WordAlloc.removeDeadStructural input3155 value588 value1 value2 = (output3155, value588, value1) := by
  rw [input3155_def, output3155_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3155 input3154)).val
theorem input3156_def : input3156 = (.seq input3155 input3154) := by
  unfold input3156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3156 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3154)).val
theorem output3156_def : output3156 = (output3154) := by
  unfold output3156
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3156_skip : Flapjack.WordAlloc.isSkip output3156 = false := by
  rw [output3156_def]
  conv => lhs; cbv
  try rfl
theorem node3156_eq : Flapjack.WordAlloc.removeDeadStructural input3156 value582 value1 value2 = (output3156, value588, value1) := by
  rw [input3156_def, output3156_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3154_eq]
  try dsimp only
  rw [node3155_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3156 input3153)).val
theorem input3157_def : input3157 = (.seq input3156 input3153) := by
  unfold input3157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3157 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3156)).val
theorem output3157_def : output3157 = (output3156) := by
  unfold output3157
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3157_skip : Flapjack.WordAlloc.isSkip output3157 = false := by
  rw [output3157_def]
  conv => lhs; cbv
  try rfl
theorem node3157_eq : Flapjack.WordAlloc.removeDeadStructural input3157 value582 value1 value2 = (output3157, value588, value1) := by
  rw [input3157_def, output3157_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3153_eq]
  try dsimp only
  rw [node3156_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3157 input3152)).val
theorem input3158_def : input3158 = (.seq input3157 input3152) := by
  unfold input3158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3158 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3157)).val
theorem output3158_def : output3158 = (output3157) := by
  unfold output3158
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3158_skip : Flapjack.WordAlloc.isSkip output3158 = false := by
  rw [output3158_def]
  conv => lhs; cbv
  try rfl
theorem node3158_eq : Flapjack.WordAlloc.removeDeadStructural input3158 value582 value1 value2 = (output3158, value588, value1) := by
  rw [input3158_def, output3158_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3152_eq]
  try dsimp only
  rw [node3157_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3158 input3151)).val
theorem input3159_def : input3159 = (.seq input3158 input3151) := by
  unfold input3159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3159 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3158)).val
theorem output3159_def : output3159 = (output3158) := by
  unfold output3159
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3159_skip : Flapjack.WordAlloc.isSkip output3159 = false := by
  rw [output3159_def]
  conv => lhs; cbv
  try rfl
theorem node3159_eq : Flapjack.WordAlloc.removeDeadStructural input3159 value582 value1 value2 = (output3159, value588, value1) := by
  rw [input3159_def, output3159_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3151_eq]
  try dsimp only
  rw [node3158_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value589 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4237, 4153), (4233, 4181), (4229, 4145)])).val
theorem input3160_def : input3160 = (Flapjack.WordLangProgHOL.move 2 [(4237, 4153), (4233, 4181), (4229, 4145)]) := by
  unfold input3160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3160 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4237, 4153)])).val
theorem output3160_def : output3160 = (Flapjack.WordLangProgHOL.move 2 [(4237, 4153)]) := by
  unfold output3160
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3160_skip : Flapjack.WordAlloc.isSkip output3160 = false := by
  rw [output3160_def]
  conv => lhs; cbv
  try rfl
theorem node3160_eq : Flapjack.WordAlloc.removeDeadStructural input3160 value588 value1 value2 = (output3160, value589, value1) := by
  rw [input3160_def, output3160_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3160 input3159)).val
theorem input3161_def : input3161 = (.seq input3160 input3159) := by
  unfold input3161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3161 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3160 output3159)).val
theorem output3161_def : output3161 = (.seq output3160 output3159) := by
  unfold output3161
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3161_skip : Flapjack.WordAlloc.isSkip output3161 = false := by
  rw [output3161_def]
  conv => lhs; cbv
  try rfl
theorem node3161_eq : Flapjack.WordAlloc.removeDeadStructural input3161 value582 value1 value2 = (output3161, value589, value1) := by
  rw [input3161_def, output3161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3159_eq]
  try dsimp only
  rw [node3160_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3162_def : input3162 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3162 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3162_def : output3162 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3162
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3162_skip : Flapjack.WordAlloc.isSkip output3162 = true := by
  rw [output3162_def]
  conv => lhs; cbv
  try rfl
theorem node3162_eq : Flapjack.WordAlloc.removeDeadStructural input3162 value589 value1 value2 = (output3162, value589, value1) := by
  rw [input3162_def, output3162_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3162 input3161)).val
theorem input3163_def : input3163 = (.seq input3162 input3161) := by
  unfold input3163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3163 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3161)).val
theorem output3163_def : output3163 = (output3161) := by
  unfold output3163
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3163_skip : Flapjack.WordAlloc.isSkip output3163 = false := by
  rw [output3163_def]
  conv => lhs; cbv
  try rfl
theorem node3163_eq : Flapjack.WordAlloc.removeDeadStructural input3163 value582 value1 value2 = (output3163, value589, value1) := by
  rw [input3163_def, output3163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3161_eq]
  try dsimp only
  rw [node3162_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value590 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 4185

def value591 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 4181 value590 input3150 input3163)).val
theorem input3164_def : input3164 = (.ite value15 4181 value590 input3150 input3163) := by
  unfold input3164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3164 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 4181 value590 output3150 output3163)).val
theorem output3164_def : output3164 = (.ite value15 4181 value590 output3150 output3163) := by
  unfold output3164
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3164_skip : Flapjack.WordAlloc.isSkip output3164 = false := by
  rw [output3164_def]
  conv => lhs; cbv
  try rfl
theorem node3164_eq : Flapjack.WordAlloc.removeDeadStructural input3164 value582 value1 value2 = (output3164, value591, value1) := by
  rw [input3164_def, output3164_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node3150_eq]
  try dsimp only
  rw [node3163_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3164 input3119)).val
theorem input3165_def : input3165 = (.seq input3164 input3119) := by
  unfold input3165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3165 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3164 output3119)).val
theorem output3165_def : output3165 = (.seq output3164 output3119) := by
  unfold output3165
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3165_skip : Flapjack.WordAlloc.isSkip output3165 = false := by
  rw [output3165_def]
  conv => lhs; cbv
  try rfl
theorem node3165_eq : Flapjack.WordAlloc.removeDeadStructural input3165 value582 value1 value2 = (output3165, value591, value1) := by
  rw [input3165_def, output3165_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3119_eq]
  try dsimp only
  rw [node3164_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4185 69#64))).val
theorem input3166_def : input3166 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4185 69#64)) := by
  unfold input3166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3166 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4185 69#64))).val
theorem output3166_def : output3166 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4185 69#64)) := by
  unfold output3166
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3166_skip : Flapjack.WordAlloc.isSkip output3166 = false := by
  rw [output3166_def]
  conv => lhs; cbv
  try rfl
theorem node3166_eq : Flapjack.WordAlloc.removeDeadStructural input3166 value591 value1 value2 = (output3166, value589, value1) := by
  rw [input3166_def, output3166_def]
  try (conv => lhs; cbv)
  try rfl

def value592 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4181, 4157)])).val
theorem input3167_def : input3167 = (Flapjack.WordLangProgHOL.move 0 [(4181, 4157)]) := by
  unfold input3167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3167 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4181, 4157)])).val
theorem output3167_def : output3167 = (Flapjack.WordLangProgHOL.move 0 [(4181, 4157)]) := by
  unfold output3167
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3167_skip : Flapjack.WordAlloc.isSkip output3167 = false := by
  rw [output3167_def]
  conv => lhs; cbv
  try rfl
theorem node3167_eq : Flapjack.WordAlloc.removeDeadStructural input3167 value589 value1 value2 = (output3167, value592, value1) := by
  rw [input3167_def, output3167_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3168_def : input3168 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3168 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3168_def : output3168 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3168
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3168_skip : Flapjack.WordAlloc.isSkip output3168 = false := by
  rw [output3168_def]
  conv => lhs; cbv
  try rfl
theorem node3168_eq : Flapjack.WordAlloc.removeDeadStructural input3168 value592 value1 value2 = (output3168, value592, value1) := by
  rw [input3168_def, output3168_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4177 0#64))).val
theorem input3169_def : input3169 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4177 0#64)) := by
  unfold input3169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3169 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3169_def : output3169 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3169
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3169_skip : Flapjack.WordAlloc.isSkip output3169 = true := by
  rw [output3169_def]
  conv => lhs; cbv
  try rfl
theorem node3169_eq : Flapjack.WordAlloc.removeDeadStructural input3169 value592 value1 value2 = (output3169, value592, value1) := by
  rw [input3169_def, output3169_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3170_def : input3170 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3170 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3170_def : output3170 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3170
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3170_skip : Flapjack.WordAlloc.isSkip output3170 = false := by
  rw [output3170_def]
  conv => lhs; cbv
  try rfl
theorem node3170_eq : Flapjack.WordAlloc.removeDeadStructural input3170 value592 value1 value2 = (output3170, value592, value1) := by
  rw [input3170_def, output3170_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4173 0#64))).val
theorem input3171_def : input3171 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4173 0#64)) := by
  unfold input3171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3171 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3171_def : output3171 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3171
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3171_skip : Flapjack.WordAlloc.isSkip output3171 = true := by
  rw [output3171_def]
  conv => lhs; cbv
  try rfl
theorem node3171_eq : Flapjack.WordAlloc.removeDeadStructural input3171 value592 value1 value2 = (output3171, value592, value1) := by
  rw [input3171_def, output3171_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3171 input3170)).val
theorem input3172_def : input3172 = (.seq input3171 input3170) := by
  unfold input3172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3172 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3170)).val
theorem output3172_def : output3172 = (output3170) := by
  unfold output3172
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3172_skip : Flapjack.WordAlloc.isSkip output3172 = false := by
  rw [output3172_def]
  conv => lhs; cbv
  try rfl
theorem node3172_eq : Flapjack.WordAlloc.removeDeadStructural input3172 value592 value1 value2 = (output3172, value592, value1) := by
  rw [input3172_def, output3172_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3170_eq]
  try dsimp only
  rw [node3171_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3172 input3169)).val
theorem input3173_def : input3173 = (.seq input3172 input3169) := by
  unfold input3173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3173 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3172)).val
theorem output3173_def : output3173 = (output3172) := by
  unfold output3173
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3173_skip : Flapjack.WordAlloc.isSkip output3173 = false := by
  rw [output3173_def]
  conv => lhs; cbv
  try rfl
theorem node3173_eq : Flapjack.WordAlloc.removeDeadStructural input3173 value592 value1 value2 = (output3173, value592, value1) := by
  rw [input3173_def, output3173_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3169_eq]
  try dsimp only
  rw [node3172_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4169 0#64))).val
theorem input3174_def : input3174 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4169 0#64)) := by
  unfold input3174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3174 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3174_def : output3174 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3174
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3174_skip : Flapjack.WordAlloc.isSkip output3174 = true := by
  rw [output3174_def]
  conv => lhs; cbv
  try rfl
theorem node3174_eq : Flapjack.WordAlloc.removeDeadStructural input3174 value592 value1 value2 = (output3174, value592, value1) := by
  rw [input3174_def, output3174_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4165 0#64))).val
theorem input3175_def : input3175 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4165 0#64)) := by
  unfold input3175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3175 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3175_def : output3175 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3175
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3175_skip : Flapjack.WordAlloc.isSkip output3175 = true := by
  rw [output3175_def]
  conv => lhs; cbv
  try rfl
theorem node3175_eq : Flapjack.WordAlloc.removeDeadStructural input3175 value592 value1 value2 = (output3175, value592, value1) := by
  rw [input3175_def, output3175_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4161 0#64))).val
theorem input3176_def : input3176 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4161 0#64)) := by
  unfold input3176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3176 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3176_def : output3176 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3176
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3176_skip : Flapjack.WordAlloc.isSkip output3176 = true := by
  rw [output3176_def]
  conv => lhs; cbv
  try rfl
theorem node3176_eq : Flapjack.WordAlloc.removeDeadStructural input3176 value592 value1 value2 = (output3176, value592, value1) := by
  rw [input3176_def, output3176_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4157 0#64))).val
theorem input3177_def : input3177 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4157 0#64)) := by
  unfold input3177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3177 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4157 0#64))).val
theorem output3177_def : output3177 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4157 0#64)) := by
  unfold output3177
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3177_skip : Flapjack.WordAlloc.isSkip output3177 = false := by
  rw [output3177_def]
  conv => lhs; cbv
  try rfl
theorem node3177_eq : Flapjack.WordAlloc.removeDeadStructural input3177 value592 value1 value2 = (output3177, value587, value1) := by
  rw [input3177_def, output3177_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3178_def : input3178 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3178 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3178_def : output3178 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3178
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3178_skip : Flapjack.WordAlloc.isSkip output3178 = true := by
  rw [output3178_def]
  conv => lhs; cbv
  try rfl
theorem node3178_eq : Flapjack.WordAlloc.removeDeadStructural input3178 value587 value1 value2 = (output3178, value587, value1) := by
  rw [input3178_def, output3178_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3178 input3177)).val
theorem input3179_def : input3179 = (.seq input3178 input3177) := by
  unfold input3179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3179 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3177)).val
theorem output3179_def : output3179 = (output3177) := by
  unfold output3179
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3179_skip : Flapjack.WordAlloc.isSkip output3179 = false := by
  rw [output3179_def]
  conv => lhs; cbv
  try rfl
theorem node3179_eq : Flapjack.WordAlloc.removeDeadStructural input3179 value592 value1 value2 = (output3179, value587, value1) := by
  rw [input3179_def, output3179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3177_eq]
  try dsimp only
  rw [node3178_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3179 input3176)).val
theorem input3180_def : input3180 = (.seq input3179 input3176) := by
  unfold input3180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3180 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3179)).val
theorem output3180_def : output3180 = (output3179) := by
  unfold output3180
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3180_skip : Flapjack.WordAlloc.isSkip output3180 = false := by
  rw [output3180_def]
  conv => lhs; cbv
  try rfl
theorem node3180_eq : Flapjack.WordAlloc.removeDeadStructural input3180 value592 value1 value2 = (output3180, value587, value1) := by
  rw [input3180_def, output3180_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3176_eq]
  try dsimp only
  rw [node3179_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3180 input3175)).val
theorem input3181_def : input3181 = (.seq input3180 input3175) := by
  unfold input3181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3181 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3180)).val
theorem output3181_def : output3181 = (output3180) := by
  unfold output3181
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3181_skip : Flapjack.WordAlloc.isSkip output3181 = false := by
  rw [output3181_def]
  conv => lhs; cbv
  try rfl
theorem node3181_eq : Flapjack.WordAlloc.removeDeadStructural input3181 value592 value1 value2 = (output3181, value587, value1) := by
  rw [input3181_def, output3181_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3175_eq]
  try dsimp only
  rw [node3180_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3181 input3174)).val
theorem input3182_def : input3182 = (.seq input3181 input3174) := by
  unfold input3182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3182 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3181)).val
theorem output3182_def : output3182 = (output3181) := by
  unfold output3182
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3182_skip : Flapjack.WordAlloc.isSkip output3182 = false := by
  rw [output3182_def]
  conv => lhs; cbv
  try rfl
theorem node3182_eq : Flapjack.WordAlloc.removeDeadStructural input3182 value592 value1 value2 = (output3182, value587, value1) := by
  rw [input3182_def, output3182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3174_eq]
  try dsimp only
  rw [node3181_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value593 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(4153, 4121), (4149, 4137), (4145, 4141)])).val
theorem input3183_def : input3183 = (Flapjack.WordLangProgHOL.move 1 [(4153, 4121), (4149, 4137), (4145, 4141)]) := by
  unfold input3183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3183 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(4153, 4121)])).val
theorem output3183_def : output3183 = (Flapjack.WordLangProgHOL.move 1 [(4153, 4121)]) := by
  unfold output3183
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3183_skip : Flapjack.WordAlloc.isSkip output3183 = false := by
  rw [output3183_def]
  conv => lhs; cbv
  try rfl
theorem node3183_eq : Flapjack.WordAlloc.removeDeadStructural input3183 value587 value1 value2 = (output3183, value593, value1) := by
  rw [input3183_def, output3183_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3183 input3182)).val
theorem input3184_def : input3184 = (.seq input3183 input3182) := by
  unfold input3184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3184 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3183 output3182)).val
theorem output3184_def : output3184 = (.seq output3183 output3182) := by
  unfold output3184
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3184_skip : Flapjack.WordAlloc.isSkip output3184 = false := by
  rw [output3184_def]
  conv => lhs; cbv
  try rfl
theorem node3184_eq : Flapjack.WordAlloc.removeDeadStructural input3184 value592 value1 value2 = (output3184, value593, value1) := by
  rw [input3184_def, output3184_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3182_eq]
  try dsimp only
  rw [node3183_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value594 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 4121 [2])).val
theorem input3185_def : input3185 = (Flapjack.WordLangProgHOL.return 4121 [2]) := by
  unfold input3185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3185 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 4121 [2])).val
theorem output3185_def : output3185 = (Flapjack.WordLangProgHOL.return 4121 [2]) := by
  unfold output3185
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3185_skip : Flapjack.WordAlloc.isSkip output3185 = false := by
  rw [output3185_def]
  conv => lhs; cbv
  try rfl
theorem node3185_eq : Flapjack.WordAlloc.removeDeadStructural input3185 value593 value1 value2 = (output3185, value594, value1) := by
  rw [input3185_def, output3185_def]
  try (conv => lhs; cbv)
  try rfl

def value595 : Flapjack.NumSet :=
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
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
            Flapjack.Spt.ln))
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
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 4141)])).val
theorem input3186_def : input3186 = (Flapjack.WordLangProgHOL.move 0 [(2, 4141)]) := by
  unfold input3186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3186 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 4141)])).val
theorem output3186_def : output3186 = (Flapjack.WordLangProgHOL.move 0 [(2, 4141)]) := by
  unfold output3186
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3186_skip : Flapjack.WordAlloc.isSkip output3186 = false := by
  rw [output3186_def]
  conv => lhs; cbv
  try rfl
theorem node3186_eq : Flapjack.WordAlloc.removeDeadStructural input3186 value594 value1 value2 = (output3186, value595, value1) := by
  rw [input3186_def, output3186_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3186 input3185)).val
theorem input3187_def : input3187 = (.seq input3186 input3185) := by
  unfold input3187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3187 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3186 output3185)).val
theorem output3187_def : output3187 = (.seq output3186 output3185) := by
  unfold output3187
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3187_skip : Flapjack.WordAlloc.isSkip output3187 = false := by
  rw [output3187_def]
  conv => lhs; cbv
  try rfl
theorem node3187_eq : Flapjack.WordAlloc.removeDeadStructural input3187 value593 value1 value2 = (output3187, value595, value1) := by
  rw [input3187_def, output3187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3185_eq]
  try dsimp only
  rw [node3186_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4141 0#64))).val
theorem input3188_def : input3188 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4141 0#64)) := by
  unfold input3188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3188 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4141 0#64))).val
theorem output3188_def : output3188 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4141 0#64)) := by
  unfold output3188
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3188_skip : Flapjack.WordAlloc.isSkip output3188 = false := by
  rw [output3188_def]
  conv => lhs; cbv
  try rfl
theorem node3188_eq : Flapjack.WordAlloc.removeDeadStructural input3188 value595 value1 value2 = (output3188, value593, value1) := by
  rw [input3188_def, output3188_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3189_def : input3189 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3189 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3189_def : output3189 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3189
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3189_skip : Flapjack.WordAlloc.isSkip output3189 = false := by
  rw [output3189_def]
  conv => lhs; cbv
  try rfl
theorem node3189_eq : Flapjack.WordAlloc.removeDeadStructural input3189 value593 value1 value2 = (output3189, value593, value1) := by
  rw [input3189_def, output3189_def]
  try (conv => lhs; cbv)
  try rfl

def value596 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
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

@[irreducible, cbv_opaque] def input3190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(4121, 4115)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(4125, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(4133, 4125)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4137 0#64)))),
      597, 98))
  (some 584) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(4121, 4115)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(4129, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 4129)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4133 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(4137, 4129)]))),
      597, 99)))).val
theorem input3190_def : input3190 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(4121, 4115)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(4125, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(4133, 4125)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4137 0#64)))),
      597, 98))
  (some 584) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(4121, 4115)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(4129, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 4129)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4133 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(4137, 4129)]))),
      597, 99))) := by
  unfold input3190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3190 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(4121, 4115)], 597, 98))
  (some 584) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(4121, 4115)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(4129, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 4129)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 99)))).val
theorem output3190_def : output3190 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(4121, 4115)], 597, 98))
  (some 584) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(4121, 4115)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(4129, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 4129)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 99))) := by
  unfold output3190
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3190_skip : Flapjack.WordAlloc.isSkip output3190 = false := by
  rw [output3190_def]
  conv => lhs; cbv
  try rfl
theorem node3190_eq : Flapjack.WordAlloc.removeDeadStructural input3190 value593 value1 value2 = (output3190, value596, value1) := by
  rw [input3190_def, output3190_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input3191_def : input3191 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input3191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3191 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3191_def : output3191 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3191
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3191_skip : Flapjack.WordAlloc.isSkip output3191 = true := by
  rw [output3191_def]
  conv => lhs; cbv
  try rfl
theorem node3191_eq : Flapjack.WordAlloc.removeDeadStructural input3191 value596 value1 value2 = (output3191, value596, value1) := by
  rw [input3191_def, output3191_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3191 input3190)).val
theorem input3192_def : input3192 = (.seq input3191 input3190) := by
  unfold input3192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3192 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3190)).val
theorem output3192_def : output3192 = (output3190) := by
  unfold output3192
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3192_skip : Flapjack.WordAlloc.isSkip output3192 = false := by
  rw [output3192_def]
  conv => lhs; cbv
  try rfl
theorem node3192_eq : Flapjack.WordAlloc.removeDeadStructural input3192 value593 value1 value2 = (output3192, value596, value1) := by
  rw [input3192_def, output3192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3190_eq]
  try dsimp only
  rw [node3191_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value597 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4115, 4069)])).val
theorem input3193_def : input3193 = (Flapjack.WordLangProgHOL.move 0 [(4115, 4069)]) := by
  unfold input3193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3193 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4115, 4069)])).val
theorem output3193_def : output3193 = (Flapjack.WordLangProgHOL.move 0 [(4115, 4069)]) := by
  unfold output3193
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3193_skip : Flapjack.WordAlloc.isSkip output3193 = false := by
  rw [output3193_def]
  conv => lhs; cbv
  try rfl
theorem node3193_eq : Flapjack.WordAlloc.removeDeadStructural input3193 value596 value1 value2 = (output3193, value597, value1) := by
  rw [input3193_def, output3193_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3193 input3192)).val
theorem input3194_def : input3194 = (.seq input3193 input3192) := by
  unfold input3194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3194 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3193 output3192)).val
theorem output3194_def : output3194 = (.seq output3193 output3192) := by
  unfold output3194
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3194_skip : Flapjack.WordAlloc.isSkip output3194 = false := by
  rw [output3194_def]
  conv => lhs; cbv
  try rfl
theorem node3194_eq : Flapjack.WordAlloc.removeDeadStructural input3194 value593 value1 value2 = (output3194, value597, value1) := by
  rw [input3194_def, output3194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3192_eq]
  try dsimp only
  rw [node3193_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4109 1#64))).val
theorem input3195_def : input3195 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4109 1#64)) := by
  unfold input3195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3195 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3195_def : output3195 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3195
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3195_skip : Flapjack.WordAlloc.isSkip output3195 = true := by
  rw [output3195_def]
  conv => lhs; cbv
  try rfl
theorem node3195_eq : Flapjack.WordAlloc.removeDeadStructural input3195 value597 value1 value2 = (output3195, value597, value1) := by
  rw [input3195_def, output3195_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3196_def : input3196 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3196 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3196_def : output3196 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3196
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3196_skip : Flapjack.WordAlloc.isSkip output3196 = false := by
  rw [output3196_def]
  conv => lhs; cbv
  try rfl
theorem node3196_eq : Flapjack.WordAlloc.removeDeadStructural input3196 value597 value1 value2 = (output3196, value597, value1) := by
  rw [input3196_def, output3196_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4105 1#64))).val
theorem input3197_def : input3197 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4105 1#64)) := by
  unfold input3197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3197 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3197_def : output3197 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3197
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3197_skip : Flapjack.WordAlloc.isSkip output3197 = true := by
  rw [output3197_def]
  conv => lhs; cbv
  try rfl
theorem node3197_eq : Flapjack.WordAlloc.removeDeadStructural input3197 value597 value1 value2 = (output3197, value597, value1) := by
  rw [input3197_def, output3197_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3197 input3196)).val
theorem input3198_def : input3198 = (.seq input3197 input3196) := by
  unfold input3198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3198 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3196)).val
theorem output3198_def : output3198 = (output3196) := by
  unfold output3198
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3198_skip : Flapjack.WordAlloc.isSkip output3198 = false := by
  rw [output3198_def]
  conv => lhs; cbv
  try rfl
theorem node3198_eq : Flapjack.WordAlloc.removeDeadStructural input3198 value597 value1 value2 = (output3198, value597, value1) := by
  rw [input3198_def, output3198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3196_eq]
  try dsimp only
  rw [node3197_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3198 input3195)).val
theorem input3199_def : input3199 = (.seq input3198 input3195) := by
  unfold input3199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3199 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3198)).val
theorem output3199_def : output3199 = (output3198) := by
  unfold output3199
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3199_skip : Flapjack.WordAlloc.isSkip output3199 = false := by
  rw [output3199_def]
  conv => lhs; cbv
  try rfl
theorem node3199_eq : Flapjack.WordAlloc.removeDeadStructural input3199 value597 value1 value2 = (output3199, value597, value1) := by
  rw [input3199_def, output3199_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3195_eq]
  try dsimp only
  rw [node3198_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3199 input3194)).val
theorem input3200_def : input3200 = (.seq input3199 input3194) := by
  unfold input3200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3200 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3199 output3194)).val
theorem output3200_def : output3200 = (.seq output3199 output3194) := by
  unfold output3200
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3200_skip : Flapjack.WordAlloc.isSkip output3200 = false := by
  rw [output3200_def]
  conv => lhs; cbv
  try rfl
theorem node3200_eq : Flapjack.WordAlloc.removeDeadStructural input3200 value593 value1 value2 = (output3200, value597, value1) := by
  rw [input3200_def, output3200_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3194_eq]
  try dsimp only
  rw [node3199_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3200 input3189)).val
theorem input3201_def : input3201 = (.seq input3200 input3189) := by
  unfold input3201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3201 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3200 output3189)).val
theorem output3201_def : output3201 = (.seq output3200 output3189) := by
  unfold output3201
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3201_skip : Flapjack.WordAlloc.isSkip output3201 = false := by
  rw [output3201_def]
  conv => lhs; cbv
  try rfl
theorem node3201_eq : Flapjack.WordAlloc.removeDeadStructural input3201 value593 value1 value2 = (output3201, value597, value1) := by
  rw [input3201_def, output3201_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3189_eq]
  try dsimp only
  rw [node3200_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3201 input3188)).val
theorem input3202_def : input3202 = (.seq input3201 input3188) := by
  unfold input3202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3202 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3201 output3188)).val
theorem output3202_def : output3202 = (.seq output3201 output3188) := by
  unfold output3202
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3202_skip : Flapjack.WordAlloc.isSkip output3202 = false := by
  rw [output3202_def]
  conv => lhs; cbv
  try rfl
theorem node3202_eq : Flapjack.WordAlloc.removeDeadStructural input3202 value595 value1 value2 = (output3202, value597, value1) := by
  rw [input3202_def, output3202_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3188_eq]
  try dsimp only
  rw [node3201_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3202 input3187)).val
theorem input3203_def : input3203 = (.seq input3202 input3187) := by
  unfold input3203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3203 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3202 output3187)).val
theorem output3203_def : output3203 = (.seq output3202 output3187) := by
  unfold output3203
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3203_skip : Flapjack.WordAlloc.isSkip output3203 = false := by
  rw [output3203_def]
  conv => lhs; cbv
  try rfl
theorem node3203_eq : Flapjack.WordAlloc.removeDeadStructural input3203 value593 value1 value2 = (output3203, value597, value1) := by
  rw [input3203_def, output3203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3187_eq]
  try dsimp only
  rw [node3202_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3203 input3184)).val
theorem input3204_def : input3204 = (.seq input3203 input3184) := by
  unfold input3204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3204 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3203 output3184)).val
theorem output3204_def : output3204 = (.seq output3203 output3184) := by
  unfold output3204
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3204_skip : Flapjack.WordAlloc.isSkip output3204 = false := by
  rw [output3204_def]
  conv => lhs; cbv
  try rfl
theorem node3204_eq : Flapjack.WordAlloc.removeDeadStructural input3204 value592 value1 value2 = (output3204, value597, value1) := by
  rw [input3204_def, output3204_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3184_eq]
  try dsimp only
  rw [node3203_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4169, 4085)])).val
theorem input3205_def : input3205 = (Flapjack.WordLangProgHOL.move 2 [(4169, 4085)]) := by
  unfold input3205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3205 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3205_def : output3205 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3205
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3205_skip : Flapjack.WordAlloc.isSkip output3205 = true := by
  rw [output3205_def]
  conv => lhs; cbv
  try rfl
theorem node3205_eq : Flapjack.WordAlloc.removeDeadStructural input3205 value592 value1 value2 = (output3205, value592, value1) := by
  rw [input3205_def, output3205_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4165, 4093)])).val
theorem input3206_def : input3206 = (Flapjack.WordLangProgHOL.move 2 [(4165, 4093)]) := by
  unfold input3206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3206 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3206_def : output3206 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3206
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3206_skip : Flapjack.WordAlloc.isSkip output3206 = true := by
  rw [output3206_def]
  conv => lhs; cbv
  try rfl
theorem node3206_eq : Flapjack.WordAlloc.removeDeadStructural input3206 value592 value1 value2 = (output3206, value592, value1) := by
  rw [input3206_def, output3206_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4161, 4101)])).val
theorem input3207_def : input3207 = (Flapjack.WordLangProgHOL.move 2 [(4161, 4101)]) := by
  unfold input3207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3207 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3207_def : output3207 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3207
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3207_skip : Flapjack.WordAlloc.isSkip output3207 = true := by
  rw [output3207_def]
  conv => lhs; cbv
  try rfl
theorem node3207_eq : Flapjack.WordAlloc.removeDeadStructural input3207 value592 value1 value2 = (output3207, value592, value1) := by
  rw [input3207_def, output3207_def]
  try (conv => lhs; cbv)
  try rfl

def value598 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4157, 4097)])).val
theorem input3208_def : input3208 = (Flapjack.WordLangProgHOL.move 2 [(4157, 4097)]) := by
  unfold input3208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3208 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4157, 4097)])).val
theorem output3208_def : output3208 = (Flapjack.WordLangProgHOL.move 2 [(4157, 4097)]) := by
  unfold output3208
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3208_skip : Flapjack.WordAlloc.isSkip output3208 = false := by
  rw [output3208_def]
  conv => lhs; cbv
  try rfl
theorem node3208_eq : Flapjack.WordAlloc.removeDeadStructural input3208 value592 value1 value2 = (output3208, value598, value1) := by
  rw [input3208_def, output3208_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3209_def : input3209 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3209 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3209_def : output3209 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3209
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3209_skip : Flapjack.WordAlloc.isSkip output3209 = true := by
  rw [output3209_def]
  conv => lhs; cbv
  try rfl
theorem node3209_eq : Flapjack.WordAlloc.removeDeadStructural input3209 value598 value1 value2 = (output3209, value598, value1) := by
  rw [input3209_def, output3209_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3209 input3208)).val
theorem input3210_def : input3210 = (.seq input3209 input3208) := by
  unfold input3210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3210 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3208)).val
theorem output3210_def : output3210 = (output3208) := by
  unfold output3210
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3210_skip : Flapjack.WordAlloc.isSkip output3210 = false := by
  rw [output3210_def]
  conv => lhs; cbv
  try rfl
theorem node3210_eq : Flapjack.WordAlloc.removeDeadStructural input3210 value592 value1 value2 = (output3210, value598, value1) := by
  rw [input3210_def, output3210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3208_eq]
  try dsimp only
  rw [node3209_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3210 input3207)).val
theorem input3211_def : input3211 = (.seq input3210 input3207) := by
  unfold input3211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3211 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3210)).val
theorem output3211_def : output3211 = (output3210) := by
  unfold output3211
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3211_skip : Flapjack.WordAlloc.isSkip output3211 = false := by
  rw [output3211_def]
  conv => lhs; cbv
  try rfl
theorem node3211_eq : Flapjack.WordAlloc.removeDeadStructural input3211 value592 value1 value2 = (output3211, value598, value1) := by
  rw [input3211_def, output3211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3207_eq]
  try dsimp only
  rw [node3210_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3211 input3206)).val
theorem input3212_def : input3212 = (.seq input3211 input3206) := by
  unfold input3212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3212 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3211)).val
theorem output3212_def : output3212 = (output3211) := by
  unfold output3212
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3212_skip : Flapjack.WordAlloc.isSkip output3212 = false := by
  rw [output3212_def]
  conv => lhs; cbv
  try rfl
theorem node3212_eq : Flapjack.WordAlloc.removeDeadStructural input3212 value592 value1 value2 = (output3212, value598, value1) := by
  rw [input3212_def, output3212_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3206_eq]
  try dsimp only
  rw [node3211_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3212 input3205)).val
theorem input3213_def : input3213 = (.seq input3212 input3205) := by
  unfold input3213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3213 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3212)).val
theorem output3213_def : output3213 = (output3212) := by
  unfold output3213
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3213_skip : Flapjack.WordAlloc.isSkip output3213 = false := by
  rw [output3213_def]
  conv => lhs; cbv
  try rfl
theorem node3213_eq : Flapjack.WordAlloc.removeDeadStructural input3213 value592 value1 value2 = (output3213, value598, value1) := by
  rw [input3213_def, output3213_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3205_eq]
  try dsimp only
  rw [node3212_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value599 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4153, 4069), (4149, 4097), (4145, 4061)])).val
theorem input3214_def : input3214 = (Flapjack.WordLangProgHOL.move 2 [(4153, 4069), (4149, 4097), (4145, 4061)]) := by
  unfold input3214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3214 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4153, 4069)])).val
theorem output3214_def : output3214 = (Flapjack.WordLangProgHOL.move 2 [(4153, 4069)]) := by
  unfold output3214
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3214_skip : Flapjack.WordAlloc.isSkip output3214 = false := by
  rw [output3214_def]
  conv => lhs; cbv
  try rfl
theorem node3214_eq : Flapjack.WordAlloc.removeDeadStructural input3214 value598 value1 value2 = (output3214, value599, value1) := by
  rw [input3214_def, output3214_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3214 input3213)).val
theorem input3215_def : input3215 = (.seq input3214 input3213) := by
  unfold input3215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3215 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3214 output3213)).val
theorem output3215_def : output3215 = (.seq output3214 output3213) := by
  unfold output3215
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3215_skip : Flapjack.WordAlloc.isSkip output3215 = false := by
  rw [output3215_def]
  conv => lhs; cbv
  try rfl
theorem node3215_eq : Flapjack.WordAlloc.removeDeadStructural input3215 value592 value1 value2 = (output3215, value599, value1) := by
  rw [input3215_def, output3215_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3213_eq]
  try dsimp only
  rw [node3214_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3216_def : input3216 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3216 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3216_def : output3216 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3216
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3216_skip : Flapjack.WordAlloc.isSkip output3216 = true := by
  rw [output3216_def]
  conv => lhs; cbv
  try rfl
theorem node3216_eq : Flapjack.WordAlloc.removeDeadStructural input3216 value599 value1 value2 = (output3216, value599, value1) := by
  rw [input3216_def, output3216_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3216 input3215)).val
theorem input3217_def : input3217 = (.seq input3216 input3215) := by
  unfold input3217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3217 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3215)).val
theorem output3217_def : output3217 = (output3215) := by
  unfold output3217
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3217_skip : Flapjack.WordAlloc.isSkip output3217 = false := by
  rw [output3217_def]
  conv => lhs; cbv
  try rfl
theorem node3217_eq : Flapjack.WordAlloc.removeDeadStructural input3217 value592 value1 value2 = (output3217, value599, value1) := by
  rw [input3217_def, output3217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3215_eq]
  try dsimp only
  rw [node3216_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value600 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 4101

def value601 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn Flapjack.Spt.ln
                      (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 4097 value600 input3204 input3217)).val
theorem input3218_def : input3218 = (.ite value15 4097 value600 input3204 input3217) := by
  unfold input3218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3218 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 4097 value600 output3204 output3217)).val
theorem output3218_def : output3218 = (.ite value15 4097 value600 output3204 output3217) := by
  unfold output3218
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3218_skip : Flapjack.WordAlloc.isSkip output3218 = false := by
  rw [output3218_def]
  conv => lhs; cbv
  try rfl
theorem node3218_eq : Flapjack.WordAlloc.removeDeadStructural input3218 value592 value1 value2 = (output3218, value601, value1) := by
  rw [input3218_def, output3218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node3204_eq]
  try dsimp only
  rw [node3217_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3218 input3173)).val
theorem input3219_def : input3219 = (.seq input3218 input3173) := by
  unfold input3219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3219 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3218 output3173)).val
theorem output3219_def : output3219 = (.seq output3218 output3173) := by
  unfold output3219
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3219_skip : Flapjack.WordAlloc.isSkip output3219 = false := by
  rw [output3219_def]
  conv => lhs; cbv
  try rfl
theorem node3219_eq : Flapjack.WordAlloc.removeDeadStructural input3219 value592 value1 value2 = (output3219, value601, value1) := by
  rw [input3219_def, output3219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3173_eq]
  try dsimp only
  rw [node3218_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4101 68#64))).val
theorem input3220_def : input3220 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4101 68#64)) := by
  unfold input3220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3220 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4101 68#64))).val
theorem output3220_def : output3220 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4101 68#64)) := by
  unfold output3220
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3220_skip : Flapjack.WordAlloc.isSkip output3220 = false := by
  rw [output3220_def]
  conv => lhs; cbv
  try rfl
theorem node3220_eq : Flapjack.WordAlloc.removeDeadStructural input3220 value601 value1 value2 = (output3220, value599, value1) := by
  rw [input3220_def, output3220_def]
  try (conv => lhs; cbv)
  try rfl

def value602 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4097, 4073)])).val
theorem input3221_def : input3221 = (Flapjack.WordLangProgHOL.move 0 [(4097, 4073)]) := by
  unfold input3221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3221 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4097, 4073)])).val
theorem output3221_def : output3221 = (Flapjack.WordLangProgHOL.move 0 [(4097, 4073)]) := by
  unfold output3221
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3221_skip : Flapjack.WordAlloc.isSkip output3221 = false := by
  rw [output3221_def]
  conv => lhs; cbv
  try rfl
theorem node3221_eq : Flapjack.WordAlloc.removeDeadStructural input3221 value599 value1 value2 = (output3221, value602, value1) := by
  rw [input3221_def, output3221_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3222_def : input3222 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3222 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3222_def : output3222 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3222
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3222_skip : Flapjack.WordAlloc.isSkip output3222 = false := by
  rw [output3222_def]
  conv => lhs; cbv
  try rfl
theorem node3222_eq : Flapjack.WordAlloc.removeDeadStructural input3222 value602 value1 value2 = (output3222, value602, value1) := by
  rw [input3222_def, output3222_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4093 0#64))).val
theorem input3223_def : input3223 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4093 0#64)) := by
  unfold input3223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3223 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3223_def : output3223 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3223
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3223_skip : Flapjack.WordAlloc.isSkip output3223 = true := by
  rw [output3223_def]
  conv => lhs; cbv
  try rfl
theorem node3223_eq : Flapjack.WordAlloc.removeDeadStructural input3223 value602 value1 value2 = (output3223, value602, value1) := by
  rw [input3223_def, output3223_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3224_def : input3224 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3224 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3224_def : output3224 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3224
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3224_skip : Flapjack.WordAlloc.isSkip output3224 = false := by
  rw [output3224_def]
  conv => lhs; cbv
  try rfl
theorem node3224_eq : Flapjack.WordAlloc.removeDeadStructural input3224 value602 value1 value2 = (output3224, value602, value1) := by
  rw [input3224_def, output3224_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4089 0#64))).val
theorem input3225_def : input3225 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4089 0#64)) := by
  unfold input3225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3225 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3225_def : output3225 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3225
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3225_skip : Flapjack.WordAlloc.isSkip output3225 = true := by
  rw [output3225_def]
  conv => lhs; cbv
  try rfl
theorem node3225_eq : Flapjack.WordAlloc.removeDeadStructural input3225 value602 value1 value2 = (output3225, value602, value1) := by
  rw [input3225_def, output3225_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3225 input3224)).val
theorem input3226_def : input3226 = (.seq input3225 input3224) := by
  unfold input3226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3226 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3224)).val
theorem output3226_def : output3226 = (output3224) := by
  unfold output3226
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3226_skip : Flapjack.WordAlloc.isSkip output3226 = false := by
  rw [output3226_def]
  conv => lhs; cbv
  try rfl
theorem node3226_eq : Flapjack.WordAlloc.removeDeadStructural input3226 value602 value1 value2 = (output3226, value602, value1) := by
  rw [input3226_def, output3226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3224_eq]
  try dsimp only
  rw [node3225_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3226 input3223)).val
theorem input3227_def : input3227 = (.seq input3226 input3223) := by
  unfold input3227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3227 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3226)).val
theorem output3227_def : output3227 = (output3226) := by
  unfold output3227
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3227_skip : Flapjack.WordAlloc.isSkip output3227 = false := by
  rw [output3227_def]
  conv => lhs; cbv
  try rfl
theorem node3227_eq : Flapjack.WordAlloc.removeDeadStructural input3227 value602 value1 value2 = (output3227, value602, value1) := by
  rw [input3227_def, output3227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3223_eq]
  try dsimp only
  rw [node3226_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4085 0#64))).val
theorem input3228_def : input3228 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4085 0#64)) := by
  unfold input3228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3228 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3228_def : output3228 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3228
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3228_skip : Flapjack.WordAlloc.isSkip output3228 = true := by
  rw [output3228_def]
  conv => lhs; cbv
  try rfl
theorem node3228_eq : Flapjack.WordAlloc.removeDeadStructural input3228 value602 value1 value2 = (output3228, value602, value1) := by
  rw [input3228_def, output3228_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4081 0#64))).val
theorem input3229_def : input3229 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4081 0#64)) := by
  unfold input3229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3229 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3229_def : output3229 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3229
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3229_skip : Flapjack.WordAlloc.isSkip output3229 = true := by
  rw [output3229_def]
  conv => lhs; cbv
  try rfl
theorem node3229_eq : Flapjack.WordAlloc.removeDeadStructural input3229 value602 value1 value2 = (output3229, value602, value1) := by
  rw [input3229_def, output3229_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4077 0#64))).val
theorem input3230_def : input3230 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4077 0#64)) := by
  unfold input3230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3230 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3230_def : output3230 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3230
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3230_skip : Flapjack.WordAlloc.isSkip output3230 = true := by
  rw [output3230_def]
  conv => lhs; cbv
  try rfl
theorem node3230_eq : Flapjack.WordAlloc.removeDeadStructural input3230 value602 value1 value2 = (output3230, value602, value1) := by
  rw [input3230_def, output3230_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4073 0#64))).val
theorem input3231_def : input3231 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4073 0#64)) := by
  unfold input3231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3231 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4073 0#64))).val
theorem output3231_def : output3231 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4073 0#64)) := by
  unfold output3231
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3231_skip : Flapjack.WordAlloc.isSkip output3231 = false := by
  rw [output3231_def]
  conv => lhs; cbv
  try rfl
theorem node3231_eq : Flapjack.WordAlloc.removeDeadStructural input3231 value602 value1 value2 = (output3231, value597, value1) := by
  rw [input3231_def, output3231_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3232_def : input3232 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3232 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3232_def : output3232 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3232
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3232_skip : Flapjack.WordAlloc.isSkip output3232 = true := by
  rw [output3232_def]
  conv => lhs; cbv
  try rfl
theorem node3232_eq : Flapjack.WordAlloc.removeDeadStructural input3232 value597 value1 value2 = (output3232, value597, value1) := by
  rw [input3232_def, output3232_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3232 input3231)).val
theorem input3233_def : input3233 = (.seq input3232 input3231) := by
  unfold input3233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3233 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3231)).val
theorem output3233_def : output3233 = (output3231) := by
  unfold output3233
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3233_skip : Flapjack.WordAlloc.isSkip output3233 = false := by
  rw [output3233_def]
  conv => lhs; cbv
  try rfl
theorem node3233_eq : Flapjack.WordAlloc.removeDeadStructural input3233 value602 value1 value2 = (output3233, value597, value1) := by
  rw [input3233_def, output3233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3231_eq]
  try dsimp only
  rw [node3232_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3233 input3230)).val
theorem input3234_def : input3234 = (.seq input3233 input3230) := by
  unfold input3234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3234 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3233)).val
theorem output3234_def : output3234 = (output3233) := by
  unfold output3234
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3234_skip : Flapjack.WordAlloc.isSkip output3234 = false := by
  rw [output3234_def]
  conv => lhs; cbv
  try rfl
theorem node3234_eq : Flapjack.WordAlloc.removeDeadStructural input3234 value602 value1 value2 = (output3234, value597, value1) := by
  rw [input3234_def, output3234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3230_eq]
  try dsimp only
  rw [node3233_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3234 input3229)).val
theorem input3235_def : input3235 = (.seq input3234 input3229) := by
  unfold input3235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3235 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3234)).val
theorem output3235_def : output3235 = (output3234) := by
  unfold output3235
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3235_skip : Flapjack.WordAlloc.isSkip output3235 = false := by
  rw [output3235_def]
  conv => lhs; cbv
  try rfl
theorem node3235_eq : Flapjack.WordAlloc.removeDeadStructural input3235 value602 value1 value2 = (output3235, value597, value1) := by
  rw [input3235_def, output3235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3229_eq]
  try dsimp only
  rw [node3234_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3235 input3228)).val
theorem input3236_def : input3236 = (.seq input3235 input3228) := by
  unfold input3236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3236 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3235)).val
theorem output3236_def : output3236 = (output3235) := by
  unfold output3236
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3236_skip : Flapjack.WordAlloc.isSkip output3236 = false := by
  rw [output3236_def]
  conv => lhs; cbv
  try rfl
theorem node3236_eq : Flapjack.WordAlloc.removeDeadStructural input3236 value602 value1 value2 = (output3236, value597, value1) := by
  rw [input3236_def, output3236_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3228_eq]
  try dsimp only
  rw [node3235_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value603 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(4069, 4037), (4065, 4053), (4061, 4057)])).val
theorem input3237_def : input3237 = (Flapjack.WordLangProgHOL.move 1 [(4069, 4037), (4065, 4053), (4061, 4057)]) := by
  unfold input3237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3237 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(4069, 4037)])).val
theorem output3237_def : output3237 = (Flapjack.WordLangProgHOL.move 1 [(4069, 4037)]) := by
  unfold output3237
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3237_skip : Flapjack.WordAlloc.isSkip output3237 = false := by
  rw [output3237_def]
  conv => lhs; cbv
  try rfl
theorem node3237_eq : Flapjack.WordAlloc.removeDeadStructural input3237 value597 value1 value2 = (output3237, value603, value1) := by
  rw [input3237_def, output3237_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3237 input3236)).val
theorem input3238_def : input3238 = (.seq input3237 input3236) := by
  unfold input3238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3238 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3237 output3236)).val
theorem output3238_def : output3238 = (.seq output3237 output3236) := by
  unfold output3238
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3238_skip : Flapjack.WordAlloc.isSkip output3238 = false := by
  rw [output3238_def]
  conv => lhs; cbv
  try rfl
theorem node3238_eq : Flapjack.WordAlloc.removeDeadStructural input3238 value602 value1 value2 = (output3238, value603, value1) := by
  rw [input3238_def, output3238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3236_eq]
  try dsimp only
  rw [node3237_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value604 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 4037 [2])).val
theorem input3239_def : input3239 = (Flapjack.WordLangProgHOL.return 4037 [2]) := by
  unfold input3239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3239 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 4037 [2])).val
theorem output3239_def : output3239 = (Flapjack.WordLangProgHOL.return 4037 [2]) := by
  unfold output3239
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3239_skip : Flapjack.WordAlloc.isSkip output3239 = false := by
  rw [output3239_def]
  conv => lhs; cbv
  try rfl
theorem node3239_eq : Flapjack.WordAlloc.removeDeadStructural input3239 value603 value1 value2 = (output3239, value604, value1) := by
  rw [input3239_def, output3239_def]
  try (conv => lhs; cbv)
  try rfl

def value605 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 4057)])).val
theorem input3240_def : input3240 = (Flapjack.WordLangProgHOL.move 0 [(2, 4057)]) := by
  unfold input3240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3240 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 4057)])).val
theorem output3240_def : output3240 = (Flapjack.WordLangProgHOL.move 0 [(2, 4057)]) := by
  unfold output3240
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3240_skip : Flapjack.WordAlloc.isSkip output3240 = false := by
  rw [output3240_def]
  conv => lhs; cbv
  try rfl
theorem node3240_eq : Flapjack.WordAlloc.removeDeadStructural input3240 value604 value1 value2 = (output3240, value605, value1) := by
  rw [input3240_def, output3240_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3240 input3239)).val
theorem input3241_def : input3241 = (.seq input3240 input3239) := by
  unfold input3241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3241 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3240 output3239)).val
theorem output3241_def : output3241 = (.seq output3240 output3239) := by
  unfold output3241
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3241_skip : Flapjack.WordAlloc.isSkip output3241 = false := by
  rw [output3241_def]
  conv => lhs; cbv
  try rfl
theorem node3241_eq : Flapjack.WordAlloc.removeDeadStructural input3241 value603 value1 value2 = (output3241, value605, value1) := by
  rw [input3241_def, output3241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3239_eq]
  try dsimp only
  rw [node3240_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4057 0#64))).val
theorem input3242_def : input3242 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4057 0#64)) := by
  unfold input3242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3242 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4057 0#64))).val
theorem output3242_def : output3242 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4057 0#64)) := by
  unfold output3242
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3242_skip : Flapjack.WordAlloc.isSkip output3242 = false := by
  rw [output3242_def]
  conv => lhs; cbv
  try rfl
theorem node3242_eq : Flapjack.WordAlloc.removeDeadStructural input3242 value605 value1 value2 = (output3242, value603, value1) := by
  rw [input3242_def, output3242_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3243_def : input3243 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3243 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3243_def : output3243 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3243
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3243_skip : Flapjack.WordAlloc.isSkip output3243 = false := by
  rw [output3243_def]
  conv => lhs; cbv
  try rfl
theorem node3243_eq : Flapjack.WordAlloc.removeDeadStructural input3243 value603 value1 value2 = (output3243, value603, value1) := by
  rw [input3243_def, output3243_def]
  try (conv => lhs; cbv)
  try rfl

def value606 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln))))))

@[irreducible, cbv_opaque] def input3244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(4037, 4031)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(4041, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(4049, 4041)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4053 0#64)))),
      597, 96))
  (some 581) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(4037, 4031)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(4045, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 4045)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4049 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(4053, 4045)]))),
      597, 97)))).val
theorem input3244_def : input3244 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(4037, 4031)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(4041, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(4049, 4041)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4053 0#64)))),
      597, 96))
  (some 581) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(4037, 4031)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(4045, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 4045)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4049 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(4053, 4045)]))),
      597, 97))) := by
  unfold input3244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3244 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(4037, 4031)], 597, 96))
  (some 581) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(4037, 4031)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(4045, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 4045)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 97)))).val
theorem output3244_def : output3244 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn Flapjack.Spt.ln
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln)
                        Flapjack.Spt.ln)
                      Flapjack.Spt.ln)))))),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(4037, 4031)], 597, 96))
  (some 581) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(4037, 4031)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(4045, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 4045)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 97))) := by
  unfold output3244
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3244_skip : Flapjack.WordAlloc.isSkip output3244 = false := by
  rw [output3244_def]
  conv => lhs; cbv
  try rfl
theorem node3244_eq : Flapjack.WordAlloc.removeDeadStructural input3244 value603 value1 value2 = (output3244, value606, value1) := by
  rw [input3244_def, output3244_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input3245_def : input3245 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input3245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3245 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3245_def : output3245 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3245
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3245_skip : Flapjack.WordAlloc.isSkip output3245 = true := by
  rw [output3245_def]
  conv => lhs; cbv
  try rfl
theorem node3245_eq : Flapjack.WordAlloc.removeDeadStructural input3245 value606 value1 value2 = (output3245, value606, value1) := by
  rw [input3245_def, output3245_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3245 input3244)).val
theorem input3246_def : input3246 = (.seq input3245 input3244) := by
  unfold input3246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3246 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3244)).val
theorem output3246_def : output3246 = (output3244) := by
  unfold output3246
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3246_skip : Flapjack.WordAlloc.isSkip output3246 = false := by
  rw [output3246_def]
  conv => lhs; cbv
  try rfl
theorem node3246_eq : Flapjack.WordAlloc.removeDeadStructural input3246 value603 value1 value2 = (output3246, value606, value1) := by
  rw [input3246_def, output3246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3244_eq]
  try dsimp only
  rw [node3245_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value607 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4031, 3985)])).val
theorem input3247_def : input3247 = (Flapjack.WordLangProgHOL.move 0 [(4031, 3985)]) := by
  unfold input3247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3247 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4031, 3985)])).val
theorem output3247_def : output3247 = (Flapjack.WordLangProgHOL.move 0 [(4031, 3985)]) := by
  unfold output3247
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3247_skip : Flapjack.WordAlloc.isSkip output3247 = false := by
  rw [output3247_def]
  conv => lhs; cbv
  try rfl
theorem node3247_eq : Flapjack.WordAlloc.removeDeadStructural input3247 value606 value1 value2 = (output3247, value607, value1) := by
  rw [input3247_def, output3247_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3247 input3246)).val
theorem input3248_def : input3248 = (.seq input3247 input3246) := by
  unfold input3248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3248 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3247 output3246)).val
theorem output3248_def : output3248 = (.seq output3247 output3246) := by
  unfold output3248
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3248_skip : Flapjack.WordAlloc.isSkip output3248 = false := by
  rw [output3248_def]
  conv => lhs; cbv
  try rfl
theorem node3248_eq : Flapjack.WordAlloc.removeDeadStructural input3248 value603 value1 value2 = (output3248, value607, value1) := by
  rw [input3248_def, output3248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3246_eq]
  try dsimp only
  rw [node3247_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4025 1#64))).val
theorem input3249_def : input3249 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4025 1#64)) := by
  unfold input3249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3249 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3249_def : output3249 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3249
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3249_skip : Flapjack.WordAlloc.isSkip output3249 = true := by
  rw [output3249_def]
  conv => lhs; cbv
  try rfl
theorem node3249_eq : Flapjack.WordAlloc.removeDeadStructural input3249 value607 value1 value2 = (output3249, value607, value1) := by
  rw [input3249_def, output3249_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3250_def : input3250 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3250 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3250_def : output3250 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3250
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3250_skip : Flapjack.WordAlloc.isSkip output3250 = false := by
  rw [output3250_def]
  conv => lhs; cbv
  try rfl
theorem node3250_eq : Flapjack.WordAlloc.removeDeadStructural input3250 value607 value1 value2 = (output3250, value607, value1) := by
  rw [input3250_def, output3250_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4021 1#64))).val
theorem input3251_def : input3251 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4021 1#64)) := by
  unfold input3251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3251 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3251_def : output3251 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3251
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3251_skip : Flapjack.WordAlloc.isSkip output3251 = true := by
  rw [output3251_def]
  conv => lhs; cbv
  try rfl
theorem node3251_eq : Flapjack.WordAlloc.removeDeadStructural input3251 value607 value1 value2 = (output3251, value607, value1) := by
  rw [input3251_def, output3251_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3251 input3250)).val
theorem input3252_def : input3252 = (.seq input3251 input3250) := by
  unfold input3252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3252 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3250)).val
theorem output3252_def : output3252 = (output3250) := by
  unfold output3252
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3252_skip : Flapjack.WordAlloc.isSkip output3252 = false := by
  rw [output3252_def]
  conv => lhs; cbv
  try rfl
theorem node3252_eq : Flapjack.WordAlloc.removeDeadStructural input3252 value607 value1 value2 = (output3252, value607, value1) := by
  rw [input3252_def, output3252_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3250_eq]
  try dsimp only
  rw [node3251_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3252 input3249)).val
theorem input3253_def : input3253 = (.seq input3252 input3249) := by
  unfold input3253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3253 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3252)).val
theorem output3253_def : output3253 = (output3252) := by
  unfold output3253
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3253_skip : Flapjack.WordAlloc.isSkip output3253 = false := by
  rw [output3253_def]
  conv => lhs; cbv
  try rfl
theorem node3253_eq : Flapjack.WordAlloc.removeDeadStructural input3253 value607 value1 value2 = (output3253, value607, value1) := by
  rw [input3253_def, output3253_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3249_eq]
  try dsimp only
  rw [node3252_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3253 input3248)).val
theorem input3254_def : input3254 = (.seq input3253 input3248) := by
  unfold input3254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3254 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3253 output3248)).val
theorem output3254_def : output3254 = (.seq output3253 output3248) := by
  unfold output3254
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3254_skip : Flapjack.WordAlloc.isSkip output3254 = false := by
  rw [output3254_def]
  conv => lhs; cbv
  try rfl
theorem node3254_eq : Flapjack.WordAlloc.removeDeadStructural input3254 value603 value1 value2 = (output3254, value607, value1) := by
  rw [input3254_def, output3254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3248_eq]
  try dsimp only
  rw [node3253_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3254 input3243)).val
theorem input3255_def : input3255 = (.seq input3254 input3243) := by
  unfold input3255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3255 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3254 output3243)).val
theorem output3255_def : output3255 = (.seq output3254 output3243) := by
  unfold output3255
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3255_skip : Flapjack.WordAlloc.isSkip output3255 = false := by
  rw [output3255_def]
  conv => lhs; cbv
  try rfl
theorem node3255_eq : Flapjack.WordAlloc.removeDeadStructural input3255 value603 value1 value2 = (output3255, value607, value1) := by
  rw [input3255_def, output3255_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3243_eq]
  try dsimp only
  rw [node3254_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3255 input3242)).val
theorem input3256_def : input3256 = (.seq input3255 input3242) := by
  unfold input3256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3256 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3255 output3242)).val
theorem output3256_def : output3256 = (.seq output3255 output3242) := by
  unfold output3256
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3256_skip : Flapjack.WordAlloc.isSkip output3256 = false := by
  rw [output3256_def]
  conv => lhs; cbv
  try rfl
theorem node3256_eq : Flapjack.WordAlloc.removeDeadStructural input3256 value605 value1 value2 = (output3256, value607, value1) := by
  rw [input3256_def, output3256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3242_eq]
  try dsimp only
  rw [node3255_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3256 input3241)).val
theorem input3257_def : input3257 = (.seq input3256 input3241) := by
  unfold input3257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3257 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3256 output3241)).val
theorem output3257_def : output3257 = (.seq output3256 output3241) := by
  unfold output3257
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3257_skip : Flapjack.WordAlloc.isSkip output3257 = false := by
  rw [output3257_def]
  conv => lhs; cbv
  try rfl
theorem node3257_eq : Flapjack.WordAlloc.removeDeadStructural input3257 value603 value1 value2 = (output3257, value607, value1) := by
  rw [input3257_def, output3257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3241_eq]
  try dsimp only
  rw [node3256_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3257 input3238)).val
theorem input3258_def : input3258 = (.seq input3257 input3238) := by
  unfold input3258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3258 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3257 output3238)).val
theorem output3258_def : output3258 = (.seq output3257 output3238) := by
  unfold output3258
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3258_skip : Flapjack.WordAlloc.isSkip output3258 = false := by
  rw [output3258_def]
  conv => lhs; cbv
  try rfl
theorem node3258_eq : Flapjack.WordAlloc.removeDeadStructural input3258 value602 value1 value2 = (output3258, value607, value1) := by
  rw [input3258_def, output3258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3238_eq]
  try dsimp only
  rw [node3257_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4085, 4001)])).val
theorem input3259_def : input3259 = (Flapjack.WordLangProgHOL.move 2 [(4085, 4001)]) := by
  unfold input3259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3259 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3259_def : output3259 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3259
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3259_skip : Flapjack.WordAlloc.isSkip output3259 = true := by
  rw [output3259_def]
  conv => lhs; cbv
  try rfl
theorem node3259_eq : Flapjack.WordAlloc.removeDeadStructural input3259 value602 value1 value2 = (output3259, value602, value1) := by
  rw [input3259_def, output3259_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4081, 4009)])).val
theorem input3260_def : input3260 = (Flapjack.WordLangProgHOL.move 2 [(4081, 4009)]) := by
  unfold input3260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3260 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3260_def : output3260 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3260
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3260_skip : Flapjack.WordAlloc.isSkip output3260 = true := by
  rw [output3260_def]
  conv => lhs; cbv
  try rfl
theorem node3260_eq : Flapjack.WordAlloc.removeDeadStructural input3260 value602 value1 value2 = (output3260, value602, value1) := by
  rw [input3260_def, output3260_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4077, 4017)])).val
theorem input3261_def : input3261 = (Flapjack.WordLangProgHOL.move 2 [(4077, 4017)]) := by
  unfold input3261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3261 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3261_def : output3261 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3261
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3261_skip : Flapjack.WordAlloc.isSkip output3261 = true := by
  rw [output3261_def]
  conv => lhs; cbv
  try rfl
theorem node3261_eq : Flapjack.WordAlloc.removeDeadStructural input3261 value602 value1 value2 = (output3261, value602, value1) := by
  rw [input3261_def, output3261_def]
  try (conv => lhs; cbv)
  try rfl

def value608 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4073, 4013)])).val
theorem input3262_def : input3262 = (Flapjack.WordLangProgHOL.move 2 [(4073, 4013)]) := by
  unfold input3262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3262 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4073, 4013)])).val
theorem output3262_def : output3262 = (Flapjack.WordLangProgHOL.move 2 [(4073, 4013)]) := by
  unfold output3262
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3262_skip : Flapjack.WordAlloc.isSkip output3262 = false := by
  rw [output3262_def]
  conv => lhs; cbv
  try rfl
theorem node3262_eq : Flapjack.WordAlloc.removeDeadStructural input3262 value602 value1 value2 = (output3262, value608, value1) := by
  rw [input3262_def, output3262_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3263_def : input3263 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3263 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3263_def : output3263 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3263
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3263_skip : Flapjack.WordAlloc.isSkip output3263 = true := by
  rw [output3263_def]
  conv => lhs; cbv
  try rfl
theorem node3263_eq : Flapjack.WordAlloc.removeDeadStructural input3263 value608 value1 value2 = (output3263, value608, value1) := by
  rw [input3263_def, output3263_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3263 input3262)).val
theorem input3264_def : input3264 = (.seq input3263 input3262) := by
  unfold input3264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3264 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3262)).val
theorem output3264_def : output3264 = (output3262) := by
  unfold output3264
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3264_skip : Flapjack.WordAlloc.isSkip output3264 = false := by
  rw [output3264_def]
  conv => lhs; cbv
  try rfl
theorem node3264_eq : Flapjack.WordAlloc.removeDeadStructural input3264 value602 value1 value2 = (output3264, value608, value1) := by
  rw [input3264_def, output3264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3262_eq]
  try dsimp only
  rw [node3263_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3264 input3261)).val
theorem input3265_def : input3265 = (.seq input3264 input3261) := by
  unfold input3265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3265 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3264)).val
theorem output3265_def : output3265 = (output3264) := by
  unfold output3265
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3265_skip : Flapjack.WordAlloc.isSkip output3265 = false := by
  rw [output3265_def]
  conv => lhs; cbv
  try rfl
theorem node3265_eq : Flapjack.WordAlloc.removeDeadStructural input3265 value602 value1 value2 = (output3265, value608, value1) := by
  rw [input3265_def, output3265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3261_eq]
  try dsimp only
  rw [node3264_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3265 input3260)).val
theorem input3266_def : input3266 = (.seq input3265 input3260) := by
  unfold input3266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3266 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3265)).val
theorem output3266_def : output3266 = (output3265) := by
  unfold output3266
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3266_skip : Flapjack.WordAlloc.isSkip output3266 = false := by
  rw [output3266_def]
  conv => lhs; cbv
  try rfl
theorem node3266_eq : Flapjack.WordAlloc.removeDeadStructural input3266 value602 value1 value2 = (output3266, value608, value1) := by
  rw [input3266_def, output3266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3260_eq]
  try dsimp only
  rw [node3265_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3266 input3259)).val
theorem input3267_def : input3267 = (.seq input3266 input3259) := by
  unfold input3267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3267 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3266)).val
theorem output3267_def : output3267 = (output3266) := by
  unfold output3267
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3267_skip : Flapjack.WordAlloc.isSkip output3267 = false := by
  rw [output3267_def]
  conv => lhs; cbv
  try rfl
theorem node3267_eq : Flapjack.WordAlloc.removeDeadStructural input3267 value602 value1 value2 = (output3267, value608, value1) := by
  rw [input3267_def, output3267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3259_eq]
  try dsimp only
  rw [node3266_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value609 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4069, 3985), (4065, 4013), (4061, 3977)])).val
theorem input3268_def : input3268 = (Flapjack.WordLangProgHOL.move 2 [(4069, 3985), (4065, 4013), (4061, 3977)]) := by
  unfold input3268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3268 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4069, 3985)])).val
theorem output3268_def : output3268 = (Flapjack.WordLangProgHOL.move 2 [(4069, 3985)]) := by
  unfold output3268
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3268_skip : Flapjack.WordAlloc.isSkip output3268 = false := by
  rw [output3268_def]
  conv => lhs; cbv
  try rfl
theorem node3268_eq : Flapjack.WordAlloc.removeDeadStructural input3268 value608 value1 value2 = (output3268, value609, value1) := by
  rw [input3268_def, output3268_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3268 input3267)).val
theorem input3269_def : input3269 = (.seq input3268 input3267) := by
  unfold input3269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3269 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3268 output3267)).val
theorem output3269_def : output3269 = (.seq output3268 output3267) := by
  unfold output3269
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3269_skip : Flapjack.WordAlloc.isSkip output3269 = false := by
  rw [output3269_def]
  conv => lhs; cbv
  try rfl
theorem node3269_eq : Flapjack.WordAlloc.removeDeadStructural input3269 value602 value1 value2 = (output3269, value609, value1) := by
  rw [input3269_def, output3269_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3267_eq]
  try dsimp only
  rw [node3268_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3270_def : input3270 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3270 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3270_def : output3270 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3270
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3270_skip : Flapjack.WordAlloc.isSkip output3270 = true := by
  rw [output3270_def]
  conv => lhs; cbv
  try rfl
theorem node3270_eq : Flapjack.WordAlloc.removeDeadStructural input3270 value609 value1 value2 = (output3270, value609, value1) := by
  rw [input3270_def, output3270_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3270 input3269)).val
theorem input3271_def : input3271 = (.seq input3270 input3269) := by
  unfold input3271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3271 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3269)).val
theorem output3271_def : output3271 = (output3269) := by
  unfold output3271
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3271_skip : Flapjack.WordAlloc.isSkip output3271 = false := by
  rw [output3271_def]
  conv => lhs; cbv
  try rfl
theorem node3271_eq : Flapjack.WordAlloc.removeDeadStructural input3271 value602 value1 value2 = (output3271, value609, value1) := by
  rw [input3271_def, output3271_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3269_eq]
  try dsimp only
  rw [node3270_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value610 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 4017

def value611 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 4013 value610 input3258 input3271)).val
theorem input3272_def : input3272 = (.ite value15 4013 value610 input3258 input3271) := by
  unfold input3272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3272 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 4013 value610 output3258 output3271)).val
theorem output3272_def : output3272 = (.ite value15 4013 value610 output3258 output3271) := by
  unfold output3272
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3272_skip : Flapjack.WordAlloc.isSkip output3272 = false := by
  rw [output3272_def]
  conv => lhs; cbv
  try rfl
theorem node3272_eq : Flapjack.WordAlloc.removeDeadStructural input3272 value602 value1 value2 = (output3272, value611, value1) := by
  rw [input3272_def, output3272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node3258_eq]
  try dsimp only
  rw [node3271_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3272 input3227)).val
theorem input3273_def : input3273 = (.seq input3272 input3227) := by
  unfold input3273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3273 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3272 output3227)).val
theorem output3273_def : output3273 = (.seq output3272 output3227) := by
  unfold output3273
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3273_skip : Flapjack.WordAlloc.isSkip output3273 = false := by
  rw [output3273_def]
  conv => lhs; cbv
  try rfl
theorem node3273_eq : Flapjack.WordAlloc.removeDeadStructural input3273 value602 value1 value2 = (output3273, value611, value1) := by
  rw [input3273_def, output3273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3227_eq]
  try dsimp only
  rw [node3272_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4017 67#64))).val
theorem input3274_def : input3274 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4017 67#64)) := by
  unfold input3274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3274 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4017 67#64))).val
theorem output3274_def : output3274 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4017 67#64)) := by
  unfold output3274
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3274_skip : Flapjack.WordAlloc.isSkip output3274 = false := by
  rw [output3274_def]
  conv => lhs; cbv
  try rfl
theorem node3274_eq : Flapjack.WordAlloc.removeDeadStructural input3274 value611 value1 value2 = (output3274, value609, value1) := by
  rw [input3274_def, output3274_def]
  try (conv => lhs; cbv)
  try rfl

def value612 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4013, 3989)])).val
theorem input3275_def : input3275 = (Flapjack.WordLangProgHOL.move 0 [(4013, 3989)]) := by
  unfold input3275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3275 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(4013, 3989)])).val
theorem output3275_def : output3275 = (Flapjack.WordLangProgHOL.move 0 [(4013, 3989)]) := by
  unfold output3275
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3275_skip : Flapjack.WordAlloc.isSkip output3275 = false := by
  rw [output3275_def]
  conv => lhs; cbv
  try rfl
theorem node3275_eq : Flapjack.WordAlloc.removeDeadStructural input3275 value609 value1 value2 = (output3275, value612, value1) := by
  rw [input3275_def, output3275_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3276_def : input3276 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3276 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3276_def : output3276 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3276
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3276_skip : Flapjack.WordAlloc.isSkip output3276 = false := by
  rw [output3276_def]
  conv => lhs; cbv
  try rfl
theorem node3276_eq : Flapjack.WordAlloc.removeDeadStructural input3276 value612 value1 value2 = (output3276, value612, value1) := by
  rw [input3276_def, output3276_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4009 0#64))).val
theorem input3277_def : input3277 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4009 0#64)) := by
  unfold input3277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3277 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3277_def : output3277 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3277
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3277_skip : Flapjack.WordAlloc.isSkip output3277 = true := by
  rw [output3277_def]
  conv => lhs; cbv
  try rfl
theorem node3277_eq : Flapjack.WordAlloc.removeDeadStructural input3277 value612 value1 value2 = (output3277, value612, value1) := by
  rw [input3277_def, output3277_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3278_def : input3278 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3278 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3278_def : output3278 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3278
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3278_skip : Flapjack.WordAlloc.isSkip output3278 = false := by
  rw [output3278_def]
  conv => lhs; cbv
  try rfl
theorem node3278_eq : Flapjack.WordAlloc.removeDeadStructural input3278 value612 value1 value2 = (output3278, value612, value1) := by
  rw [input3278_def, output3278_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4005 0#64))).val
theorem input3279_def : input3279 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4005 0#64)) := by
  unfold input3279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3279 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3279_def : output3279 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3279
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3279_skip : Flapjack.WordAlloc.isSkip output3279 = true := by
  rw [output3279_def]
  conv => lhs; cbv
  try rfl
theorem node3279_eq : Flapjack.WordAlloc.removeDeadStructural input3279 value612 value1 value2 = (output3279, value612, value1) := by
  rw [input3279_def, output3279_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3279 input3278)).val
theorem input3280_def : input3280 = (.seq input3279 input3278) := by
  unfold input3280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3280 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3278)).val
theorem output3280_def : output3280 = (output3278) := by
  unfold output3280
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3280_skip : Flapjack.WordAlloc.isSkip output3280 = false := by
  rw [output3280_def]
  conv => lhs; cbv
  try rfl
theorem node3280_eq : Flapjack.WordAlloc.removeDeadStructural input3280 value612 value1 value2 = (output3280, value612, value1) := by
  rw [input3280_def, output3280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3278_eq]
  try dsimp only
  rw [node3279_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3280 input3277)).val
theorem input3281_def : input3281 = (.seq input3280 input3277) := by
  unfold input3281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3281 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3280)).val
theorem output3281_def : output3281 = (output3280) := by
  unfold output3281
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3281_skip : Flapjack.WordAlloc.isSkip output3281 = false := by
  rw [output3281_def]
  conv => lhs; cbv
  try rfl
theorem node3281_eq : Flapjack.WordAlloc.removeDeadStructural input3281 value612 value1 value2 = (output3281, value612, value1) := by
  rw [input3281_def, output3281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3277_eq]
  try dsimp only
  rw [node3280_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4001 0#64))).val
theorem input3282_def : input3282 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 4001 0#64)) := by
  unfold input3282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3282 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3282_def : output3282 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3282
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3282_skip : Flapjack.WordAlloc.isSkip output3282 = true := by
  rw [output3282_def]
  conv => lhs; cbv
  try rfl
theorem node3282_eq : Flapjack.WordAlloc.removeDeadStructural input3282 value612 value1 value2 = (output3282, value612, value1) := by
  rw [input3282_def, output3282_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3997 0#64))).val
theorem input3283_def : input3283 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3997 0#64)) := by
  unfold input3283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3283 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3283_def : output3283 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3283
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3283_skip : Flapjack.WordAlloc.isSkip output3283 = true := by
  rw [output3283_def]
  conv => lhs; cbv
  try rfl
theorem node3283_eq : Flapjack.WordAlloc.removeDeadStructural input3283 value612 value1 value2 = (output3283, value612, value1) := by
  rw [input3283_def, output3283_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3993 0#64))).val
theorem input3284_def : input3284 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3993 0#64)) := by
  unfold input3284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3284 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3284_def : output3284 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3284
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3284_skip : Flapjack.WordAlloc.isSkip output3284 = true := by
  rw [output3284_def]
  conv => lhs; cbv
  try rfl
theorem node3284_eq : Flapjack.WordAlloc.removeDeadStructural input3284 value612 value1 value2 = (output3284, value612, value1) := by
  rw [input3284_def, output3284_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3989 0#64))).val
theorem input3285_def : input3285 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3989 0#64)) := by
  unfold input3285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3285 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3989 0#64))).val
theorem output3285_def : output3285 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3989 0#64)) := by
  unfold output3285
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3285_skip : Flapjack.WordAlloc.isSkip output3285 = false := by
  rw [output3285_def]
  conv => lhs; cbv
  try rfl
theorem node3285_eq : Flapjack.WordAlloc.removeDeadStructural input3285 value612 value1 value2 = (output3285, value607, value1) := by
  rw [input3285_def, output3285_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3286_def : input3286 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3286 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3286_def : output3286 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3286
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3286_skip : Flapjack.WordAlloc.isSkip output3286 = true := by
  rw [output3286_def]
  conv => lhs; cbv
  try rfl
theorem node3286_eq : Flapjack.WordAlloc.removeDeadStructural input3286 value607 value1 value2 = (output3286, value607, value1) := by
  rw [input3286_def, output3286_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3286 input3285)).val
theorem input3287_def : input3287 = (.seq input3286 input3285) := by
  unfold input3287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3287 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3285)).val
theorem output3287_def : output3287 = (output3285) := by
  unfold output3287
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3287_skip : Flapjack.WordAlloc.isSkip output3287 = false := by
  rw [output3287_def]
  conv => lhs; cbv
  try rfl
theorem node3287_eq : Flapjack.WordAlloc.removeDeadStructural input3287 value612 value1 value2 = (output3287, value607, value1) := by
  rw [input3287_def, output3287_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3285_eq]
  try dsimp only
  rw [node3286_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3287 input3284)).val
theorem input3288_def : input3288 = (.seq input3287 input3284) := by
  unfold input3288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3288 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3287)).val
theorem output3288_def : output3288 = (output3287) := by
  unfold output3288
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3288_skip : Flapjack.WordAlloc.isSkip output3288 = false := by
  rw [output3288_def]
  conv => lhs; cbv
  try rfl
theorem node3288_eq : Flapjack.WordAlloc.removeDeadStructural input3288 value612 value1 value2 = (output3288, value607, value1) := by
  rw [input3288_def, output3288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3284_eq]
  try dsimp only
  rw [node3287_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3288 input3283)).val
theorem input3289_def : input3289 = (.seq input3288 input3283) := by
  unfold input3289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3289 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3288)).val
theorem output3289_def : output3289 = (output3288) := by
  unfold output3289
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3289_skip : Flapjack.WordAlloc.isSkip output3289 = false := by
  rw [output3289_def]
  conv => lhs; cbv
  try rfl
theorem node3289_eq : Flapjack.WordAlloc.removeDeadStructural input3289 value612 value1 value2 = (output3289, value607, value1) := by
  rw [input3289_def, output3289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3283_eq]
  try dsimp only
  rw [node3288_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3289 input3282)).val
theorem input3290_def : input3290 = (.seq input3289 input3282) := by
  unfold input3290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3290 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3289)).val
theorem output3290_def : output3290 = (output3289) := by
  unfold output3290
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3290_skip : Flapjack.WordAlloc.isSkip output3290 = false := by
  rw [output3290_def]
  conv => lhs; cbv
  try rfl
theorem node3290_eq : Flapjack.WordAlloc.removeDeadStructural input3290 value612 value1 value2 = (output3290, value607, value1) := by
  rw [input3290_def, output3290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3282_eq]
  try dsimp only
  rw [node3289_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value613 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(3985, 3953), (3981, 3969), (3977, 3973)])).val
theorem input3291_def : input3291 = (Flapjack.WordLangProgHOL.move 1 [(3985, 3953), (3981, 3969), (3977, 3973)]) := by
  unfold input3291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3291 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(3985, 3953)])).val
theorem output3291_def : output3291 = (Flapjack.WordLangProgHOL.move 1 [(3985, 3953)]) := by
  unfold output3291
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3291_skip : Flapjack.WordAlloc.isSkip output3291 = false := by
  rw [output3291_def]
  conv => lhs; cbv
  try rfl
theorem node3291_eq : Flapjack.WordAlloc.removeDeadStructural input3291 value607 value1 value2 = (output3291, value613, value1) := by
  rw [input3291_def, output3291_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3291 input3290)).val
theorem input3292_def : input3292 = (.seq input3291 input3290) := by
  unfold input3292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3292 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3291 output3290)).val
theorem output3292_def : output3292 = (.seq output3291 output3290) := by
  unfold output3292
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3292_skip : Flapjack.WordAlloc.isSkip output3292 = false := by
  rw [output3292_def]
  conv => lhs; cbv
  try rfl
theorem node3292_eq : Flapjack.WordAlloc.removeDeadStructural input3292 value612 value1 value2 = (output3292, value613, value1) := by
  rw [input3292_def, output3292_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3290_eq]
  try dsimp only
  rw [node3291_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value614 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 3953 [2])).val
theorem input3293_def : input3293 = (Flapjack.WordLangProgHOL.return 3953 [2]) := by
  unfold input3293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3293 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.return 3953 [2])).val
theorem output3293_def : output3293 = (Flapjack.WordLangProgHOL.return 3953 [2]) := by
  unfold output3293
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3293_skip : Flapjack.WordAlloc.isSkip output3293 = false := by
  rw [output3293_def]
  conv => lhs; cbv
  try rfl
theorem node3293_eq : Flapjack.WordAlloc.removeDeadStructural input3293 value613 value1 value2 = (output3293, value614, value1) := by
  rw [input3293_def, output3293_def]
  try (conv => lhs; cbv)
  try rfl

def value615 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 3973)])).val
theorem input3294_def : input3294 = (Flapjack.WordLangProgHOL.move 0 [(2, 3973)]) := by
  unfold input3294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3294 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(2, 3973)])).val
theorem output3294_def : output3294 = (Flapjack.WordLangProgHOL.move 0 [(2, 3973)]) := by
  unfold output3294
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3294_skip : Flapjack.WordAlloc.isSkip output3294 = false := by
  rw [output3294_def]
  conv => lhs; cbv
  try rfl
theorem node3294_eq : Flapjack.WordAlloc.removeDeadStructural input3294 value614 value1 value2 = (output3294, value615, value1) := by
  rw [input3294_def, output3294_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3294 input3293)).val
theorem input3295_def : input3295 = (.seq input3294 input3293) := by
  unfold input3295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3295 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3294 output3293)).val
theorem output3295_def : output3295 = (.seq output3294 output3293) := by
  unfold output3295
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3295_skip : Flapjack.WordAlloc.isSkip output3295 = false := by
  rw [output3295_def]
  conv => lhs; cbv
  try rfl
theorem node3295_eq : Flapjack.WordAlloc.removeDeadStructural input3295 value613 value1 value2 = (output3295, value615, value1) := by
  rw [input3295_def, output3295_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3293_eq]
  try dsimp only
  rw [node3294_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3973 0#64))).val
theorem input3296_def : input3296 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3973 0#64)) := by
  unfold input3296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3296 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3973 0#64))).val
theorem output3296_def : output3296 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3973 0#64)) := by
  unfold output3296
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3296_skip : Flapjack.WordAlloc.isSkip output3296 = false := by
  rw [output3296_def]
  conv => lhs; cbv
  try rfl
theorem node3296_eq : Flapjack.WordAlloc.removeDeadStructural input3296 value615 value1 value2 = (output3296, value613, value1) := by
  rw [input3296_def, output3296_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3297_def : input3297 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3297 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3297_def : output3297 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3297
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3297_skip : Flapjack.WordAlloc.isSkip output3297 = false := by
  rw [output3297_def]
  conv => lhs; cbv
  try rfl
theorem node3297_eq : Flapjack.WordAlloc.removeDeadStructural input3297 value613 value1 value2 = (output3297, value613, value1) := by
  rw [input3297_def, output3297_def]
  try (conv => lhs; cbv)
  try rfl

def value616 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn Flapjack.Spt.ln
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln)
      Flapjack.Spt.ln))

@[irreducible, cbv_opaque] def input3298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(3953, 3947)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(3957, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(3965, 3957)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3969 0#64)))),
      597, 94))
  (some 580) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(3953, 3947)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(3961, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 3961)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3965 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(3969, 3961)]))),
      597, 95)))).val
theorem input3298_def : input3298 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(3953, 3947)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(3957, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(3965, 3957)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3969 0#64)))),
      597, 94))
  (some 580) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(3953, 3947)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(3961, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 3961)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3965 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(3969, 3961)]))),
      597, 95))) := by
  unfold input3298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3298 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(3953, 3947)], 597, 94))
  (some 580) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(3953, 3947)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(3961, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 3961)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 95)))).val
theorem output3298_def : output3298 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn Flapjack.Spt.ln
                  (Flapjack.Spt.bn
                    (Flapjack.Spt.bn
                      (Flapjack.Spt.bn Flapjack.Spt.ln
                        (Flapjack.Spt.bn
                          (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
                            Flapjack.Spt.ln)
                          Flapjack.Spt.ln))
                      Flapjack.Spt.ln)
                    Flapjack.Spt.ln))
                Flapjack.Spt.ln)
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.move 0 [(3953, 3947)], 597, 94))
  (some 580) []
  (some
    (2,
      Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(3953, 3947)])
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(3961, 2)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 3961)])
            (Flapjack.WordLangProgHOL.raise 2))),
      597, 95))) := by
  unfold output3298
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3298_skip : Flapjack.WordAlloc.isSkip output3298 = false := by
  rw [output3298_def]
  conv => lhs; cbv
  try rfl
theorem node3298_eq : Flapjack.WordAlloc.removeDeadStructural input3298 value613 value1 value2 = (output3298, value616, value1) := by
  rw [input3298_def, output3298_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [])).val
theorem input3299_def : input3299 = (Flapjack.WordLangProgHOL.move 1 []) := by
  unfold input3299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3299 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3299_def : output3299 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3299
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3299_skip : Flapjack.WordAlloc.isSkip output3299 = true := by
  rw [output3299_def]
  conv => lhs; cbv
  try rfl
theorem node3299_eq : Flapjack.WordAlloc.removeDeadStructural input3299 value616 value1 value2 = (output3299, value616, value1) := by
  rw [input3299_def, output3299_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3299 input3298)).val
theorem input3300_def : input3300 = (.seq input3299 input3298) := by
  unfold input3300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3300 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3298)).val
theorem output3300_def : output3300 = (output3298) := by
  unfold output3300
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3300_skip : Flapjack.WordAlloc.isSkip output3300 = false := by
  rw [output3300_def]
  conv => lhs; cbv
  try rfl
theorem node3300_eq : Flapjack.WordAlloc.removeDeadStructural input3300 value613 value1 value2 = (output3300, value616, value1) := by
  rw [input3300_def, output3300_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3298_eq]
  try dsimp only
  rw [node3299_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value617 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3947, 3901)])).val
theorem input3301_def : input3301 = (Flapjack.WordLangProgHOL.move 0 [(3947, 3901)]) := by
  unfold input3301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3301 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(3947, 3901)])).val
theorem output3301_def : output3301 = (Flapjack.WordLangProgHOL.move 0 [(3947, 3901)]) := by
  unfold output3301
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3301_skip : Flapjack.WordAlloc.isSkip output3301 = false := by
  rw [output3301_def]
  conv => lhs; cbv
  try rfl
theorem node3301_eq : Flapjack.WordAlloc.removeDeadStructural input3301 value616 value1 value2 = (output3301, value617, value1) := by
  rw [input3301_def, output3301_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3301 input3300)).val
theorem input3302_def : input3302 = (.seq input3301 input3300) := by
  unfold input3302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3302 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3301 output3300)).val
theorem output3302_def : output3302 = (.seq output3301 output3300) := by
  unfold output3302
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3302_skip : Flapjack.WordAlloc.isSkip output3302 = false := by
  rw [output3302_def]
  conv => lhs; cbv
  try rfl
theorem node3302_eq : Flapjack.WordAlloc.removeDeadStructural input3302 value613 value1 value2 = (output3302, value617, value1) := by
  rw [input3302_def, output3302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3300_eq]
  try dsimp only
  rw [node3301_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3941 1#64))).val
theorem input3303_def : input3303 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3941 1#64)) := by
  unfold input3303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3303 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3303_def : output3303 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3303
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3303_skip : Flapjack.WordAlloc.isSkip output3303 = true := by
  rw [output3303_def]
  conv => lhs; cbv
  try rfl
theorem node3303_eq : Flapjack.WordAlloc.removeDeadStructural input3303 value617 value1 value2 = (output3303, value617, value1) := by
  rw [input3303_def, output3303_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input3304_def : input3304 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input3304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3304 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output3304_def : output3304 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output3304
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3304_skip : Flapjack.WordAlloc.isSkip output3304 = false := by
  rw [output3304_def]
  conv => lhs; cbv
  try rfl
theorem node3304_eq : Flapjack.WordAlloc.removeDeadStructural input3304 value617 value1 value2 = (output3304, value617, value1) := by
  rw [input3304_def, output3304_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3937 1#64))).val
theorem input3305_def : input3305 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 3937 1#64)) := by
  unfold input3305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3305 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3305_def : output3305 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3305
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3305_skip : Flapjack.WordAlloc.isSkip output3305 = true := by
  rw [output3305_def]
  conv => lhs; cbv
  try rfl
theorem node3305_eq : Flapjack.WordAlloc.removeDeadStructural input3305 value617 value1 value2 = (output3305, value617, value1) := by
  rw [input3305_def, output3305_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3305 input3304)).val
theorem input3306_def : input3306 = (.seq input3305 input3304) := by
  unfold input3306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3306 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3304)).val
theorem output3306_def : output3306 = (output3304) := by
  unfold output3306
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3306_skip : Flapjack.WordAlloc.isSkip output3306 = false := by
  rw [output3306_def]
  conv => lhs; cbv
  try rfl
theorem node3306_eq : Flapjack.WordAlloc.removeDeadStructural input3306 value617 value1 value2 = (output3306, value617, value1) := by
  rw [input3306_def, output3306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3304_eq]
  try dsimp only
  rw [node3305_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3306 input3303)).val
theorem input3307_def : input3307 = (.seq input3306 input3303) := by
  unfold input3307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3307 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3306)).val
theorem output3307_def : output3307 = (output3306) := by
  unfold output3307
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3307_skip : Flapjack.WordAlloc.isSkip output3307 = false := by
  rw [output3307_def]
  conv => lhs; cbv
  try rfl
theorem node3307_eq : Flapjack.WordAlloc.removeDeadStructural input3307 value617 value1 value2 = (output3307, value617, value1) := by
  rw [input3307_def, output3307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3303_eq]
  try dsimp only
  rw [node3306_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3307 input3302)).val
theorem input3308_def : input3308 = (.seq input3307 input3302) := by
  unfold input3308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3308 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3307 output3302)).val
theorem output3308_def : output3308 = (.seq output3307 output3302) := by
  unfold output3308
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3308_skip : Flapjack.WordAlloc.isSkip output3308 = false := by
  rw [output3308_def]
  conv => lhs; cbv
  try rfl
theorem node3308_eq : Flapjack.WordAlloc.removeDeadStructural input3308 value613 value1 value2 = (output3308, value617, value1) := by
  rw [input3308_def, output3308_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3302_eq]
  try dsimp only
  rw [node3307_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3308 input3297)).val
theorem input3309_def : input3309 = (.seq input3308 input3297) := by
  unfold input3309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3309 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3308 output3297)).val
theorem output3309_def : output3309 = (.seq output3308 output3297) := by
  unfold output3309
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3309_skip : Flapjack.WordAlloc.isSkip output3309 = false := by
  rw [output3309_def]
  conv => lhs; cbv
  try rfl
theorem node3309_eq : Flapjack.WordAlloc.removeDeadStructural input3309 value613 value1 value2 = (output3309, value617, value1) := by
  rw [input3309_def, output3309_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3297_eq]
  try dsimp only
  rw [node3308_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3309 input3296)).val
theorem input3310_def : input3310 = (.seq input3309 input3296) := by
  unfold input3310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3310 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3309 output3296)).val
theorem output3310_def : output3310 = (.seq output3309 output3296) := by
  unfold output3310
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3310_skip : Flapjack.WordAlloc.isSkip output3310 = false := by
  rw [output3310_def]
  conv => lhs; cbv
  try rfl
theorem node3310_eq : Flapjack.WordAlloc.removeDeadStructural input3310 value615 value1 value2 = (output3310, value617, value1) := by
  rw [input3310_def, output3310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3296_eq]
  try dsimp only
  rw [node3309_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3310 input3295)).val
theorem input3311_def : input3311 = (.seq input3310 input3295) := by
  unfold input3311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3311 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3310 output3295)).val
theorem output3311_def : output3311 = (.seq output3310 output3295) := by
  unfold output3311
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3311_skip : Flapjack.WordAlloc.isSkip output3311 = false := by
  rw [output3311_def]
  conv => lhs; cbv
  try rfl
theorem node3311_eq : Flapjack.WordAlloc.removeDeadStructural input3311 value613 value1 value2 = (output3311, value617, value1) := by
  rw [input3311_def, output3311_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3295_eq]
  try dsimp only
  rw [node3310_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3311 input3292)).val
theorem input3312_def : input3312 = (.seq input3311 input3292) := by
  unfold input3312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3312 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3311 output3292)).val
theorem output3312_def : output3312 = (.seq output3311 output3292) := by
  unfold output3312
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3312_skip : Flapjack.WordAlloc.isSkip output3312 = false := by
  rw [output3312_def]
  conv => lhs; cbv
  try rfl
theorem node3312_eq : Flapjack.WordAlloc.removeDeadStructural input3312 value612 value1 value2 = (output3312, value617, value1) := by
  rw [input3312_def, output3312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3292_eq]
  try dsimp only
  rw [node3311_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(4001, 3917)])).val
theorem input3313_def : input3313 = (Flapjack.WordLangProgHOL.move 2 [(4001, 3917)]) := by
  unfold input3313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3313 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3313_def : output3313 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3313
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3313_skip : Flapjack.WordAlloc.isSkip output3313 = true := by
  rw [output3313_def]
  conv => lhs; cbv
  try rfl
theorem node3313_eq : Flapjack.WordAlloc.removeDeadStructural input3313 value612 value1 value2 = (output3313, value612, value1) := by
  rw [input3313_def, output3313_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(3997, 3925)])).val
theorem input3314_def : input3314 = (Flapjack.WordLangProgHOL.move 2 [(3997, 3925)]) := by
  unfold input3314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3314 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3314_def : output3314 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3314
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3314_skip : Flapjack.WordAlloc.isSkip output3314 = true := by
  rw [output3314_def]
  conv => lhs; cbv
  try rfl
theorem node3314_eq : Flapjack.WordAlloc.removeDeadStructural input3314 value612 value1 value2 = (output3314, value612, value1) := by
  rw [input3314_def, output3314_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(3993, 3933)])).val
theorem input3315_def : input3315 = (Flapjack.WordLangProgHOL.move 2 [(3993, 3933)]) := by
  unfold input3315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3315 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3315_def : output3315 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3315
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3315_skip : Flapjack.WordAlloc.isSkip output3315 = true := by
  rw [output3315_def]
  conv => lhs; cbv
  try rfl
theorem node3315_eq : Flapjack.WordAlloc.removeDeadStructural input3315 value612 value1 value2 = (output3315, value612, value1) := by
  rw [input3315_def, output3315_def]
  try (conv => lhs; cbv)
  try rfl

def value618 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(3989, 3929)])).val
theorem input3316_def : input3316 = (Flapjack.WordLangProgHOL.move 2 [(3989, 3929)]) := by
  unfold input3316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3316 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(3989, 3929)])).val
theorem output3316_def : output3316 = (Flapjack.WordLangProgHOL.move 2 [(3989, 3929)]) := by
  unfold output3316
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3316_skip : Flapjack.WordAlloc.isSkip output3316 = false := by
  rw [output3316_def]
  conv => lhs; cbv
  try rfl
theorem node3316_eq : Flapjack.WordAlloc.removeDeadStructural input3316 value612 value1 value2 = (output3316, value618, value1) := by
  rw [input3316_def, output3316_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3317_def : input3317 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3317 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3317_def : output3317 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3317
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3317_skip : Flapjack.WordAlloc.isSkip output3317 = true := by
  rw [output3317_def]
  conv => lhs; cbv
  try rfl
theorem node3317_eq : Flapjack.WordAlloc.removeDeadStructural input3317 value618 value1 value2 = (output3317, value618, value1) := by
  rw [input3317_def, output3317_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3317 input3316)).val
theorem input3318_def : input3318 = (.seq input3317 input3316) := by
  unfold input3318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3318 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3316)).val
theorem output3318_def : output3318 = (output3316) := by
  unfold output3318
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3318_skip : Flapjack.WordAlloc.isSkip output3318 = false := by
  rw [output3318_def]
  conv => lhs; cbv
  try rfl
theorem node3318_eq : Flapjack.WordAlloc.removeDeadStructural input3318 value612 value1 value2 = (output3318, value618, value1) := by
  rw [input3318_def, output3318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3316_eq]
  try dsimp only
  rw [node3317_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3318 input3315)).val
theorem input3319_def : input3319 = (.seq input3318 input3315) := by
  unfold input3319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3319 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3318)).val
theorem output3319_def : output3319 = (output3318) := by
  unfold output3319
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3319_skip : Flapjack.WordAlloc.isSkip output3319 = false := by
  rw [output3319_def]
  conv => lhs; cbv
  try rfl
theorem node3319_eq : Flapjack.WordAlloc.removeDeadStructural input3319 value612 value1 value2 = (output3319, value618, value1) := by
  rw [input3319_def, output3319_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3315_eq]
  try dsimp only
  rw [node3318_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3319 input3314)).val
theorem input3320_def : input3320 = (.seq input3319 input3314) := by
  unfold input3320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3320 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3319)).val
theorem output3320_def : output3320 = (output3319) := by
  unfold output3320
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3320_skip : Flapjack.WordAlloc.isSkip output3320 = false := by
  rw [output3320_def]
  conv => lhs; cbv
  try rfl
theorem node3320_eq : Flapjack.WordAlloc.removeDeadStructural input3320 value612 value1 value2 = (output3320, value618, value1) := by
  rw [input3320_def, output3320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3314_eq]
  try dsimp only
  rw [node3319_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3320 input3313)).val
theorem input3321_def : input3321 = (.seq input3320 input3313) := by
  unfold input3321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3321 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3320)).val
theorem output3321_def : output3321 = (output3320) := by
  unfold output3321
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3321_skip : Flapjack.WordAlloc.isSkip output3321 = false := by
  rw [output3321_def]
  conv => lhs; cbv
  try rfl
theorem node3321_eq : Flapjack.WordAlloc.removeDeadStructural input3321 value612 value1 value2 = (output3321, value618, value1) := by
  rw [input3321_def, output3321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3313_eq]
  try dsimp only
  rw [node3320_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value619 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(3985, 3901), (3981, 3929), (3977, 3893)])).val
theorem input3322_def : input3322 = (Flapjack.WordLangProgHOL.move 2 [(3985, 3901), (3981, 3929), (3977, 3893)]) := by
  unfold input3322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3322 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 2 [(3985, 3901)])).val
theorem output3322_def : output3322 = (Flapjack.WordLangProgHOL.move 2 [(3985, 3901)]) := by
  unfold output3322
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3322_skip : Flapjack.WordAlloc.isSkip output3322 = false := by
  rw [output3322_def]
  conv => lhs; cbv
  try rfl
theorem node3322_eq : Flapjack.WordAlloc.removeDeadStructural input3322 value618 value1 value2 = (output3322, value619, value1) := by
  rw [input3322_def, output3322_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3322 input3321)).val
theorem input3323_def : input3323 = (.seq input3322 input3321) := by
  unfold input3323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3323 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3322 output3321)).val
theorem output3323_def : output3323 = (.seq output3322 output3321) := by
  unfold output3323
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3323_skip : Flapjack.WordAlloc.isSkip output3323 = false := by
  rw [output3323_def]
  conv => lhs; cbv
  try rfl
theorem node3323_eq : Flapjack.WordAlloc.removeDeadStructural input3323 value612 value1 value2 = (output3323, value619, value1) := by
  rw [input3323_def, output3323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3321_eq]
  try dsimp only
  rw [node3322_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem input3324_def : input3324 = (Flapjack.WordLangProgHOL.skip) := by
  unfold input3324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3324 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output3324_def : output3324 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output3324
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3324_skip : Flapjack.WordAlloc.isSkip output3324 = true := by
  rw [output3324_def]
  conv => lhs; cbv
  try rfl
theorem node3324_eq : Flapjack.WordAlloc.removeDeadStructural input3324 value619 value1 value2 = (output3324, value619, value1) := by
  rw [input3324_def, output3324_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3324 input3323)).val
theorem input3325_def : input3325 = (.seq input3324 input3323) := by
  unfold input3325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3325 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (output3323)).val
theorem output3325_def : output3325 = (output3323) := by
  unfold output3325
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3325_skip : Flapjack.WordAlloc.isSkip output3325 = false := by
  rw [output3325_def]
  conv => lhs; cbv
  try rfl
theorem node3325_eq : Flapjack.WordAlloc.removeDeadStructural input3325 value612 value1 value2 = (output3325, value619, value1) := by
  rw [input3325_def, output3325_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3323_eq]
  try dsimp only
  rw [node3324_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value620 : Flapjack.WordRegImm (BitVec 64) :=
Flapjack.WordRegImm.reg 3933

def value621 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln)))
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln)
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn
                  (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
                  Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input3326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 3929 value620 input3312 input3325)).val
theorem input3326_def : input3326 = (.ite value15 3929 value620 input3312 input3325) := by
  unfold input3326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3326 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.ite value15 3929 value620 output3312 output3325)).val
theorem output3326_def : output3326 = (.ite value15 3929 value620 output3312 output3325) := by
  unfold output3326
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3326_skip : Flapjack.WordAlloc.isSkip output3326 = false := by
  rw [output3326_def]
  conv => lhs; cbv
  try rfl
theorem node3326_eq : Flapjack.WordAlloc.removeDeadStructural input3326 value612 value1 value2 = (output3326, value621, value1) := by
  rw [input3326_def, output3326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [node3312_eq]
  try dsimp only
  rw [node3325_eq]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input3327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input3326 input3281)).val
theorem input3327_def : input3327 = (.seq input3326 input3281) := by
  unfold input3327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output3327 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output3326 output3281)).val
theorem output3327_def : output3327 = (.seq output3326 output3281) := by
  unfold output3327
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output3327_skip : Flapjack.WordAlloc.isSkip output3327 = false := by
  rw [output3327_def]
  conv => lhs; cbv
  try rfl
theorem node3327_eq : Flapjack.WordAlloc.removeDeadStructural input3327 value612 value1 value2 = (output3327, value621, value1) := by
  rw [input3327_def, output3327_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node3281_eq]
  try dsimp only
  rw [node3326_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

#print axioms node3327_eq
end InitECandidate.Proofs.DeadStages597
