import InitECandidate.Solver.MemSafe.D0.Hook
import InitECandidate.Solver.MemSafe.HtabEntries.LstTrk
import InitECandidate.Solver.MemSafe.Frames.BKeepDef

/-!
# A store into a block object's `prot` cell keeps `G` (package K)

* `fp_block_free`: no hook footprint cell of `guestHooksR` is a cell of an object of a block type
  (`tBOS`, `tBO`, `tMCO`): not an EV `SMCell`, not inside a table / journal / list object, and not a
  record footprint cell (`Hooks.recTy_ne_block`).
* **`G_st_block`**: a store into a `prot` cell of a block object of `Γ` keeps `G`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Struct

variable {σ : Type}

theorem fpTy_block {t : Nat} (h : t ∈ blockTys) : ¬ FpTy t := by
  unfold blockTys at h
  unfold FpTy IsTabTy IsArrTy
  simp only [List.mem_cons, List.mem_nil_iff, or_false] at h
  rcases h with rfl | rfl | rfl <;> decide

theorem block_ne_ev {t : Nat} (h : t ∈ blockTys) : t ≠ tEV := by
  unfold blockTys at h
  simp only [List.mem_cons, List.mem_nil_iff, or_false] at h
  rcases h with rfl | rfl | rfl <;> decide

theorem block_untagged {t : Nat} (h : t ∈ blockTys) : guestC.tags.lookup t = none := by
  unfold blockTys at h
  simp only [List.mem_cons, List.mem_nil_iff, or_false] at h
  exact tags_lookup_none t (Or.inr (by rcases h with rfl | rfl | rfl <;> decide))

/-- No hook footprint cell is a cell of a block object. -/
theorem fp_block_free {Γ : Gam} {s : State σ} {o M : Obj} {k : Nat} {p : Ptrs}
    (hord : p.Ordered) (hL : Layout guestC p Γ) (hM : M ∈ Γ) (hMt : M.ty ∈ blockTys)
    (hk : M.HasSlot k) (hf : (guestHooksR (σ := σ)).fp Γ s o (M.cell k)) : False := by
  have hGO := gamOK_of_layout hL
  have hk8 : 8 * k < M.size := by unfold Obj.HasSlot at hk; omega
  have hin : InO M (M.cell k) := inO_cell hord hL hM hk8
  rcases fp_class hf with ⟨e', he', het', k', hk', hc⟩ | ⟨x, hx, hxt, h1, h2⟩ | hr
  · have hsz := (hL.1 e' he').2.2.2.1
    rw [het'] at hsz
    have hsz' : 280 ≤ e'.size := le_trans (by decide) hsz
    have hs' : e'.HasSlot k' := by
      have := sm_le hk'; unfold Obj.HasSlot; omega
    have := (cell_inj hord hL hM he' hk hs' hc).1
    subst this
    exact block_ne_ev hMt het'
  · have eq := gam_eq hGO hM hx hin.1 hin.2 h1 h2
    subst eq
    exact fpTy_block hMt hxt
  · obtain ⟨-, x, hx, hxt, -, -, -, -, h3, h4⟩ := recFp_obj hr
    have eq := gam_eq hGO hM hx hin.1 hin.2 h3 h4
    subst eq
    have := recTy_ne_block hxt
    unfold blockTys at hMt
    simp only [List.mem_cons, List.mem_nil_iff, or_false] at hMt
    rcases hMt with h | h | h
    · exact this.1 h
    · exact this.2.1 h
    · exact this.2.2 h

/-- **A store into a `prot` cell of a block object keeps `G`**: `t` is `s` with that one memory cell
changed (globals, `memaddrs`, `be` as in `s`). -/
theorem G_st_block_gen {Γ : Gam} {s t : State σ}
    (hG : G guestC (guestHooksR (σ := σ)) Γ s) {M : Obj} (hM : M ∈ Γ) (hMt : M.ty ∈ blockTys)
    {k : Nat} (hk : M.HasSlot k) (hp : (guestC.ty M.ty).slot k = .prot) {x : BitVec 64}
    (hm : t.memory = Frames.upd s.memory (M.cell k) x) (hg : t.globals = s.globals)
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be) :
    G guestC (guestHooksR (σ := σ)) Γ t := by
  obtain ⟨p, hps, hord, hL, -⟩ := id hG
  refine G_frame_prot guestHooksR_lawful hG (Frames.ptrsOf_congr hg) (fun g _ _ => ?_)
    (fun g _ => by rw [hg]) hd hbe (R := fun b => b = M.cell k) ?_ ?_ ?_ ?_
  · unfold gword; rw [hg]
  · intro b hb
    rw [hm]; exact Frames.upd_ne _ _ hb
  · rintro b rfl; exact ⟨M, hM, k, hk, hp, rfl⟩
  · intro o ho htg hob
    obtain ⟨-, h1, h2⟩ := HtabEntries.cell_lay hord hL hM hk
    have hpos := (hL.1 o ho).2.2.1
    have hlo : o.base.toNat = (M.cell k).toNat := by rw [hob]
    have := gam_eq (gamOK_of_layout hL) hM ho h1 h2 (by unfold Obj.lo; omega)
      (by unfold Obj.hi; omega)
    subst this
    rw [block_untagged hMt] at htg
    simp at htg
  · rintro o ho ⟨b, rfl, hf⟩
    exact (fp_block_free hord hL hM hMt hk hf).elim

/-- The record form: the state after `st cell, x`. -/
theorem G_st_block {Γ : Gam} {s : State σ} (hG : G guestC (guestHooksR (σ := σ)) Γ s) {M : Obj}
    (hM : M ∈ Γ) (hMt : M.ty ∈ blockTys) {k : Nat} (hk : M.HasSlot k)
    (hp : (guestC.ty M.ty).slot k = .prot) (x : BitVec 64) :
    G guestC (guestHooksR (σ := σ)) Γ { s with memory := Frames.upd s.memory (M.cell k) x } :=
  G_st_block_gen hG hM hMt hk hp rfl rfl rfl rfl

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.G_st_block
#print axioms InitECandidate.Solver.MemSafe.D0.G_st_block_gen
