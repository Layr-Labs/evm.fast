import InitECandidate.Solver.MemSafe.Hooks.Rec

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

/-!
# Stage 2b: no footprint reaches a node object

`recSep`: a node object (`tNLEAF`, `tNEXT`, `tNBRANCH`) `o` of `Γ` is hit by the footprint of no other object
`o2` of `Γ` that satisfies its hook. This is what a hook-aware store into the value slots of a node needs:
the other objects' hooks are untouched (`Hooks/RecWs.lean`: a node DB never refers to a node object;
the transaction, payload and stateless-input records point only to `tACC` / `tAUTH` / `tSLA` arrays).
-/

namespace InitECandidate.Solver.MemSafe.Hooks
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

def IsNodeTy (t : Nat) : Prop := t = tNLEAF ∨ t = tNEXT ∨ t = tNBRANCH

instance (t : Nat) : Decidable (IsNodeTy t) := by unfold IsNodeTy; infer_instance

theorem isNode_notNotNode {t : Nat} (h : IsNodeTy t) : ¬ NotNodeTy t := by
  rintro ⟨h1, h2, h3⟩
  rcases h with h | h | h
  exacts [h1 h, h2 h, h3 h]

theorem isNode_recTy {t : Nat} (h : IsNodeTy t) : RecTyOK t := by
  rcases h with rfl | rfl | rfl
  exacts [recTy_tNLEAF, recTy_tNEXT, recTy_tNBRANCH]

theorem rcell_notNode {Γ : Gam} {a : BitVec 64} (h : RCell Γ a) :
    ∃ x ∈ Γ, x.lo ≤ a.toNat ∧ a.toNat < x.hi ∧ NotNodeTy x.ty := by
  obtain ⟨x, hx, -, -, k, hks, -, rfl, hb, hnn⟩ := h
  have e := cellN (x := x) (k := k) (by have := heapEnd_lt; omega)
  refine ⟨x, hx, by rw [e]; omega, ?_, hnn⟩
  rw [e]; unfold Obj.hi; unfold Obj.HasSlot at hks; unfold Obj.lo; unfold Obj.lo at e; omega

/-- A cell of an object `o2` is not in a different object. -/
theorem cell_sep {Γ : Gam} (hG : GamOK Γ) {o o2 : Obj} (ho : o ∈ Γ) (ho2 : o2 ∈ Γ) (hne : o2 ≠ o)
    {a : BitVec 64} (h1 : o2.lo ≤ a.toNat) (h2 : a.toNat < o2.hi) :
    ¬ (o.lo ≤ a.toNat ∧ a.toNat < o.hi) := fun ⟨h3, h4⟩ =>
  hne (gam_eq hG ho2 ho h1 h2 h3 h4)

theorem own_cell_in {o : Obj} {j : Nat} (hj : o.HasSlot j) (hlo : o.lo + 8 * j + 8 ≤ heapEnd) :
    o.lo ≤ (o.cell j).toNat ∧ (o.cell j).toNat < o.hi := by
  have e := cellN (x := o) (k := j) (by have := heapEnd_lt; omega)
  rw [e]; unfold Obj.hi; unfold Obj.HasSlot at hj; unfold Obj.lo at hlo ⊢; unfold Obj.lo at e; omega

theorem toNat_addk {x : BitVec 64} {k : Nat} (h : x.toNat + k < 2 ^ 64) :
    (x + BitVec.ofNat 64 k).toNat = x.toNat + k := by
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := k) (by omega), Nat.mod_eq_of_lt h]

/-- A cell of a typed sub-array lies in a non-node object. -/
theorem subarr_cell_sep {Γ : Gam} (hG : GamOK Γ) {o : Obj} (ho : o ∈ Γ) (hn : IsNodeTy o.ty)
    {P : BitVec 64} {n t sz : Nat} (hS : SubArr Γ P n t sz) (htn : ¬ IsNodeTy t) {i c : Nat}
    (hi : i < n) (hc : c + 8 ≤ sz) (hsz : 0 < sz) {a : BitVec 64} (ha : a = P + BitVec.ofNat 64 (sz * i + c)) :
    ¬ (o.lo ≤ a.toNat ∧ a.toNat < o.hi) := by
  rcases hS with h0 | ⟨x, hx, hxb, hxt, hxs, hxe⟩
  · omega
  rintro ⟨h3, h4⟩
  have hE := heapEnd_lt
  have hcc : sz * i + c < sz * n := by
    have : sz * (i + 1) ≤ sz * n := Nat.mul_le_mul_left _ hi
    rw [Nat.mul_add] at this; omega
  have ea : a.toNat = P.toNat + (sz * i + c) := by rw [ha]; exact toNat_addk (by omega)
  have hxlo : x.lo = P.toNat := by unfold Obj.lo; rw [hxb]
  have := gam_eq hG hx ho (n := a.toNat) (by omega) (by unfold Obj.hi; rw [hxb]; omega) h3 h4
  subst this
  exact htn (hxt ▸ hn)


theorem own_sep {Γ : Gam} (hG : GamOK Γ) {o o2 : Obj} (ho : o ∈ Γ) (ho2 : o2 ∈ Γ) (hne : o2 ≠ o)
    {j : Nat} (hj : o2.HasSlot j) (hlo : o2.lo + 8 * j + 8 ≤ heapEnd) {a : BitVec 64}
    (ha : a = o2.cell j) : ¬ (o.lo ≤ a.toNat ∧ a.toNat < o.hi) := by
  have := own_cell_in hj hlo
  subst ha
  exact cell_sep hG ho ho2 hne this.1 this.2

/-- **No footprint reaches a node object.** -/
theorem recSep {Γ : Gam} {s : State σ} (hG : GamOK Γ) {o o2 : Obj} (ho : o ∈ Γ) (ho2 : o2 ∈ Γ)
    (hne : o2 ≠ o) (hn : IsNodeTy o.ty) {a : BitVec 64}
    (hf : (guestHooksR (σ := σ)).fp Γ s o2 a) : ¬ (o.lo ≤ a.toNat ∧ a.toNat < o.hi) := by
  have hf' : (guestHooksJL (σ := σ)).fp Γ s o2 a ∨ RecFp (recTab s.be) Γ s.memory o2 a := hf
  rcases hf' with hf | ⟨e, he, het, -, -, hwe, hfe⟩
  · exact fun ⟨h1, h2⟩ => recBase_fp Γ s o2 o a ho (isNode_recTy hn) hf h1 h2
  have hE := heapEnd_lt
  simp only [recTab, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl |
    rfl | rfl | rfl
  · -- tx
    change TxW Γ s.memory o2 at hwe
    change txFp Γ s.memory o2 a at hfe
    obtain ⟨h400, hl400, -, hacc, -⟩ := hwe
    rcases hfe with ⟨k, hk, ha⟩ | ⟨i, hi, ha⟩
    · have := txSlots_le hk
      exact own_sep hG ho ho2 hne (j := k) (by unfold Obj.HasSlot; omega) (by omega) ha
    · exact subarr_cell_sep hG ho hn hacc (by decide) hi (by decide) (by decide) ha
  · -- pl
    change PlW Γ s.memory o2 at hwe
    change plFp Γ s.memory o2 a at hfe
    obtain ⟨h136, hl136, ⟨hsla, -⟩, -⟩ := hwe
    rcases hfe with ⟨k, hk, ha⟩ | ⟨i, hi, ha | ha⟩
    · have := plSlots_le hk
      exact own_sep hG ho ho2 hne (j := k) (by unfold Obj.HasSlot; omega) (by omega) ha
    · exact subarr_cell_sep hG ho hn hsla (by decide) hi (c := 0) (by decide) (by decide) (by simpa using ha)
    · exact subarr_cell_sep hG ho hn hsla (by decide) hi (c := 8) (by decide) (by decide) ha
  · -- si
    change SiW Γ s.memory o2 at hwe
    change siFp Γ s.memory o2 a at hfe
    obtain ⟨h96, hl96, -, ⟨hs5, -⟩, ⟨hs7, -⟩⟩ := hwe
    rcases hfe with ⟨k, hk, ha⟩ | ⟨i, hi, ha | ha⟩ | ⟨i, hi, ha | ha⟩
    · have := siSlots_le hk
      exact own_sep hG ho ho2 hne (j := k) (by unfold Obj.HasSlot; omega) (by omega) ha
    · exact subarr_cell_sep hG ho hn hs5 (by decide) hi (c := 0) (by decide) (by decide) (by simpa using ha)
    · exact subarr_cell_sep hG ho hn hs5 (by decide) hi (c := 8) (by decide) (by decide) ha
    · exact subarr_cell_sep hG ho hn hs7 (by decide) hi (c := 0) (by decide) (by decide) (by simpa using ha)
    · exact subarr_cell_sep hG ho hn hs7 (by decide) hi (c := 8) (by decide) (by decide) ha
  · -- ws
    change WsRW Γ s.memory o2 at hwe
    change wsFp Γ s.memory o2 a at hfe
    obtain ⟨h40, hl40, hN, hC⟩ := hwe
    have key : ∀ {T : BitVec 64}, NdbFp s.memory T a → NdbR Γ s.memory T →
        ¬ (o.lo ≤ a.toNat ∧ a.toNat < o.hi) := by
      intro T hfT hNT ⟨h1, h2⟩
      obtain ⟨x, hx, hx1, hx2, hnn⟩ := rcell_notNode (ndbFp_rcell hNT hfT)
      have := gam_eq hG hx ho hx1 hx2 h1 h2
      subst this
      exact isNode_notNotNode hn hnn
    rcases hfe with ha | ha | hf | hf
    · exact own_sep hG ho ho2 hne (j := 0) (by unfold Obj.HasSlot; omega) (by omega) ha
    · exact own_sep hG ho ho2 hne (j := 2) (by unfold Obj.HasSlot; omega) (by omega) ha
    · exact key hf hN
    · exact key hf hC
  · -- csl
    change CslW Γ s.memory o2 at hwe
    change cslFp Γ s.memory o2 a at hfe
    obtain ⟨h16, hl16, -⟩ := hwe
    exact own_sep hG ho ho2 hne (j := 1) (by unfold Obj.HasSlot; omega) (by omega) hfe
  · -- te
    change TeW Γ s.memory o2 at hwe
    change teFp Γ s.memory o2 a at hfe
    obtain ⟨h200, hl200, -⟩ := hwe
    rcases hfe with ha | ha
    · exact own_sep hG ho ho2 hne (j := 18) (by unfold Obj.HasSlot; omega) (by omega) ha
    · exact own_sep hG ho ho2 hne (j := 19) (by unfold Obj.HasSlot; omega) (by omega) ha
  · -- nib leaf
    change NibW 4 64 Γ s.memory o2 at hwe
    change nibFp 4 Γ s.memory o2 a at hfe
    obtain ⟨hs, hl, -⟩ := hwe
    rcases hfe with ha | ha
    · exact own_sep hG ho ho2 hne (j := 4) (by unfold Obj.HasSlot; omega) (by omega) ha
    · exact own_sep hG ho ho2 hne (j := 4 + 1) (by unfold Obj.HasSlot; omega) (by omega) ha
  · -- nib ext
    change NibW 4 56 Γ s.memory o2 at hwe
    change nibFp 4 Γ s.memory o2 a at hfe
    obtain ⟨hs, hl, -⟩ := hwe
    rcases hfe with ha | ha
    · exact own_sep hG ho ho2 hne (j := 4) (by unfold Obj.HasSlot; omega) (by omega) ha
    · exact own_sep hG ho ho2 hne (j := 4 + 1) (by unfold Obj.HasSlot; omega) (by omega) ha
  · -- val leaf
    change ValW tVAL 6 64 Γ s.memory o2 at hwe
    change valFp 6 Γ s.memory o2 a at hfe
    obtain ⟨hs, hl, -⟩ := hwe
    rcases hfe with ha | ha
    · exact own_sep hG ho ho2 hne (j := 6) (by unfold Obj.HasSlot; omega) (by omega) ha
    · exact own_sep hG ho ho2 hne (j := 6 + 1) (by unfold Obj.HasSlot; omega) (by omega) ha
  · -- val branch
    change ValW tVAL 20 176 Γ s.memory o2 at hwe
    change valFp 20 Γ s.memory o2 a at hfe
    obtain ⟨hs, hl, -⟩ := hwe
    rcases hfe with ha | ha
    · exact own_sep hG ho ho2 hne (j := 20) (by unfold Obj.HasSlot; omega) (by omega) ha
    · exact own_sep hG ho ho2 hne (j := 20 + 1) (by unfold Obj.HasSlot; omega) (by omega) ha
  all_goals
    first
    | (change NibObjW _ _ Γ s.memory o2 at hwe
       change nibObjFp Γ s.memory o2 a at hfe
       obtain ⟨hs, hl, -, -⟩ := hwe
       subst hfe
       exact own_sep hG ho ho2 hne (j := 0) (by unfold Obj.HasSlot; omega) (by omega) rfl)

end InitECandidate.Solver.MemSafe.Hooks

#print axioms InitECandidate.Solver.MemSafe.Hooks.recSep
