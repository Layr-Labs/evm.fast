import InitECandidate.Solver.MemSafe.D0.Te

/-!
# Hook footprints of `guestHooksR` miss the cells `depth0_prepare` / `prepare_dispatch` store to

* `fp_class`: a footprint cell of `guestHooksR` is an `SMCell` of an EV object, or lies inside an
  object of a table / journal / list / record type.
* `safe_msg_cell`: no footprint cell is a cell of a message object.
* `safe_ev_free`: no footprint cell is a cell `j` of an EV object with `j ∉ smSlots`.
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

/-- The object types a non-EV, non-record hook footprint can lie in. -/
def FpTy (t : Nat) : Prop := IsTabTy t ∨ t = tJOURNAL ∨ t ∈ lstTys

theorem fpTy_msg {t : Nat} (h : t = tMSGh ∨ t = tMSGs) : ¬ FpTy t := by
  unfold FpTy IsTabTy IsArrTy
  rcases h with rfl | rfl <;> decide

theorem fpTy_ev : ¬ FpTy tEV := by
  rintro (h | h | h)
  · exact (tabTy_ne h).1 rfl
  · exact tJ_ne_ev h.symm
  · exact (lst_ne _ h).1 rfl

/-- A footprint cell of `guestHooksR` is an `SMCell` of an EV object, lies inside an object of a
table / journal / list type, or is a record footprint cell. -/
theorem fp_class {Γ : Gam} {s : State σ} {o : Obj} {a : BitVec 64}
    (hf : (guestHooksR (σ := σ)).fp Γ s o a) :
    (∃ e ∈ Γ, e.ty = tEV ∧ SMCell e a) ∨ (∃ x ∈ Γ, FpTy x.ty ∧ x.lo ≤ a.toNat ∧ a.toNat < x.hi) ∨
      RecFp (recTab s.be) Γ s.memory o a := by
  rcases hf with hf | hf
  swap
  · exact Or.inr (Or.inr hf)
  rcases hf with hf | hf
  swap
  · obtain ⟨ht, ⟨ho, hG, hok⟩, hc⟩ := hf
    obtain ⟨-, -, -, -, -, h1, h2⟩ := lcell_in hG ho ht hok.1 hc
    exact Or.inr (Or.inl ⟨o, ho, Or.inr (Or.inr ht), h1, h2⟩)
  rcases hf with hf | hf
  swap
  · obtain ⟨ht, hj, hc⟩ := hf
    have hJ := hj hc.1
    obtain ⟨-, -, -, h3, h4⟩ := jcell_in hJ hc
    exact Or.inr (Or.inl ⟨o, hJ.1, Or.inr (Or.inl ht), h3, h4⟩)
  cases hk : hkOf o.ty with
  | ev =>
    obtain ⟨⟨ho, -, -⟩, hs⟩ := (gfp_ev hk).1 hf
    exact Or.inl ⟨o, ho, hkOf_ev hk, hs⟩
  | tab =>
    obtain ⟨hw, hr, -⟩ := (gfp_tab hk).1 hf
    obtain ⟨x, hx, -, hxt, h1, h2⟩ := tab_obj hw hk hr
    exact Or.inr (Or.inl ⟨x, hx, Or.inl hxt, h1, h2⟩)
  | none => exact absurd hf (gfp_none hk)

/-- **Open (record family):** a record footprint cell is not inside a message object. Each record
entry's footprint lies in objects of its own types (`tTX`/`tACC`, `tPL`, `tSI`, `tWSR`, `tCSL`);
`RecD.cells` only gives `RecTyOK`, which message types satisfy, so this needs the five entries. -/
def RecNoMsg (σ : Type) : Prop :=
  ∀ (Γ : Gam) (m : Mem) (o M : Obj) (a : BitVec 64) (be : Bool), GamOK Γ → M ∈ Γ →
    (M.ty = tMSGh ∨ M.ty = tMSGs) → RecFp (recTab be) Γ m o a → ¬ (M.lo ≤ a.toNat ∧ a.toNat < M.hi)

/-- No hook footprint cell is a cell `k ∉ smSlots` of an EV object. -/
theorem fp_ev_free {Γ : Gam} {s : State σ} {o e : Obj} {k : Nat} (hGO : GamOK Γ) (he : e ∈ Γ)
    (het : e.ty = tEV) (hks : k ∉ smSlots) (hk : 8 * k + 8 ≤ e.size)
    (hf : (guestHooksR (σ := σ)).fp Γ s o (e.cell k)) : False := by
  have hreg : (guestC.ty e.ty).region = .scratch := by rw [het]; rfl
  obtain ⟨-, h3, h4⟩ := scratch_cell hGO he hreg hk
  rcases fp_class hf with ⟨e', he', het', hc⟩ | ⟨x, hx, hxt, h1, h2⟩ | hr
  · obtain ⟨k', hk', hc'⟩ := hc
    have hreg' : (guestC.ty e'.ty).region = .scratch := by rw [het']; rfl
    have hk'' : 8 * k' + 8 ≤ e'.size := by
      have := ev_size hGO he' het'; have := sm_le hk'; omega
    obtain ⟨e1, h5, h6⟩ := scratch_cell hGO he' hreg' hk''
    rw [← hc'] at h5 h6 e1
    have h7 := scratch_cell hGO he hreg hk
    have eq := gam_eq hGO he he' h7.2.1 h7.2.2 h5 h6
    subst eq
    have : k = k' := by have := h7.1; omega
    subst this
    exact hks hk'
  · have eq := gam_eq hGO he hx h3 h4 h1 h2
    subst eq
    rw [het] at hxt
    exact fpTy_ev hxt
  · exact recFp_evck hr he (Or.inl het) hk rfl

/-- No hook footprint cell is a cell of a message object (given `RecNoMsg`). -/
theorem fp_msg_free (hRec : RecNoMsg σ) {Γ : Gam} {s : State σ} {o M : Obj} {k : Nat} {p : Ptrs}
    (hord : p.Ordered) (hL : Layout guestC p Γ) (hM : M ∈ Γ) (hMt : M.ty = tMSGh ∨ M.ty = tMSGs)
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
    rcases hMt with h | h <;> rw [h] at het' <;> exact absurd het' (by decide)
  · have eq := gam_eq hGO hM hx hin.1 hin.2 h1 h2
    subst eq
    exact fpTy_msg hMt hxt
  · exact hRec Γ s.memory o M _ _ hGO hM hMt hr hin

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.fp_class
#print axioms InitECandidate.Solver.MemSafe.D0.fp_ev_free
#print axioms InitECandidate.Solver.MemSafe.D0.fp_msg_free
