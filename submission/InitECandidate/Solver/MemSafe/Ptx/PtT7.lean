import InitECandidate.Solver.MemSafe.Ptx.PtT6

/-!
# F3g: piece 2 of the tail, `ptS132` to `ptS141`: the four `bo` counter stores
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem evw_add {s : State σ} {e1 e2 : ExpHOL 64} {v : ValueHOL 64} (h : ev s (.op .add [e1, e2]) = some v) :
    ∃ x, v = .val (.word x) := by
  obtain ⟨x, y, -, -, rfl⟩ := Spec.Inv.ev_add2_inv h
  exact ⟨_, rfl⟩

theorem tl_bo_cell {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {s : State σ} {Γ : Gam} {p : Ptrs}
    (hP : TlPre K) (hr : TlS K.A ref Z O s Γ p) (j : Nat) :
    EvI s (.op .add [gv (nm "bo"), cw j]) (.val (.word (K.E.bo + BitVec.ofNat 64 j))) :=
  evI_add (evI_gv (tl_glob_bo hr hP.B.hbo)) (evI_cw s j)

/-- A `bo` counter store `bo[j] += x`. -/
theorem tl_st_bo {K : TlCtx σ} {Z : BitVec 64 → Prop} {O : List Obj} {En : Env} {ref : BitVec 64 → BitVec 64} (hP : TlPre K)
    {j : Nat} {c : BitVec 64} (hc : K.Wt c) (hcj : c = K.E.bo + BitVec.ofNat 64 j) (hnz : ¬ Z c) {x : ExpHOL 64} :
    HN (PAg (TL K.A ref Z O) En)
      (.store (.op .add [gv (nm "bo"), cw j])
        (.op .add [.load .one (.op .add [gv (nm "bo"), cw j]), x]))
      (PAg (TL K.A ref Z O) En) := by
  refine hn_stBlkT hP.B hc hnz ?_ ?_
  · intro s Γ p hr hpa w hw
    have := tl_bo_cell hP hr j _ hw
    rw [hcj]
    simpa using this
  · intro s hpa v hv
    exact evw_add hv

theorem tl_p2 {K : TlCtx σ} {O : List Obj} {QT : Option (PanSemResultExact 64) → State σ → Prop} (hP : TlPre K)
    (hk : Hoare σ guestCtx (PAg (TL K.A K.ref0 (Za K) O) (EnT0 K)) ptS141 QT) :
    Hoare σ guestCtx (PAg (TL K.A K.ref0 (Za K) O) (EnT0 K)) ptS132 QT := by
  have hnz : ∀ c, K.Wt c → ¬ Za K c := fun c hc h => h.2 hc
  unfold ptS132
  refine hseqN (tl_st_bo hP (j := 0) (c := K.E.bo) (Or.inl rfl) (by simp) (hnz _ (Or.inl rfl))) ?_
  unfold ptS133
  refine hseqN (tl_st_bo hP (j := 8) (c := K.E.bo + 8) (Or.inr (Or.inl rfl)) rfl (hnz _ (Or.inr (Or.inl rfl)))) ?_
  unfold ptS135
  refine hseqN (tl_st_bo hP (j := 48) (c := K.E.bo + 48) (Or.inr (Or.inr (Or.inr (Or.inl rfl)))) rfl
    (hnz _ (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))) ?_
  unfold ptS137
  refine hseqN (tl_st_bo hP (j := 16) (c := K.E.bo + 16) (Or.inr (Or.inr (Or.inl rfl))) rfl
    (hnz _ (Or.inr (Or.inr (Or.inl rfl))))) ?_
  unfold ptS139
  refine hseqN hn_skip ?_
  exact hk

end InitECandidate.Solver.MemSafe.Ptx
