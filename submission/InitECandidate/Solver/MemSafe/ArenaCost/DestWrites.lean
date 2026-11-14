import InitECandidate.Solver.MemSafe.ArenaCost.SourceReads
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
variable {width : Nat} [NeZero width] {σ : Type}
theorem store_const_hit {a : ExpHOL width} {v : BitVec width} {t : PanSemStateFiniteExact width σ}
    (h : (evaluateHOLFiniteState t (.store a (.const v))).1 = none) :
    ∃ (inst : DecidablePred t.toExact.memaddrs) (w : BitVec width),
      @evalHOLExact width σ _ t.toExact inst a = some (.val (.word w)) ∧ Hit t.memaddrs w := by
  revert h
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  split
  · rename_i w hw
    intro h
    refine ⟨_,w,hw,Or.inl ?_⟩
    simp only [evalHOLExact] at h
    unfold panMemStoresHOL at h
    simp only [flattenHOL] at h
    unfold panMemStoreHOL at h
    split at h
    · by_contra hd; simp_all [hd]
    · simp at h
  · intro h; simp at h

theorem storeByte_hit {a e : ExpHOL width} {t : PanSemStateFiniteExact width σ}
    (h : (evaluateHOLFiniteState t (.storeByte a e)).1 = none) :
    ∃ (inst : DecidablePred t.toExact.memaddrs) (w : BitVec width),
      @evalHOLExact width σ _ t.toExact inst a = some (.val (.word w)) ∧ Hit t.memaddrs w := by
  revert h
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  split
  · rename_i w hw
    split
    · rename_i v hv
      intro h
      refine ⟨_,w,hw,Or.inr ?_⟩
      unfold panMemStoreByteWord8HOL at h
      split at h
      · by_contra hd; simp_all [hd]
      · simp at h
    · intro h; simp at h
  · intro h; simp at h
#print axioms store_const_hit
#print axioms storeByte_hit
end InitECandidate.Solver.SourceCost
