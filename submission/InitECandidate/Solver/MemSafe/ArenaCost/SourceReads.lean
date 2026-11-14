import InitECandidate.Solver.MemSafe.ArenaCost.BoundedAnalyzer
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
variable {width : Nat} [NeZero width] {σ : Type}
theorem store_source_eval {a e : ExpHOL width} {t : PanSemStateFiniteExact width σ}
    (h : (evaluateHOLFiniteState t (.store a e)).1 = none) :
    ∃ (inst : DecidablePred t.toExact.memaddrs) (v : ValueHOL width),
      @evalHOLExact width σ _ t.toExact inst e = some v := by
  revert h
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  split
  · rename_i w hw
    split
    · rename_i v hv
      intro _
      exact ⟨_,v,hv⟩
    · intro h; simp at h
  · intro h; simp at h

theorem storeByte_source_eval {a e : ExpHOL width} {t : PanSemStateFiniteExact width σ}
    (h : (evaluateHOLFiniteState t (.storeByte a e)).1 = none) :
    ∃ (inst : DecidablePred t.toExact.memaddrs) (v : ValueHOL width),
      @evalHOLExact width σ _ t.toExact inst e = some v := by
  revert h
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  split
  · rename_i w hw
    split
    · rename_i v hv
      intro _
      exact ⟨_,_,hv⟩
    · intro h; simp at h
  · intro h; simp at h

theorem eval_load_one_hit {e : ExpHOL width} {t : PanSemStateFiniteExact width σ}
    {inst : DecidablePred t.toExact.memaddrs} {v : ValueHOL width}
    (hv : @evalHOLExact width σ _ t.toExact inst (.load .one e) = some v) :
    ∃ w, @evalHOLExact width σ _ t.toExact inst e = some (.val (.word w)) ∧ Hit t.memaddrs w := by
  simp only [evalHOLExact] at hv
  split at hv
  · split at hv
    · rename_i w hw
      refine ⟨w,hw,Or.inl ?_⟩
      unfold memLoadHOLExact at hv
      split at hv
      · assumption
      · simp at hv
    · simp at hv
  · simp at hv

theorem eval_load_byte_hit {e : ExpHOL width} {t : PanSemStateFiniteExact width σ}
    {inst : DecidablePred t.toExact.memaddrs} {v : ValueHOL width}
    (hv : @evalHOLExact width σ _ t.toExact inst (.loadByte e) = some v) :
    ∃ w, @evalHOLExact width σ _ t.toExact inst e = some (.val (.word w)) ∧ Hit t.memaddrs w := by
  simp only [evalHOLExact] at hv
  split at hv
  · rename_i w hw
    refine ⟨w,hw,Or.inr ?_⟩
    obtain ⟨b,hb,-⟩ := Option.map_eq_some_iff.mp hv
    unfold panMemLoadByteHOL at hb
    dsimp only at hb
    split at hb
    · assumption
    · simp at hb
  · simp at hv
#print axioms eval_load_one_hit
#print axioms eval_load_byte_hit
end InitECandidate.Solver.SourceCost
