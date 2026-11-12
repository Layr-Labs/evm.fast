import InitECandidate.Solver.MemSafe.Ptx.PtT13
import InitECandidate.Solver.MemSafe.HtabEntries.LstTrk
import InitECandidate.Solver.MemSafe.Bal.ListKit

/-!
# F3g: the second part of the tail: framework lemmas (`G` under stores into list cells, calls with arbitrary footprints)
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
open InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

section gst
variable {Γ : Gam} {s : State σ}

/-- A store into a `prot` cell of an untagged object keeps `G`, when the hooks that read the cell are re-established. -/
theorem G_st_pstore (hG : G guestC (HR σ) Γ s) {A : Obj} (hA : A ∈ Γ) {k : Nat} (hk : A.HasSlot k)
    (hpr : (guestC.ty A.ty).slot k = .prot) (htg : guestC.tags.lookup A.ty = none) (x : BitVec 64)
    (hwf : ∀ o ∈ Γ, (HR σ).fp Γ s o (A.cell k) → (HR σ).wf Γ { s with memory := Frames.upd s.memory (A.cell k) x } o) :
    G guestC (HR σ) Γ { s with memory := Frames.upd s.memory (A.cell k) x } := by
  obtain ⟨pG, -, hord, hLay, -, -, -, -⟩ := id hG
  obtain ⟨-, h1, h2⟩ := HtabEntries.cell_lay hord hLay hA hk
  refine G_frame_prot Hooks.guestHooksR_lawful hG rfl (fun _ _ _ => rfl) (fun _ _ => rfl) rfl rfl
    (R := fun b => b = A.cell k) (fun b hb' => Frames.upd_ne _ _ hb') ?_ ?_ ?_
  · rintro b rfl
    exact ⟨A, hA, k, hk, hpr, rfl⟩
  · intro o ho htg' hob
    have hpos := (hLay.1 o ho).2.2.1
    have h3 : o.lo ≤ (A.cell k).toNat := by unfold Obj.lo; rw [hob]
    have h4 : (A.cell k).toNat < o.hi := by unfold Obj.hi; rw [hob]; omega
    have := gam_eq (gamOK_of_layout hLay) hA ho h1 h2 h3 h4
    subst this
    rw [htg] at htg'
    simp at htg'
  · rintro o ho ⟨b, rfl, hf⟩
    exact hwf o ho hf

/-- **A store into a cell of a list array keeps `G`** (no hook reads it). -/
theorem G_st_astore (hG : G guestC (HR σ) Γ s) {A : Obj} (hA : A ∈ Γ) (hAt : IsLstA A.ty) {k : Nat}
    (hk : A.HasSlot k) (x : BitVec 64) :
    G guestC (HR σ) Γ { s with memory := Frames.upd s.memory (A.cell k) x } := by
  obtain ⟨pG, -, hord, hLay, -, -, -, -⟩ := id hG
  obtain ⟨-, h1, h2⟩ := HtabEntries.cell_lay hord hLay hA hk
  refine G_st_pstore hG hA hk (lstA_prot hAt k) (lstA_untagged hAt) x fun o ho hf => ?_
  obtain ⟨-, hl⟩ := (Hooks.lstHooks_guestR (σ := σ)).loc Γ s o A _ hA hf h1 h2 (Or.inr hAt)
  exact absurd hl (lstA_ne hAt).2.2.2.1

/-- **A store into a header cell of a list keeps `G`**, when the new memory satisfies the list invariant of the header. -/
theorem G_st_lhdr (hG : G guestC (HR σ) Γ s) {L : Obj} (hL : L ∈ Γ) (hLt : L.ty ∈ lstTys) {k : Nat} (hk : k < 3)
    (x : BitVec 64) (hok : LstOK Γ (Frames.upd s.memory (L.cell k) x) L) :
    G guestC (HR σ) Γ { s with memory := Frames.upd s.memory (L.cell k) x } := by
  obtain ⟨pG, -, hord, hLay, -, -, -, -⟩ := id hG
  have hks := HtabEntries.lst_slot hLay hL hLt hk
  obtain ⟨-, h1, h2⟩ := HtabEntries.cell_lay hord hLay hL hks
  refine G_st_pstore hG hL hks (lst_prot _ hLt k) (lst_untagged _ hLt) x fun o ho hf => ?_
  obtain ⟨e, -⟩ := (Hooks.lstHooks_guestR (σ := σ)).loc Γ s o L _ hL hf h1 h2 (Or.inl hLt)
  subst e
  exact (Hooks.lstHooks_guestR (σ := σ)).make Γ _ L hLt ⟨hL, gamOK_of_layout hLay, hok⟩

end gst

end InitECandidate.Solver.MemSafe.Ptx
