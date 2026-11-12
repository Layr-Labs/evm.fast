import InitECandidate.Solver.MemSafe.Hooks.RecTx

set_option autoImplicit false

/-!
# Stage 2b: the transaction environment `te`, a read-only record

`research/notes/main-stage2-design.md` §K. `msg[8]` is typed `ptr tTE`. `te` is fully written in `fork.pnk`
before it is stored in a message, and never afterwards. The invariant says its authorization array
(`TE_AUTHS` = cell 18, `TE_AUTHS_N` = cell 19) is a `tAUTH` object, as `TxW` does for the transaction's own.
Slot 0 (`TE_ORIGIN`) is typed `ptr tB24` in the type table, so it needs no invariant here.
-/

namespace InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

def TeW (Γ : Gam) (m : Mem) (o : Obj) : Prop :=
  200 ≤ o.size ∧ o.lo + 200 ≤ heapEnd ∧
    SubArr Γ (rd m (o.cell 18)) (rd m (o.cell 19)).toNat tAUTH 120

def teFp (_Γ : Gam) (_m : Mem) (o : Obj) (a : BitVec 64) : Prop := a = o.cell 18 ∨ a = o.cell 19

def teRef (_Γ : Gam) (m : Mem) (o : Obj) (b : BitVec 64) : Prop :=
  (rd m (o.cell 19)).toNat ≠ 0 ∧ b = rd m (o.cell 18)

theorem recTy_tTE : RecTyOK tTE := by decide

theorem te_prot18 : (guestC.ty tTE).slot 18 = .prot := by decide
theorem te_prot19 : (guestC.ty tTE).slot 19 = .prot := by decide

theorem te_cells (Γ : Gam) (m : Mem) (o : Obj) (a : BitVec 64) (_hG : GamOK Γ) (ho : o ∈ Γ)
    (ht : o.ty = tTE) (hw : TeW Γ m o) (hf : teFp Γ m o a) :
    ∃ x ∈ Γ, RecTyOK x.ty ∧ ∃ j, x.HasSlot j ∧ (guestC.ty x.ty).slot j = .prot ∧ a = x.cell j ∧
      x.lo ≤ a.toNat ∧ a.toNat < x.hi := by
  obtain ⟨hs, hlo, -⟩ := hw
  have hE := heapEnd_lt
  rcases hf with rfl | rfl
  · have e := cellN (x := o) (k := 18) (by omega)
    refine ⟨o, ho, ht ▸ recTy_tTE, 18, by unfold Obj.HasSlot; omega, by rw [ht]; exact te_prot18, rfl, ?_, ?_⟩
    · rw [e]; omega
    · rw [e]; unfold Obj.hi; unfold Obj.lo at hlo ⊢; omega
  · have e := cellN (x := o) (k := 19) (by omega)
    refine ⟨o, ho, ht ▸ recTy_tTE, 19, by unfold Obj.HasSlot; omega, by rw [ht]; exact te_prot19, rfl, ?_, ?_⟩
    · rw [e]; omega
    · rw [e]; unfold Obj.hi; unfold Obj.lo at hlo ⊢; omega

theorem te_frame (Γ : Gam) (m m' : Mem) (o : Obj) (_ht : o.ty = tTE) (hw : TeW Γ m o)
    (hfp : ∀ a, teFp Γ m o a → m' a = m a) : TeW Γ m' o ∧ teFp Γ m' o = teFp Γ m o := by
  have e0 : rd m' (o.cell 18) = rd m (o.cell 18) := rd_congr (hfp _ (Or.inl rfl))
  have e1 : rd m' (o.cell 19) = rd m (o.cell 19) := rd_congr (hfp _ (Or.inr rfl))
  obtain ⟨h1, h2, h3⟩ := hw
  exact ⟨⟨h1, h2, by rw [e0, e1]; exact h3⟩, rfl⟩

theorem te_mono (Γ Γ' : Gam) (m : Mem) (p : Ptrs) (o o' : Obj) (hL : Layout guestC p Γ')
    (hx : Ext Γ Γ') (ho : o ∈ Γ) (ho' : o' ∈ Γ') (hb : o'.base = o.base) (_ht' : o'.ty = o.ty)
    (_ht : o.ty = tTE) (hw : TeW Γ m o) : TeW Γ' m o' := by
  obtain ⟨h1, h2, h3⟩ := hw
  obtain ⟨o'', ho'', hb'', -, hs''⟩ := hx o ho
  have e : o'' = o' := gam_base_eq (gamOK_of_layout hL) ho'' ho' (hb''.trans hb.symm)
  subst e
  have hlo : o''.lo = o.lo := by unfold Obj.lo; rw [hb]
  have hc : ∀ j, o''.cell j = o.cell j := fun j => by unfold Obj.cell; rw [hb]
  exact ⟨by omega, by rw [hlo]; exact h2, by rw [hc, hc]; exact subArr_ext hx h3⟩

theorem te_shrink (Γ Γs : Gam) (m : Mem) (o : Obj) (_hsub : ∀ o' ∈ Γs, o' ∈ Γ) (_ho : o ∈ Γs)
    (_ht : o.ty = tTE) (hw : TeW Γ m o) (hc : ∀ x ∈ Γ, teRef Γ m o x.base → x ∈ Γs) :
    TeW Γs m o := by
  obtain ⟨h1, h2, h3⟩ := hw
  refine ⟨h1, h2, ?_⟩
  rcases h3 with h | ⟨x, hx, hxb, hxt, hxs, hxe⟩
  · exact Or.inl h
  · by_cases hn : (rd m (o.cell 19)).toNat = 0
    · exact Or.inl hn
    · exact Or.inr ⟨x, hc x hx ⟨hn, hxb⟩, hxb, hxt, hxs, hxe⟩

theorem te_refHeap (Γ : Gam) (m : Mem) (o : Obj) (b : BitVec 64) (p : Ptrs)
    (hL : Layout guestC p Γ) (_ho : o ∈ Γ) (_ht : o.ty = tTE) (hw : TeW Γ m o)
    (hr : teRef Γ m o b) : ∀ x ∈ Γ, x.base = b → (guestC.ty x.ty).region = .heap := by
  intro x hx hxb
  obtain ⟨-, -, h3⟩ := hw
  obtain ⟨hn, rfl⟩ := hr
  rcases h3 with h | ⟨y, hy, hyb, hyt, -⟩
  · exact absurd h hn
  · rw [gam_base_eq (gamOK_of_layout hL) hx hy (hxb.trans hyb.symm), hyt]; exact auth_heap

/-- **The transaction environment's record entry.** -/
def teD : RecD where
  ty := tTE
  wf := TeW
  fp := teFp
  ref := teRef
  hty := recTy_tTE
  cells := te_cells
  frame := te_frame
  mono := te_mono
  shrink := te_shrink
  refHeap := te_refHeap

end InitECandidate.Solver.MemSafe.Hooks

#print axioms InitECandidate.Solver.MemSafe.Hooks.teD
