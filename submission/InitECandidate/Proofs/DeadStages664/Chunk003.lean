import InitECandidate.Proofs.DeadStages664.Chunk002
import InitECandidate.Proofs.ComputationCache
import InitECandidate.Proofs.DeadBranchComputation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation
namespace InitECandidate.Proofs.DeadStages664
def value405 : Flapjack.NumSet :=
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
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1049 1045 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input768_def : input768 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1049 1045 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output768 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1049 1045 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output768_def : output768 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 1049 1045 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output768
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output768_skip : Flapjack.WordAlloc.isSkip output768 = false := by
  rw [output768_def]
  conv => lhs; cbv
  try rfl
theorem node768_eq : Flapjack.WordAlloc.removeDeadStructural input768 value404 value1 value2 = (output768, value405, value1) := by
  rw [input768_def, output768_def]
  try (conv => lhs; cbv)
  try rfl

def value406 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn Flapjack.Spt.ln
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1045 Flapjack.WordStore.heapLength)).val
theorem input769_def : input769 = (Flapjack.WordLangProgHOL.get 1045 Flapjack.WordStore.heapLength) := by
  unfold input769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output769 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 1045 Flapjack.WordStore.heapLength)).val
theorem output769_def : output769 = (Flapjack.WordLangProgHOL.get 1045 Flapjack.WordStore.heapLength) := by
  unfold output769
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output769_skip : Flapjack.WordAlloc.isSkip output769 = false := by
  rw [output769_def]
  conv => lhs; cbv
  try rfl
theorem node769_eq : Flapjack.WordAlloc.removeDeadStructural input769 value405 value1 value2 = (output769, value406, value1) := by
  rw [input769_def, output769_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input769 input768)).val
theorem input770_def : input770 = (.seq input769 input768) := by
  unfold input770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output770 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output769 output768)).val
theorem output770_def : output770 = (.seq output769 output768) := by
  unfold output770
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output770_skip : Flapjack.WordAlloc.isSkip output770 = false := by
  rw [output770_def]
  conv => lhs; cbv
  try rfl
theorem node770_eq : Flapjack.WordAlloc.removeDeadStructural input770 value404 value1 value2 = (output770, value406, value1) := by
  rw [input770_def, output770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node768_eq]
  try dsimp only
  rw [node769_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input770 input767)).val
theorem input771_def : input771 = (.seq input770 input767) := by
  unfold input771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output771 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output770 output767)).val
theorem output771_def : output771 = (.seq output770 output767) := by
  unfold output771
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output771_skip : Flapjack.WordAlloc.isSkip output771 = false := by
  rw [output771_def]
  conv => lhs; cbv
  try rfl
theorem node771_eq : Flapjack.WordAlloc.removeDeadStructural input771 value403 value1 value2 = (output771, value406, value1) := by
  rw [input771_def, output771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node767_eq]
  try dsimp only
  rw [node770_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input771 input766)).val
theorem input772_def : input772 = (.seq input771 input766) := by
  unfold input772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output772 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output771 output766)).val
theorem output772_def : output772 = (.seq output771 output766) := by
  unfold output772
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output772_skip : Flapjack.WordAlloc.isSkip output772 = false := by
  rw [output772_def]
  conv => lhs; cbv
  try rfl
theorem node772_eq : Flapjack.WordAlloc.removeDeadStructural input772 value402 value1 value2 = (output772, value406, value1) := by
  rw [input772_def, output772_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node766_eq]
  try dsimp only
  rw [node771_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem input773_def : input773 = (Flapjack.WordLangProgHOL.tick) := by
  unfold input773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output773 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.tick)).val
theorem output773_def : output773 = (Flapjack.WordLangProgHOL.tick) := by
  unfold output773
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output773_skip : Flapjack.WordAlloc.isSkip output773 = false := by
  rw [output773_def]
  conv => lhs; cbv
  try rfl
theorem node773_eq : Flapjack.WordAlloc.removeDeadStructural input773 value406 value1 value2 = (output773, value406, value1) := by
  rw [input773_def, output773_def]
  try (conv => lhs; cbv)
  try rfl

def value407 : Flapjack.NumSet :=
Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit)
  (Flapjack.Spt.bn Flapjack.Spt.ln
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
      Flapjack.Spt.ln))

@[irreducible, cbv_opaque] def input774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1025, 1019)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1029, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1037 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(1041, 1029)]))),
      664, 6))
  (some 68) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1025, 1019)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1033, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1033)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(1037, 1033)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1041 0#64)))),
      664, 7)))).val
theorem input774_def : input774 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1025, 1019)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1029, 2)]) Flapjack.WordLangProgHOL.skip))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1037 0#64)))
            (Flapjack.WordLangProgHOL.move 1 [(1041, 1029)]))),
      664, 6))
  (some 68) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1025, 1019)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1033, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1033)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [])
          (Flapjack.WordLangProgHOL.seq
            (Flapjack.WordLangProgHOL.seq Flapjack.WordLangProgHOL.skip
              (Flapjack.WordLangProgHOL.move 1 [(1037, 1033)]))
            (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1041 0#64)))),
      664, 7))) := by
  unfold input774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output774 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1025, 1019)])
          (Flapjack.WordLangProgHOL.move 1 [(1029, 2)]))
        (Flapjack.WordLangProgHOL.move 1 [(1041, 1029)]),
      664, 6))
  (some 68) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1025, 1019)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1033, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1033)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1041 0#64)),
      664, 7)))).val
theorem output774_def : output774 = (Flapjack.WordLangProgHOL.call
  (some
    ([2],
      (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
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
              Flapjack.Spt.ln)),
        Flapjack.Spt.ln),
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1025, 1019)])
          (Flapjack.WordLangProgHOL.move 1 [(1029, 2)]))
        (Flapjack.WordLangProgHOL.move 1 [(1041, 1029)]),
      664, 6))
  (some 68) [2]
  (some
    (2,
      Flapjack.WordLangProgHOL.seq
        (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 0 [(1025, 1019)])
          (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(1033, 2)])
            (Flapjack.WordLangProgHOL.seq (Flapjack.WordLangProgHOL.move 1 [(2, 1033)])
              (Flapjack.WordLangProgHOL.raise 2))))
        (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1041 0#64)),
      664, 7))) := by
  unfold output774
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output774_skip : Flapjack.WordAlloc.isSkip output774 = false := by
  rw [output774_def]
  conv => lhs; cbv
  try rfl
theorem node774_eq : Flapjack.WordAlloc.removeDeadStructural input774 value406 value1 value2 = (output774, value407, value1) := by
  rw [input774_def, output774_def]
  try (conv => lhs; cbv)
  try rfl

def value408 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
      Flapjack.Spt.ln))

@[irreducible, cbv_opaque] def input775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 1013)])).val
theorem input775_def : input775 = (Flapjack.WordLangProgHOL.move 1 [(2, 1013)]) := by
  unfold input775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output775 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 1 [(2, 1013)])).val
theorem output775_def : output775 = (Flapjack.WordLangProgHOL.move 1 [(2, 1013)]) := by
  unfold output775
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output775_skip : Flapjack.WordAlloc.isSkip output775 = false := by
  rw [output775_def]
  conv => lhs; cbv
  try rfl
theorem node775_eq : Flapjack.WordAlloc.removeDeadStructural input775 value407 value1 value2 = (output775, value408, value1) := by
  rw [input775_def, output775_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input775 input774)).val
theorem input776_def : input776 = (.seq input775 input774) := by
  unfold input776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output776 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output775 output774)).val
theorem output776_def : output776 = (.seq output775 output774) := by
  unfold output776
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output776_skip : Flapjack.WordAlloc.isSkip output776 = false := by
  rw [output776_def]
  conv => lhs; cbv
  try rfl
theorem node776_eq : Flapjack.WordAlloc.removeDeadStructural input776 value406 value1 value2 = (output776, value408, value1) := by
  rw [input776_def, output776_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node774_eq]
  try dsimp only
  rw [node775_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value409 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1019, 149)])).val
theorem input777_def : input777 = (Flapjack.WordLangProgHOL.move 0 [(1019, 149)]) := by
  unfold input777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output777 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1019, 149)])).val
theorem output777_def : output777 = (Flapjack.WordLangProgHOL.move 0 [(1019, 149)]) := by
  unfold output777
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output777_skip : Flapjack.WordAlloc.isSkip output777 = false := by
  rw [output777_def]
  conv => lhs; cbv
  try rfl
theorem node777_eq : Flapjack.WordAlloc.removeDeadStructural input777 value408 value1 value2 = (output777, value409, value1) := by
  rw [input777_def, output777_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input777 input776)).val
theorem input778_def : input778 = (.seq input777 input776) := by
  unfold input778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output778 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output777 output776)).val
theorem output778_def : output778 = (.seq output777 output776) := by
  unfold output778
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output778_skip : Flapjack.WordAlloc.isSkip output778 = false := by
  rw [output778_def]
  conv => lhs; cbv
  try rfl
theorem node778_eq : Flapjack.WordAlloc.removeDeadStructural input778 value406 value1 value2 = (output778, value409, value1) := by
  rw [input778_def, output778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node776_eq]
  try dsimp only
  rw [node777_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value410 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1013 64#64))).val
theorem input779_def : input779 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1013 64#64)) := by
  unfold input779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output779 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1013 64#64))).val
theorem output779_def : output779 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1013 64#64)) := by
  unfold output779
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output779_skip : Flapjack.WordAlloc.isSkip output779 = false := by
  rw [output779_def]
  conv => lhs; cbv
  try rfl
theorem node779_eq : Flapjack.WordAlloc.removeDeadStructural input779 value409 value1 value2 = (output779, value410, value1) := by
  rw [input779_def, output779_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input779 input778)).val
theorem input780_def : input780 = (.seq input779 input778) := by
  unfold input780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output780 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output779 output778)).val
theorem output780_def : output780 = (.seq output779 output778) := by
  unfold output780
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output780_skip : Flapjack.WordAlloc.isSkip output780 = false := by
  rw [output780_def]
  conv => lhs; cbv
  try rfl
theorem node780_eq : Flapjack.WordAlloc.removeDeadStructural input780 value406 value1 value2 = (output780, value410, value1) := by
  rw [input780_def, output780_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node778_eq]
  try dsimp only
  rw [node779_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1009 64#64))).val
theorem input781_def : input781 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1009 64#64)) := by
  unfold input781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output781 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output781_def : output781 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output781
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output781_skip : Flapjack.WordAlloc.isSkip output781 = true := by
  rw [output781_def]
  conv => lhs; cbv
  try rfl
theorem node781_eq : Flapjack.WordAlloc.removeDeadStructural input781 value410 value1 value2 = (output781, value410, value1) := by
  rw [input781_def, output781_def]
  try (conv => lhs; cbv)
  try rfl

def value411 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1001 (Flapjack.WordLangAddr.addr 1005 24#64)))).val
theorem input782_def : input782 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1001 (Flapjack.WordLangAddr.addr 1005 24#64))) := by
  unfold input782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output782 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1001 (Flapjack.WordLangAddr.addr 1005 24#64)))).val
theorem output782_def : output782 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 1001 (Flapjack.WordLangAddr.addr 1005 24#64))) := by
  unfold output782
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output782_skip : Flapjack.WordAlloc.isSkip output782 = false := by
  rw [output782_def]
  conv => lhs; cbv
  try rfl
theorem node782_eq : Flapjack.WordAlloc.removeDeadStructural input782 value410 value1 value2 = (output782, value411, value1) := by
  rw [input782_def, output782_def]
  try (conv => lhs; cbv)
  try rfl

def value412 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1005, 997)])).val
theorem input783_def : input783 = (Flapjack.WordLangProgHOL.move 0 [(1005, 997)]) := by
  unfold input783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output783 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(1005, 997)])).val
theorem output783_def : output783 = (Flapjack.WordLangProgHOL.move 0 [(1005, 997)]) := by
  unfold output783
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output783_skip : Flapjack.WordAlloc.isSkip output783 = false := by
  rw [output783_def]
  conv => lhs; cbv
  try rfl
theorem node783_eq : Flapjack.WordAlloc.removeDeadStructural input783 value411 value1 value2 = (output783, value412, value1) := by
  rw [input783_def, output783_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input783 input782)).val
theorem input784_def : input784 = (.seq input783 input782) := by
  unfold input784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output784 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output783 output782)).val
theorem output784_def : output784 = (.seq output783 output782) := by
  unfold output784
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output784_skip : Flapjack.WordAlloc.isSkip output784 = false := by
  rw [output784_def]
  conv => lhs; cbv
  try rfl
theorem node784_eq : Flapjack.WordAlloc.removeDeadStructural input784 value410 value1 value2 = (output784, value412, value1) := by
  rw [input784_def, output784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node782_eq]
  try dsimp only
  rw [node783_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value413 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1001 1345717340070545013#64))).val
theorem input785_def : input785 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1001 1345717340070545013#64)) := by
  unfold input785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output785 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1001 1345717340070545013#64))).val
theorem output785_def : output785 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 1001 1345717340070545013#64)) := by
  unfold output785
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output785_skip : Flapjack.WordAlloc.isSkip output785 = false := by
  rw [output785_def]
  conv => lhs; cbv
  try rfl
theorem node785_eq : Flapjack.WordAlloc.removeDeadStructural input785 value412 value1 value2 = (output785, value413, value1) := by
  rw [input785_def, output785_def]
  try (conv => lhs; cbv)
  try rfl

def value414 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 993 (Flapjack.WordLangAddr.addr 997 16#64)))).val
theorem input786_def : input786 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 993 (Flapjack.WordLangAddr.addr 997 16#64))) := by
  unfold input786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output786 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 993 (Flapjack.WordLangAddr.addr 997 16#64)))).val
theorem output786_def : output786 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 993 (Flapjack.WordLangAddr.addr 997 16#64))) := by
  unfold output786
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output786_skip : Flapjack.WordAlloc.isSkip output786 = false := by
  rw [output786_def]
  conv => lhs; cbv
  try rfl
theorem node786_eq : Flapjack.WordAlloc.removeDeadStructural input786 value413 value1 value2 = (output786, value414, value1) := by
  rw [input786_def, output786_def]
  try (conv => lhs; cbv)
  try rfl

def value415 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(997, 989)])).val
theorem input787_def : input787 = (Flapjack.WordLangProgHOL.move 0 [(997, 989)]) := by
  unfold input787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output787 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(997, 989)])).val
theorem output787_def : output787 = (Flapjack.WordLangProgHOL.move 0 [(997, 989)]) := by
  unfold output787
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output787_skip : Flapjack.WordAlloc.isSkip output787 = false := by
  rw [output787_def]
  conv => lhs; cbv
  try rfl
theorem node787_eq : Flapjack.WordAlloc.removeDeadStructural input787 value414 value1 value2 = (output787, value415, value1) := by
  rw [input787_def, output787_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input787 input786)).val
theorem input788_def : input788 = (.seq input787 input786) := by
  unfold input788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output788 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output787 output786)).val
theorem output788_def : output788 = (.seq output787 output786) := by
  unfold output788
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output788_skip : Flapjack.WordAlloc.isSkip output788 = false := by
  rw [output788_def]
  conv => lhs; cbv
  try rfl
theorem node788_eq : Flapjack.WordAlloc.removeDeadStructural input788 value413 value1 value2 = (output788, value415, value1) := by
  rw [input788_def, output788_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node786_eq]
  try dsimp only
  rw [node787_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value416 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 993 11709273573250211709#64))).val
theorem input789_def : input789 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 993 11709273573250211709#64)) := by
  unfold input789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output789 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 993 11709273573250211709#64))).val
theorem output789_def : output789 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 993 11709273573250211709#64)) := by
  unfold output789
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output789_skip : Flapjack.WordAlloc.isSkip output789 = false := by
  rw [output789_def]
  conv => lhs; cbv
  try rfl
theorem node789_eq : Flapjack.WordAlloc.removeDeadStructural input789 value415 value1 value2 = (output789, value416, value1) := by
  rw [input789_def, output789_def]
  try (conv => lhs; cbv)
  try rfl

def value417 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 985 (Flapjack.WordLangAddr.addr 989 8#64)))).val
theorem input790_def : input790 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 985 (Flapjack.WordLangAddr.addr 989 8#64))) := by
  unfold input790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output790 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 985 (Flapjack.WordLangAddr.addr 989 8#64)))).val
theorem output790_def : output790 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 985 (Flapjack.WordLangAddr.addr 989 8#64))) := by
  unfold output790
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output790_skip : Flapjack.WordAlloc.isSkip output790 = false := by
  rw [output790_def]
  conv => lhs; cbv
  try rfl
theorem node790_eq : Flapjack.WordAlloc.removeDeadStructural input790 value416 value1 value2 = (output790, value417, value1) := by
  rw [input790_def, output790_def]
  try (conv => lhs; cbv)
  try rfl

def value418 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(989, 981)])).val
theorem input791_def : input791 = (Flapjack.WordLangProgHOL.move 0 [(989, 981)]) := by
  unfold input791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output791 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(989, 981)])).val
theorem output791_def : output791 = (Flapjack.WordLangProgHOL.move 0 [(989, 981)]) := by
  unfold output791
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output791_skip : Flapjack.WordAlloc.isSkip output791 = false := by
  rw [output791_def]
  conv => lhs; cbv
  try rfl
theorem node791_eq : Flapjack.WordAlloc.removeDeadStructural input791 value417 value1 value2 = (output791, value418, value1) := by
  rw [input791_def, output791_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input791 input790)).val
theorem input792_def : input792 = (.seq input791 input790) := by
  unfold input792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output792 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output791 output790)).val
theorem output792_def : output792 = (.seq output791 output790) := by
  unfold output792
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output792_skip : Flapjack.WordAlloc.isSkip output792 = false := by
  rw [output792_def]
  conv => lhs; cbv
  try rfl
theorem node792_eq : Flapjack.WordAlloc.removeDeadStructural input792 value416 value1 value2 = (output792, value418, value1) := by
  rw [input792_def, output792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node790_eq]
  try dsimp only
  rw [node791_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value419 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 985 12718389207422085824#64))).val
theorem input793_def : input793 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 985 12718389207422085824#64)) := by
  unfold input793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output793 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 985 12718389207422085824#64))).val
theorem output793_def : output793 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 985 12718389207422085824#64)) := by
  unfold output793
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output793_skip : Flapjack.WordAlloc.isSkip output793 = false := by
  rw [output793_def]
  conv => lhs; cbv
  try rfl
theorem node793_eq : Flapjack.WordAlloc.removeDeadStructural input793 value418 value1 value2 = (output793, value419, value1) := by
  rw [input793_def, output793_def]
  try (conv => lhs; cbv)
  try rfl

def value420 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 977 (Flapjack.WordLangAddr.addr 981 0#64)))).val
theorem input794_def : input794 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 977 (Flapjack.WordLangAddr.addr 981 0#64))) := by
  unfold input794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output794 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 977 (Flapjack.WordLangAddr.addr 981 0#64)))).val
theorem output794_def : output794 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 977 (Flapjack.WordLangAddr.addr 981 0#64))) := by
  unfold output794
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output794_skip : Flapjack.WordAlloc.isSkip output794 = false := by
  rw [output794_def]
  conv => lhs; cbv
  try rfl
theorem node794_eq : Flapjack.WordAlloc.removeDeadStructural input794 value419 value1 value2 = (output794, value420, value1) := by
  rw [input794_def, output794_def]
  try (conv => lhs; cbv)
  try rfl

def value421 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(981, 957)])).val
theorem input795_def : input795 = (Flapjack.WordLangProgHOL.move 0 [(981, 957)]) := by
  unfold input795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output795 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(981, 957)])).val
theorem output795_def : output795 = (Flapjack.WordLangProgHOL.move 0 [(981, 957)]) := by
  unfold output795
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output795_skip : Flapjack.WordAlloc.isSkip output795 = false := by
  rw [output795_def]
  conv => lhs; cbv
  try rfl
theorem node795_eq : Flapjack.WordAlloc.removeDeadStructural input795 value420 value1 value2 = (output795, value421, value1) := by
  rw [input795_def, output795_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input795 input794)).val
theorem input796_def : input796 = (.seq input795 input794) := by
  unfold input796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output796 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output795 output794)).val
theorem output796_def : output796 = (.seq output795 output794) := by
  unfold output796
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output796_skip : Flapjack.WordAlloc.isSkip output796 = false := by
  rw [output796_def]
  conv => lhs; cbv
  try rfl
theorem node796_eq : Flapjack.WordAlloc.removeDeadStructural input796 value419 value1 value2 = (output796, value421, value1) := by
  rw [input796_def, output796_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node794_eq]
  try dsimp only
  rw [node795_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value422 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 977 2650008764942134347#64))).val
theorem input797_def : input797 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 977 2650008764942134347#64)) := by
  unfold input797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output797 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 977 2650008764942134347#64))).val
theorem output797_def : output797 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 977 2650008764942134347#64)) := by
  unfold output797
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output797_skip : Flapjack.WordAlloc.isSkip output797 = false := by
  rw [output797_def]
  conv => lhs; cbv
  try rfl
theorem node797_eq : Flapjack.WordAlloc.removeDeadStructural input797 value421 value1 value2 = (output797, value422, value1) := by
  rw [input797_def, output797_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 973 1345717340070545013#64))).val
theorem input798_def : input798 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 973 1345717340070545013#64)) := by
  unfold input798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output798 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output798_def : output798 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output798
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output798_skip : Flapjack.WordAlloc.isSkip output798 = true := by
  rw [output798_def]
  conv => lhs; cbv
  try rfl
theorem node798_eq : Flapjack.WordAlloc.removeDeadStructural input798 value422 value1 value2 = (output798, value422, value1) := by
  rw [input798_def, output798_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 969 11709273573250211709#64))).val
theorem input799_def : input799 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 969 11709273573250211709#64)) := by
  unfold input799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output799 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output799_def : output799 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output799
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output799_skip : Flapjack.WordAlloc.isSkip output799 = true := by
  rw [output799_def]
  conv => lhs; cbv
  try rfl
theorem node799_eq : Flapjack.WordAlloc.removeDeadStructural input799 value422 value1 value2 = (output799, value422, value1) := by
  rw [input799_def, output799_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 965 12718389207422085824#64))).val
theorem input800_def : input800 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 965 12718389207422085824#64)) := by
  unfold input800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output800 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output800_def : output800 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output800
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output800_skip : Flapjack.WordAlloc.isSkip output800 = true := by
  rw [output800_def]
  conv => lhs; cbv
  try rfl
theorem node800_eq : Flapjack.WordAlloc.removeDeadStructural input800 value422 value1 value2 = (output800, value422, value1) := by
  rw [input800_def, output800_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 961 2650008764942134347#64))).val
theorem input801_def : input801 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 961 2650008764942134347#64)) := by
  unfold input801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output801 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output801_def : output801 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output801
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output801_skip : Flapjack.WordAlloc.isSkip output801 = true := by
  rw [output801_def]
  conv => lhs; cbv
  try rfl
theorem node801_eq : Flapjack.WordAlloc.removeDeadStructural input801 value422 value1 value2 = (output801, value422, value1) := by
  rw [input801_def, output801_def]
  try (conv => lhs; cbv)
  try rfl

def value423 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 957 953 (Flapjack.WordRegImm.imm 352#64))))).val
theorem input802_def : input802 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 957 953 (Flapjack.WordRegImm.imm 352#64)))) := by
  unfold input802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output802 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 957 953 (Flapjack.WordRegImm.imm 352#64))))).val
theorem output802_def : output802 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 957 953 (Flapjack.WordRegImm.imm 352#64)))) := by
  unfold output802
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output802_skip : Flapjack.WordAlloc.isSkip output802 = false := by
  rw [output802_def]
  conv => lhs; cbv
  try rfl
theorem node802_eq : Flapjack.WordAlloc.removeDeadStructural input802 value422 value1 value2 = (output802, value423, value1) := by
  rw [input802_def, output802_def]
  try (conv => lhs; cbv)
  try rfl

def value424 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 953 (Flapjack.WordLangAddr.addr 949 18446744073709551224#64)))).val
theorem input803_def : input803 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 953 (Flapjack.WordLangAddr.addr 949 18446744073709551224#64))) := by
  unfold input803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output803 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 953 (Flapjack.WordLangAddr.addr 949 18446744073709551224#64)))).val
theorem output803_def : output803 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 953 (Flapjack.WordLangAddr.addr 949 18446744073709551224#64))) := by
  unfold output803
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output803_skip : Flapjack.WordAlloc.isSkip output803 = false := by
  rw [output803_def]
  conv => lhs; cbv
  try rfl
theorem node803_eq : Flapjack.WordAlloc.removeDeadStructural input803 value423 value1 value2 = (output803, value424, value1) := by
  rw [input803_def, output803_def]
  try (conv => lhs; cbv)
  try rfl

def value425 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 949 945)).val
theorem input804_def : input804 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 949 945) := by
  unfold input804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output804 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 949 945)).val
theorem output804_def : output804 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 949 945) := by
  unfold output804
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output804_skip : Flapjack.WordAlloc.isSkip output804 = false := by
  rw [output804_def]
  conv => lhs; cbv
  try rfl
theorem node804_eq : Flapjack.WordAlloc.removeDeadStructural input804 value424 value1 value2 = (output804, value425, value1) := by
  rw [input804_def, output804_def]
  try (conv => lhs; cbv)
  try rfl

def value426 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 945 941 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input805_def : input805 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 945 941 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output805 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 945 941 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output805_def : output805 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 945 941 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output805
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output805_skip : Flapjack.WordAlloc.isSkip output805 = false := by
  rw [output805_def]
  conv => lhs; cbv
  try rfl
theorem node805_eq : Flapjack.WordAlloc.removeDeadStructural input805 value425 value1 value2 = (output805, value426, value1) := by
  rw [input805_def, output805_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 941 Flapjack.WordStore.heapLength)).val
theorem input806_def : input806 = (Flapjack.WordLangProgHOL.get 941 Flapjack.WordStore.heapLength) := by
  unfold input806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output806 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 941 Flapjack.WordStore.heapLength)).val
theorem output806_def : output806 = (Flapjack.WordLangProgHOL.get 941 Flapjack.WordStore.heapLength) := by
  unfold output806
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output806_skip : Flapjack.WordAlloc.isSkip output806 = false := by
  rw [output806_def]
  conv => lhs; cbv
  try rfl
theorem node806_eq : Flapjack.WordAlloc.removeDeadStructural input806 value426 value1 value2 = (output806, value410, value1) := by
  rw [input806_def, output806_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input806 input805)).val
theorem input807_def : input807 = (.seq input806 input805) := by
  unfold input807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output807 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output806 output805)).val
theorem output807_def : output807 = (.seq output806 output805) := by
  unfold output807
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output807_skip : Flapjack.WordAlloc.isSkip output807 = false := by
  rw [output807_def]
  conv => lhs; cbv
  try rfl
theorem node807_eq : Flapjack.WordAlloc.removeDeadStructural input807 value425 value1 value2 = (output807, value410, value1) := by
  rw [input807_def, output807_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node805_eq]
  try dsimp only
  rw [node806_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input807 input804)).val
theorem input808_def : input808 = (.seq input807 input804) := by
  unfold input808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output808 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output807 output804)).val
theorem output808_def : output808 = (.seq output807 output804) := by
  unfold output808
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output808_skip : Flapjack.WordAlloc.isSkip output808 = false := by
  rw [output808_def]
  conv => lhs; cbv
  try rfl
theorem node808_eq : Flapjack.WordAlloc.removeDeadStructural input808 value424 value1 value2 = (output808, value410, value1) := by
  rw [input808_def, output808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node804_eq]
  try dsimp only
  rw [node807_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input808 input803)).val
theorem input809_def : input809 = (.seq input808 input803) := by
  unfold input809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output809 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output808 output803)).val
theorem output809_def : output809 = (.seq output808 output803) := by
  unfold output809
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output809_skip : Flapjack.WordAlloc.isSkip output809 = false := by
  rw [output809_def]
  conv => lhs; cbv
  try rfl
theorem node809_eq : Flapjack.WordAlloc.removeDeadStructural input809 value423 value1 value2 = (output809, value410, value1) := by
  rw [input809_def, output809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node803_eq]
  try dsimp only
  rw [node808_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input809 input802)).val
theorem input810_def : input810 = (.seq input809 input802) := by
  unfold input810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output810 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output809 output802)).val
theorem output810_def : output810 = (.seq output809 output802) := by
  unfold output810
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output810_skip : Flapjack.WordAlloc.isSkip output810 = false := by
  rw [output810_def]
  conv => lhs; cbv
  try rfl
theorem node810_eq : Flapjack.WordAlloc.removeDeadStructural input810 value422 value1 value2 = (output810, value410, value1) := by
  rw [input810_def, output810_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node802_eq]
  try dsimp only
  rw [node809_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value427 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 933 (Flapjack.WordLangAddr.addr 937 24#64)))).val
theorem input811_def : input811 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 933 (Flapjack.WordLangAddr.addr 937 24#64))) := by
  unfold input811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output811 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 933 (Flapjack.WordLangAddr.addr 937 24#64)))).val
theorem output811_def : output811 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 933 (Flapjack.WordLangAddr.addr 937 24#64))) := by
  unfold output811
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output811_skip : Flapjack.WordAlloc.isSkip output811 = false := by
  rw [output811_def]
  conv => lhs; cbv
  try rfl
theorem node811_eq : Flapjack.WordAlloc.removeDeadStructural input811 value410 value1 value2 = (output811, value427, value1) := by
  rw [input811_def, output811_def]
  try (conv => lhs; cbv)
  try rfl

def value428 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(937, 929)])).val
theorem input812_def : input812 = (Flapjack.WordLangProgHOL.move 0 [(937, 929)]) := by
  unfold input812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output812 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(937, 929)])).val
theorem output812_def : output812 = (Flapjack.WordLangProgHOL.move 0 [(937, 929)]) := by
  unfold output812
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output812_skip : Flapjack.WordAlloc.isSkip output812 = false := by
  rw [output812_def]
  conv => lhs; cbv
  try rfl
theorem node812_eq : Flapjack.WordAlloc.removeDeadStructural input812 value427 value1 value2 = (output812, value428, value1) := by
  rw [input812_def, output812_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input812 input811)).val
theorem input813_def : input813 = (.seq input812 input811) := by
  unfold input813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output813 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output812 output811)).val
theorem output813_def : output813 = (.seq output812 output811) := by
  unfold output813
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output813_skip : Flapjack.WordAlloc.isSkip output813 = false := by
  rw [output813_def]
  conv => lhs; cbv
  try rfl
theorem node813_eq : Flapjack.WordAlloc.removeDeadStructural input813 value410 value1 value2 = (output813, value428, value1) := by
  rw [input813_def, output813_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node811_eq]
  try dsimp only
  rw [node812_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value429 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 933 109144015201994313#64))).val
theorem input814_def : input814 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 933 109144015201994313#64)) := by
  unfold input814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output814 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 933 109144015201994313#64))).val
theorem output814_def : output814 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 933 109144015201994313#64)) := by
  unfold output814
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output814_skip : Flapjack.WordAlloc.isSkip output814 = false := by
  rw [output814_def]
  conv => lhs; cbv
  try rfl
theorem node814_eq : Flapjack.WordAlloc.removeDeadStructural input814 value428 value1 value2 = (output814, value429, value1) := by
  rw [input814_def, output814_def]
  try (conv => lhs; cbv)
  try rfl

def value430 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 925 (Flapjack.WordLangAddr.addr 929 16#64)))).val
theorem input815_def : input815 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 925 (Flapjack.WordLangAddr.addr 929 16#64))) := by
  unfold input815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output815 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 925 (Flapjack.WordLangAddr.addr 929 16#64)))).val
theorem output815_def : output815 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 925 (Flapjack.WordLangAddr.addr 929 16#64))) := by
  unfold output815
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output815_skip : Flapjack.WordAlloc.isSkip output815 = false := by
  rw [output815_def]
  conv => lhs; cbv
  try rfl
theorem node815_eq : Flapjack.WordAlloc.removeDeadStructural input815 value429 value1 value2 = (output815, value430, value1) := by
  rw [input815_def, output815_def]
  try (conv => lhs; cbv)
  try rfl

def value431 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(929, 921)])).val
theorem input816_def : input816 = (Flapjack.WordLangProgHOL.move 0 [(929, 921)]) := by
  unfold input816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output816 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(929, 921)])).val
theorem output816_def : output816 = (Flapjack.WordLangProgHOL.move 0 [(929, 921)]) := by
  unfold output816
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output816_skip : Flapjack.WordAlloc.isSkip output816 = false := by
  rw [output816_def]
  conv => lhs; cbv
  try rfl
theorem node816_eq : Flapjack.WordAlloc.removeDeadStructural input816 value430 value1 value2 = (output816, value431, value1) := by
  rw [input816_def, output816_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input816 input815)).val
theorem input817_def : input817 = (.seq input816 input815) := by
  unfold input817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output817 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output816 output815)).val
theorem output817_def : output817 = (.seq output816 output815) := by
  unfold output817
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output817_skip : Flapjack.WordAlloc.isSkip output817 = false := by
  rw [output817_def]
  conv => lhs; cbv
  try rfl
theorem node817_eq : Flapjack.WordAlloc.removeDeadStructural input817 value429 value1 value2 = (output817, value431, value1) := by
  rw [input817_def, output817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node815_eq]
  try dsimp only
  rw [node816_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value432 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 925 16805804752481107956#64))).val
theorem input818_def : input818 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 925 16805804752481107956#64)) := by
  unfold input818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output818 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 925 16805804752481107956#64))).val
theorem output818_def : output818 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 925 16805804752481107956#64)) := by
  unfold output818
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output818_skip : Flapjack.WordAlloc.isSkip output818 = false := by
  rw [output818_def]
  conv => lhs; cbv
  try rfl
theorem node818_eq : Flapjack.WordAlloc.removeDeadStructural input818 value431 value1 value2 = (output818, value432, value1) := by
  rw [input818_def, output818_def]
  try (conv => lhs; cbv)
  try rfl

def value433 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 917 (Flapjack.WordLangAddr.addr 921 8#64)))).val
theorem input819_def : input819 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 917 (Flapjack.WordLangAddr.addr 921 8#64))) := by
  unfold input819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output819 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 917 (Flapjack.WordLangAddr.addr 921 8#64)))).val
theorem output819_def : output819 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 917 (Flapjack.WordLangAddr.addr 921 8#64))) := by
  unfold output819
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output819_skip : Flapjack.WordAlloc.isSkip output819 = false := by
  rw [output819_def]
  conv => lhs; cbv
  try rfl
theorem node819_eq : Flapjack.WordAlloc.removeDeadStructural input819 value432 value1 value2 = (output819, value433, value1) := by
  rw [input819_def, output819_def]
  try (conv => lhs; cbv)
  try rfl

def value434 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) PUnit.unit
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(921, 913)])).val
theorem input820_def : input820 = (Flapjack.WordLangProgHOL.move 0 [(921, 913)]) := by
  unfold input820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output820 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(921, 913)])).val
theorem output820_def : output820 = (Flapjack.WordLangProgHOL.move 0 [(921, 913)]) := by
  unfold output820
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output820_skip : Flapjack.WordAlloc.isSkip output820 = false := by
  rw [output820_def]
  conv => lhs; cbv
  try rfl
theorem node820_eq : Flapjack.WordAlloc.removeDeadStructural input820 value433 value1 value2 = (output820, value434, value1) := by
  rw [input820_def, output820_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input820 input819)).val
theorem input821_def : input821 = (.seq input820 input819) := by
  unfold input821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output821 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output820 output819)).val
theorem output821_def : output821 = (.seq output820 output819) := by
  unfold output821
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output821_skip : Flapjack.WordAlloc.isSkip output821 = false := by
  rw [output821_def]
  conv => lhs; cbv
  try rfl
theorem node821_eq : Flapjack.WordAlloc.removeDeadStructural input821 value432 value1 value2 = (output821, value434, value1) := by
  rw [input821_def, output821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node819_eq]
  try dsimp only
  rw [node820_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value435 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 917 4781773437820083155#64))).val
theorem input822_def : input822 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 917 4781773437820083155#64)) := by
  unfold input822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output822 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 917 4781773437820083155#64))).val
theorem output822_def : output822 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 917 4781773437820083155#64)) := by
  unfold output822
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output822_skip : Flapjack.WordAlloc.isSkip output822 = false := by
  rw [output822_def]
  conv => lhs; cbv
  try rfl
theorem node822_eq : Flapjack.WordAlloc.removeDeadStructural input822 value434 value1 value2 = (output822, value435, value1) := by
  rw [input822_def, output822_def]
  try (conv => lhs; cbv)
  try rfl

def value436 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 909 (Flapjack.WordLangAddr.addr 913 0#64)))).val
theorem input823_def : input823 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 909 (Flapjack.WordLangAddr.addr 913 0#64))) := by
  unfold input823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output823 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 909 (Flapjack.WordLangAddr.addr 913 0#64)))).val
theorem output823_def : output823 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 909 (Flapjack.WordLangAddr.addr 913 0#64))) := by
  unfold output823
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output823_skip : Flapjack.WordAlloc.isSkip output823 = false := by
  rw [output823_def]
  conv => lhs; cbv
  try rfl
theorem node823_eq : Flapjack.WordAlloc.removeDeadStructural input823 value435 value1 value2 = (output823, value436, value1) := by
  rw [input823_def, output823_def]
  try (conv => lhs; cbv)
  try rfl

def value437 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(913, 889)])).val
theorem input824_def : input824 = (Flapjack.WordLangProgHOL.move 0 [(913, 889)]) := by
  unfold input824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output824 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(913, 889)])).val
theorem output824_def : output824 = (Flapjack.WordLangProgHOL.move 0 [(913, 889)]) := by
  unfold output824
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output824_skip : Flapjack.WordAlloc.isSkip output824 = false := by
  rw [output824_def]
  conv => lhs; cbv
  try rfl
theorem node824_eq : Flapjack.WordAlloc.removeDeadStructural input824 value436 value1 value2 = (output824, value437, value1) := by
  rw [input824_def, output824_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input824 input823)).val
theorem input825_def : input825 = (.seq input824 input823) := by
  unfold input825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output825 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output824 output823)).val
theorem output825_def : output825 = (.seq output824 output823) := by
  unfold output825
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output825_skip : Flapjack.WordAlloc.isSkip output825 = false := by
  rw [output825_def]
  conv => lhs; cbv
  try rfl
theorem node825_eq : Flapjack.WordAlloc.removeDeadStructural input825 value435 value1 value2 = (output825, value437, value1) := by
  rw [input825_def, output825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node823_eq]
  try dsimp only
  rw [node824_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value438 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 909 3360468246954731823#64))).val
theorem input826_def : input826 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 909 3360468246954731823#64)) := by
  unfold input826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output826 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 909 3360468246954731823#64))).val
theorem output826_def : output826 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 909 3360468246954731823#64)) := by
  unfold output826
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output826_skip : Flapjack.WordAlloc.isSkip output826 = false := by
  rw [output826_def]
  conv => lhs; cbv
  try rfl
theorem node826_eq : Flapjack.WordAlloc.removeDeadStructural input826 value437 value1 value2 = (output826, value438, value1) := by
  rw [input826_def, output826_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 905 109144015201994313#64))).val
theorem input827_def : input827 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 905 109144015201994313#64)) := by
  unfold input827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output827 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output827_def : output827 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output827
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output827_skip : Flapjack.WordAlloc.isSkip output827 = true := by
  rw [output827_def]
  conv => lhs; cbv
  try rfl
theorem node827_eq : Flapjack.WordAlloc.removeDeadStructural input827 value438 value1 value2 = (output827, value438, value1) := by
  rw [input827_def, output827_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 901 16805804752481107956#64))).val
theorem input828_def : input828 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 901 16805804752481107956#64)) := by
  unfold input828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output828 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output828_def : output828 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output828
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output828_skip : Flapjack.WordAlloc.isSkip output828 = true := by
  rw [output828_def]
  conv => lhs; cbv
  try rfl
theorem node828_eq : Flapjack.WordAlloc.removeDeadStructural input828 value438 value1 value2 = (output828, value438, value1) := by
  rw [input828_def, output828_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 897 4781773437820083155#64))).val
theorem input829_def : input829 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 897 4781773437820083155#64)) := by
  unfold input829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output829 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output829_def : output829 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output829
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output829_skip : Flapjack.WordAlloc.isSkip output829 = true := by
  rw [output829_def]
  conv => lhs; cbv
  try rfl
theorem node829_eq : Flapjack.WordAlloc.removeDeadStructural input829 value438 value1 value2 = (output829, value438, value1) := by
  rw [input829_def, output829_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 893 3360468246954731823#64))).val
theorem input830_def : input830 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 893 3360468246954731823#64)) := by
  unfold input830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output830 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output830_def : output830 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output830
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output830_skip : Flapjack.WordAlloc.isSkip output830 = true := by
  rw [output830_def]
  conv => lhs; cbv
  try rfl
theorem node830_eq : Flapjack.WordAlloc.removeDeadStructural input830 value438 value1 value2 = (output830, value438, value1) := by
  rw [input830_def, output830_def]
  try (conv => lhs; cbv)
  try rfl

def value439 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 889 885 (Flapjack.WordRegImm.imm 320#64))))).val
theorem input831_def : input831 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 889 885 (Flapjack.WordRegImm.imm 320#64)))) := by
  unfold input831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output831 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 889 885 (Flapjack.WordRegImm.imm 320#64))))).val
theorem output831_def : output831 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 889 885 (Flapjack.WordRegImm.imm 320#64)))) := by
  unfold output831
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output831_skip : Flapjack.WordAlloc.isSkip output831 = false := by
  rw [output831_def]
  conv => lhs; cbv
  try rfl
theorem node831_eq : Flapjack.WordAlloc.removeDeadStructural input831 value438 value1 value2 = (output831, value439, value1) := by
  rw [input831_def, output831_def]
  try (conv => lhs; cbv)
  try rfl

def value440 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 885 (Flapjack.WordLangAddr.addr 881 18446744073709551224#64)))).val
theorem input832_def : input832 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 885 (Flapjack.WordLangAddr.addr 881 18446744073709551224#64))) := by
  unfold input832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output832 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 885 (Flapjack.WordLangAddr.addr 881 18446744073709551224#64)))).val
theorem output832_def : output832 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 885 (Flapjack.WordLangAddr.addr 881 18446744073709551224#64))) := by
  unfold output832
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output832_skip : Flapjack.WordAlloc.isSkip output832 = false := by
  rw [output832_def]
  conv => lhs; cbv
  try rfl
theorem node832_eq : Flapjack.WordAlloc.removeDeadStructural input832 value439 value1 value2 = (output832, value440, value1) := by
  rw [input832_def, output832_def]
  try (conv => lhs; cbv)
  try rfl

def value441 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 881 877)).val
theorem input833_def : input833 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 881 877) := by
  unfold input833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output833 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 881 877)).val
theorem output833_def : output833 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 881 877) := by
  unfold output833
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output833_skip : Flapjack.WordAlloc.isSkip output833 = false := by
  rw [output833_def]
  conv => lhs; cbv
  try rfl
theorem node833_eq : Flapjack.WordAlloc.removeDeadStructural input833 value440 value1 value2 = (output833, value441, value1) := by
  rw [input833_def, output833_def]
  try (conv => lhs; cbv)
  try rfl

def value442 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 877 873 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input834_def : input834 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 877 873 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output834 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 877 873 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output834_def : output834 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 877 873 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output834
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output834_skip : Flapjack.WordAlloc.isSkip output834 = false := by
  rw [output834_def]
  conv => lhs; cbv
  try rfl
theorem node834_eq : Flapjack.WordAlloc.removeDeadStructural input834 value441 value1 value2 = (output834, value442, value1) := by
  rw [input834_def, output834_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 873 Flapjack.WordStore.heapLength)).val
theorem input835_def : input835 = (Flapjack.WordLangProgHOL.get 873 Flapjack.WordStore.heapLength) := by
  unfold input835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output835 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 873 Flapjack.WordStore.heapLength)).val
theorem output835_def : output835 = (Flapjack.WordLangProgHOL.get 873 Flapjack.WordStore.heapLength) := by
  unfold output835
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output835_skip : Flapjack.WordAlloc.isSkip output835 = false := by
  rw [output835_def]
  conv => lhs; cbv
  try rfl
theorem node835_eq : Flapjack.WordAlloc.removeDeadStructural input835 value442 value1 value2 = (output835, value410, value1) := by
  rw [input835_def, output835_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input835 input834)).val
theorem input836_def : input836 = (.seq input835 input834) := by
  unfold input836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output836 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output835 output834)).val
theorem output836_def : output836 = (.seq output835 output834) := by
  unfold output836
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output836_skip : Flapjack.WordAlloc.isSkip output836 = false := by
  rw [output836_def]
  conv => lhs; cbv
  try rfl
theorem node836_eq : Flapjack.WordAlloc.removeDeadStructural input836 value441 value1 value2 = (output836, value410, value1) := by
  rw [input836_def, output836_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node834_eq]
  try dsimp only
  rw [node835_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input836 input833)).val
theorem input837_def : input837 = (.seq input836 input833) := by
  unfold input837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output837 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output836 output833)).val
theorem output837_def : output837 = (.seq output836 output833) := by
  unfold output837
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output837_skip : Flapjack.WordAlloc.isSkip output837 = false := by
  rw [output837_def]
  conv => lhs; cbv
  try rfl
theorem node837_eq : Flapjack.WordAlloc.removeDeadStructural input837 value440 value1 value2 = (output837, value410, value1) := by
  rw [input837_def, output837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node833_eq]
  try dsimp only
  rw [node836_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input837 input832)).val
theorem input838_def : input838 = (.seq input837 input832) := by
  unfold input838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output838 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output837 output832)).val
theorem output838_def : output838 = (.seq output837 output832) := by
  unfold output838
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output838_skip : Flapjack.WordAlloc.isSkip output838 = false := by
  rw [output838_def]
  conv => lhs; cbv
  try rfl
theorem node838_eq : Flapjack.WordAlloc.removeDeadStructural input838 value439 value1 value2 = (output838, value410, value1) := by
  rw [input838_def, output838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node832_eq]
  try dsimp only
  rw [node837_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input838 input831)).val
theorem input839_def : input839 = (.seq input838 input831) := by
  unfold input839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output839 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output838 output831)).val
theorem output839_def : output839 = (.seq output838 output831) := by
  unfold output839
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output839_skip : Flapjack.WordAlloc.isSkip output839 = false := by
  rw [output839_def]
  conv => lhs; cbv
  try rfl
theorem node839_eq : Flapjack.WordAlloc.removeDeadStructural input839 value438 value1 value2 = (output839, value410, value1) := by
  rw [input839_def, output839_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node831_eq]
  try dsimp only
  rw [node838_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value443 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 865 (Flapjack.WordLangAddr.addr 869 24#64)))).val
theorem input840_def : input840 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 865 (Flapjack.WordLangAddr.addr 869 24#64))) := by
  unfold input840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output840 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 865 (Flapjack.WordLangAddr.addr 869 24#64)))).val
theorem output840_def : output840 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 865 (Flapjack.WordLangAddr.addr 869 24#64))) := by
  unfold output840
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output840_skip : Flapjack.WordAlloc.isSkip output840 = false := by
  rw [output840_def]
  conv => lhs; cbv
  try rfl
theorem node840_eq : Flapjack.WordAlloc.removeDeadStructural input840 value410 value1 value2 = (output840, value443, value1) := by
  rw [input840_def, output840_def]
  try (conv => lhs; cbv)
  try rfl

def value444 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(869, 861)])).val
theorem input841_def : input841 = (Flapjack.WordLangProgHOL.move 0 [(869, 861)]) := by
  unfold input841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output841 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(869, 861)])).val
theorem output841_def : output841 = (Flapjack.WordLangProgHOL.move 0 [(869, 861)]) := by
  unfold output841
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output841_skip : Flapjack.WordAlloc.isSkip output841 = false := by
  rw [output841_def]
  conv => lhs; cbv
  try rfl
theorem node841_eq : Flapjack.WordAlloc.removeDeadStructural input841 value443 value1 value2 = (output841, value444, value1) := by
  rw [input841_def, output841_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input841 input840)).val
theorem input842_def : input842 = (.seq input841 input840) := by
  unfold input842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output842 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output841 output840)).val
theorem output842_def : output842 = (.seq output841 output840) := by
  unfold output842
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output842_skip : Flapjack.WordAlloc.isSkip output842 = false := by
  rw [output842_def]
  conv => lhs; cbv
  try rfl
theorem node842_eq : Flapjack.WordAlloc.removeDeadStructural input842 value410 value1 value2 = (output842, value444, value1) := by
  rw [input842_def, output842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node840_eq]
  try dsimp only
  rw [node841_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value445 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 865 3176267935786044142#64))).val
theorem input843_def : input843 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 865 3176267935786044142#64)) := by
  unfold input843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output843 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 865 3176267935786044142#64))).val
theorem output843_def : output843 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 865 3176267935786044142#64)) := by
  unfold output843
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output843_skip : Flapjack.WordAlloc.isSkip output843 = false := by
  rw [output843_def]
  conv => lhs; cbv
  try rfl
theorem node843_eq : Flapjack.WordAlloc.removeDeadStructural input843 value444 value1 value2 = (output843, value445, value1) := by
  rw [input843_def, output843_def]
  try (conv => lhs; cbv)
  try rfl

def value446 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 857 (Flapjack.WordLangAddr.addr 861 16#64)))).val
theorem input844_def : input844 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 857 (Flapjack.WordLangAddr.addr 861 16#64))) := by
  unfold input844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output844 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 857 (Flapjack.WordLangAddr.addr 861 16#64)))).val
theorem output844_def : output844 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 857 (Flapjack.WordLangAddr.addr 861 16#64))) := by
  unfold output844
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output844_skip : Flapjack.WordAlloc.isSkip output844 = false := by
  rw [output844_def]
  conv => lhs; cbv
  try rfl
theorem node844_eq : Flapjack.WordAlloc.removeDeadStructural input844 value445 value1 value2 = (output844, value446, value1) := by
  rw [input844_def, output844_def]
  try (conv => lhs; cbv)
  try rfl

def value447 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(861, 853)])).val
theorem input845_def : input845 = (Flapjack.WordLangProgHOL.move 0 [(861, 853)]) := by
  unfold input845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output845 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(861, 853)])).val
theorem output845_def : output845 = (Flapjack.WordLangProgHOL.move 0 [(861, 853)]) := by
  unfold output845
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output845_skip : Flapjack.WordAlloc.isSkip output845 = false := by
  rw [output845_def]
  conv => lhs; cbv
  try rfl
theorem node845_eq : Flapjack.WordAlloc.removeDeadStructural input845 value446 value1 value2 = (output845, value447, value1) := by
  rw [input845_def, output845_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input845 input844)).val
theorem input846_def : input846 = (.seq input845 input844) := by
  unfold input846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output846 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output845 output844)).val
theorem output846_def : output846 = (.seq output845 output844) := by
  unfold output846
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output846_skip : Flapjack.WordAlloc.isSkip output846 = false := by
  rw [output846_def]
  conv => lhs; cbv
  try rfl
theorem node846_eq : Flapjack.WordAlloc.removeDeadStructural input846 value445 value1 value2 = (output846, value447, value1) := by
  rw [input846_def, output846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node844_eq]
  try dsimp only
  rw [node845_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value448 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 857 11473624495072943250#64))).val
theorem input847_def : input847 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 857 11473624495072943250#64)) := by
  unfold input847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output847 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 857 11473624495072943250#64))).val
theorem output847_def : output847 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 857 11473624495072943250#64)) := by
  unfold output847
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output847_skip : Flapjack.WordAlloc.isSkip output847 = false := by
  rw [output847_def]
  conv => lhs; cbv
  try rfl
theorem node847_eq : Flapjack.WordAlloc.removeDeadStructural input847 value447 value1 value2 = (output847, value448, value1) := by
  rw [input847_def, output847_def]
  try (conv => lhs; cbv)
  try rfl

def value449 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 849 (Flapjack.WordLangAddr.addr 853 8#64)))).val
theorem input848_def : input848 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 849 (Flapjack.WordLangAddr.addr 853 8#64))) := by
  unfold input848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output848 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 849 (Flapjack.WordLangAddr.addr 853 8#64)))).val
theorem output848_def : output848 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 849 (Flapjack.WordLangAddr.addr 853 8#64))) := by
  unfold output848
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output848_skip : Flapjack.WordAlloc.isSkip output848 = false := by
  rw [output848_def]
  conv => lhs; cbv
  try rfl
theorem node848_eq : Flapjack.WordAlloc.removeDeadStructural input848 value448 value1 value2 = (output848, value449, value1) := by
  rw [input848_def, output848_def]
  try (conv => lhs; cbv)
  try rfl

def value450 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(853, 845)])).val
theorem input849_def : input849 = (Flapjack.WordLangProgHOL.move 0 [(853, 845)]) := by
  unfold input849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output849 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(853, 845)])).val
theorem output849_def : output849 = (Flapjack.WordLangProgHOL.move 0 [(853, 845)]) := by
  unfold output849
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output849_skip : Flapjack.WordAlloc.isSkip output849 = false := by
  rw [output849_def]
  conv => lhs; cbv
  try rfl
theorem node849_eq : Flapjack.WordAlloc.removeDeadStructural input849 value449 value1 value2 = (output849, value450, value1) := by
  rw [input849_def, output849_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input849 input848)).val
theorem input850_def : input850 = (.seq input849 input848) := by
  unfold input850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output850 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output849 output848)).val
theorem output850_def : output850 = (.seq output849 output848) := by
  unfold output850
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output850_skip : Flapjack.WordAlloc.isSkip output850 = false := by
  rw [output850_def]
  conv => lhs; cbv
  try rfl
theorem node850_eq : Flapjack.WordAlloc.removeDeadStructural input850 value448 value1 value2 = (output850, value450, value1) := by
  rw [input850_def, output850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node848_eq]
  try dsimp only
  rw [node849_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value451 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 849 3928778152882390883#64))).val
theorem input851_def : input851 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 849 3928778152882390883#64)) := by
  unfold input851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output851 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 849 3928778152882390883#64))).val
theorem output851_def : output851 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 849 3928778152882390883#64)) := by
  unfold output851
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output851_skip : Flapjack.WordAlloc.isSkip output851 = false := by
  rw [output851_def]
  conv => lhs; cbv
  try rfl
theorem node851_eq : Flapjack.WordAlloc.removeDeadStructural input851 value450 value1 value2 = (output851, value451, value1) := by
  rw [input851_def, output851_def]
  try (conv => lhs; cbv)
  try rfl

def value452 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 841 (Flapjack.WordLangAddr.addr 845 0#64)))).val
theorem input852_def : input852 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 841 (Flapjack.WordLangAddr.addr 845 0#64))) := by
  unfold input852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output852 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 841 (Flapjack.WordLangAddr.addr 845 0#64)))).val
theorem output852_def : output852 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 841 (Flapjack.WordLangAddr.addr 845 0#64))) := by
  unfold output852
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output852_skip : Flapjack.WordAlloc.isSkip output852 = false := by
  rw [output852_def]
  conv => lhs; cbv
  try rfl
theorem node852_eq : Flapjack.WordAlloc.removeDeadStructural input852 value451 value1 value2 = (output852, value452, value1) := by
  rw [input852_def, output852_def]
  try (conv => lhs; cbv)
  try rfl

def value453 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(845, 821)])).val
theorem input853_def : input853 = (Flapjack.WordLangProgHOL.move 0 [(845, 821)]) := by
  unfold input853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output853 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(845, 821)])).val
theorem output853_def : output853 = (Flapjack.WordLangProgHOL.move 0 [(845, 821)]) := by
  unfold output853
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output853_skip : Flapjack.WordAlloc.isSkip output853 = false := by
  rw [output853_def]
  conv => lhs; cbv
  try rfl
theorem node853_eq : Flapjack.WordAlloc.removeDeadStructural input853 value452 value1 value2 = (output853, value453, value1) := by
  rw [input853_def, output853_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input853 input852)).val
theorem input854_def : input854 = (.seq input853 input852) := by
  unfold input854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output854 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output853 output852)).val
theorem output854_def : output854 = (.seq output853 output852) := by
  unfold output854
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output854_skip : Flapjack.WordAlloc.isSkip output854 = false := by
  rw [output854_def]
  conv => lhs; cbv
  try rfl
theorem node854_eq : Flapjack.WordAlloc.removeDeadStructural input854 value451 value1 value2 = (output854, value453, value1) := by
  rw [input854_def, output854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node852_eq]
  try dsimp only
  rw [node853_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value454 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 841 13923800814728216870#64))).val
theorem input855_def : input855 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 841 13923800814728216870#64)) := by
  unfold input855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output855 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 841 13923800814728216870#64))).val
theorem output855_def : output855 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 841 13923800814728216870#64)) := by
  unfold output855
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output855_skip : Flapjack.WordAlloc.isSkip output855 = false := by
  rw [output855_def]
  conv => lhs; cbv
  try rfl
theorem node855_eq : Flapjack.WordAlloc.removeDeadStructural input855 value453 value1 value2 = (output855, value454, value1) := by
  rw [input855_def, output855_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 837 3176267935786044142#64))).val
theorem input856_def : input856 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 837 3176267935786044142#64)) := by
  unfold input856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output856 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output856_def : output856 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output856
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output856_skip : Flapjack.WordAlloc.isSkip output856 = true := by
  rw [output856_def]
  conv => lhs; cbv
  try rfl
theorem node856_eq : Flapjack.WordAlloc.removeDeadStructural input856 value454 value1 value2 = (output856, value454, value1) := by
  rw [input856_def, output856_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 833 11473624495072943250#64))).val
theorem input857_def : input857 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 833 11473624495072943250#64)) := by
  unfold input857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output857 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output857_def : output857 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output857
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output857_skip : Flapjack.WordAlloc.isSkip output857 = true := by
  rw [output857_def]
  conv => lhs; cbv
  try rfl
theorem node857_eq : Flapjack.WordAlloc.removeDeadStructural input857 value454 value1 value2 = (output857, value454, value1) := by
  rw [input857_def, output857_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 829 3928778152882390883#64))).val
theorem input858_def : input858 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 829 3928778152882390883#64)) := by
  unfold input858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output858 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output858_def : output858 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output858
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output858_skip : Flapjack.WordAlloc.isSkip output858 = true := by
  rw [output858_def]
  conv => lhs; cbv
  try rfl
theorem node858_eq : Flapjack.WordAlloc.removeDeadStructural input858 value454 value1 value2 = (output858, value454, value1) := by
  rw [input858_def, output858_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 825 13923800814728216870#64))).val
theorem input859_def : input859 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 825 13923800814728216870#64)) := by
  unfold input859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output859 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output859_def : output859 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output859
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output859_skip : Flapjack.WordAlloc.isSkip output859 = true := by
  rw [output859_def]
  conv => lhs; cbv
  try rfl
theorem node859_eq : Flapjack.WordAlloc.removeDeadStructural input859 value454 value1 value2 = (output859, value454, value1) := by
  rw [input859_def, output859_def]
  try (conv => lhs; cbv)
  try rfl

def value455 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 821 817 (Flapjack.WordRegImm.imm 288#64))))).val
theorem input860_def : input860 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 821 817 (Flapjack.WordRegImm.imm 288#64)))) := by
  unfold input860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output860 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 821 817 (Flapjack.WordRegImm.imm 288#64))))).val
theorem output860_def : output860 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 821 817 (Flapjack.WordRegImm.imm 288#64)))) := by
  unfold output860
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output860_skip : Flapjack.WordAlloc.isSkip output860 = false := by
  rw [output860_def]
  conv => lhs; cbv
  try rfl
theorem node860_eq : Flapjack.WordAlloc.removeDeadStructural input860 value454 value1 value2 = (output860, value455, value1) := by
  rw [input860_def, output860_def]
  try (conv => lhs; cbv)
  try rfl

def value456 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 817 (Flapjack.WordLangAddr.addr 813 18446744073709551224#64)))).val
theorem input861_def : input861 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 817 (Flapjack.WordLangAddr.addr 813 18446744073709551224#64))) := by
  unfold input861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output861 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 817 (Flapjack.WordLangAddr.addr 813 18446744073709551224#64)))).val
theorem output861_def : output861 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 817 (Flapjack.WordLangAddr.addr 813 18446744073709551224#64))) := by
  unfold output861
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output861_skip : Flapjack.WordAlloc.isSkip output861 = false := by
  rw [output861_def]
  conv => lhs; cbv
  try rfl
theorem node861_eq : Flapjack.WordAlloc.removeDeadStructural input861 value455 value1 value2 = (output861, value456, value1) := by
  rw [input861_def, output861_def]
  try (conv => lhs; cbv)
  try rfl

def value457 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 813 809)).val
theorem input862_def : input862 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 813 809) := by
  unfold input862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output862 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 813 809)).val
theorem output862_def : output862 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 813 809) := by
  unfold output862
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output862_skip : Flapjack.WordAlloc.isSkip output862 = false := by
  rw [output862_def]
  conv => lhs; cbv
  try rfl
theorem node862_eq : Flapjack.WordAlloc.removeDeadStructural input862 value456 value1 value2 = (output862, value457, value1) := by
  rw [input862_def, output862_def]
  try (conv => lhs; cbv)
  try rfl

def value458 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 809 805 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input863_def : input863 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 809 805 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output863 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 809 805 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output863_def : output863 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 809 805 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output863
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output863_skip : Flapjack.WordAlloc.isSkip output863 = false := by
  rw [output863_def]
  conv => lhs; cbv
  try rfl
theorem node863_eq : Flapjack.WordAlloc.removeDeadStructural input863 value457 value1 value2 = (output863, value458, value1) := by
  rw [input863_def, output863_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 805 Flapjack.WordStore.heapLength)).val
theorem input864_def : input864 = (Flapjack.WordLangProgHOL.get 805 Flapjack.WordStore.heapLength) := by
  unfold input864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output864 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 805 Flapjack.WordStore.heapLength)).val
theorem output864_def : output864 = (Flapjack.WordLangProgHOL.get 805 Flapjack.WordStore.heapLength) := by
  unfold output864
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output864_skip : Flapjack.WordAlloc.isSkip output864 = false := by
  rw [output864_def]
  conv => lhs; cbv
  try rfl
theorem node864_eq : Flapjack.WordAlloc.removeDeadStructural input864 value458 value1 value2 = (output864, value410, value1) := by
  rw [input864_def, output864_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input864 input863)).val
theorem input865_def : input865 = (.seq input864 input863) := by
  unfold input865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output865 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output864 output863)).val
theorem output865_def : output865 = (.seq output864 output863) := by
  unfold output865
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output865_skip : Flapjack.WordAlloc.isSkip output865 = false := by
  rw [output865_def]
  conv => lhs; cbv
  try rfl
theorem node865_eq : Flapjack.WordAlloc.removeDeadStructural input865 value457 value1 value2 = (output865, value410, value1) := by
  rw [input865_def, output865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node863_eq]
  try dsimp only
  rw [node864_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input865 input862)).val
theorem input866_def : input866 = (.seq input865 input862) := by
  unfold input866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output866 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output865 output862)).val
theorem output866_def : output866 = (.seq output865 output862) := by
  unfold output866
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output866_skip : Flapjack.WordAlloc.isSkip output866 = false := by
  rw [output866_def]
  conv => lhs; cbv
  try rfl
theorem node866_eq : Flapjack.WordAlloc.removeDeadStructural input866 value456 value1 value2 = (output866, value410, value1) := by
  rw [input866_def, output866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node862_eq]
  try dsimp only
  rw [node865_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input866 input861)).val
theorem input867_def : input867 = (.seq input866 input861) := by
  unfold input867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output867 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output866 output861)).val
theorem output867_def : output867 = (.seq output866 output861) := by
  unfold output867
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output867_skip : Flapjack.WordAlloc.isSkip output867 = false := by
  rw [output867_def]
  conv => lhs; cbv
  try rfl
theorem node867_eq : Flapjack.WordAlloc.removeDeadStructural input867 value455 value1 value2 = (output867, value410, value1) := by
  rw [input867_def, output867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node861_eq]
  try dsimp only
  rw [node866_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input867 input860)).val
theorem input868_def : input868 = (.seq input867 input860) := by
  unfold input868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output868 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output867 output860)).val
theorem output868_def : output868 = (.seq output867 output860) := by
  unfold output868
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output868_skip : Flapjack.WordAlloc.isSkip output868 = false := by
  rw [output868_def]
  conv => lhs; cbv
  try rfl
theorem node868_eq : Flapjack.WordAlloc.removeDeadStructural input868 value454 value1 value2 = (output868, value410, value1) := by
  rw [input868_def, output868_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node860_eq]
  try dsimp only
  rw [node867_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value459 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 797 (Flapjack.WordLangAddr.addr 801 24#64)))).val
theorem input869_def : input869 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 797 (Flapjack.WordLangAddr.addr 801 24#64))) := by
  unfold input869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output869 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 797 (Flapjack.WordLangAddr.addr 801 24#64)))).val
theorem output869_def : output869 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 797 (Flapjack.WordLangAddr.addr 801 24#64))) := by
  unfold output869
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output869_skip : Flapjack.WordAlloc.isSkip output869 = false := by
  rw [output869_def]
  conv => lhs; cbv
  try rfl
theorem node869_eq : Flapjack.WordAlloc.removeDeadStructural input869 value410 value1 value2 = (output869, value459, value1) := by
  rw [input869_def, output869_def]
  try (conv => lhs; cbv)
  try rfl

def value460 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(801, 793)])).val
theorem input870_def : input870 = (Flapjack.WordLangProgHOL.move 0 [(801, 793)]) := by
  unfold input870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output870 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(801, 793)])).val
theorem output870_def : output870 = (Flapjack.WordLangProgHOL.move 0 [(801, 793)]) := by
  unfold output870
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output870_skip : Flapjack.WordAlloc.isSkip output870 = false := by
  rw [output870_def]
  conv => lhs; cbv
  try rfl
theorem node870_eq : Flapjack.WordAlloc.removeDeadStructural input870 value459 value1 value2 = (output870, value460, value1) := by
  rw [input870_def, output870_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input870 input869)).val
theorem input871_def : input871 = (.seq input870 input869) := by
  unfold input871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output871 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output870 output869)).val
theorem output871_def : output871 = (.seq output870 output869) := by
  unfold output871
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output871_skip : Flapjack.WordAlloc.isSkip output871 = false := by
  rw [output871_def]
  conv => lhs; cbv
  try rfl
theorem node871_eq : Flapjack.WordAlloc.removeDeadStructural input871 value410 value1 value2 = (output871, value460, value1) := by
  rw [input871_def, output871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node869_eq]
  try dsimp only
  rw [node870_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value461 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 797 411322207813150721#64))).val
theorem input872_def : input872 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 797 411322207813150721#64)) := by
  unfold input872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output872 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 797 411322207813150721#64))).val
theorem output872_def : output872 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 797 411322207813150721#64)) := by
  unfold output872
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output872_skip : Flapjack.WordAlloc.isSkip output872 = false := by
  rw [output872_def]
  conv => lhs; cbv
  try rfl
theorem node872_eq : Flapjack.WordAlloc.removeDeadStructural input872 value460 value1 value2 = (output872, value461, value1) := by
  rw [input872_def, output872_def]
  try (conv => lhs; cbv)
  try rfl

def value462 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 789 (Flapjack.WordLangAddr.addr 793 16#64)))).val
theorem input873_def : input873 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 789 (Flapjack.WordLangAddr.addr 793 16#64))) := by
  unfold input873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output873 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 789 (Flapjack.WordLangAddr.addr 793 16#64)))).val
theorem output873_def : output873 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 789 (Flapjack.WordLangAddr.addr 793 16#64))) := by
  unfold output873
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output873_skip : Flapjack.WordAlloc.isSkip output873 = false := by
  rw [output873_def]
  conv => lhs; cbv
  try rfl
theorem node873_eq : Flapjack.WordAlloc.removeDeadStructural input873 value461 value1 value2 = (output873, value462, value1) := by
  rw [input873_def, output873_def]
  try (conv => lhs; cbv)
  try rfl

def value463 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(793, 785)])).val
theorem input874_def : input874 = (Flapjack.WordLangProgHOL.move 0 [(793, 785)]) := by
  unfold input874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output874 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(793, 785)])).val
theorem output874_def : output874 = (Flapjack.WordLangProgHOL.move 0 [(793, 785)]) := by
  unfold output874
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output874_skip : Flapjack.WordAlloc.isSkip output874 = false := by
  rw [output874_def]
  conv => lhs; cbv
  try rfl
theorem node874_eq : Flapjack.WordAlloc.removeDeadStructural input874 value462 value1 value2 = (output874, value463, value1) := by
  rw [input874_def, output874_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input874 input873)).val
theorem input875_def : input875 = (.seq input874 input873) := by
  unfold input875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output875 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output874 output873)).val
theorem output875_def : output875 = (.seq output874 output873) := by
  unfold output875
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output875_skip : Flapjack.WordAlloc.isSkip output875 = false := by
  rw [output875_def]
  conv => lhs; cbv
  try rfl
theorem node875_eq : Flapjack.WordAlloc.removeDeadStructural input875 value461 value1 value2 = (output875, value463, value1) := by
  rw [input875_def, output875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node873_eq]
  try dsimp only
  rw [node874_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value464 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 789 9291982349918543492#64))).val
theorem input876_def : input876 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 789 9291982349918543492#64)) := by
  unfold input876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output876 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 789 9291982349918543492#64))).val
theorem output876_def : output876 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 789 9291982349918543492#64)) := by
  unfold output876
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output876_skip : Flapjack.WordAlloc.isSkip output876 = false := by
  rw [output876_def]
  conv => lhs; cbv
  try rfl
theorem node876_eq : Flapjack.WordAlloc.removeDeadStructural input876 value463 value1 value2 = (output876, value464, value1) := by
  rw [input876_def, output876_def]
  try (conv => lhs; cbv)
  try rfl

def value465 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 781 (Flapjack.WordLangAddr.addr 785 8#64)))).val
theorem input877_def : input877 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 781 (Flapjack.WordLangAddr.addr 785 8#64))) := by
  unfold input877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output877 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 781 (Flapjack.WordLangAddr.addr 785 8#64)))).val
theorem output877_def : output877 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 781 (Flapjack.WordLangAddr.addr 785 8#64))) := by
  unfold output877
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output877_skip : Flapjack.WordAlloc.isSkip output877 = false := by
  rw [output877_def]
  conv => lhs; cbv
  try rfl
theorem node877_eq : Flapjack.WordAlloc.removeDeadStructural input877 value464 value1 value2 = (output877, value465, value1) := by
  rw [input877_def, output877_def]
  try (conv => lhs; cbv)
  try rfl

def value466 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(785, 777)])).val
theorem input878_def : input878 = (Flapjack.WordLangProgHOL.move 0 [(785, 777)]) := by
  unfold input878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output878 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(785, 777)])).val
theorem output878_def : output878 = (Flapjack.WordLangProgHOL.move 0 [(785, 777)]) := by
  unfold output878
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output878_skip : Flapjack.WordAlloc.isSkip output878 = false := by
  rw [output878_def]
  conv => lhs; cbv
  try rfl
theorem node878_eq : Flapjack.WordAlloc.removeDeadStructural input878 value465 value1 value2 = (output878, value466, value1) := by
  rw [input878_def, output878_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input878 input877)).val
theorem input879_def : input879 = (.seq input878 input877) := by
  unfold input879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output879 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output878 output877)).val
theorem output879_def : output879 = (.seq output878 output877) := by
  unfold output879
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output879_skip : Flapjack.WordAlloc.isSkip output879 = false := by
  rw [output879_def]
  conv => lhs; cbv
  try rfl
theorem node879_eq : Flapjack.WordAlloc.removeDeadStructural input879 value464 value1 value2 = (output879, value466, value1) := by
  rw [input879_def, output879_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node877_eq]
  try dsimp only
  rw [node878_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value467 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 781 15218619680543796338#64))).val
theorem input880_def : input880 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 781 15218619680543796338#64)) := by
  unfold input880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output880 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 781 15218619680543796338#64))).val
theorem output880_def : output880 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 781 15218619680543796338#64)) := by
  unfold output880
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output880_skip : Flapjack.WordAlloc.isSkip output880 = false := by
  rw [output880_def]
  conv => lhs; cbv
  try rfl
theorem node880_eq : Flapjack.WordAlloc.removeDeadStructural input880 value466 value1 value2 = (output880, value467, value1) := by
  rw [input880_def, output880_def]
  try (conv => lhs; cbv)
  try rfl

def value468 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 773 (Flapjack.WordLangAddr.addr 777 0#64)))).val
theorem input881_def : input881 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 773 (Flapjack.WordLangAddr.addr 777 0#64))) := by
  unfold input881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output881 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 773 (Flapjack.WordLangAddr.addr 777 0#64)))).val
theorem output881_def : output881 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 773 (Flapjack.WordLangAddr.addr 777 0#64))) := by
  unfold output881
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output881_skip : Flapjack.WordAlloc.isSkip output881 = false := by
  rw [output881_def]
  conv => lhs; cbv
  try rfl
theorem node881_eq : Flapjack.WordAlloc.removeDeadStructural input881 value467 value1 value2 = (output881, value468, value1) := by
  rw [input881_def, output881_def]
  try (conv => lhs; cbv)
  try rfl

def value469 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(777, 753)])).val
theorem input882_def : input882 = (Flapjack.WordLangProgHOL.move 0 [(777, 753)]) := by
  unfold input882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output882 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(777, 753)])).val
theorem output882_def : output882 = (Flapjack.WordLangProgHOL.move 0 [(777, 753)]) := by
  unfold output882
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output882_skip : Flapjack.WordAlloc.isSkip output882 = false := by
  rw [output882_def]
  conv => lhs; cbv
  try rfl
theorem node882_eq : Flapjack.WordAlloc.removeDeadStructural input882 value468 value1 value2 = (output882, value469, value1) := by
  rw [input882_def, output882_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input882 input881)).val
theorem input883_def : input883 = (.seq input882 input881) := by
  unfold input883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output883 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output882 output881)).val
theorem output883_def : output883 = (.seq output882 output881) := by
  unfold output883
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output883_skip : Flapjack.WordAlloc.isSkip output883 = false := by
  rw [output883_def]
  conv => lhs; cbv
  try rfl
theorem node883_eq : Flapjack.WordAlloc.removeDeadStructural input883 value467 value1 value2 = (output883, value469, value1) := by
  rw [input883_def, output883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node881_eq]
  try dsimp only
  rw [node882_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value470 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 773 9550480412176721762#64))).val
theorem input884_def : input884 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 773 9550480412176721762#64)) := by
  unfold input884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output884 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 773 9550480412176721762#64))).val
theorem output884_def : output884 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 773 9550480412176721762#64)) := by
  unfold output884
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output884_skip : Flapjack.WordAlloc.isSkip output884 = false := by
  rw [output884_def]
  conv => lhs; cbv
  try rfl
theorem node884_eq : Flapjack.WordAlloc.removeDeadStructural input884 value469 value1 value2 = (output884, value470, value1) := by
  rw [input884_def, output884_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 769 411322207813150721#64))).val
theorem input885_def : input885 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 769 411322207813150721#64)) := by
  unfold input885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output885 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output885_def : output885 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output885
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output885_skip : Flapjack.WordAlloc.isSkip output885 = true := by
  rw [output885_def]
  conv => lhs; cbv
  try rfl
theorem node885_eq : Flapjack.WordAlloc.removeDeadStructural input885 value470 value1 value2 = (output885, value470, value1) := by
  rw [input885_def, output885_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 765 9291982349918543492#64))).val
theorem input886_def : input886 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 765 9291982349918543492#64)) := by
  unfold input886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output886 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output886_def : output886 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output886
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output886_skip : Flapjack.WordAlloc.isSkip output886 = true := by
  rw [output886_def]
  conv => lhs; cbv
  try rfl
theorem node886_eq : Flapjack.WordAlloc.removeDeadStructural input886 value470 value1 value2 = (output886, value470, value1) := by
  rw [input886_def, output886_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 761 15218619680543796338#64))).val
theorem input887_def : input887 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 761 15218619680543796338#64)) := by
  unfold input887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output887 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output887_def : output887 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output887
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output887_skip : Flapjack.WordAlloc.isSkip output887 = true := by
  rw [output887_def]
  conv => lhs; cbv
  try rfl
theorem node887_eq : Flapjack.WordAlloc.removeDeadStructural input887 value470 value1 value2 = (output887, value470, value1) := by
  rw [input887_def, output887_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 757 9550480412176721762#64))).val
theorem input888_def : input888 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 757 9550480412176721762#64)) := by
  unfold input888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output888 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output888_def : output888 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output888
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output888_skip : Flapjack.WordAlloc.isSkip output888 = true := by
  rw [output888_def]
  conv => lhs; cbv
  try rfl
theorem node888_eq : Flapjack.WordAlloc.removeDeadStructural input888 value470 value1 value2 = (output888, value470, value1) := by
  rw [input888_def, output888_def]
  try (conv => lhs; cbv)
  try rfl

def value471 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 753 749 (Flapjack.WordRegImm.imm 256#64))))).val
theorem input889_def : input889 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 753 749 (Flapjack.WordRegImm.imm 256#64)))) := by
  unfold input889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output889 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 753 749 (Flapjack.WordRegImm.imm 256#64))))).val
theorem output889_def : output889 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 753 749 (Flapjack.WordRegImm.imm 256#64)))) := by
  unfold output889
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output889_skip : Flapjack.WordAlloc.isSkip output889 = false := by
  rw [output889_def]
  conv => lhs; cbv
  try rfl
theorem node889_eq : Flapjack.WordAlloc.removeDeadStructural input889 value470 value1 value2 = (output889, value471, value1) := by
  rw [input889_def, output889_def]
  try (conv => lhs; cbv)
  try rfl

def value472 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 749 (Flapjack.WordLangAddr.addr 745 18446744073709551224#64)))).val
theorem input890_def : input890 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 749 (Flapjack.WordLangAddr.addr 745 18446744073709551224#64))) := by
  unfold input890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output890 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 749 (Flapjack.WordLangAddr.addr 745 18446744073709551224#64)))).val
theorem output890_def : output890 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 749 (Flapjack.WordLangAddr.addr 745 18446744073709551224#64))) := by
  unfold output890
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output890_skip : Flapjack.WordAlloc.isSkip output890 = false := by
  rw [output890_def]
  conv => lhs; cbv
  try rfl
theorem node890_eq : Flapjack.WordAlloc.removeDeadStructural input890 value471 value1 value2 = (output890, value472, value1) := by
  rw [input890_def, output890_def]
  try (conv => lhs; cbv)
  try rfl

def value473 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 745 741)).val
theorem input891_def : input891 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 745 741) := by
  unfold input891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output891 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 745 741)).val
theorem output891_def : output891 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 745 741) := by
  unfold output891
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output891_skip : Flapjack.WordAlloc.isSkip output891 = false := by
  rw [output891_def]
  conv => lhs; cbv
  try rfl
theorem node891_eq : Flapjack.WordAlloc.removeDeadStructural input891 value472 value1 value2 = (output891, value473, value1) := by
  rw [input891_def, output891_def]
  try (conv => lhs; cbv)
  try rfl

def value474 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 741 737 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input892_def : input892 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 741 737 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output892 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 741 737 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output892_def : output892 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 741 737 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output892
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output892_skip : Flapjack.WordAlloc.isSkip output892 = false := by
  rw [output892_def]
  conv => lhs; cbv
  try rfl
theorem node892_eq : Flapjack.WordAlloc.removeDeadStructural input892 value473 value1 value2 = (output892, value474, value1) := by
  rw [input892_def, output892_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 737 Flapjack.WordStore.heapLength)).val
theorem input893_def : input893 = (Flapjack.WordLangProgHOL.get 737 Flapjack.WordStore.heapLength) := by
  unfold input893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output893 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 737 Flapjack.WordStore.heapLength)).val
theorem output893_def : output893 = (Flapjack.WordLangProgHOL.get 737 Flapjack.WordStore.heapLength) := by
  unfold output893
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output893_skip : Flapjack.WordAlloc.isSkip output893 = false := by
  rw [output893_def]
  conv => lhs; cbv
  try rfl
theorem node893_eq : Flapjack.WordAlloc.removeDeadStructural input893 value474 value1 value2 = (output893, value410, value1) := by
  rw [input893_def, output893_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input893 input892)).val
theorem input894_def : input894 = (.seq input893 input892) := by
  unfold input894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output894 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output893 output892)).val
theorem output894_def : output894 = (.seq output893 output892) := by
  unfold output894
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output894_skip : Flapjack.WordAlloc.isSkip output894 = false := by
  rw [output894_def]
  conv => lhs; cbv
  try rfl
theorem node894_eq : Flapjack.WordAlloc.removeDeadStructural input894 value473 value1 value2 = (output894, value410, value1) := by
  rw [input894_def, output894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node892_eq]
  try dsimp only
  rw [node893_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input894 input891)).val
theorem input895_def : input895 = (.seq input894 input891) := by
  unfold input895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output895 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output894 output891)).val
theorem output895_def : output895 = (.seq output894 output891) := by
  unfold output895
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output895_skip : Flapjack.WordAlloc.isSkip output895 = false := by
  rw [output895_def]
  conv => lhs; cbv
  try rfl
theorem node895_eq : Flapjack.WordAlloc.removeDeadStructural input895 value472 value1 value2 = (output895, value410, value1) := by
  rw [input895_def, output895_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node891_eq]
  try dsimp only
  rw [node894_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input895 input890)).val
theorem input896_def : input896 = (.seq input895 input890) := by
  unfold input896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output896 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output895 output890)).val
theorem output896_def : output896 = (.seq output895 output890) := by
  unfold output896
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output896_skip : Flapjack.WordAlloc.isSkip output896 = false := by
  rw [output896_def]
  conv => lhs; cbv
  try rfl
theorem node896_eq : Flapjack.WordAlloc.removeDeadStructural input896 value471 value1 value2 = (output896, value410, value1) := by
  rw [input896_def, output896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node890_eq]
  try dsimp only
  rw [node895_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input896 input889)).val
theorem input897_def : input897 = (.seq input896 input889) := by
  unfold input897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output897 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output896 output889)).val
theorem output897_def : output897 = (.seq output896 output889) := by
  unfold output897
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output897_skip : Flapjack.WordAlloc.isSkip output897 = false := by
  rw [output897_def]
  conv => lhs; cbv
  try rfl
theorem node897_eq : Flapjack.WordAlloc.removeDeadStructural input897 value470 value1 value2 = (output897, value410, value1) := by
  rw [input897_def, output897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node889_eq]
  try dsimp only
  rw [node896_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value475 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 729 (Flapjack.WordLangAddr.addr 733 24#64)))).val
theorem input898_def : input898 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 729 (Flapjack.WordLangAddr.addr 733 24#64))) := by
  unfold input898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output898 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 729 (Flapjack.WordLangAddr.addr 733 24#64)))).val
theorem output898_def : output898 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 729 (Flapjack.WordLangAddr.addr 733 24#64))) := by
  unfold output898
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output898_skip : Flapjack.WordAlloc.isSkip output898 = false := by
  rw [output898_def]
  conv => lhs; cbv
  try rfl
theorem node898_eq : Flapjack.WordAlloc.removeDeadStructural input898 value410 value1 value2 = (output898, value475, value1) := by
  rw [input898_def, output898_def]
  try (conv => lhs; cbv)
  try rfl

def value476 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(733, 725)])).val
theorem input899_def : input899 = (Flapjack.WordLangProgHOL.move 0 [(733, 725)]) := by
  unfold input899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output899 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(733, 725)])).val
theorem output899_def : output899 = (Flapjack.WordLangProgHOL.move 0 [(733, 725)]) := by
  unfold output899
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output899_skip : Flapjack.WordAlloc.isSkip output899 = false := by
  rw [output899_def]
  conv => lhs; cbv
  try rfl
theorem node899_eq : Flapjack.WordAlloc.removeDeadStructural input899 value475 value1 value2 = (output899, value476, value1) := by
  rw [input899_def, output899_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input899 input898)).val
theorem input900_def : input900 = (.seq input899 input898) := by
  unfold input900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output900 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output899 output898)).val
theorem output900_def : output900 = (.seq output899 output898) := by
  unfold output900
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output900_skip : Flapjack.WordAlloc.isSkip output900 = false := by
  rw [output900_def]
  conv => lhs; cbv
  try rfl
theorem node900_eq : Flapjack.WordAlloc.removeDeadStructural input900 value410 value1 value2 = (output900, value476, value1) := by
  rw [input900_def, output900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node898_eq]
  try dsimp only
  rw [node899_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value477 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 729 558513134835401882#64))).val
theorem input901_def : input901 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 729 558513134835401882#64)) := by
  unfold input901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output901 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 729 558513134835401882#64))).val
theorem output901_def : output901 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 729 558513134835401882#64)) := by
  unfold output901
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output901_skip : Flapjack.WordAlloc.isSkip output901 = false := by
  rw [output901_def]
  conv => lhs; cbv
  try rfl
theorem node901_eq : Flapjack.WordAlloc.removeDeadStructural input901 value476 value1 value2 = (output901, value477, value1) := by
  rw [input901_def, output901_def]
  try (conv => lhs; cbv)
  try rfl

def value478 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 721 (Flapjack.WordLangAddr.addr 725 16#64)))).val
theorem input902_def : input902 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 721 (Flapjack.WordLangAddr.addr 725 16#64))) := by
  unfold input902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output902 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 721 (Flapjack.WordLangAddr.addr 725 16#64)))).val
theorem output902_def : output902 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 721 (Flapjack.WordLangAddr.addr 725 16#64))) := by
  unfold output902
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output902_skip : Flapjack.WordAlloc.isSkip output902 = false := by
  rw [output902_def]
  conv => lhs; cbv
  try rfl
theorem node902_eq : Flapjack.WordAlloc.removeDeadStructural input902 value477 value1 value2 = (output902, value478, value1) := by
  rw [input902_def, output902_def]
  try (conv => lhs; cbv)
  try rfl

def value479 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(725, 717)])).val
theorem input903_def : input903 = (Flapjack.WordLangProgHOL.move 0 [(725, 717)]) := by
  unfold input903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output903 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(725, 717)])).val
theorem output903_def : output903 = (Flapjack.WordLangProgHOL.move 0 [(725, 717)]) := by
  unfold output903
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output903_skip : Flapjack.WordAlloc.isSkip output903 = false := by
  rw [output903_def]
  conv => lhs; cbv
  try rfl
theorem node903_eq : Flapjack.WordAlloc.removeDeadStructural input903 value478 value1 value2 = (output903, value479, value1) := by
  rw [input903_def, output903_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input903 input902)).val
theorem input904_def : input904 = (.seq input903 input902) := by
  unfold input904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output904 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output903 output902)).val
theorem output904_def : output904 = (.seq output903 output902) := by
  unfold output904
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output904_skip : Flapjack.WordAlloc.isSkip output904 = false := by
  rw [output904_def]
  conv => lhs; cbv
  try rfl
theorem node904_eq : Flapjack.WordAlloc.removeDeadStructural input904 value477 value1 value2 = (output904, value479, value1) := by
  rw [input904_def, output904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node902_eq]
  try dsimp only
  rw [node903_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value480 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 721 505728791003885355#64))).val
theorem input905_def : input905 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 721 505728791003885355#64)) := by
  unfold input905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output905 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 721 505728791003885355#64))).val
theorem output905_def : output905 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 721 505728791003885355#64)) := by
  unfold output905
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output905_skip : Flapjack.WordAlloc.isSkip output905 = false := by
  rw [output905_def]
  conv => lhs; cbv
  try rfl
theorem node905_eq : Flapjack.WordAlloc.removeDeadStructural input905 value479 value1 value2 = (output905, value480, value1) := by
  rw [input905_def, output905_def]
  try (conv => lhs; cbv)
  try rfl

def value481 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 713 (Flapjack.WordLangAddr.addr 717 8#64)))).val
theorem input906_def : input906 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 713 (Flapjack.WordLangAddr.addr 717 8#64))) := by
  unfold input906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output906 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 713 (Flapjack.WordLangAddr.addr 717 8#64)))).val
theorem output906_def : output906 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 713 (Flapjack.WordLangAddr.addr 717 8#64))) := by
  unfold output906
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output906_skip : Flapjack.WordAlloc.isSkip output906 = false := by
  rw [output906_def]
  conv => lhs; cbv
  try rfl
theorem node906_eq : Flapjack.WordAlloc.removeDeadStructural input906 value480 value1 value2 = (output906, value481, value1) := by
  rw [input906_def, output906_def]
  try (conv => lhs; cbv)
  try rfl

def value482 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(717, 709)])).val
theorem input907_def : input907 = (Flapjack.WordLangProgHOL.move 0 [(717, 709)]) := by
  unfold input907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output907 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(717, 709)])).val
theorem output907_def : output907 = (Flapjack.WordLangProgHOL.move 0 [(717, 709)]) := by
  unfold output907
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output907_skip : Flapjack.WordAlloc.isSkip output907 = false := by
  rw [output907_def]
  conv => lhs; cbv
  try rfl
theorem node907_eq : Flapjack.WordAlloc.removeDeadStructural input907 value481 value1 value2 = (output907, value482, value1) := by
  rw [input907_def, output907_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input907 input906)).val
theorem input908_def : input908 = (.seq input907 input906) := by
  unfold input908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output908 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output907 output906)).val
theorem output908_def : output908 = (.seq output907 output906) := by
  unfold output908
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output908_skip : Flapjack.WordAlloc.isSkip output908 = false := by
  rw [output908_def]
  conv => lhs; cbv
  try rfl
theorem node908_eq : Flapjack.WordAlloc.removeDeadStructural input908 value480 value1 value2 = (output908, value482, value1) := by
  rw [input908_def, output908_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node906_eq]
  try dsimp only
  rw [node907_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value483 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 713 2414067704922266578#64))).val
theorem input909_def : input909 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 713 2414067704922266578#64)) := by
  unfold input909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output909 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 713 2414067704922266578#64))).val
theorem output909_def : output909 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 713 2414067704922266578#64)) := by
  unfold output909
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output909_skip : Flapjack.WordAlloc.isSkip output909 = false := by
  rw [output909_def]
  conv => lhs; cbv
  try rfl
theorem node909_eq : Flapjack.WordAlloc.removeDeadStructural input909 value482 value1 value2 = (output909, value483, value1) := by
  rw [input909_def, output909_def]
  try (conv => lhs; cbv)
  try rfl

def value484 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 705 (Flapjack.WordLangAddr.addr 709 0#64)))).val
theorem input910_def : input910 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 705 (Flapjack.WordLangAddr.addr 709 0#64))) := by
  unfold input910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output910 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 705 (Flapjack.WordLangAddr.addr 709 0#64)))).val
theorem output910_def : output910 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 705 (Flapjack.WordLangAddr.addr 709 0#64))) := by
  unfold output910
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output910_skip : Flapjack.WordAlloc.isSkip output910 = false := by
  rw [output910_def]
  conv => lhs; cbv
  try rfl
theorem node910_eq : Flapjack.WordAlloc.removeDeadStructural input910 value483 value1 value2 = (output910, value484, value1) := by
  rw [input910_def, output910_def]
  try (conv => lhs; cbv)
  try rfl

def value485 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(709, 685)])).val
theorem input911_def : input911 = (Flapjack.WordLangProgHOL.move 0 [(709, 685)]) := by
  unfold input911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output911 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(709, 685)])).val
theorem output911_def : output911 = (Flapjack.WordLangProgHOL.move 0 [(709, 685)]) := by
  unfold output911
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output911_skip : Flapjack.WordAlloc.isSkip output911 = false := by
  rw [output911_def]
  conv => lhs; cbv
  try rfl
theorem node911_eq : Flapjack.WordAlloc.removeDeadStructural input911 value484 value1 value2 = (output911, value485, value1) := by
  rw [input911_def, output911_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input911 input910)).val
theorem input912_def : input912 = (.seq input911 input910) := by
  unfold input912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output912 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output911 output910)).val
theorem output912_def : output912 = (.seq output911 output910) := by
  unfold output912
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output912_skip : Flapjack.WordAlloc.isSkip output912 = false := by
  rw [output912_def]
  conv => lhs; cbv
  try rfl
theorem node912_eq : Flapjack.WordAlloc.removeDeadStructural input912 value483 value1 value2 = (output912, value485, value1) := by
  rw [input912_def, output912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node910_eq]
  try dsimp only
  rw [node911_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value486 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 705 9427018508834943203#64))).val
theorem input913_def : input913 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 705 9427018508834943203#64)) := by
  unfold input913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output913 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 705 9427018508834943203#64))).val
theorem output913_def : output913 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 705 9427018508834943203#64)) := by
  unfold output913
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output913_skip : Flapjack.WordAlloc.isSkip output913 = false := by
  rw [output913_def]
  conv => lhs; cbv
  try rfl
theorem node913_eq : Flapjack.WordAlloc.removeDeadStructural input913 value485 value1 value2 = (output913, value486, value1) := by
  rw [input913_def, output913_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 701 558513134835401882#64))).val
theorem input914_def : input914 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 701 558513134835401882#64)) := by
  unfold input914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output914 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output914_def : output914 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output914
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output914_skip : Flapjack.WordAlloc.isSkip output914 = true := by
  rw [output914_def]
  conv => lhs; cbv
  try rfl
theorem node914_eq : Flapjack.WordAlloc.removeDeadStructural input914 value486 value1 value2 = (output914, value486, value1) := by
  rw [input914_def, output914_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 697 505728791003885355#64))).val
theorem input915_def : input915 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 697 505728791003885355#64)) := by
  unfold input915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output915 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output915_def : output915 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output915
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output915_skip : Flapjack.WordAlloc.isSkip output915 = true := by
  rw [output915_def]
  conv => lhs; cbv
  try rfl
theorem node915_eq : Flapjack.WordAlloc.removeDeadStructural input915 value486 value1 value2 = (output915, value486, value1) := by
  rw [input915_def, output915_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 693 2414067704922266578#64))).val
theorem input916_def : input916 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 693 2414067704922266578#64)) := by
  unfold input916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output916 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output916_def : output916 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output916
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output916_skip : Flapjack.WordAlloc.isSkip output916 = true := by
  rw [output916_def]
  conv => lhs; cbv
  try rfl
theorem node916_eq : Flapjack.WordAlloc.removeDeadStructural input916 value486 value1 value2 = (output916, value486, value1) := by
  rw [input916_def, output916_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 689 9427018508834943203#64))).val
theorem input917_def : input917 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 689 9427018508834943203#64)) := by
  unfold input917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output917 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output917_def : output917 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output917
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output917_skip : Flapjack.WordAlloc.isSkip output917 = true := by
  rw [output917_def]
  conv => lhs; cbv
  try rfl
theorem node917_eq : Flapjack.WordAlloc.removeDeadStructural input917 value486 value1 value2 = (output917, value486, value1) := by
  rw [input917_def, output917_def]
  try (conv => lhs; cbv)
  try rfl

def value487 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 685 681 (Flapjack.WordRegImm.imm 224#64))))).val
theorem input918_def : input918 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 685 681 (Flapjack.WordRegImm.imm 224#64)))) := by
  unfold input918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output918 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 685 681 (Flapjack.WordRegImm.imm 224#64))))).val
theorem output918_def : output918 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 685 681 (Flapjack.WordRegImm.imm 224#64)))) := by
  unfold output918
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output918_skip : Flapjack.WordAlloc.isSkip output918 = false := by
  rw [output918_def]
  conv => lhs; cbv
  try rfl
theorem node918_eq : Flapjack.WordAlloc.removeDeadStructural input918 value486 value1 value2 = (output918, value487, value1) := by
  rw [input918_def, output918_def]
  try (conv => lhs; cbv)
  try rfl

def value488 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 681 (Flapjack.WordLangAddr.addr 677 18446744073709551224#64)))).val
theorem input919_def : input919 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 681 (Flapjack.WordLangAddr.addr 677 18446744073709551224#64))) := by
  unfold input919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output919 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 681 (Flapjack.WordLangAddr.addr 677 18446744073709551224#64)))).val
theorem output919_def : output919 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 681 (Flapjack.WordLangAddr.addr 677 18446744073709551224#64))) := by
  unfold output919
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output919_skip : Flapjack.WordAlloc.isSkip output919 = false := by
  rw [output919_def]
  conv => lhs; cbv
  try rfl
theorem node919_eq : Flapjack.WordAlloc.removeDeadStructural input919 value487 value1 value2 = (output919, value488, value1) := by
  rw [input919_def, output919_def]
  try (conv => lhs; cbv)
  try rfl

def value489 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 677 673)).val
theorem input920_def : input920 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 677 673) := by
  unfold input920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output920 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 677 673)).val
theorem output920_def : output920 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 677 673) := by
  unfold output920
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output920_skip : Flapjack.WordAlloc.isSkip output920 = false := by
  rw [output920_def]
  conv => lhs; cbv
  try rfl
theorem node920_eq : Flapjack.WordAlloc.removeDeadStructural input920 value488 value1 value2 = (output920, value489, value1) := by
  rw [input920_def, output920_def]
  try (conv => lhs; cbv)
  try rfl

def value490 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 673 669 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input921_def : input921 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 673 669 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output921 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 673 669 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output921_def : output921 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 673 669 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output921
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output921_skip : Flapjack.WordAlloc.isSkip output921 = false := by
  rw [output921_def]
  conv => lhs; cbv
  try rfl
theorem node921_eq : Flapjack.WordAlloc.removeDeadStructural input921 value489 value1 value2 = (output921, value490, value1) := by
  rw [input921_def, output921_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 669 Flapjack.WordStore.heapLength)).val
theorem input922_def : input922 = (Flapjack.WordLangProgHOL.get 669 Flapjack.WordStore.heapLength) := by
  unfold input922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output922 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 669 Flapjack.WordStore.heapLength)).val
theorem output922_def : output922 = (Flapjack.WordLangProgHOL.get 669 Flapjack.WordStore.heapLength) := by
  unfold output922
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output922_skip : Flapjack.WordAlloc.isSkip output922 = false := by
  rw [output922_def]
  conv => lhs; cbv
  try rfl
theorem node922_eq : Flapjack.WordAlloc.removeDeadStructural input922 value490 value1 value2 = (output922, value410, value1) := by
  rw [input922_def, output922_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input922 input921)).val
theorem input923_def : input923 = (.seq input922 input921) := by
  unfold input923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output923 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output922 output921)).val
theorem output923_def : output923 = (.seq output922 output921) := by
  unfold output923
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output923_skip : Flapjack.WordAlloc.isSkip output923 = false := by
  rw [output923_def]
  conv => lhs; cbv
  try rfl
theorem node923_eq : Flapjack.WordAlloc.removeDeadStructural input923 value489 value1 value2 = (output923, value410, value1) := by
  rw [input923_def, output923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node921_eq]
  try dsimp only
  rw [node922_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input923 input920)).val
theorem input924_def : input924 = (.seq input923 input920) := by
  unfold input924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output924 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output923 output920)).val
theorem output924_def : output924 = (.seq output923 output920) := by
  unfold output924
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output924_skip : Flapjack.WordAlloc.isSkip output924 = false := by
  rw [output924_def]
  conv => lhs; cbv
  try rfl
theorem node924_eq : Flapjack.WordAlloc.removeDeadStructural input924 value488 value1 value2 = (output924, value410, value1) := by
  rw [input924_def, output924_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node920_eq]
  try dsimp only
  rw [node923_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input924 input919)).val
theorem input925_def : input925 = (.seq input924 input919) := by
  unfold input925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output925 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output924 output919)).val
theorem output925_def : output925 = (.seq output924 output919) := by
  unfold output925
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output925_skip : Flapjack.WordAlloc.isSkip output925 = false := by
  rw [output925_def]
  conv => lhs; cbv
  try rfl
theorem node925_eq : Flapjack.WordAlloc.removeDeadStructural input925 value487 value1 value2 = (output925, value410, value1) := by
  rw [input925_def, output925_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node919_eq]
  try dsimp only
  rw [node924_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input925 input918)).val
theorem input926_def : input926 = (.seq input925 input918) := by
  unfold input926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output926 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output925 output918)).val
theorem output926_def : output926 = (.seq output925 output918) := by
  unfold output926
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output926_skip : Flapjack.WordAlloc.isSkip output926 = false := by
  rw [output926_def]
  conv => lhs; cbv
  try rfl
theorem node926_eq : Flapjack.WordAlloc.removeDeadStructural input926 value486 value1 value2 = (output926, value410, value1) := by
  rw [input926_def, output926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node918_eq]
  try dsimp only
  rw [node925_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value491 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 661 (Flapjack.WordLangAddr.addr 665 24#64)))).val
theorem input927_def : input927 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 661 (Flapjack.WordLangAddr.addr 665 24#64))) := by
  unfold input927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output927 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 661 (Flapjack.WordLangAddr.addr 665 24#64)))).val
theorem output927_def : output927 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 661 (Flapjack.WordLangAddr.addr 665 24#64))) := by
  unfold output927
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output927_skip : Flapjack.WordAlloc.isSkip output927 = false := by
  rw [output927_def]
  conv => lhs; cbv
  try rfl
theorem node927_eq : Flapjack.WordAlloc.removeDeadStructural input927 value410 value1 value2 = (output927, value491, value1) := by
  rw [input927_def, output927_def]
  try (conv => lhs; cbv)
  try rfl

def value492 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) PUnit.unit
                Flapjack.Spt.ln)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(665, 657)])).val
theorem input928_def : input928 = (Flapjack.WordLangProgHOL.move 0 [(665, 657)]) := by
  unfold input928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output928 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(665, 657)])).val
theorem output928_def : output928 = (Flapjack.WordLangProgHOL.move 0 [(665, 657)]) := by
  unfold output928
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output928_skip : Flapjack.WordAlloc.isSkip output928 = false := by
  rw [output928_def]
  conv => lhs; cbv
  try rfl
theorem node928_eq : Flapjack.WordAlloc.removeDeadStructural input928 value491 value1 value2 = (output928, value492, value1) := by
  rw [input928_def, output928_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input928 input927)).val
theorem input929_def : input929 = (.seq input928 input927) := by
  unfold input929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output929 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output928 output927)).val
theorem output929_def : output929 = (.seq output928 output927) := by
  unfold output929
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output929_skip : Flapjack.WordAlloc.isSkip output929 = false := by
  rw [output929_def]
  conv => lhs; cbv
  try rfl
theorem node929_eq : Flapjack.WordAlloc.removeDeadStructural input929 value410 value1 value2 = (output929, value492, value1) := by
  rw [input929_def, output929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node927_eq]
  try dsimp only
  rw [node928_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value493 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 661 449501266848708060#64))).val
theorem input930_def : input930 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 661 449501266848708060#64)) := by
  unfold input930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output930 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 661 449501266848708060#64))).val
theorem output930_def : output930 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 661 449501266848708060#64)) := by
  unfold output930
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output930_skip : Flapjack.WordAlloc.isSkip output930 = false := by
  rw [output930_def]
  conv => lhs; cbv
  try rfl
theorem node930_eq : Flapjack.WordAlloc.removeDeadStructural input930 value492 value1 value2 = (output930, value493, value1) := by
  rw [input930_def, output930_def]
  try (conv => lhs; cbv)
  try rfl

def value494 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 653 (Flapjack.WordLangAddr.addr 657 16#64)))).val
theorem input931_def : input931 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 653 (Flapjack.WordLangAddr.addr 657 16#64))) := by
  unfold input931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output931 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 653 (Flapjack.WordLangAddr.addr 657 16#64)))).val
theorem output931_def : output931 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 653 (Flapjack.WordLangAddr.addr 657 16#64))) := by
  unfold output931
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output931_skip : Flapjack.WordAlloc.isSkip output931 = false := by
  rw [output931_def]
  conv => lhs; cbv
  try rfl
theorem node931_eq : Flapjack.WordAlloc.removeDeadStructural input931 value493 value1 value2 = (output931, value494, value1) := by
  rw [input931_def, output931_def]
  try (conv => lhs; cbv)
  try rfl

def value495 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(657, 649)])).val
theorem input932_def : input932 = (Flapjack.WordLangProgHOL.move 0 [(657, 649)]) := by
  unfold input932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output932 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(657, 649)])).val
theorem output932_def : output932 = (Flapjack.WordLangProgHOL.move 0 [(657, 649)]) := by
  unfold output932
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output932_skip : Flapjack.WordAlloc.isSkip output932 = false := by
  rw [output932_def]
  conv => lhs; cbv
  try rfl
theorem node932_eq : Flapjack.WordAlloc.removeDeadStructural input932 value494 value1 value2 = (output932, value495, value1) := by
  rw [input932_def, output932_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input932 input931)).val
theorem input933_def : input933 = (.seq input932 input931) := by
  unfold input933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output933 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output932 output931)).val
theorem output933_def : output933 = (.seq output932 output931) := by
  unfold output933
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output933_skip : Flapjack.WordAlloc.isSkip output933 = false := by
  rw [output933_def]
  conv => lhs; cbv
  try rfl
theorem node933_eq : Flapjack.WordAlloc.removeDeadStructural input933 value493 value1 value2 = (output933, value495, value1) := by
  rw [input933_def, output933_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node931_eq]
  try dsimp only
  rw [node932_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value496 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 653 15879347695360604601#64))).val
theorem input934_def : input934 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 653 15879347695360604601#64)) := by
  unfold input934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output934 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 653 15879347695360604601#64))).val
theorem output934_def : output934 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 653 15879347695360604601#64)) := by
  unfold output934
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output934_skip : Flapjack.WordAlloc.isSkip output934 = false := by
  rw [output934_def]
  conv => lhs; cbv
  try rfl
theorem node934_eq : Flapjack.WordAlloc.removeDeadStructural input934 value495 value1 value2 = (output934, value496, value1) := by
  rw [input934_def, output934_def]
  try (conv => lhs; cbv)
  try rfl

def value497 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 645 (Flapjack.WordLangAddr.addr 649 8#64)))).val
theorem input935_def : input935 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 645 (Flapjack.WordLangAddr.addr 649 8#64))) := by
  unfold input935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output935 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 645 (Flapjack.WordLangAddr.addr 649 8#64)))).val
theorem output935_def : output935 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 645 (Flapjack.WordLangAddr.addr 649 8#64))) := by
  unfold output935
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output935_skip : Flapjack.WordAlloc.isSkip output935 = false := by
  rw [output935_def]
  conv => lhs; cbv
  try rfl
theorem node935_eq : Flapjack.WordAlloc.removeDeadStructural input935 value496 value1 value2 = (output935, value497, value1) := by
  rw [input935_def, output935_def]
  try (conv => lhs; cbv)
  try rfl

def value498 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln)))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(649, 641)])).val
theorem input936_def : input936 = (Flapjack.WordLangProgHOL.move 0 [(649, 641)]) := by
  unfold input936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output936 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(649, 641)])).val
theorem output936_def : output936 = (Flapjack.WordLangProgHOL.move 0 [(649, 641)]) := by
  unfold output936
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output936_skip : Flapjack.WordAlloc.isSkip output936 = false := by
  rw [output936_def]
  conv => lhs; cbv
  try rfl
theorem node936_eq : Flapjack.WordAlloc.removeDeadStructural input936 value497 value1 value2 = (output936, value498, value1) := by
  rw [input936_def, output936_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input936 input935)).val
theorem input937_def : input937 = (.seq input936 input935) := by
  unfold input937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output937 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output936 output935)).val
theorem output937_def : output937 = (.seq output936 output935) := by
  unfold output937
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output937_skip : Flapjack.WordAlloc.isSkip output937 = false := by
  rw [output937_def]
  conv => lhs; cbv
  try rfl
theorem node937_eq : Flapjack.WordAlloc.removeDeadStructural input937 value496 value1 value2 = (output937, value498, value1) := by
  rw [input937_def, output937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node935_eq]
  try dsimp only
  rw [node936_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value499 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 645 15828711151707445656#64))).val
theorem input938_def : input938 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 645 15828711151707445656#64)) := by
  unfold input938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output938 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 645 15828711151707445656#64))).val
theorem output938_def : output938 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 645 15828711151707445656#64)) := by
  unfold output938
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output938_skip : Flapjack.WordAlloc.isSkip output938 = false := by
  rw [output938_def]
  conv => lhs; cbv
  try rfl
theorem node938_eq : Flapjack.WordAlloc.removeDeadStructural input938 value498 value1 value2 = (output938, value499, value1) := by
  rw [input938_def, output938_def]
  try (conv => lhs; cbv)
  try rfl

def value500 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)) Flapjack.Spt.ln))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 637 (Flapjack.WordLangAddr.addr 641 0#64)))).val
theorem input939_def : input939 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 637 (Flapjack.WordLangAddr.addr 641 0#64))) := by
  unfold input939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output939 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 637 (Flapjack.WordLangAddr.addr 641 0#64)))).val
theorem output939_def : output939 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 637 (Flapjack.WordLangAddr.addr 641 0#64))) := by
  unfold output939
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output939_skip : Flapjack.WordAlloc.isSkip output939 = false := by
  rw [output939_def]
  conv => lhs; cbv
  try rfl
theorem node939_eq : Flapjack.WordAlloc.removeDeadStructural input939 value499 value1 value2 = (output939, value500, value1) := by
  rw [input939_def, output939_def]
  try (conv => lhs; cbv)
  try rfl

def value501 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
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
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(641, 617)])).val
theorem input940_def : input940 = (Flapjack.WordLangProgHOL.move 0 [(641, 617)]) := by
  unfold input940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output940 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(641, 617)])).val
theorem output940_def : output940 = (Flapjack.WordLangProgHOL.move 0 [(641, 617)]) := by
  unfold output940
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output940_skip : Flapjack.WordAlloc.isSkip output940 = false := by
  rw [output940_def]
  conv => lhs; cbv
  try rfl
theorem node940_eq : Flapjack.WordAlloc.removeDeadStructural input940 value500 value1 value2 = (output940, value501, value1) := by
  rw [input940_def, output940_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input940 input939)).val
theorem input941_def : input941 = (.seq input940 input939) := by
  unfold input941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output941 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output940 output939)).val
theorem output941_def : output941 = (.seq output940 output939) := by
  unfold output941
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output941_skip : Flapjack.WordAlloc.isSkip output941 = false := by
  rw [output941_def]
  conv => lhs; cbv
  try rfl
theorem node941_eq : Flapjack.WordAlloc.removeDeadStructural input941 value499 value1 value2 = (output941, value501, value1) := by
  rw [input941_def, output941_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node939_eq]
  try dsimp only
  rw [node940_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value502 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 637 15876315988453495642#64))).val
theorem input942_def : input942 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 637 15876315988453495642#64)) := by
  unfold input942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output942 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 637 15876315988453495642#64))).val
theorem output942_def : output942 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 637 15876315988453495642#64)) := by
  unfold output942
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output942_skip : Flapjack.WordAlloc.isSkip output942 = false := by
  rw [output942_def]
  conv => lhs; cbv
  try rfl
theorem node942_eq : Flapjack.WordAlloc.removeDeadStructural input942 value501 value1 value2 = (output942, value502, value1) := by
  rw [input942_def, output942_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 633 449501266848708060#64))).val
theorem input943_def : input943 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 633 449501266848708060#64)) := by
  unfold input943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output943 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output943_def : output943 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output943
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output943_skip : Flapjack.WordAlloc.isSkip output943 = true := by
  rw [output943_def]
  conv => lhs; cbv
  try rfl
theorem node943_eq : Flapjack.WordAlloc.removeDeadStructural input943 value502 value1 value2 = (output943, value502, value1) := by
  rw [input943_def, output943_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 629 15879347695360604601#64))).val
theorem input944_def : input944 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 629 15879347695360604601#64)) := by
  unfold input944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output944 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output944_def : output944 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output944
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output944_skip : Flapjack.WordAlloc.isSkip output944 = true := by
  rw [output944_def]
  conv => lhs; cbv
  try rfl
theorem node944_eq : Flapjack.WordAlloc.removeDeadStructural input944 value502 value1 value2 = (output944, value502, value1) := by
  rw [input944_def, output944_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 625 15828711151707445656#64))).val
theorem input945_def : input945 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 625 15828711151707445656#64)) := by
  unfold input945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output945 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output945_def : output945 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output945
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output945_skip : Flapjack.WordAlloc.isSkip output945 = true := by
  rw [output945_def]
  conv => lhs; cbv
  try rfl
theorem node945_eq : Flapjack.WordAlloc.removeDeadStructural input945 value502 value1 value2 = (output945, value502, value1) := by
  rw [input945_def, output945_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 621 15876315988453495642#64))).val
theorem input946_def : input946 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 621 15876315988453495642#64)) := by
  unfold input946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output946 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output946_def : output946 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output946
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output946_skip : Flapjack.WordAlloc.isSkip output946 = true := by
  rw [output946_def]
  conv => lhs; cbv
  try rfl
theorem node946_eq : Flapjack.WordAlloc.removeDeadStructural input946 value502 value1 value2 = (output946, value502, value1) := by
  rw [input946_def, output946_def]
  try (conv => lhs; cbv)
  try rfl

def value503 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 617 613 (Flapjack.WordRegImm.imm 192#64))))).val
theorem input947_def : input947 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 617 613 (Flapjack.WordRegImm.imm 192#64)))) := by
  unfold input947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output947 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 617 613 (Flapjack.WordRegImm.imm 192#64))))).val
theorem output947_def : output947 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 617 613 (Flapjack.WordRegImm.imm 192#64)))) := by
  unfold output947
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output947_skip : Flapjack.WordAlloc.isSkip output947 = false := by
  rw [output947_def]
  conv => lhs; cbv
  try rfl
theorem node947_eq : Flapjack.WordAlloc.removeDeadStructural input947 value502 value1 value2 = (output947, value503, value1) := by
  rw [input947_def, output947_def]
  try (conv => lhs; cbv)
  try rfl

def value504 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 613 (Flapjack.WordLangAddr.addr 609 18446744073709551224#64)))).val
theorem input948_def : input948 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 613 (Flapjack.WordLangAddr.addr 609 18446744073709551224#64))) := by
  unfold input948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output948 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 613 (Flapjack.WordLangAddr.addr 609 18446744073709551224#64)))).val
theorem output948_def : output948 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 613 (Flapjack.WordLangAddr.addr 609 18446744073709551224#64))) := by
  unfold output948
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output948_skip : Flapjack.WordAlloc.isSkip output948 = false := by
  rw [output948_def]
  conv => lhs; cbv
  try rfl
theorem node948_eq : Flapjack.WordAlloc.removeDeadStructural input948 value503 value1 value2 = (output948, value504, value1) := by
  rw [input948_def, output948_def]
  try (conv => lhs; cbv)
  try rfl

def value505 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 609 605)).val
theorem input949_def : input949 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 609 605) := by
  unfold input949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output949 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 609 605)).val
theorem output949_def : output949 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 609 605) := by
  unfold output949
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output949_skip : Flapjack.WordAlloc.isSkip output949 = false := by
  rw [output949_def]
  conv => lhs; cbv
  try rfl
theorem node949_eq : Flapjack.WordAlloc.removeDeadStructural input949 value504 value1 value2 = (output949, value505, value1) := by
  rw [input949_def, output949_def]
  try (conv => lhs; cbv)
  try rfl

def value506 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 605 601 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input950_def : input950 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 605 601 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output950 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 605 601 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output950_def : output950 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 605 601 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output950
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output950_skip : Flapjack.WordAlloc.isSkip output950 = false := by
  rw [output950_def]
  conv => lhs; cbv
  try rfl
theorem node950_eq : Flapjack.WordAlloc.removeDeadStructural input950 value505 value1 value2 = (output950, value506, value1) := by
  rw [input950_def, output950_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 601 Flapjack.WordStore.heapLength)).val
theorem input951_def : input951 = (Flapjack.WordLangProgHOL.get 601 Flapjack.WordStore.heapLength) := by
  unfold input951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output951 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 601 Flapjack.WordStore.heapLength)).val
theorem output951_def : output951 = (Flapjack.WordLangProgHOL.get 601 Flapjack.WordStore.heapLength) := by
  unfold output951
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output951_skip : Flapjack.WordAlloc.isSkip output951 = false := by
  rw [output951_def]
  conv => lhs; cbv
  try rfl
theorem node951_eq : Flapjack.WordAlloc.removeDeadStructural input951 value506 value1 value2 = (output951, value410, value1) := by
  rw [input951_def, output951_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input951 input950)).val
theorem input952_def : input952 = (.seq input951 input950) := by
  unfold input952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output952 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output951 output950)).val
theorem output952_def : output952 = (.seq output951 output950) := by
  unfold output952
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output952_skip : Flapjack.WordAlloc.isSkip output952 = false := by
  rw [output952_def]
  conv => lhs; cbv
  try rfl
theorem node952_eq : Flapjack.WordAlloc.removeDeadStructural input952 value505 value1 value2 = (output952, value410, value1) := by
  rw [input952_def, output952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node950_eq]
  try dsimp only
  rw [node951_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input952 input949)).val
theorem input953_def : input953 = (.seq input952 input949) := by
  unfold input953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output953 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output952 output949)).val
theorem output953_def : output953 = (.seq output952 output949) := by
  unfold output953
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output953_skip : Flapjack.WordAlloc.isSkip output953 = false := by
  rw [output953_def]
  conv => lhs; cbv
  try rfl
theorem node953_eq : Flapjack.WordAlloc.removeDeadStructural input953 value504 value1 value2 = (output953, value410, value1) := by
  rw [input953_def, output953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node949_eq]
  try dsimp only
  rw [node952_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input953 input948)).val
theorem input954_def : input954 = (.seq input953 input948) := by
  unfold input954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output954 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output953 output948)).val
theorem output954_def : output954 = (.seq output953 output948) := by
  unfold output954
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output954_skip : Flapjack.WordAlloc.isSkip output954 = false := by
  rw [output954_def]
  conv => lhs; cbv
  try rfl
theorem node954_eq : Flapjack.WordAlloc.removeDeadStructural input954 value503 value1 value2 = (output954, value410, value1) := by
  rw [input954_def, output954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node948_eq]
  try dsimp only
  rw [node953_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input954 input947)).val
theorem input955_def : input955 = (.seq input954 input947) := by
  unfold input955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output955 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output954 output947)).val
theorem output955_def : output955 = (.seq output954 output947) := by
  unfold output955
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output955_skip : Flapjack.WordAlloc.isSkip output955 = false := by
  rw [output955_def]
  conv => lhs; cbv
  try rfl
theorem node955_eq : Flapjack.WordAlloc.removeDeadStructural input955 value502 value1 value2 = (output955, value410, value1) := by
  rw [input955_def, output955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node947_eq]
  try dsimp only
  rw [node954_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value507 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 593 (Flapjack.WordLangAddr.addr 597 24#64)))).val
theorem input956_def : input956 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 593 (Flapjack.WordLangAddr.addr 597 24#64))) := by
  unfold input956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output956 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 593 (Flapjack.WordLangAddr.addr 597 24#64)))).val
theorem output956_def : output956 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 593 (Flapjack.WordLangAddr.addr 597 24#64))) := by
  unfold output956
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output956_skip : Flapjack.WordAlloc.isSkip output956 = false := by
  rw [output956_def]
  conv => lhs; cbv
  try rfl
theorem node956_eq : Flapjack.WordAlloc.removeDeadStructural input956 value410 value1 value2 = (output956, value507, value1) := by
  rw [input956_def, output956_def]
  try (conv => lhs; cbv)
  try rfl

def value508 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(597, 589)])).val
theorem input957_def : input957 = (Flapjack.WordLangProgHOL.move 0 [(597, 589)]) := by
  unfold input957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output957 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(597, 589)])).val
theorem output957_def : output957 = (Flapjack.WordLangProgHOL.move 0 [(597, 589)]) := by
  unfold output957
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output957_skip : Flapjack.WordAlloc.isSkip output957 = false := by
  rw [output957_def]
  conv => lhs; cbv
  try rfl
theorem node957_eq : Flapjack.WordAlloc.removeDeadStructural input957 value507 value1 value2 = (output957, value508, value1) := by
  rw [input957_def, output957_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input957 input956)).val
theorem input958_def : input958 = (.seq input957 input956) := by
  unfold input958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output958 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output957 output956)).val
theorem output958_def : output958 = (.seq output957 output956) := by
  unfold output958
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output958_skip : Flapjack.WordAlloc.isSkip output958 = false := by
  rw [output958_def]
  conv => lhs; cbv
  try rfl
theorem node958_eq : Flapjack.WordAlloc.removeDeadStructural input958 value410 value1 value2 = (output958, value508, value1) := by
  rw [input958_def, output958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node956_eq]
  try dsimp only
  rw [node957_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value509 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 593 1642095672556236320#64))).val
theorem input959_def : input959 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 593 1642095672556236320#64)) := by
  unfold input959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output959 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 593 1642095672556236320#64))).val
theorem output959_def : output959 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 593 1642095672556236320#64)) := by
  unfold output959
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output959_skip : Flapjack.WordAlloc.isSkip output959 = false := by
  rw [output959_def]
  conv => lhs; cbv
  try rfl
theorem node959_eq : Flapjack.WordAlloc.removeDeadStructural input959 value508 value1 value2 = (output959, value509, value1) := by
  rw [input959_def, output959_def]
  try (conv => lhs; cbv)
  try rfl

def value510 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 585 (Flapjack.WordLangAddr.addr 589 16#64)))).val
theorem input960_def : input960 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 585 (Flapjack.WordLangAddr.addr 589 16#64))) := by
  unfold input960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output960 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 585 (Flapjack.WordLangAddr.addr 589 16#64)))).val
theorem output960_def : output960 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 585 (Flapjack.WordLangAddr.addr 589 16#64))) := by
  unfold output960
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output960_skip : Flapjack.WordAlloc.isSkip output960 = false := by
  rw [output960_def]
  conv => lhs; cbv
  try rfl
theorem node960_eq : Flapjack.WordAlloc.removeDeadStructural input960 value509 value1 value2 = (output960, value510, value1) := by
  rw [input960_def, output960_def]
  try (conv => lhs; cbv)
  try rfl

def value511 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(589, 581)])).val
theorem input961_def : input961 = (Flapjack.WordLangProgHOL.move 0 [(589, 581)]) := by
  unfold input961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output961 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(589, 581)])).val
theorem output961_def : output961 = (Flapjack.WordLangProgHOL.move 0 [(589, 581)]) := by
  unfold output961
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output961_skip : Flapjack.WordAlloc.isSkip output961 = false := by
  rw [output961_def]
  conv => lhs; cbv
  try rfl
theorem node961_eq : Flapjack.WordAlloc.removeDeadStructural input961 value510 value1 value2 = (output961, value511, value1) := by
  rw [input961_def, output961_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input961 input960)).val
theorem input962_def : input962 = (.seq input961 input960) := by
  unfold input962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output962 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output961 output960)).val
theorem output962_def : output962 = (.seq output961 output960) := by
  unfold output962
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output962_skip : Flapjack.WordAlloc.isSkip output962 = false := by
  rw [output962_def]
  conv => lhs; cbv
  try rfl
theorem node962_eq : Flapjack.WordAlloc.removeDeadStructural input962 value509 value1 value2 = (output962, value511, value1) := by
  rw [input962_def, output962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node960_eq]
  try dsimp only
  rw [node961_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value512 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 585 5450706350010664852#64))).val
theorem input963_def : input963 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 585 5450706350010664852#64)) := by
  unfold input963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output963 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 585 5450706350010664852#64))).val
theorem output963_def : output963 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 585 5450706350010664852#64)) := by
  unfold output963
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output963_skip : Flapjack.WordAlloc.isSkip output963 = false := by
  rw [output963_def]
  conv => lhs; cbv
  try rfl
theorem node963_eq : Flapjack.WordAlloc.removeDeadStructural input963 value511 value1 value2 = (output963, value512, value1) := by
  rw [input963_def, output963_def]
  try (conv => lhs; cbv)
  try rfl

def value513 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 577 (Flapjack.WordLangAddr.addr 581 8#64)))).val
theorem input964_def : input964 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 577 (Flapjack.WordLangAddr.addr 581 8#64))) := by
  unfold input964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output964 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 577 (Flapjack.WordLangAddr.addr 581 8#64)))).val
theorem output964_def : output964 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 577 (Flapjack.WordLangAddr.addr 581 8#64))) := by
  unfold output964
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output964_skip : Flapjack.WordAlloc.isSkip output964 = false := by
  rw [output964_def]
  conv => lhs; cbv
  try rfl
theorem node964_eq : Flapjack.WordAlloc.removeDeadStructural input964 value512 value1 value2 = (output964, value513, value1) := by
  rw [input964_def, output964_def]
  try (conv => lhs; cbv)
  try rfl

def value514 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
              Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(581, 573)])).val
theorem input965_def : input965 = (Flapjack.WordLangProgHOL.move 0 [(581, 573)]) := by
  unfold input965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output965 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(581, 573)])).val
theorem output965_def : output965 = (Flapjack.WordLangProgHOL.move 0 [(581, 573)]) := by
  unfold output965
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output965_skip : Flapjack.WordAlloc.isSkip output965 = false := by
  rw [output965_def]
  conv => lhs; cbv
  try rfl
theorem node965_eq : Flapjack.WordAlloc.removeDeadStructural input965 value513 value1 value2 = (output965, value514, value1) := by
  rw [input965_def, output965_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input965 input964)).val
theorem input966_def : input966 = (.seq input965 input964) := by
  unfold input966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output966 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output965 output964)).val
theorem output966_def : output966 = (.seq output965 output964) := by
  unfold output966
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output966_skip : Flapjack.WordAlloc.isSkip output966 = false := by
  rw [output966_def]
  conv => lhs; cbv
  try rfl
theorem node966_eq : Flapjack.WordAlloc.removeDeadStructural input966 value512 value1 value2 = (output966, value514, value1) := by
  rw [input966_def, output966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node964_eq]
  try dsimp only
  rw [node965_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value515 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 577 3651902652079185358#64))).val
theorem input967_def : input967 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 577 3651902652079185358#64)) := by
  unfold input967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output967 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 577 3651902652079185358#64))).val
theorem output967_def : output967 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 577 3651902652079185358#64)) := by
  unfold output967
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output967_skip : Flapjack.WordAlloc.isSkip output967 = false := by
  rw [output967_def]
  conv => lhs; cbv
  try rfl
theorem node967_eq : Flapjack.WordAlloc.removeDeadStructural input967 value514 value1 value2 = (output967, value515, value1) := by
  rw [input967_def, output967_def]
  try (conv => lhs; cbv)
  try rfl

def value516 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 569 (Flapjack.WordLangAddr.addr 573 0#64)))).val
theorem input968_def : input968 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 569 (Flapjack.WordLangAddr.addr 573 0#64))) := by
  unfold input968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output968 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 569 (Flapjack.WordLangAddr.addr 573 0#64)))).val
theorem output968_def : output968 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 569 (Flapjack.WordLangAddr.addr 573 0#64))) := by
  unfold output968
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output968_skip : Flapjack.WordAlloc.isSkip output968 = false := by
  rw [output968_def]
  conv => lhs; cbv
  try rfl
theorem node968_eq : Flapjack.WordAlloc.removeDeadStructural input968 value515 value1 value2 = (output968, value516, value1) := by
  rw [input968_def, output968_def]
  try (conv => lhs; cbv)
  try rfl

def value517 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(573, 549)])).val
theorem input969_def : input969 = (Flapjack.WordLangProgHOL.move 0 [(573, 549)]) := by
  unfold input969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output969 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(573, 549)])).val
theorem output969_def : output969 = (Flapjack.WordLangProgHOL.move 0 [(573, 549)]) := by
  unfold output969
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output969_skip : Flapjack.WordAlloc.isSkip output969 = false := by
  rw [output969_def]
  conv => lhs; cbv
  try rfl
theorem node969_eq : Flapjack.WordAlloc.removeDeadStructural input969 value516 value1 value2 = (output969, value517, value1) := by
  rw [input969_def, output969_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input969 input968)).val
theorem input970_def : input970 = (.seq input969 input968) := by
  unfold input970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output970 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output969 output968)).val
theorem output970_def : output970 = (.seq output969 output968) := by
  unfold output970
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output970_skip : Flapjack.WordAlloc.isSkip output970 = false := by
  rw [output970_def]
  conv => lhs; cbv
  try rfl
theorem node970_eq : Flapjack.WordAlloc.removeDeadStructural input970 value515 value1 value2 = (output970, value517, value1) := by
  rw [input970_def, output970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node968_eq]
  try dsimp only
  rw [node969_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value518 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln)))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 569 1613930359396748194#64))).val
theorem input971_def : input971 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 569 1613930359396748194#64)) := by
  unfold input971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output971 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 569 1613930359396748194#64))).val
theorem output971_def : output971 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 569 1613930359396748194#64)) := by
  unfold output971
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output971_skip : Flapjack.WordAlloc.isSkip output971 = false := by
  rw [output971_def]
  conv => lhs; cbv
  try rfl
theorem node971_eq : Flapjack.WordAlloc.removeDeadStructural input971 value517 value1 value2 = (output971, value518, value1) := by
  rw [input971_def, output971_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 565 1642095672556236320#64))).val
theorem input972_def : input972 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 565 1642095672556236320#64)) := by
  unfold input972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output972 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output972_def : output972 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output972
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output972_skip : Flapjack.WordAlloc.isSkip output972 = true := by
  rw [output972_def]
  conv => lhs; cbv
  try rfl
theorem node972_eq : Flapjack.WordAlloc.removeDeadStructural input972 value518 value1 value2 = (output972, value518, value1) := by
  rw [input972_def, output972_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 561 5450706350010664852#64))).val
theorem input973_def : input973 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 561 5450706350010664852#64)) := by
  unfold input973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output973 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output973_def : output973 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output973
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output973_skip : Flapjack.WordAlloc.isSkip output973 = true := by
  rw [output973_def]
  conv => lhs; cbv
  try rfl
theorem node973_eq : Flapjack.WordAlloc.removeDeadStructural input973 value518 value1 value2 = (output973, value518, value1) := by
  rw [input973_def, output973_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 557 3651902652079185358#64))).val
theorem input974_def : input974 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 557 3651902652079185358#64)) := by
  unfold input974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output974 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output974_def : output974 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output974
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output974_skip : Flapjack.WordAlloc.isSkip output974 = true := by
  rw [output974_def]
  conv => lhs; cbv
  try rfl
theorem node974_eq : Flapjack.WordAlloc.removeDeadStructural input974 value518 value1 value2 = (output974, value518, value1) := by
  rw [input974_def, output974_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 553 1613930359396748194#64))).val
theorem input975_def : input975 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 553 1613930359396748194#64)) := by
  unfold input975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output975 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output975_def : output975 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output975
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output975_skip : Flapjack.WordAlloc.isSkip output975 = true := by
  rw [output975_def]
  conv => lhs; cbv
  try rfl
theorem node975_eq : Flapjack.WordAlloc.removeDeadStructural input975 value518 value1 value2 = (output975, value518, value1) := by
  rw [input975_def, output975_def]
  try (conv => lhs; cbv)
  try rfl

def value519 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 549 545 (Flapjack.WordRegImm.imm 160#64))))).val
theorem input976_def : input976 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 549 545 (Flapjack.WordRegImm.imm 160#64)))) := by
  unfold input976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output976 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 549 545 (Flapjack.WordRegImm.imm 160#64))))).val
theorem output976_def : output976 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 549 545 (Flapjack.WordRegImm.imm 160#64)))) := by
  unfold output976
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output976_skip : Flapjack.WordAlloc.isSkip output976 = false := by
  rw [output976_def]
  conv => lhs; cbv
  try rfl
theorem node976_eq : Flapjack.WordAlloc.removeDeadStructural input976 value518 value1 value2 = (output976, value519, value1) := by
  rw [input976_def, output976_def]
  try (conv => lhs; cbv)
  try rfl

def value520 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 545 (Flapjack.WordLangAddr.addr 541 18446744073709551224#64)))).val
theorem input977_def : input977 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 545 (Flapjack.WordLangAddr.addr 541 18446744073709551224#64))) := by
  unfold input977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output977 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 545 (Flapjack.WordLangAddr.addr 541 18446744073709551224#64)))).val
theorem output977_def : output977 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 545 (Flapjack.WordLangAddr.addr 541 18446744073709551224#64))) := by
  unfold output977
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output977_skip : Flapjack.WordAlloc.isSkip output977 = false := by
  rw [output977_def]
  conv => lhs; cbv
  try rfl
theorem node977_eq : Flapjack.WordAlloc.removeDeadStructural input977 value519 value1 value2 = (output977, value520, value1) := by
  rw [input977_def, output977_def]
  try (conv => lhs; cbv)
  try rfl

def value521 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 541 537)).val
theorem input978_def : input978 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 541 537) := by
  unfold input978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output978 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 541 537)).val
theorem output978_def : output978 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 541 537) := by
  unfold output978
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output978_skip : Flapjack.WordAlloc.isSkip output978 = false := by
  rw [output978_def]
  conv => lhs; cbv
  try rfl
theorem node978_eq : Flapjack.WordAlloc.removeDeadStructural input978 value520 value1 value2 = (output978, value521, value1) := by
  rw [input978_def, output978_def]
  try (conv => lhs; cbv)
  try rfl

def value522 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bs Flapjack.Spt.ln PUnit.unit
                (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 537 533 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input979_def : input979 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 537 533 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output979 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 537 533 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output979_def : output979 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 537 533 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output979
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output979_skip : Flapjack.WordAlloc.isSkip output979 = false := by
  rw [output979_def]
  conv => lhs; cbv
  try rfl
theorem node979_eq : Flapjack.WordAlloc.removeDeadStructural input979 value521 value1 value2 = (output979, value522, value1) := by
  rw [input979_def, output979_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 533 Flapjack.WordStore.heapLength)).val
theorem input980_def : input980 = (Flapjack.WordLangProgHOL.get 533 Flapjack.WordStore.heapLength) := by
  unfold input980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output980 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 533 Flapjack.WordStore.heapLength)).val
theorem output980_def : output980 = (Flapjack.WordLangProgHOL.get 533 Flapjack.WordStore.heapLength) := by
  unfold output980
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output980_skip : Flapjack.WordAlloc.isSkip output980 = false := by
  rw [output980_def]
  conv => lhs; cbv
  try rfl
theorem node980_eq : Flapjack.WordAlloc.removeDeadStructural input980 value522 value1 value2 = (output980, value410, value1) := by
  rw [input980_def, output980_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input980 input979)).val
theorem input981_def : input981 = (.seq input980 input979) := by
  unfold input981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output981 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output980 output979)).val
theorem output981_def : output981 = (.seq output980 output979) := by
  unfold output981
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output981_skip : Flapjack.WordAlloc.isSkip output981 = false := by
  rw [output981_def]
  conv => lhs; cbv
  try rfl
theorem node981_eq : Flapjack.WordAlloc.removeDeadStructural input981 value521 value1 value2 = (output981, value410, value1) := by
  rw [input981_def, output981_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node979_eq]
  try dsimp only
  rw [node980_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input981 input978)).val
theorem input982_def : input982 = (.seq input981 input978) := by
  unfold input982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output982 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output981 output978)).val
theorem output982_def : output982 = (.seq output981 output978) := by
  unfold output982
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output982_skip : Flapjack.WordAlloc.isSkip output982 = false := by
  rw [output982_def]
  conv => lhs; cbv
  try rfl
theorem node982_eq : Flapjack.WordAlloc.removeDeadStructural input982 value520 value1 value2 = (output982, value410, value1) := by
  rw [input982_def, output982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node978_eq]
  try dsimp only
  rw [node981_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input982 input977)).val
theorem input983_def : input983 = (.seq input982 input977) := by
  unfold input983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output983 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output982 output977)).val
theorem output983_def : output983 = (.seq output982 output977) := by
  unfold output983
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output983_skip : Flapjack.WordAlloc.isSkip output983 = false := by
  rw [output983_def]
  conv => lhs; cbv
  try rfl
theorem node983_eq : Flapjack.WordAlloc.removeDeadStructural input983 value519 value1 value2 = (output983, value410, value1) := by
  rw [input983_def, output983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node977_eq]
  try dsimp only
  rw [node982_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input983 input976)).val
theorem input984_def : input984 = (.seq input983 input976) := by
  unfold input984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output984 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output983 output976)).val
theorem output984_def : output984 = (.seq output983 output976) := by
  unfold output984
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output984_skip : Flapjack.WordAlloc.isSkip output984 = false := by
  rw [output984_def]
  conv => lhs; cbv
  try rfl
theorem node984_eq : Flapjack.WordAlloc.removeDeadStructural input984 value518 value1 value2 = (output984, value410, value1) := by
  rw [input984_def, output984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node976_eq]
  try dsimp only
  rw [node983_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value523 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 525 (Flapjack.WordLangAddr.addr 529 24#64)))).val
theorem input985_def : input985 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 525 (Flapjack.WordLangAddr.addr 529 24#64))) := by
  unfold input985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output985 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 525 (Flapjack.WordLangAddr.addr 529 24#64)))).val
theorem output985_def : output985 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 525 (Flapjack.WordLangAddr.addr 529 24#64))) := by
  unfold output985
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output985_skip : Flapjack.WordAlloc.isSkip output985 = false := by
  rw [output985_def]
  conv => lhs; cbv
  try rfl
theorem node985_eq : Flapjack.WordAlloc.removeDeadStructural input985 value410 value1 value2 = (output985, value523, value1) := by
  rw [input985_def, output985_def]
  try (conv => lhs; cbv)
  try rfl

def value524 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(529, 521)])).val
theorem input986_def : input986 = (Flapjack.WordLangProgHOL.move 0 [(529, 521)]) := by
  unfold input986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output986 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(529, 521)])).val
theorem output986_def : output986 = (Flapjack.WordLangProgHOL.move 0 [(529, 521)]) := by
  unfold output986
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output986_skip : Flapjack.WordAlloc.isSkip output986 = false := by
  rw [output986_def]
  conv => lhs; cbv
  try rfl
theorem node986_eq : Flapjack.WordAlloc.removeDeadStructural input986 value523 value1 value2 = (output986, value524, value1) := by
  rw [input986_def, output986_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input986 input985)).val
theorem input987_def : input987 = (.seq input986 input985) := by
  unfold input987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output987 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output986 output985)).val
theorem output987_def : output987 = (.seq output986 output985) := by
  unfold output987
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output987_skip : Flapjack.WordAlloc.isSkip output987 = false := by
  rw [output987_def]
  conv => lhs; cbv
  try rfl
theorem node987_eq : Flapjack.WordAlloc.removeDeadStructural input987 value410 value1 value2 = (output987, value524, value1) := by
  rw [input987_def, output987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node985_eq]
  try dsimp only
  rw [node986_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value525 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 525 3437169660107756023#64))).val
theorem input988_def : input988 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 525 3437169660107756023#64)) := by
  unfold input988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output988 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 525 3437169660107756023#64))).val
theorem output988_def : output988 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 525 3437169660107756023#64)) := by
  unfold output988
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output988_skip : Flapjack.WordAlloc.isSkip output988 = false := by
  rw [output988_def]
  conv => lhs; cbv
  try rfl
theorem node988_eq : Flapjack.WordAlloc.removeDeadStructural input988 value524 value1 value2 = (output988, value525, value1) := by
  rw [input988_def, output988_def]
  try (conv => lhs; cbv)
  try rfl

def value526 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
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

@[irreducible, cbv_opaque] def input989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 517 (Flapjack.WordLangAddr.addr 521 16#64)))).val
theorem input989_def : input989 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 517 (Flapjack.WordLangAddr.addr 521 16#64))) := by
  unfold input989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output989 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 517 (Flapjack.WordLangAddr.addr 521 16#64)))).val
theorem output989_def : output989 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 517 (Flapjack.WordLangAddr.addr 521 16#64))) := by
  unfold output989
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output989_skip : Flapjack.WordAlloc.isSkip output989 = false := by
  rw [output989_def]
  conv => lhs; cbv
  try rfl
theorem node989_eq : Flapjack.WordAlloc.removeDeadStructural input989 value525 value1 value2 = (output989, value526, value1) := by
  rw [input989_def, output989_def]
  try (conv => lhs; cbv)
  try rfl

def value527 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(521, 513)])).val
theorem input990_def : input990 = (Flapjack.WordLangProgHOL.move 0 [(521, 513)]) := by
  unfold input990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output990 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(521, 513)])).val
theorem output990_def : output990 = (Flapjack.WordLangProgHOL.move 0 [(521, 513)]) := by
  unfold output990
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output990_skip : Flapjack.WordAlloc.isSkip output990 = false := by
  rw [output990_def]
  conv => lhs; cbv
  try rfl
theorem node990_eq : Flapjack.WordAlloc.removeDeadStructural input990 value526 value1 value2 = (output990, value527, value1) := by
  rw [input990_def, output990_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input990 input989)).val
theorem input991_def : input991 = (.seq input990 input989) := by
  unfold input991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output991 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output990 output989)).val
theorem output991_def : output991 = (.seq output990 output989) := by
  unfold output991
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output991_skip : Flapjack.WordAlloc.isSkip output991 = false := by
  rw [output991_def]
  conv => lhs; cbv
  try rfl
theorem node991_eq : Flapjack.WordAlloc.removeDeadStructural input991 value525 value1 value2 = (output991, value527, value1) := by
  rw [input991_def, output991_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node989_eq]
  try dsimp only
  rw [node990_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value528 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 517 5479733118184829251#64))).val
theorem input992_def : input992 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 517 5479733118184829251#64)) := by
  unfold input992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output992 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 517 5479733118184829251#64))).val
theorem output992_def : output992 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 517 5479733118184829251#64)) := by
  unfold output992
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output992_skip : Flapjack.WordAlloc.isSkip output992 = false := by
  rw [output992_def]
  conv => lhs; cbv
  try rfl
theorem node992_eq : Flapjack.WordAlloc.removeDeadStructural input992 value527 value1 value2 = (output992, value528, value1) := by
  rw [input992_def, output992_def]
  try (conv => lhs; cbv)
  try rfl

def value529 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn Flapjack.Spt.ln
              (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit))))))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 509 (Flapjack.WordLangAddr.addr 513 8#64)))).val
theorem input993_def : input993 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 509 (Flapjack.WordLangAddr.addr 513 8#64))) := by
  unfold input993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output993 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 509 (Flapjack.WordLangAddr.addr 513 8#64)))).val
theorem output993_def : output993 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 509 (Flapjack.WordLangAddr.addr 513 8#64))) := by
  unfold output993
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output993_skip : Flapjack.WordAlloc.isSkip output993 = false := by
  rw [output993_def]
  conv => lhs; cbv
  try rfl
theorem node993_eq : Flapjack.WordAlloc.removeDeadStructural input993 value528 value1 value2 = (output993, value529, value1) := by
  rw [input993_def, output993_def]
  try (conv => lhs; cbv)
  try rfl

def value530 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(513, 505)])).val
theorem input994_def : input994 = (Flapjack.WordLangProgHOL.move 0 [(513, 505)]) := by
  unfold input994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output994 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(513, 505)])).val
theorem output994_def : output994 = (Flapjack.WordLangProgHOL.move 0 [(513, 505)]) := by
  unfold output994
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output994_skip : Flapjack.WordAlloc.isSkip output994 = false := by
  rw [output994_def]
  conv => lhs; cbv
  try rfl
theorem node994_eq : Flapjack.WordAlloc.removeDeadStructural input994 value529 value1 value2 = (output994, value530, value1) := by
  rw [input994_def, output994_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input994 input993)).val
theorem input995_def : input995 = (.seq input994 input993) := by
  unfold input995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output995 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output994 output993)).val
theorem output995_def : output995 = (.seq output994 output993) := by
  unfold output995
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output995_skip : Flapjack.WordAlloc.isSkip output995 = false := by
  rw [output995_def]
  conv => lhs; cbv
  try rfl
theorem node995_eq : Flapjack.WordAlloc.removeDeadStructural input995 value528 value1 value2 = (output995, value530, value1) := by
  rw [input995_def, output995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node993_eq]
  try dsimp only
  rw [node994_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value531 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 509 13226160682434769676#64))).val
theorem input996_def : input996 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 509 13226160682434769676#64)) := by
  unfold input996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output996 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 509 13226160682434769676#64))).val
theorem output996_def : output996 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 509 13226160682434769676#64)) := by
  unfold output996
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output996_skip : Flapjack.WordAlloc.isSkip output996 = false := by
  rw [output996_def]
  conv => lhs; cbv
  try rfl
theorem node996_eq : Flapjack.WordAlloc.removeDeadStructural input996 value530 value1 value2 = (output996, value531, value1) := by
  rw [input996_def, output996_def]
  try (conv => lhs; cbv)
  try rfl

def value532 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 501 (Flapjack.WordLangAddr.addr 505 0#64)))).val
theorem input997_def : input997 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 501 (Flapjack.WordLangAddr.addr 505 0#64))) := by
  unfold input997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output997 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 501 (Flapjack.WordLangAddr.addr 505 0#64)))).val
theorem output997_def : output997 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 501 (Flapjack.WordLangAddr.addr 505 0#64))) := by
  unfold output997
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output997_skip : Flapjack.WordAlloc.isSkip output997 = false := by
  rw [output997_def]
  conv => lhs; cbv
  try rfl
theorem node997_eq : Flapjack.WordAlloc.removeDeadStructural input997 value531 value1 value2 = (output997, value532, value1) := by
  rw [input997_def, output997_def]
  try (conv => lhs; cbv)
  try rfl

def value533 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(505, 481)])).val
theorem input998_def : input998 = (Flapjack.WordLangProgHOL.move 0 [(505, 481)]) := by
  unfold input998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output998 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(505, 481)])).val
theorem output998_def : output998 = (Flapjack.WordLangProgHOL.move 0 [(505, 481)]) := by
  unfold output998
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output998_skip : Flapjack.WordAlloc.isSkip output998 = false := by
  rw [output998_def]
  conv => lhs; cbv
  try rfl
theorem node998_eq : Flapjack.WordAlloc.removeDeadStructural input998 value532 value1 value2 = (output998, value533, value1) := by
  rw [input998_def, output998_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input998 input997)).val
theorem input999_def : input999 = (.seq input998 input997) := by
  unfold input999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output999 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output998 output997)).val
theorem output999_def : output999 = (.seq output998 output997) := by
  unfold output999
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output999_skip : Flapjack.WordAlloc.isSkip output999 = false := by
  rw [output999_def]
  conv => lhs; cbv
  try rfl
theorem node999_eq : Flapjack.WordAlloc.removeDeadStructural input999 value531 value1 value2 = (output999, value533, value1) := by
  rw [input999_def, output999_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node997_eq]
  try dsimp only
  rw [node998_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value534 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)
            Flapjack.Spt.ln))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 501 11088870908804158781#64))).val
theorem input1000_def : input1000 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 501 11088870908804158781#64)) := by
  unfold input1000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1000 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 501 11088870908804158781#64))).val
theorem output1000_def : output1000 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 501 11088870908804158781#64)) := by
  unfold output1000
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1000_skip : Flapjack.WordAlloc.isSkip output1000 = false := by
  rw [output1000_def]
  conv => lhs; cbv
  try rfl
theorem node1000_eq : Flapjack.WordAlloc.removeDeadStructural input1000 value533 value1 value2 = (output1000, value534, value1) := by
  rw [input1000_def, output1000_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 497 3437169660107756023#64))).val
theorem input1001_def : input1001 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 497 3437169660107756023#64)) := by
  unfold input1001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1001 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1001_def : output1001 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1001
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1001_skip : Flapjack.WordAlloc.isSkip output1001 = true := by
  rw [output1001_def]
  conv => lhs; cbv
  try rfl
theorem node1001_eq : Flapjack.WordAlloc.removeDeadStructural input1001 value534 value1 value2 = (output1001, value534, value1) := by
  rw [input1001_def, output1001_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 493 5479733118184829251#64))).val
theorem input1002_def : input1002 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 493 5479733118184829251#64)) := by
  unfold input1002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1002 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1002_def : output1002 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1002
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1002_skip : Flapjack.WordAlloc.isSkip output1002 = true := by
  rw [output1002_def]
  conv => lhs; cbv
  try rfl
theorem node1002_eq : Flapjack.WordAlloc.removeDeadStructural input1002 value534 value1 value2 = (output1002, value534, value1) := by
  rw [input1002_def, output1002_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 489 13226160682434769676#64))).val
theorem input1003_def : input1003 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 489 13226160682434769676#64)) := by
  unfold input1003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1003 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1003_def : output1003 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1003
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1003_skip : Flapjack.WordAlloc.isSkip output1003 = true := by
  rw [output1003_def]
  conv => lhs; cbv
  try rfl
theorem node1003_eq : Flapjack.WordAlloc.removeDeadStructural input1003 value534 value1 value2 = (output1003, value534, value1) := by
  rw [input1003_def, output1003_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 485 11088870908804158781#64))).val
theorem input1004_def : input1004 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 485 11088870908804158781#64)) := by
  unfold input1004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1004 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.skip)).val
theorem output1004_def : output1004 = (Flapjack.WordLangProgHOL.skip) := by
  unfold output1004
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1004_skip : Flapjack.WordAlloc.isSkip output1004 = true := by
  rw [output1004_def]
  conv => lhs; cbv
  try rfl
theorem node1004_eq : Flapjack.WordAlloc.removeDeadStructural input1004 value534 value1 value2 = (output1004, value534, value1) := by
  rw [input1004_def, output1004_def]
  try (conv => lhs; cbv)
  try rfl

def value535 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 481 477 (Flapjack.WordRegImm.imm 128#64))))).val
theorem input1005_def : input1005 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 481 477 (Flapjack.WordRegImm.imm 128#64)))) := by
  unfold input1005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1005 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 481 477 (Flapjack.WordRegImm.imm 128#64))))).val
theorem output1005_def : output1005 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith
    (Flapjack.WordLangArith.binop Flapjack.BinOp.add 481 477 (Flapjack.WordRegImm.imm 128#64)))) := by
  unfold output1005
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1005_skip : Flapjack.WordAlloc.isSkip output1005 = false := by
  rw [output1005_def]
  conv => lhs; cbv
  try rfl
theorem node1005_eq : Flapjack.WordAlloc.removeDeadStructural input1005 value534 value1 value2 = (output1005, value535, value1) := by
  rw [input1005_def, output1005_def]
  try (conv => lhs; cbv)
  try rfl

def value536 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 477 (Flapjack.WordLangAddr.addr 473 18446744073709551224#64)))).val
theorem input1006_def : input1006 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 477 (Flapjack.WordLangAddr.addr 473 18446744073709551224#64))) := by
  unfold input1006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1006 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 477 (Flapjack.WordLangAddr.addr 473 18446744073709551224#64)))).val
theorem output1006_def : output1006 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.load 477 (Flapjack.WordLangAddr.addr 473 18446744073709551224#64))) := by
  unfold output1006
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1006_skip : Flapjack.WordAlloc.isSkip output1006 = false := by
  rw [output1006_def]
  conv => lhs; cbv
  try rfl
theorem node1006_eq : Flapjack.WordAlloc.removeDeadStructural input1006 value535 value1 value2 = (output1006, value536, value1) := by
  rw [input1006_def, output1006_def]
  try (conv => lhs; cbv)
  try rfl

def value537 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln)
              (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 473 469)).val
theorem input1007_def : input1007 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 473 469) := by
  unfold input1007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1007 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 473 469)).val
theorem output1007_def : output1007 = (Flapjack.WordLangProgHOL.opCurrHeap Flapjack.BinOp.add 473 469) := by
  unfold output1007
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1007_skip : Flapjack.WordAlloc.isSkip output1007 = false := by
  rw [output1007_def]
  conv => lhs; cbv
  try rfl
theorem node1007_eq : Flapjack.WordAlloc.removeDeadStructural input1007 value536 value1 value2 = (output1007, value537, value1) := by
  rw [input1007_def, output1007_def]
  try (conv => lhs; cbv)
  try rfl

def value538 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))
          Flapjack.Spt.ln)))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 469 465 (Flapjack.WordRegImm.imm 1#64))))).val
theorem input1008_def : input1008 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 469 465 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold input1008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1008 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 469 465 (Flapjack.WordRegImm.imm 1#64))))).val
theorem output1008_def : output1008 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.arith (Flapjack.WordLangArith.shift Flapjack.Shift.lsl 469 465 (Flapjack.WordRegImm.imm 1#64)))) := by
  unfold output1008
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1008_skip : Flapjack.WordAlloc.isSkip output1008 = false := by
  rw [output1008_def]
  conv => lhs; cbv
  try rfl
theorem node1008_eq : Flapjack.WordAlloc.removeDeadStructural input1008 value537 value1 value2 = (output1008, value538, value1) := by
  rw [input1008_def, output1008_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 465 Flapjack.WordStore.heapLength)).val
theorem input1009_def : input1009 = (Flapjack.WordLangProgHOL.get 465 Flapjack.WordStore.heapLength) := by
  unfold input1009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1009 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.get 465 Flapjack.WordStore.heapLength)).val
theorem output1009_def : output1009 = (Flapjack.WordLangProgHOL.get 465 Flapjack.WordStore.heapLength) := by
  unfold output1009
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1009_skip : Flapjack.WordAlloc.isSkip output1009 = false := by
  rw [output1009_def]
  conv => lhs; cbv
  try rfl
theorem node1009_eq : Flapjack.WordAlloc.removeDeadStructural input1009 value538 value1 value2 = (output1009, value410, value1) := by
  rw [input1009_def, output1009_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1009 input1008)).val
theorem input1010_def : input1010 = (.seq input1009 input1008) := by
  unfold input1010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1010 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1009 output1008)).val
theorem output1010_def : output1010 = (.seq output1009 output1008) := by
  unfold output1010
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1010_skip : Flapjack.WordAlloc.isSkip output1010 = false := by
  rw [output1010_def]
  conv => lhs; cbv
  try rfl
theorem node1010_eq : Flapjack.WordAlloc.removeDeadStructural input1010 value537 value1 value2 = (output1010, value410, value1) := by
  rw [input1010_def, output1010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1008_eq]
  try dsimp only
  rw [node1009_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1010 input1007)).val
theorem input1011_def : input1011 = (.seq input1010 input1007) := by
  unfold input1011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1011 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1010 output1007)).val
theorem output1011_def : output1011 = (.seq output1010 output1007) := by
  unfold output1011
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1011_skip : Flapjack.WordAlloc.isSkip output1011 = false := by
  rw [output1011_def]
  conv => lhs; cbv
  try rfl
theorem node1011_eq : Flapjack.WordAlloc.removeDeadStructural input1011 value536 value1 value2 = (output1011, value410, value1) := by
  rw [input1011_def, output1011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1007_eq]
  try dsimp only
  rw [node1010_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1011 input1006)).val
theorem input1012_def : input1012 = (.seq input1011 input1006) := by
  unfold input1012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1012 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1011 output1006)).val
theorem output1012_def : output1012 = (.seq output1011 output1006) := by
  unfold output1012
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1012_skip : Flapjack.WordAlloc.isSkip output1012 = false := by
  rw [output1012_def]
  conv => lhs; cbv
  try rfl
theorem node1012_eq : Flapjack.WordAlloc.removeDeadStructural input1012 value535 value1 value2 = (output1012, value410, value1) := by
  rw [input1012_def, output1012_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1006_eq]
  try dsimp only
  rw [node1011_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1012 input1005)).val
theorem input1013_def : input1013 = (.seq input1012 input1005) := by
  unfold input1013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1013 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1012 output1005)).val
theorem output1013_def : output1013 = (.seq output1012 output1005) := by
  unfold output1013
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1013_skip : Flapjack.WordAlloc.isSkip output1013 = false := by
  rw [output1013_def]
  conv => lhs; cbv
  try rfl
theorem node1013_eq : Flapjack.WordAlloc.removeDeadStructural input1013 value534 value1 value2 = (output1013, value410, value1) := by
  rw [input1013_def, output1013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1005_eq]
  try dsimp only
  rw [node1012_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value539 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 457 (Flapjack.WordLangAddr.addr 461 24#64)))).val
theorem input1014_def : input1014 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 457 (Flapjack.WordLangAddr.addr 461 24#64))) := by
  unfold input1014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1014 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 457 (Flapjack.WordLangAddr.addr 461 24#64)))).val
theorem output1014_def : output1014 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 457 (Flapjack.WordLangAddr.addr 461 24#64))) := by
  unfold output1014
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1014_skip : Flapjack.WordAlloc.isSkip output1014 = false := by
  rw [output1014_def]
  conv => lhs; cbv
  try rfl
theorem node1014_eq : Flapjack.WordAlloc.removeDeadStructural input1014 value410 value1 value2 = (output1014, value539, value1) := by
  rw [input1014_def, output1014_def]
  try (conv => lhs; cbv)
  try rfl

def value540 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(461, 453)])).val
theorem input1015_def : input1015 = (Flapjack.WordLangProgHOL.move 0 [(461, 453)]) := by
  unfold input1015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1015 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(461, 453)])).val
theorem output1015_def : output1015 = (Flapjack.WordLangProgHOL.move 0 [(461, 453)]) := by
  unfold output1015
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1015_skip : Flapjack.WordAlloc.isSkip output1015 = false := by
  rw [output1015_def]
  conv => lhs; cbv
  try rfl
theorem node1015_eq : Flapjack.WordAlloc.removeDeadStructural input1015 value539 value1 value2 = (output1015, value540, value1) := by
  rw [input1015_def, output1015_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1015 input1014)).val
theorem input1016_def : input1016 = (.seq input1015 input1014) := by
  unfold input1016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1016 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1015 output1014)).val
theorem output1016_def : output1016 = (.seq output1015 output1014) := by
  unfold output1016
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1016_skip : Flapjack.WordAlloc.isSkip output1016 = false := by
  rw [output1016_def]
  conv => lhs; cbv
  try rfl
theorem node1016_eq : Flapjack.WordAlloc.removeDeadStructural input1016 value410 value1 value2 = (output1016, value540, value1) := by
  rw [input1016_def, output1016_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1014_eq]
  try dsimp only
  rw [node1015_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value541 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 457 2623794231377586150#64))).val
theorem input1017_def : input1017 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 457 2623794231377586150#64)) := by
  unfold input1017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1017 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 457 2623794231377586150#64))).val
theorem output1017_def : output1017 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 457 2623794231377586150#64)) := by
  unfold output1017
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1017_skip : Flapjack.WordAlloc.isSkip output1017 = false := by
  rw [output1017_def]
  conv => lhs; cbv
  try rfl
theorem node1017_eq : Flapjack.WordAlloc.removeDeadStructural input1017 value540 value1 value2 = (output1017, value541, value1) := by
  rw [input1017_def, output1017_def]
  try (conv => lhs; cbv)
  try rfl

def value542 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln))))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 449 (Flapjack.WordLangAddr.addr 453 16#64)))).val
theorem input1018_def : input1018 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 449 (Flapjack.WordLangAddr.addr 453 16#64))) := by
  unfold input1018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1018 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 449 (Flapjack.WordLangAddr.addr 453 16#64)))).val
theorem output1018_def : output1018 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 449 (Flapjack.WordLangAddr.addr 453 16#64))) := by
  unfold output1018
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1018_skip : Flapjack.WordAlloc.isSkip output1018 = false := by
  rw [output1018_def]
  conv => lhs; cbv
  try rfl
theorem node1018_eq : Flapjack.WordAlloc.removeDeadStructural input1018 value541 value1 value2 = (output1018, value542, value1) := by
  rw [input1018_def, output1018_def]
  try (conv => lhs; cbv)
  try rfl

def value543 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn Flapjack.Spt.ln
          (Flapjack.Spt.bn Flapjack.Spt.ln
            (Flapjack.Spt.bn (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln) Flapjack.Spt.ln)))))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(453, 445)])).val
theorem input1019_def : input1019 = (Flapjack.WordLangProgHOL.move 0 [(453, 445)]) := by
  unfold input1019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1019 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(453, 445)])).val
theorem output1019_def : output1019 = (Flapjack.WordLangProgHOL.move 0 [(453, 445)]) := by
  unfold output1019
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1019_skip : Flapjack.WordAlloc.isSkip output1019 = false := by
  rw [output1019_def]
  conv => lhs; cbv
  try rfl
theorem node1019_eq : Flapjack.WordAlloc.removeDeadStructural input1019 value542 value1 value2 = (output1019, value543, value1) := by
  rw [input1019_def, output1019_def]
  try (conv => lhs; cbv)
  try rfl

@[irreducible, cbv_opaque] def input1020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq input1019 input1018)).val
theorem input1020_def : input1020 = (.seq input1019 input1018) := by
  unfold input1020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1020 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (.seq output1019 output1018)).val
theorem output1020_def : output1020 = (.seq output1019 output1018) := by
  unfold output1020
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1020_skip : Flapjack.WordAlloc.isSkip output1020 = false := by
  rw [output1020_def]
  conv => lhs; cbv
  try rfl
theorem node1020_eq : Flapjack.WordAlloc.removeDeadStructural input1020 value541 value1 value2 = (output1020, value543, value1) := by
  rw [input1020_def, output1020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [node1018_eq]
  try dsimp only
  rw [node1019_eq]
  try dsimp only
  try (conv => lhs; cbv)
  try rfl

def value544 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      Flapjack.Spt.ln)
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 449 11975771789798476686#64))).val
theorem input1021_def : input1021 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 449 11975771789798476686#64)) := by
  unfold input1021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1021 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 449 11975771789798476686#64))).val
theorem output1021_def : output1021 = (Flapjack.WordLangProgHOL.inst (Flapjack.WordLangInst.const 449 11975771789798476686#64)) := by
  unfold output1021
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1021_skip : Flapjack.WordAlloc.isSkip output1021 = false := by
  rw [output1021_def]
  conv => lhs; cbv
  try rfl
theorem node1021_eq : Flapjack.WordAlloc.removeDeadStructural input1021 value543 value1 value2 = (output1021, value544, value1) := by
  rw [input1021_def, output1021_def]
  try (conv => lhs; cbv)
  try rfl

def value545 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 441 (Flapjack.WordLangAddr.addr 445 8#64)))).val
theorem input1022_def : input1022 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 441 (Flapjack.WordLangAddr.addr 445 8#64))) := by
  unfold input1022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1022 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 441 (Flapjack.WordLangAddr.addr 445 8#64)))).val
theorem output1022_def : output1022 = (Flapjack.WordLangProgHOL.inst
  (Flapjack.WordLangInst.mem Flapjack.WordMemOp.store 441 (Flapjack.WordLangAddr.addr 445 8#64))) := by
  unfold output1022
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1022_skip : Flapjack.WordAlloc.isSkip output1022 = false := by
  rw [output1022_def]
  conv => lhs; cbv
  try rfl
theorem node1022_eq : Flapjack.WordAlloc.removeDeadStructural input1022 value544 value1 value2 = (output1022, value545, value1) := by
  rw [input1022_def, output1022_def]
  try (conv => lhs; cbv)
  try rfl

def value546 : Flapjack.NumSet :=
Flapjack.Spt.bn Flapjack.Spt.ln
  (Flapjack.Spt.bn
    (Flapjack.Spt.bn
      (Flapjack.Spt.bn Flapjack.Spt.ln
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.ls PUnit.unit)))
          Flapjack.Spt.ln))
      (Flapjack.Spt.bn
        (Flapjack.Spt.bn
          (Flapjack.Spt.bn
            (Flapjack.Spt.bn Flapjack.Spt.ln (Flapjack.Spt.bn (Flapjack.Spt.ls PUnit.unit) Flapjack.Spt.ln))
            Flapjack.Spt.ln)
          Flapjack.Spt.ln)
        Flapjack.Spt.ln))
    Flapjack.Spt.ln)

@[irreducible, cbv_opaque] def input1023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(445, 437)])).val
theorem input1023_def : input1023 = (Flapjack.WordLangProgHOL.move 0 [(445, 437)]) := by
  unfold input1023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[irreducible, cbv_opaque] def output1023 : Flapjack.WordLangProgHOL (BitVec 64) :=
  (InitECandidate.Proofs.ComputationCache.boxedValue (α := Flapjack.WordLangProgHOL (BitVec 64)) (Flapjack.WordLangProgHOL.move 0 [(445, 437)])).val
theorem output1023_def : output1023 = (Flapjack.WordLangProgHOL.move 0 [(445, 437)]) := by
  unfold output1023
  exact InitECandidate.Proofs.ComputationCache.boxedValue_eq _
@[cbv_eval] theorem output1023_skip : Flapjack.WordAlloc.isSkip output1023 = false := by
  rw [output1023_def]
  conv => lhs; cbv
  try rfl
theorem node1023_eq : Flapjack.WordAlloc.removeDeadStructural input1023 value545 value1 value2 = (output1023, value546, value1) := by
  rw [input1023_def, output1023_def]
  try (conv => lhs; cbv)
  try rfl

#print axioms node1023_eq
end InitECandidate.Proofs.DeadStages664
