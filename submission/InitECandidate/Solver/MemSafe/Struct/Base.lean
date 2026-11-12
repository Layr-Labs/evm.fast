import InitECandidate.Solver.MemSafe.Summary
import InitECandidate.Solver.MemSafe.HoareX

/-!
# Structure summaries: re-establishing `G` (M4 base)

General lemmas for hand-proved mutators and constructors that change `Γ`:

* `HooksMono C H`: hooks survive an extension `Γ → Γ'` (`Ext`, new objects allowed). The frozen
  interface has no such law, but every constructor (stack/memory growth, `lst_push`, `htab_new`)
  needs it for the hooks of *other* objects. Hooks phrased as "there is an object of `Γ` with
  base `b`, type `t` and size `≥ n`" satisfy it.
* `fits_ext`, `layout_mono`, `layout_snoc`, `layout_set`: `Fits` and `Layout` under extension,
  allocator moves, a new fresh object, an object grown in place.
* `not_inObj_fresh`: freshly allocated cells lie outside every object of `Γ`.
* **`G_of`**: the master lemma. `G C H Γ' t` from `G C H Γ s`, a layout of `Γ'`, `Ext Γ Γ'`, a
  modified set `D`, and per object of `Γ'`: fields that changed (or are new) fit, tags, and the
  hook (either untouched by `D`, or re-established).
-/

namespace InitECandidate.Solver.MemSafe.Struct
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe

variable {σ : Type}

/-! ## Hook monotonicity -/

-- `HooksMono C H` now lives in `Summary.lean` (interface rev. 5); this namespace sees it as
-- `HooksMono`.

/-! ## `Fits`, `Ext` -/

theorem fits_ext {Γ Γ' : Gam} (hx : Ext Γ Γ') {k : FK} {v : BitVec 64} (h : Fits Γ k v) :
    Fits Γ' k v := by
  cases k with
  | scalar => trivial
  | prot => trivial
  | bnd => exact h
  | ptr t =>
      obtain ⟨o, ho, hb, ht⟩ := h
      obtain ⟨o', ho', hb', ht', -⟩ := hx o ho
      exact ⟨o', ho', hb'.trans hb, ht'.trans ht⟩
  | nptr t =>
      rcases h with h | ⟨o, ho, hb, ht⟩
      · exact Or.inl h
      · obtain ⟨o', ho', hb', ht', -⟩ := hx o ho
        exact Or.inr ⟨o', ho', hb'.trans hb, ht'.trans ht⟩
  | uptr ts =>
      rcases h with h | ⟨o, ho, hb, ht⟩
      · exact Or.inl h
      · obtain ⟨o', ho', hb', ht', -⟩ := hx o ho
        exact Or.inr ⟨o', ho', hb'.trans hb, by rw [ht']; exact ht⟩

theorem ext_refl (Γ : Gam) : Ext Γ Γ := fun o ho => ⟨o, ho, rfl, rfl, le_refl _⟩

theorem ext_trans {Γ Γ' Γ'' : Gam} (h : Ext Γ Γ') (h' : Ext Γ' Γ'') : Ext Γ Γ'' := by
  intro o ho
  obtain ⟨o', ho', hb, ht, hs⟩ := h o ho
  obtain ⟨o'', ho'', hb', ht', hs'⟩ := h' o' ho'
  exact ⟨o'', ho'', hb'.trans hb, ht'.trans ht, le_trans hs hs'⟩

theorem ext_snoc (Γ : Gam) (o : Obj) : Ext Γ (Γ ++ [o]) :=
  fun x hx => ⟨x, List.mem_append_left _ hx, rfl, rfl, le_refl _⟩

/-- Growing object `i` in place (same base and type, not smaller) is an extension. -/
theorem ext_set {Γ : Gam} {i : Nat} (hi : i < Γ.length) {o' : Obj} (hb : o'.base = Γ[i].base)
    (ht : o'.ty = Γ[i].ty) (hs : Γ[i].size ≤ o'.size) : Ext Γ (Γ.set i o') := by
  intro o ho
  obtain ⟨j, hj, rfl⟩ := List.mem_iff_getElem.mp ho
  by_cases hij : j = i
  · subst hij
    refine ⟨o', ?_, hb, ht, hs⟩
    exact List.mem_iff_getElem.mpr ⟨j, by simp [hj], by simp⟩
  · refine ⟨Γ[j], ?_, rfl, rfl, le_refl _⟩
    exact List.mem_iff_getElem.mpr ⟨j, by simp [hj], by simp [List.getElem_set, Ne.symm hij]⟩

/-! ## Allocator moves -/

theorem mono_refl (p : Ptrs) : p.Mono p := ⟨le_refl _, le_refl _, le_refl _⟩

theorem mono_trans {p p' p'' : Ptrs} (h : p.Mono p') (h' : p'.Mono p'') : p.Mono p'' :=
  ⟨le_trans h.1 h'.1, le_trans h.2.1 h'.2.1, le_trans h'.2.2 h.2.2⟩

theorem live_mono {p p' : Ptrs} (hm : p.Mono p') {r : Region} {b n : Nat} (h : r.Live p b n) :
    r.Live p' b n := by
  obtain ⟨h1, h2, h3⟩ := hm
  cases r <;> simp only [Region.Live] at h ⊢ <;> omega

theorem layout_mono {C : Cfg} {p p' : Ptrs} {Γ : Gam} (hm : p.Mono p') (h : Layout C p Γ) :
    Layout C p' Γ := by
  refine ⟨fun o ho => ?_, h.2⟩
  obtain ⟨a1, a2, a3, a4, a5⟩ := h.1 o ho
  exact ⟨a1, a2, a3, a4, live_mono hm a5⟩

theorem fresh_mono {p p' p'' : Ptrs} (h1 : p.Mono p') (h2 : p'.Mono p'') {a : BitVec 64}
    (h : Fresh p p' a) : Fresh p p'' a := by
  obtain ⟨m1, m2, m3⟩ := h2
  unfold Fresh at *
  omega

theorem fresh_mono_l {p p' p'' : Ptrs} (h1 : p.Mono p') (h2 : p'.Mono p'') {a : BitVec 64}
    (h : Fresh p' p'' a) : Fresh p p'' a := by
  obtain ⟨m1, m2, m3⟩ := h1
  unfold Fresh at *
  omega

/-! ## Objects of a region, fresh cells -/

/-- Bounds of a laid-out object, by region. -/
theorem obj_bounds {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {o : Obj} (ho : o ∈ Γ) :
    heapBase ≤ o.lo ∧ o.hi ≤ scratchEnd ∧
      ((C.ty o.ty).region = .heap → o.hi ≤ p.hp) ∧
      ((C.ty o.ty).region = .fmem → heapEnd ≤ o.lo ∧ o.hi ≤ p.fp) ∧
      ((C.ty o.ty).region = .scratch → p.sp ≤ o.lo) := by
  have h5 := (hL.1 o ho).2.2.2.2
  obtain ⟨b1, b2, b3, b4, b5, -, -, -⟩ := hord
  have key : ∀ r : Region, r.Live p o.lo o.size → heapBase ≤ o.lo ∧ o.hi ≤ scratchEnd ∧
      (r = .heap → o.hi ≤ p.hp) ∧ (r = .fmem → heapEnd ≤ o.lo ∧ o.hi ≤ p.fp) ∧
      (r = .scratch → p.sp ≤ o.lo) := by
    intro r hr
    unfold Obj.hi Obj.lo at *
    unfold heapBase heapEnd scratchEnd at *
    cases r with
    | heap =>
        simp only [Region.Live, heapBase] at hr
        refine ⟨?_, ?_, ?_, ?_, ?_⟩
        · omega
        · omega
        · intro _; omega
        · intro h; cases h
        · intro h; cases h
    | fmem =>
        simp only [Region.Live, heapEnd] at hr
        refine ⟨?_, ?_, ?_, ?_, ?_⟩
        · omega
        · omega
        · intro h; cases h
        · intro _; omega
        · intro h; cases h
    | scratch =>
        simp only [Region.Live, scratchEnd] at hr
        refine ⟨?_, ?_, ?_, ?_, ?_⟩
        · omega
        · omega
        · intro h; cases h
        · intro h; cases h
        · intro _; omega
  exact key _ h5

/-- Fresh cells lie outside every object. -/
theorem not_inObj_fresh {C : Cfg} {p p' : Ptrs} {Γ : Gam} (hord : p.Ordered) (hord' : p'.Ordered)
    (hm : p.Mono p') (hL : Layout C p Γ) {a : BitVec 64} (hf : Fresh p p' a) :
    ¬ InObj Γ a.toNat := by
  rintro ⟨o, ho, h1, h2⟩
  obtain ⟨c1, c2, c3, c4, c5⟩ := obj_bounds hord hL ho
  obtain ⟨b1, b2, b3, b4, b5, -, -, -⟩ := hord
  obtain ⟨d1, d2, d3, d4, d5, -, -, -⟩ := hord'
  obtain ⟨m1, m2, m3⟩ := hm
  unfold Fresh at hf
  unfold heapBase heapEnd scratchEnd at *
  cases hr : (C.ty o.ty).region with
  | heap => have := c3 hr; omega
  | fmem => have := c4 hr; omega
  | scratch => have := c5 hr; omega

/-- A fresh range `[b, b+n)` (each byte fresh) is disjoint from every object. -/
theorem fresh_range_disj {C : Cfg} {p p' : Ptrs} {Γ : Gam} (hord : p.Ordered)
    (hord' : p'.Ordered) (hm : p.Mono p') (hL : Layout C p Γ) {o : Obj} (ho : o ∈ Γ)
    {b n : Nat} (hn : 0 < n) (hbn : b + n ≤ scratchEnd)
    (hfr : ∀ a : BitVec 64, b ≤ a.toNat → a.toNat < b + n → Fresh p p' a) :
    o.hi ≤ b ∨ b + n ≤ o.lo := by
  by_contra hc
  simp only [not_or, not_le] at hc
  have hsz := (hL.1 o ho).2.2.1
  have hob := (obj_bounds hord hL ho).2.1
  unfold Obj.hi Obj.lo at *
  unfold scratchEnd at *
  have hlo : (BitVec.ofNat 64 (max b o.base.toNat)).toNat = max b o.base.toNat := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  have hf := hfr (BitVec.ofNat 64 (max b o.base.toNat)) (by rw [hlo]; omega) (by rw [hlo]; omega)
  refine not_inObj_fresh hord hord' hm hL hf ⟨o, ho, ?_, ?_⟩ <;>
    simp only [Obj.hi, Obj.lo] <;> rw [hlo] <;> omega

/-! ## Layout of an extension -/

/-- Two objects are disjoint. -/
def Disj (o o' : Obj) : Prop := o.hi ≤ o'.lo ∨ o'.hi ≤ o.lo

/-- The per-object layout conditions. -/
def ObjOK (C : Cfg) (p : Ptrs) (o : Obj) : Prop :=
  o.lo % 8 = 0 ∧ o.size % 8 = 0 ∧ 0 < o.size ∧ (C.ty o.ty).minSz ≤ o.size ∧
    (C.ty o.ty).region.Live p o.lo o.size

theorem layout_snoc {C : Cfg} {p : Ptrs} {Γ : Gam} (hL : Layout C p Γ) {o : Obj}
    (hok : ObjOK C p o) (hd : ∀ x ∈ Γ, Disj x o) : Layout C p (Γ ++ [o]) := by
  refine ⟨fun x hx => ?_, fun i j hi hj hij => ?_⟩
  · rcases List.mem_append.mp hx with hx | hx
    · exact hL.1 x hx
    · simp only [List.mem_singleton] at hx
      subst hx
      exact hok
  · simp only [List.length_append, List.length_singleton] at hi hj
    by_cases hi' : i < Γ.length
    · by_cases hj' : j < Γ.length
      · rw [List.getElem_append_left hi', List.getElem_append_left hj']
        exact hL.2 i j hi' hj' hij
      · have hjj : j = Γ.length := by omega
        subst hjj
        rw [List.getElem_append_left hi', List.getElem_append_right (le_refl _)]
        simp only [Nat.sub_self, List.getElem_singleton]
        exact hd _ (List.getElem_mem hi')
    · have hii : i = Γ.length := by omega
      subst hii
      have hj' : j < Γ.length := by omega
      rw [List.getElem_append_left hj', List.getElem_append_right (le_refl _)]
      simp only [Nat.sub_self, List.getElem_singleton]
      exact (hd _ (List.getElem_mem hj')).symm

theorem layout_set {C : Cfg} {p : Ptrs} {Γ : Gam} (hL : Layout C p Γ) {i : Nat}
    (hi : i < Γ.length) {o : Obj} (hok : ObjOK C p o)
    (hd : ∀ j (hj : j < Γ.length), j ≠ i → Disj Γ[j] o) : Layout C p (Γ.set i o) := by
  refine ⟨fun x hx => ?_, fun a b ha hb hab => ?_⟩
  · obtain ⟨j, hj, rfl⟩ := List.mem_iff_getElem.mp hx
    simp only [List.length_set] at hj
    rw [List.getElem_set]
    split
    · exact hok
    · exact hL.1 _ (List.getElem_mem hj)
  · simp only [List.length_set] at ha hb
    rw [List.getElem_set, List.getElem_set]
    split <;> split
    · omega
    · rename_i h1 h2
      subst h1
      exact (hd b hb (Ne.symm h2)).symm
    · rename_i h1 h2
      subst h2
      exact hd a ha (fun h => h1 h.symm)
    · exact hL.2 a b ha hb hab

/-! ## Cells -/

theorem cell_base (o : Obj) (k : Nat) : o.cell k = o.base + BitVec.ofNat 64 (8 * k) := rfl

/-- A cell of a laid-out object is a slot cell. -/
theorem slot_of_in {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {o : Obj} (ho : o ∈ Γ) {a : BitVec 64} (ha : a.toNat % 8 = 0) (h1 : o.lo ≤ a.toNat)
    (h2 : a.toNat < o.hi) : ∃ k, o.HasSlot k ∧ a = o.cell k := by
  have h8 := (hL.1 o ho).1
  have hs8 := (hL.1 o ho).2.1
  have hb := (obj_bounds hord hL ho).2.1
  refine ⟨(a.toNat - o.lo) / 8, ?_, ?_⟩
  · unfold Obj.HasSlot
    unfold Obj.hi Obj.lo at *
    omega
  · apply BitVec.eq_of_toNat_eq
    unfold Obj.cell
    rw [BitVec.toNat_add, BitVec.toNat_ofNat]
    unfold Obj.hi Obj.lo at *
    unfold scratchEnd at hb
    rw [Nat.mod_eq_of_lt (by omega : 8 * ((a.toNat - o.base.toNat) / 8) < 2 ^ 64)]
    rw [Nat.mod_eq_of_lt (by omega)]
    omega

/-! ## The master lemma -/

/-- **Re-establishing `G`** for a new typing `Γ'` (an extension of `Γ`) after a memory change
inside `D`. Each slot of each `Γ'` object is either an unchanged slot of the old object with the
same base and type, or fits its kind in `t`; tags likewise; each hook is either untouched by
`D` (it then carries over by `HooksMono` and `HooksLawful`) or re-established. -/
theorem G_of {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hM : HooksMono C H) {Γ Γ' : Gam}
    {s t : State σ} (hG : G C H Γ s) {p' : Ptrs} (hp' : ptrsOf t = some p')
    (hord' : p'.Ordered) (hL' : Layout C p' Γ') (hext : Ext Γ Γ')
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be)
    (hpg : ∀ g ∈ C.PG, t.globals.lookup g = s.globals.lookup g)
    (hgt : ∀ g k, C.GT.lookup g = some k → gword t g = gword s g)
    {D : BitVec 64 → Prop} (hmod : ModifiesOnly D s.memory t.memory)
    (hF : ∀ o' ∈ Γ', ∀ k, o'.HasSlot k →
      (∃ o ∈ Γ, o.base = o'.base ∧ o.ty = o'.ty ∧ o.HasSlot k ∧ ¬ D (o'.cell k)) ∨
        Fits Γ' ((C.ty o'.ty).slot k) (rd t.memory (o'.cell k)))
    (hT : ∀ o' ∈ Γ', ∀ tag, C.tags.lookup o'.ty = some tag →
      (∃ o ∈ Γ, o.base = o'.base ∧ o.ty = o'.ty ∧ ¬ D o'.base) ∨
        rd t.memory o'.base = BitVec.ofNat 64 tag)
    (hW : ∀ o' ∈ Γ', (∃ o ∈ Γ, o.base = o'.base ∧ o.ty = o'.ty ∧ ∀ a, H.fp Γ' s o' a → ¬ D a) ∨
      H.wf Γ' t o') : G C H Γ' t := by
  obtain ⟨p, hps, hord, hL, hFs, hTs, hGl, hWs⟩ := hG
  refine ⟨p', hp', hord', hL', ?_, ?_, ?_, ?_⟩
  · intro o' ho' k hk
    rcases hF o' ho' k hk with ⟨o, ho, hb, ht, hok, hnd⟩ | h
    · have e : rd t.memory (o'.cell k) = rd s.memory (o.cell k) := by
        rw [rd, rd, hmod _ hnd]; unfold Obj.cell; rw [hb]
      rw [e, ← ht]
      exact fits_ext hext (hFs o ho k hok)
    · exact h
  · intro o' ho' tag htag
    rcases hT o' ho' tag htag with ⟨o, ho, hb, ht, hnd⟩ | h
    · rw [rd, hmod _ hnd, ← hb]
      exact hTs o ho tag (ht ▸ htag)
    · exact h
  · intro g k hk
    obtain ⟨v, hv, hf⟩ := hGl g k hk
    exact ⟨v, (hgt g k hk).trans hv, fits_ext hext hf⟩
  · intro o' ho'
    rcases hW o' ho' with ⟨o, ho, hb, ht, hnd⟩ | h
    · have h1 := hM Γ Γ' s p' o o' hL' hext ho ho' hb.symm ht.symm (hWs o ho)
      exact (hH.2 Γ' s t o' h1 hd hbe (fun a ha => hmod a (hnd a ha)) hpg).1
    · exact h

/-! ## Footprint bookkeeping -/

/-- An object of `Γ'` either has an old counterpart, or lies wholly in fresh space. -/
theorem newFresh_of {Γ Γ' : Gam} {p p' : Ptrs}
    (h : ∀ o' ∈ Γ', (∃ o ∈ Γ, o.base = o'.base ∧ o.ty = o'.ty ∧ o'.size ≤ o.size) ∨
      ∀ a : BitVec 64, o'.lo ≤ a.toNat → a.toNat < o'.hi → Fresh p p' a) :
    NewFresh Γ Γ' p p' := by
  intro o' ho' a h1 h2
  rcases h o' ho' with ⟨o, ho, hb, ht, hs⟩ | hf
  · left
    refine ⟨o, ho, hb, ht, ?_, ?_⟩ <;> unfold Obj.lo Obj.hi at * <;> rw [hb] <;> omega
  · exact Or.inr (hf a h1 h2)

theorem newFresh_refl (Γ : Gam) (p p' : Ptrs) : NewFresh Γ Γ p p' :=
  newFresh_of fun o ho => Or.inl ⟨o, ho, rfl, rfl, le_refl _⟩

end InitECandidate.Solver.MemSafe.Struct
