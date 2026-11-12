import InitECandidate.Solver.MemSafe.Hooks.RecWs

set_option autoImplicit false

/-!
# Stage 2b: the node-value invariant as record entries

Instead of a separate hook layer (trie-inv README §2), the node-value invariant is two
ordinary record entries in `recTab`, reusing every law of `extR`:
* `valD tNLEAF 6 64` (leaf `VAL` / `LEN`, cells 6, 7);
* `valD tNBRANCH 20 176` (branch `BR_VAL` / `BR_LEN`, cells 20, 21).

The invariant is `VInR tV Γ vp vl` (= `Band4.VIn`): the value slice is empty or lies inside a
`tV` (`tVAL`) object of `Γ`.

Facts that become true only with the stage are parameters:
* `RecTyOK t` for a node type. This needs dropping the unused "untagged" conjunct of `RecTyOK`; no law
  projects it. Its 10th conjunct is then the last one, so `RecDefs.lean:55` needs one projection fixed.
* `(guestC.ty t).slot k = .prot` and `slot (k+1) = .prot` (`nleafTy` slots 6/7 and `nbranchTy` slots 20/21
  become `prot`).
* `(guestC.ty tV).region = .heap` (`valTy`).
-/

namespace InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

/-- The value invariant of a record with its slice at cells `k`, `k + 1`, minimum size `sz`. -/
def ValW (tV k sz : Nat) (Γ : Gam) (m : Mem) (o : Obj) : Prop :=
  sz ≤ o.size ∧ o.lo + sz ≤ heapEnd ∧ VInR tV Γ (rd m (o.cell k)) (rd m (o.cell (k + 1)))

def valFp (k : Nat) (_Γ : Gam) (_m : Mem) (o : Obj) (a : BitVec 64) : Prop :=
  a = o.cell k ∨ a = o.cell (k + 1)

/-- The value object a nonempty slice depends on. -/
def valRef (tV k : Nat) (Γ : Gam) (m : Mem) (o : Obj) (b : BitVec 64) : Prop :=
  rd m (o.cell (k + 1)) ≠ 0 ∧ ∃ x ∈ Γ, x.base = b ∧ x.ty = tV ∧
    x.lo ≤ (rd m (o.cell k)).toNat ∧ (rd m (o.cell k)).toNat + (rd m (o.cell (k + 1))).toNat ≤ x.hi

section
variable {t k sz tV : Nat}

theorem val_cells (hty : RecTyOK t) (hk : (guestC.ty t).slot k = .prot)
    (hk1 : (guestC.ty t).slot (k + 1) = .prot) (hsz : 8 * (k + 1) + 8 ≤ sz)
    (Γ : Gam) (m : Mem) (o : Obj) (a : BitVec 64) (_hG : GamOK Γ) (ho : o ∈ Γ)
    (ht : o.ty = t) (hw : ValW tV k sz Γ m o) (hf : valFp k Γ m o a) :
    ∃ x ∈ Γ, RecTyOK x.ty ∧ ∃ j, x.HasSlot j ∧ (guestC.ty x.ty).slot j = .prot ∧ a = x.cell j ∧
      x.lo ≤ a.toNat ∧ a.toNat < x.hi := by
  obtain ⟨hs, hlo, -⟩ := hw
  have hE := heapEnd_lt
  rcases hf with rfl | rfl
  · have e := cellN (x := o) (k := k) (by omega)
    refine ⟨o, ho, ht ▸ hty, k, by unfold Obj.HasSlot; omega, by rw [ht]; exact hk, rfl, ?_, ?_⟩
    · rw [e]; omega
    · rw [e]; unfold Obj.hi; unfold Obj.lo at hlo ⊢; omega
  · have e := cellN (x := o) (k := k + 1) (by omega)
    refine ⟨o, ho, ht ▸ hty, k + 1, by unfold Obj.HasSlot; omega, by rw [ht]; exact hk1, rfl, ?_, ?_⟩
    · rw [e]; omega
    · rw [e]; unfold Obj.hi; unfold Obj.lo at hlo ⊢; omega

theorem val_frame (Γ : Gam) (m m' : Mem) (o : Obj) (_ht : o.ty = t) (hw : ValW tV k sz Γ m o)
    (hfp : ∀ a, valFp k Γ m o a → m' a = m a) :
    ValW tV k sz Γ m' o ∧ valFp k Γ m' o = valFp k Γ m o := by
  have e0 : rd m' (o.cell k) = rd m (o.cell k) := rd_congr (hfp _ (Or.inl rfl))
  have e1 : rd m' (o.cell (k + 1)) = rd m (o.cell (k + 1)) := rd_congr (hfp _ (Or.inr rfl))
  obtain ⟨h1, h2, h3⟩ := hw
  exact ⟨⟨h1, h2, by rw [e0, e1]; exact h3⟩, rfl⟩

theorem val_mono (Γ Γ' : Gam) (m : Mem) (p : Ptrs) (o o' : Obj) (hL : Layout guestC p Γ')
    (hx : Ext Γ Γ') (ho : o ∈ Γ) (ho' : o' ∈ Γ') (hb : o'.base = o.base) (_ht' : o'.ty = o.ty)
    (_ht : o.ty = t) (hw : ValW tV k sz Γ m o) : ValW tV k sz Γ' m o' := by
  obtain ⟨h1, h2, h3⟩ := hw
  obtain ⟨o'', ho'', hb'', -, hs''⟩ := hx o ho
  have e : o'' = o' := gam_base_eq (gamOK_of_layout hL) ho'' ho' (hb''.trans hb.symm)
  subst e
  have hlo : o''.lo = o.lo := by unfold Obj.lo; rw [hb]
  have hc : ∀ j, o''.cell j = o.cell j := fun j => by unfold Obj.cell; rw [hb]
  exact ⟨by omega, by rw [hlo]; exact h2, by rw [hc, hc]; exact vInR_ext hx h3⟩

theorem val_shrink (Γ Γs : Gam) (m : Mem) (o : Obj) (_hsub : ∀ o' ∈ Γs, o' ∈ Γ) (_ho : o ∈ Γs)
    (_ht : o.ty = t) (hw : ValW tV k sz Γ m o)
    (hc : ∀ x ∈ Γ, valRef tV k Γ m o x.base → x ∈ Γs) : ValW tV k sz Γs m o := by
  obtain ⟨h1, h2, h3⟩ := hw
  refine ⟨h1, h2, ?_⟩
  rcases h3 with h | ⟨x, hx, ht, hl, hh⟩
  · exact Or.inl h
  · by_cases h0 : rd m (o.cell (k + 1)) = 0
    · exact Or.inl h0
    · exact Or.inr ⟨x, hc x hx ⟨h0, x, hx, rfl, ht, hl, hh⟩, ht, hl, hh⟩

theorem val_refHeap (hvh : (guestC.ty tV).region = .heap) (Γ : Gam) (m : Mem) (o : Obj)
    (b : BitVec 64) (p : Ptrs) (hL : Layout guestC p Γ) (_ho : o ∈ Γ) (_ht : o.ty = t)
    (_hw : ValW tV k sz Γ m o) (hr : valRef tV k Γ m o b) :
    ∀ x ∈ Γ, x.base = b → (guestC.ty x.ty).region = .heap := by
  intro y hy hyb
  obtain ⟨-, x, hx, hxb, hxt, -⟩ := hr
  have e : y = x := gam_base_eq (gamOK_of_layout hL) hy hx (hyb.trans hxb.symm)
  subst e
  rw [hxt]; exact hvh

end

/-- **A node-value record entry** (staged facts as parameters). -/
def valD (t k sz tV : Nat) (hty : RecTyOK t) (hk : (guestC.ty t).slot k = .prot)
    (hk1 : (guestC.ty t).slot (k + 1) = .prot) (hsz : 8 * (k + 1) + 8 ≤ sz)
    (hvh : (guestC.ty tV).region = .heap) : RecD where
  ty := t
  wf := ValW tV k sz
  fp := valFp k
  ref := valRef tV k
  hty := hty
  cells := val_cells hty hk hk1 hsz
  frame := val_frame
  mono := val_mono
  shrink := val_shrink
  refHeap := val_refHeap hvh

end InitECandidate.Solver.MemSafe.Hooks

#print axioms InitECandidate.Solver.MemSafe.Hooks.valD
