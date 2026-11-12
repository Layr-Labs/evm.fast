import InitECandidate.Solver.MemSafe.Hooks.RecWs

set_option autoImplicit false

/-!
# Stage 2b: nibble buffers, one word object at a time

`research/notes/main-stage2-design.md` §L. `alloc` does not zero memory, so a nibble buffer's tail can
hold anything, and an object's invariant cannot be bounded by its size (`RecD.mono` must survive
growth). So a buffer is adopted word by word: an object of type `tNIB r` is one word whose first
`8 - r` bytes are nibbles. Its invariant says so directly, at the state's byte order (`recTab be`).

* `NIn Γ np nl` (memory-free): every byte of the slice is a valid byte of a `tNIB` object;
* `nibObjD r be`: the record entry of `tNIB r`;
* `nibD t k sz`: the record entry of node type `t`, whose path slice is at cells `k`, `k + 1`.
-/

namespace InitECandidate.Solver.MemSafe.Hooks
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

/-- The byte at `a` (`Spec.Mpt.byteOf`). -/
def byteAt (m : Mem) (be : Bool) (a : BitVec 64) : Nat :=
  (panGetByteHOL a (rd m (panByteAlignHOL a)) be).toNat

/-- Every byte of the slice is a valid byte of a `tNIB` object of `Γ`. -/
def NIn (Γ : Gam) (np nl : BitVec 64) : Prop :=
  nl = 0 ∨ np.toNat + nl.toNat ≤ heapEnd ∧ ∀ j, j < nl.toNat → ∃ x ∈ Γ, ∃ r, r < 8 ∧ x.ty = tNIB r ∧
    x.lo ≤ np.toNat + j ∧ np.toNat + j + r < x.lo + 8

theorem recTy_tNIB : ∀ {r : Nat}, r < 8 → RecTyOK (tNIB r)
  | 0, _ => by decide | 1, _ => by decide | 2, _ => by decide | 3, _ => by decide
  | 4, _ => by decide | 5, _ => by decide | 6, _ => by decide | 7, _ => by decide
  | _ + 8, h => absurd h (by omega)

theorem nib_prot {r : Nat} (hr : r < 8) (j : Nat) : (guestC.ty (tNIB r)).slot j = .prot := by
  rw [ty_NIB r hr]
  rcases j with _ | j <;> simp [TyD.slot, nibTy]

theorem nib_region {r : Nat} (hr : r < 8) : (guestC.ty (tNIB r)).region = .heap := by
  rw [ty_NIB r hr]; rfl

/-! ## The word object -/

def NibObjW (r : Nat) (be : Bool) (_Γ : Gam) (m : Mem) (o : Obj) : Prop :=
  8 ≤ o.size ∧ o.lo + 8 ≤ heapEnd ∧ o.lo % 8 = 0 ∧
    ∀ j, j + r < 8 → byteAt m be (o.base + BitVec.ofNat 64 j) < 16

def nibObjFp (_Γ : Gam) (_m : Mem) (o : Obj) (a : BitVec 64) : Prop := a = o.cell 0

section
variable {r : Nat} {be : Bool}

theorem align_obj {o : Obj} (hlo : o.lo + 8 ≤ heapEnd) (h8 : o.lo % 8 = 0) {j : Nat} (hj : j < 8) :
    panByteAlignHOL (o.base + BitVec.ofNat 64 j) = o.cell 0 := by
  have hE : heapEnd < 2 ^ 64 := by decide
  have hb : o.lo = o.base.toNat := rfl
  apply BitVec.eq_of_toNat_eq
  rw [alignC_toNat, BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := j) (by omega),
    Nat.mod_eq_of_lt (by omega)]
  unfold Obj.cell
  rw [BitVec.toNat_add, BitVec.toNat_ofNat]
  simp only [Nat.mul_zero, Nat.zero_mod, Nat.add_zero]
  rw [Nat.mod_eq_of_lt (by omega)]
  omega

theorem nibObj_cells (hr : r < 8) (Γ : Gam) (m : Mem) (o : Obj) (a : BitVec 64) (_hG : GamOK Γ)
    (ho : o ∈ Γ) (ht : o.ty = tNIB r) (hw : NibObjW r be Γ m o) (hf : nibObjFp Γ m o a) :
    ∃ x ∈ Γ, RecTyOK x.ty ∧ ∃ j, x.HasSlot j ∧ (guestC.ty x.ty).slot j = .prot ∧ a = x.cell j ∧
      x.lo ≤ a.toNat ∧ a.toNat < x.hi := by
  obtain ⟨hs, hlo, -, -⟩ := hw
  have hE := heapEnd_lt
  subst hf
  have e := cellN (x := o) (k := 0) (by omega)
  refine ⟨o, ho, ht ▸ recTy_tNIB hr, 0, by unfold Obj.HasSlot; omega,
    by rw [ht]; exact nib_prot hr 0, rfl, ?_, ?_⟩
  · rw [e]; omega
  · rw [e]; unfold Obj.hi; unfold Obj.lo at hlo ⊢; omega

theorem nibObj_frame (Γ : Gam) (m m' : Mem) (o : Obj) (_ht : o.ty = tNIB r)
    (hw : NibObjW r be Γ m o) (hfp : ∀ a, nibObjFp Γ m o a → m' a = m a) :
    NibObjW r be Γ m' o ∧ nibObjFp Γ m' o = nibObjFp Γ m o := by
  obtain ⟨h1, h2, h3, h4⟩ := hw
  refine ⟨⟨h1, h2, h3, fun j hj => ?_⟩, rfl⟩
  have := h4 j hj
  unfold byteAt at this ⊢
  rw [align_obj h2 h3 (by omega : j < 8)] at this ⊢
  rw [rd_congr (hfp _ rfl)]
  exact this

theorem nibObj_mono (Γ Γ' : Gam) (m : Mem) (p : Ptrs) (o o' : Obj) (hL : Layout guestC p Γ')
    (hx : Ext Γ Γ') (ho : o ∈ Γ) (ho' : o' ∈ Γ') (hb : o'.base = o.base) (_ht' : o'.ty = o.ty)
    (_ht : o.ty = tNIB r) (hw : NibObjW r be Γ m o) : NibObjW r be Γ' m o' := by
  obtain ⟨h1, h2, h3, h4⟩ := hw
  obtain ⟨o'', ho'', hb'', -, hs''⟩ := hx o ho
  have e : o'' = o' := gam_base_eq (gamOK_of_layout hL) ho'' ho' (hb''.trans hb.symm)
  subst e
  have hlo : o''.lo = o.lo := by unfold Obj.lo; rw [hb]
  refine ⟨by omega, by rw [hlo]; exact h2, by rw [hlo]; exact h3, fun j hj => ?_⟩
  rw [hb]; exact h4 j hj

/-- **The word object's record entry.** -/
def nibObjD (r : Nat) (hr : r < 8) (be : Bool) : RecD where
  ty := tNIB r
  wf := NibObjW r be
  fp := nibObjFp
  ref := fun _ _ _ _ => False
  hty := recTy_tNIB hr
  cells := nibObj_cells hr
  frame := nibObj_frame
  mono := nibObj_mono
  shrink := fun _ _ _ _ _ _ _ hw _ => hw
  refHeap := fun _ _ _ _ _ _ _ _ _ hr => hr.elim

end

/-! ## The node's path slice -/

def NibW (k sz : Nat) (Γ : Gam) (m : Mem) (o : Obj) : Prop :=
  sz ≤ o.size ∧ o.lo + sz ≤ heapEnd ∧ NIn Γ (rd m (o.cell k)) (rd m (o.cell (k + 1)))

def nibFp (k : Nat) (_Γ : Gam) (_m : Mem) (o : Obj) (a : BitVec 64) : Prop :=
  a = o.cell k ∨ a = o.cell (k + 1)

/-- The word objects a nonempty slice depends on. -/
def nibRef (k : Nat) (Γ : Gam) (m : Mem) (o : Obj) (b : BitVec 64) : Prop :=
  rd m (o.cell (k + 1)) ≠ 0 ∧ ∃ x ∈ Γ, x.base = b ∧ ∃ r, r < 8 ∧ x.ty = tNIB r

section
variable {t k sz : Nat}

theorem nib_cells (hty : RecTyOK t) (hk : (guestC.ty t).slot k = .prot)
    (hk1 : (guestC.ty t).slot (k + 1) = .prot) (hsz : 8 * (k + 1) + 8 ≤ sz)
    (Γ : Gam) (m : Mem) (o : Obj) (a : BitVec 64) (_hG : GamOK Γ) (ho : o ∈ Γ)
    (ht : o.ty = t) (hw : NibW k sz Γ m o) (hf : nibFp k Γ m o a) :
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

theorem nib_frame (Γ : Gam) (m m' : Mem) (o : Obj) (_ht : o.ty = t) (hw : NibW k sz Γ m o)
    (hfp : ∀ a, nibFp k Γ m o a → m' a = m a) :
    NibW k sz Γ m' o ∧ nibFp k Γ m' o = nibFp k Γ m o := by
  have e0 : rd m' (o.cell k) = rd m (o.cell k) := rd_congr (hfp _ (Or.inl rfl))
  have e1 : rd m' (o.cell (k + 1)) = rd m (o.cell (k + 1)) := rd_congr (hfp _ (Or.inr rfl))
  obtain ⟨h1, h2, h3⟩ := hw
  exact ⟨⟨h1, h2, by rw [e0, e1]; exact h3⟩, rfl⟩

theorem nIn_ext {Γ Γ' : Gam} (he : Ext Γ Γ') {np nl : BitVec 64} (h : NIn Γ np nl) : NIn Γ' np nl := by
  rcases h with h | ⟨hb, h⟩
  · exact Or.inl h
  · refine Or.inr ⟨hb, fun j hj => ?_⟩
    obtain ⟨x, hx, r, hr, ht, h1, h2⟩ := h j hj
    obtain ⟨x', hx', hb', ht', -⟩ := he x hx
    refine ⟨x', hx', r, hr, ht'.trans ht, ?_, ?_⟩
    · unfold Obj.lo at h1 ⊢; rw [hb']; exact h1
    · unfold Obj.lo at h2 ⊢; rw [hb']; exact h2

theorem nib_mono (Γ Γ' : Gam) (m : Mem) (p : Ptrs) (o o' : Obj) (hL : Layout guestC p Γ')
    (hx : Ext Γ Γ') (ho : o ∈ Γ) (ho' : o' ∈ Γ') (hb : o'.base = o.base) (_ht' : o'.ty = o.ty)
    (_ht : o.ty = t) (hw : NibW k sz Γ m o) : NibW k sz Γ' m o' := by
  obtain ⟨h1, h2, h3⟩ := hw
  obtain ⟨o'', ho'', hb'', -, hs''⟩ := hx o ho
  have e : o'' = o' := gam_base_eq (gamOK_of_layout hL) ho'' ho' (hb''.trans hb.symm)
  subst e
  have hlo : o''.lo = o.lo := by unfold Obj.lo; rw [hb]
  have hc : ∀ j, o''.cell j = o.cell j := fun j => by unfold Obj.cell; rw [hb]
  exact ⟨by omega, by rw [hlo]; exact h2, by rw [hc, hc]; exact nIn_ext hx h3⟩

theorem nib_shrink (Γ Γs : Gam) (m : Mem) (o : Obj) (_hsub : ∀ o' ∈ Γs, o' ∈ Γ) (_ho : o ∈ Γs)
    (_ht : o.ty = t) (hw : NibW k sz Γ m o)
    (hc : ∀ x ∈ Γ, nibRef k Γ m o x.base → x ∈ Γs) : NibW k sz Γs m o := by
  obtain ⟨h1, h2, h3⟩ := hw
  refine ⟨h1, h2, ?_⟩
  rcases h3 with h | ⟨hb, h⟩
  · exact Or.inl h
  · by_cases h00 : rd m (o.cell (k + 1)) = 0
    · exact Or.inl h00
    · refine Or.inr ⟨hb, fun j hj => ?_⟩
      obtain ⟨x, hx, r, hr, ht, h1', h2'⟩ := h j hj
      exact ⟨x, hc x hx ⟨h00, x, hx, rfl, r, hr, ht⟩, r, hr, ht, h1', h2'⟩

theorem nib_refHeap (Γ : Gam) (m : Mem) (o : Obj)
    (b : BitVec 64) (p : Ptrs) (hL : Layout guestC p Γ) (_ho : o ∈ Γ) (_ht : o.ty = t)
    (_hw : NibW k sz Γ m o) (hr : nibRef k Γ m o b) :
    ∀ x ∈ Γ, x.base = b → (guestC.ty x.ty).region = .heap := by
  intro y hy hyb
  obtain ⟨-, x, hx, hxb, r, hr8, hxt⟩ := hr
  have e : y = x := gam_base_eq (gamOK_of_layout hL) hy hx (hyb.trans hxb.symm)
  subst e
  rw [hxt]; exact nib_region hr8

end

/-- **A node-path record entry.** -/
def nibD (t k sz : Nat) (hty : RecTyOK t) (hk : (guestC.ty t).slot k = .prot)
    (hk1 : (guestC.ty t).slot (k + 1) = .prot) (hsz : 8 * (k + 1) + 8 ≤ sz) : RecD where
  ty := t
  wf := NibW k sz
  fp := nibFp k
  ref := nibRef k
  hty := hty
  cells := nib_cells hty hk hk1 hsz
  frame := nib_frame
  mono := nib_mono
  shrink := nib_shrink
  refHeap := nib_refHeap

end InitECandidate.Solver.MemSafe.Hooks

#print axioms InitECandidate.Solver.MemSafe.Hooks.nibD
#print axioms InitECandidate.Solver.MemSafe.Hooks.nibObjD
