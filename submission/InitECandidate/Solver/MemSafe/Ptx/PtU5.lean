import InitECandidate.Solver.MemSafe.Ptx.PtU4

/-!
# F3h: the log list's cells: kept or frozen
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

theorem lstTy_small {t : Nat} (h : LstTy t) : t < ownBase ∧ t ≠ tHTs20 ∧ t ≠ tHTAs := by
  rcases h with ⟨h, -⟩ | h | h
  · simp only [Hooks.lstTys, List.mem_cons, List.not_mem_nil, or_false] at h
    rcases h with rfl | rfl | rfl | rfl | rfl <;> decide
  · rcases h with rfl | rfl <;> decide
  · subst h; decide

section lc
variable {Γ' : Gam} {t : State σ} {d : BitVec 64}

/-- A key cell lies in an object the table owns. -/
theorem keycell_owned (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ' t) {c : BitVec 64} (h : KeyCell Γ' t d c) :
    ∃ D ∈ Γ', D.base = d ∧ D.ty = tHTs20 ∧ ∃ x ∈ Γ', Owns D x ∧ x.lo ≤ c.toNat ∧ c.toNat < x.hi := by
  have hin := keycell_inr hG h
  obtain ⟨⟨D, hD, hDb, hDt⟩, i, hi, hov⟩ := h
  refine ⟨D, hD, hDb, hDt, ?_⟩
  have hT := del_tabOK hG hD hDt
  have hc8 := hov.1
  subst hDb
  exact hT.2.1 c (Or.inr (Or.inr (Or.inr hin))) hc8

/-- **A cell of a list-typed object is kept or frozen.** -/
theorem lst_cell_dichotomy (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ' t) {o : Obj} (ho : o ∈ Γ')
    (hty : LstTy o.ty) {k : Nat} (hk : o.HasSlot k) : o ∈ keepG Γ' ∨ YSet Γ' t d (o.cell k) := by
  by_cases hkeep : o ∈ keepG Γ'
  · exact Or.inl hkeep
  · right
    obtain ⟨p, hp, hord, hL, -⟩ := id hG
    refine ⟨⟨o, ho, hkeep, k, hk, rfl⟩, fun hkc => ?_⟩
    obtain ⟨D, hD, hDb, hDt, x, hx, hown, h1, h2⟩ := keycell_owned hG hkc
    have hr := cell_range hord hL ho hk
    have := same_obj_of_overlap hL ho hx hr.1 hr.2 h1 h2
    subst this
    have hs := lstTy_small hty
    rcases hown with h | h | ⟨h, -⟩
    · have := base_unique hL hD ho h.symm
      subst this
      exact hs.2.1 hDt
    · have := tOwn_ge D.base
      omega
    · exact hs.2.2 h

end lc

end InitECandidate.Solver.MemSafe.Ptx
