import InitECandidate.Solver.MemSafe.Frames.Bundle

/-!
# The release invariant under steps

A *step* from `(Γ, s, p)` to `(Γ', t, p')` is what every summary core provides: the allocator
moves monotonically (`Mono`), `Γ'` extends `Γ` (`Ext`) with new cells only in fresh space
(`NewFresh`), and both sides are laid out.

* `step_obj`: an object of `Γ'` is an old object (same base and type, grown only into fresh
  space: `OldOf`) or entirely fresh.
* `oldOf_of_base`: an object of `Γ'` at the base of an object of `Γ` is that object, grown.
* Old scratch objects cannot grow (`oldOf_scratch`), nor can old frame-memory objects ending
  below `frame_mem_ptr` (`oldOf_fmem`); new scratch objects lie below the old `scratch_ptr`
  (`new_scratch`), new frame-memory objects above the old `frame_mem_ptr` (`new_fmem`).
* `above_old`: an old object survives a release iff its old version does.
* **`markOK_step`**: `MarkOK` is preserved by every step that keeps the stack / memory slots of
  the surviving EV records.
-/

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

/-- `omega` after unfolding object bounds. -/
macro "lo_omega" : tactic => `(tactic| ((try simp only [Obj.hi, Obj.lo] at *) <;> omega))

/-! ## Layout facts -/

theorem lay_obj {C : Cfg} {p : Ptrs} {Γ : Gam} (hL : Layout C p Γ) {o : Obj} (ho : o ∈ Γ) :
    o.lo % 8 = 0 ∧ o.size % 8 = 0 ∧ 0 < o.size ∧ (C.ty o.ty).minSz ≤ o.size ∧
      (C.ty o.ty).region.Live p o.lo o.size := hL.1 o ho

theorem lay_disj {C : Cfg} {p : Ptrs} {Γ : Gam} (hL : Layout C p Γ) {o o' : Obj}
    (ho : o ∈ Γ) (ho' : o' ∈ Γ) (hne : o ≠ o') : o.hi ≤ o'.lo ∨ o'.hi ≤ o.lo := by
  obtain ⟨i, hi, rfl⟩ := List.mem_iff_getElem.mp ho
  obtain ⟨j, hj, rfl⟩ := List.mem_iff_getElem.mp ho'
  have hij : i ≠ j := fun h => hne (by subst h; rfl)
  exact hL.2 i j hi hj hij

/-- Two objects of a laid-out `Γ` with the same base are equal. -/
theorem base_unique {C : Cfg} {p : Ptrs} {Γ : Gam} (hL : Layout C p Γ) {o o' : Obj}
    (ho : o ∈ Γ) (ho' : o' ∈ Γ) (hb : o.base = o'.base) : o = o' := by
  by_contra hne
  have h1 := (lay_obj hL ho).2.2.1
  have h2 := (lay_obj hL ho').2.2.1
  have hl : o.lo = o'.lo := by unfold Obj.lo; rw [hb]
  rcases lay_disj hL ho ho' hne with h | h <;> unfold Obj.hi at h <;> lo_omega

/-- Two objects of a laid-out `Γ` sharing a byte are equal. -/
theorem byte_unique {C : Cfg} {p : Ptrs} {Γ : Gam} (hL : Layout C p Γ) {o o' : Obj}
    (ho : o ∈ Γ) (ho' : o' ∈ Γ) {a : Nat} (h1 : o.lo ≤ a ∧ a < o.hi) (h2 : o'.lo ≤ a ∧ a < o'.hi) :
    o = o' := by
  by_contra hne
  rcases lay_disj hL ho ho' hne with h | h <;> lo_omega

/-- The live bounds of an object, by region. -/
theorem live_of {C : Cfg} {p : Ptrs} {Γ : Gam} (hL : Layout C p Γ) {o : Obj} (ho : o ∈ Γ) :
    ((C.ty o.ty).region = .heap → heapBase ≤ o.lo ∧ o.hi ≤ p.hp) ∧
    ((C.ty o.ty).region = .fmem → heapEnd ≤ o.lo ∧ o.hi ≤ p.fp) ∧
    ((C.ty o.ty).region = .scratch → p.sp ≤ o.lo ∧ o.hi ≤ scratchEnd) := by
  have h := (lay_obj hL ho).2.2.2.2
  unfold Obj.hi
  refine ⟨fun hr => ?_, fun hr => ?_, fun hr => ?_⟩ <;> rw [hr] at h <;> exact h

theorem obj_alloc {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {o : Obj} (ho : o ∈ Γ) {a : Nat} (h1 : o.lo ≤ a) (h2 : a < o.hi) : p.Allocated a := by
  have hv := live_of hL ho
  unfold Ptrs.Ordered at hord
  unfold Ptrs.Allocated
  cases hr : (C.ty o.ty).region with
  | heap => have := hv.1 hr; left; lo_omega
  | fmem => have := hv.2.1 hr; right; left; lo_omega
  | scratch => have := hv.2.2 hr; right; right; lo_omega

theorem obj_hi_lt {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {o : Obj} (ho : o ∈ Γ) : o.hi ≤ scratchEnd := by
  have hv := live_of hL ho
  unfold Ptrs.Ordered at hord
  have he : heapEnd ≤ scratchEnd := by decide
  cases hr : (C.ty o.ty).region with
  | heap => have := hv.1 hr; lo_omega
  | fmem => have := hv.2.1 hr; lo_omega
  | scratch => have := hv.2.2 hr; lo_omega

theorem toNat_ofNat_lt {n : Nat} (h : n < 2 ^ 64) : (BitVec.ofNat 64 n).toNat = n := by
  rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt h]

theorem not_fresh_alloc {p p' : Ptrs} (hord : p.Ordered) (hord' : p'.Ordered) (hm : p.Mono p')
    {a : BitVec 64} (hf : Fresh p p' a) (ha : p.Allocated a.toNat) : False := by
  unfold Fresh at hf
  unfold Ptrs.Allocated at ha
  unfold Ptrs.Ordered at hord hord'
  obtain ⟨m1, m2, m3⟩ := hm
  have : heapBase ≤ heapEnd := by decide
  lo_omega

/-! ## Old and new objects of a step -/

/-- `o'` is the old object `o`, possibly grown into fresh space. -/
def OldOf (p p' : Ptrs) (o o' : Obj) : Prop :=
  o.base = o'.base ∧ o.ty = o'.ty ∧ o.size ≤ o'.size ∧
    ∀ a : BitVec 64, o.hi ≤ a.toNat → a.toNat < o'.hi → Fresh p p' a

theorem oldOf_lo {p p' : Ptrs} {o o' : Obj} (h : OldOf p p' o o') : o.lo = o'.lo := by
  unfold Obj.lo; rw [h.1]

/-- **Old or new.** -/
theorem step_obj {C : Cfg} {Γ Γ' : Gam} {p p' : Ptrs} (hord : p.Ordered) (hord' : p'.Ordered)
    (hL : Layout C p Γ) (hL' : Layout C p' Γ') (hm : p.Mono p') (hext : Ext Γ Γ')
    (hnf : NewFresh Γ Γ' p p') {o' : Obj} (ho' : o' ∈ Γ') :
    (∃ o ∈ Γ, OldOf p p' o o') ∨ ∀ a : BitVec 64, o'.lo ≤ a.toNat → a.toNat < o'.hi → Fresh p p' a := by
  have hpos := (lay_obj hL' ho').2.2.1
  have hlo : o'.lo ≤ o'.base.toNat := Nat.le_refl _
  have hlt : o'.base.toNat < o'.hi := by unfold Obj.hi; lo_omega
  rcases hnf o' ho' o'.base hlo hlt with ⟨o0, ho0, hb0, ht0, -, -⟩ | hf
  · left
    refine ⟨o0, ho0, hb0, ht0, ?_, ?_⟩
    · obtain ⟨o1, ho1, hb1, -, hs1⟩ := hext o0 ho0
      have : o1 = o' := base_unique hL' ho1 ho' (hb1.trans hb0)
      subst this
      exact hs1
    · intro a ha1 ha2
      have hl0 : o0.lo = o'.lo := by unfold Obj.lo; rw [hb0]
      have h0pos := (lay_obj hL ho0).2.2.1
      rcases hnf o' ho' a (by unfold Obj.hi at ha1; lo_omega) ha2 with ⟨o2, ho2, hb2, -, hl2, hh2⟩ | hf
      · have : o2 = o0 := base_unique hL ho2 ho0 (hb2.trans hb0.symm)
        subst this
        lo_omega
      · exact hf
  · right
    intro a ha1 ha2
    rcases hnf o' ho' a ha1 ha2 with ⟨o2, ho2, hb2, -, hl2, hh2⟩ | hf'
    · exfalso
      have hl2' : o2.lo = o'.base.toNat := by unfold Obj.lo; rw [hb2]
      have h2pos := (lay_obj hL ho2).2.2.1
      exact not_fresh_alloc hord hord' hm hf
        (obj_alloc hord hL ho2 (a := o'.base.toNat) (by lo_omega) (by unfold Obj.hi at *; lo_omega))
    · exact hf'

/-- An object of `Γ'` at the base of an object of `Γ` is that object, grown. -/
theorem oldOf_of_base {C : Cfg} {Γ Γ' : Gam} {p p' : Ptrs} (hord : p.Ordered)
    (hord' : p'.Ordered) (hL : Layout C p Γ) (hL' : Layout C p' Γ') (hm : p.Mono p')
    (hext : Ext Γ Γ') (hnf : NewFresh Γ Γ' p p') {o : Obj} (ho : o ∈ Γ) {o' : Obj} (ho' : o' ∈ Γ')
    (hb : o'.base = o.base) : OldOf p p' o o' := by
  rcases step_obj hord hord' hL hL' hm hext hnf ho' with ⟨o0, ho0, h0⟩ | hf
  · have : o0 = o := base_unique hL ho0 ho (h0.1.trans hb)
    subst this
    exact h0
  · exfalso
    have hpos := (lay_obj hL' ho').2.2.1
    have hpos0 := (lay_obj hL ho).2.2.1
    have hlo : o'.lo = o.lo := by unfold Obj.lo; rw [hb]
    exact not_fresh_alloc hord hord' hm (hf o'.base (Nat.le_refl _) (by unfold Obj.hi; lo_omega))
      (obj_alloc hord hL ho (a := o'.base.toNat) (by unfold Obj.lo at hlo; lo_omega)
        (by unfold Obj.hi Obj.lo at *; lo_omega))

/-- The Ext image of an old object. -/
theorem ext_oldOf {C : Cfg} {Γ Γ' : Gam} {p p' : Ptrs} (hord : p.Ordered)
    (hord' : p'.Ordered) (hL : Layout C p Γ) (hL' : Layout C p' Γ') (hm : p.Mono p')
    (hext : Ext Γ Γ') (hnf : NewFresh Γ Γ' p p') {o : Obj} (ho : o ∈ Γ) :
    ∃ o' ∈ Γ', OldOf p p' o o' := by
  obtain ⟨o', ho', hb, -, -⟩ := hext o ho
  exact ⟨o', ho', oldOf_of_base hord hord' hL hL' hm hext hnf ho ho' hb⟩

/-- An old scratch object did not grow. -/
theorem oldOf_scratch {C : Cfg} {Γ Γ' : Gam} {p p' : Ptrs} (hord : p.Ordered)
    (hord' : p'.Ordered) (hL : Layout C p Γ) (hL' : Layout C p' Γ') (hm : p.Mono p')
    {o o' : Obj} (ho : o ∈ Γ) (ho' : o' ∈ Γ') (h : OldOf p p' o o')
    (hr : (C.ty o.ty).region = .scratch) : o'.size = o.size := by
  obtain ⟨hb, ht, hs, hf⟩ := h
  by_contra hne
  have hlt : o.size < o'.size := by lo_omega
  have hv := (live_of hL ho).2.2 hr
  have hr' : (C.ty o'.ty).region = .scratch := by rw [← ht]; exact hr
  have hv' := (live_of hL' ho').2.2 hr'
  have hlo : o.lo = o'.lo := by unfold Obj.lo; rw [hb]
  have hhi : o.hi < 2 ^ 64 := by have := obj_hi_lt hord hL ho; unfold scratchEnd at this; lo_omega
  have := hf (BitVec.ofNat 64 o.hi) (by rw [toNat_ofNat_lt hhi])
    (by rw [toNat_ofNat_lt hhi]; unfold Obj.hi at *; lo_omega)
  rw [Fresh, toNat_ofNat_lt hhi] at this
  unfold Ptrs.Ordered at hord hord'
  obtain ⟨m1, m2, m3⟩ := hm
  unfold Obj.hi at *
  lo_omega

/-- An old frame-memory object ending below the old `frame_mem_ptr` did not grow. -/
theorem oldOf_fmem {C : Cfg} {Γ Γ' : Gam} {p p' : Ptrs} (hord : p.Ordered)
    (hord' : p'.Ordered) (hL : Layout C p Γ) (hL' : Layout C p' Γ') (hm : p.Mono p')
    {o o' : Obj} (ho : o ∈ Γ) (ho' : o' ∈ Γ') (h : OldOf p p' o o')
    (hr : (C.ty o.ty).region = .fmem) (hlt : o.hi < p.fp) : o'.size = o.size := by
  obtain ⟨hb, ht, hs, hf⟩ := h
  by_contra hne
  have hlt' : o.size < o'.size := by lo_omega
  have hv := (live_of hL ho).2.1 hr
  have hr' : (C.ty o'.ty).region = .fmem := by rw [← ht]; exact hr
  have hv' := (live_of hL' ho').2.1 hr'
  have hlo : o.lo = o'.lo := by unfold Obj.lo; rw [hb]
  have hhi : o.hi < 2 ^ 64 := by have := obj_hi_lt hord hL ho; unfold scratchEnd at this; lo_omega
  have := hf (BitVec.ofNat 64 o.hi) (by rw [toNat_ofNat_lt hhi])
    (by rw [toNat_ofNat_lt hhi]; unfold Obj.hi at *; lo_omega)
  rw [Fresh, toNat_ofNat_lt hhi] at this
  unfold Ptrs.Ordered at hord hord'
  obtain ⟨m1, m2, m3⟩ := hm
  unfold Obj.hi at *
  lo_omega

/-- A new scratch object lies below the old `scratch_ptr`. -/
theorem new_scratch {C : Cfg} {Γ' : Gam} {p p' : Ptrs} (hord : p.Ordered) (hord' : p'.Ordered)
    (hL' : Layout C p' Γ') (hm : p.Mono p') {o' : Obj} (ho' : o' ∈ Γ')
    (hf : ∀ a : BitVec 64, o'.lo ≤ a.toNat → a.toNat < o'.hi → Fresh p p' a)
    (hr : (C.ty o'.ty).region = .scratch) : o'.hi ≤ p.sp := by
  have hv' := (live_of hL' ho').2.2 hr
  have hpos := (lay_obj hL' ho').2.2.1
  have hhi : o'.hi - 1 < 2 ^ 64 := by unfold scratchEnd at hv'; lo_omega
  have := hf (BitVec.ofNat 64 (o'.hi - 1)) (by rw [toNat_ofNat_lt hhi]; unfold Obj.hi; lo_omega)
    (by rw [toNat_ofNat_lt hhi]; unfold Obj.hi; lo_omega)
  rw [Fresh, toNat_ofNat_lt hhi] at this
  unfold Ptrs.Ordered at hord hord'
  obtain ⟨m1, m2, m3⟩ := hm
  unfold Obj.hi at *
  lo_omega

/-- A new frame-memory object lies above the old `frame_mem_ptr`. -/
theorem new_fmem {C : Cfg} {Γ' : Gam} {p p' : Ptrs} (hord : p.Ordered) (hord' : p'.Ordered)
    (hL' : Layout C p' Γ') (hm : p.Mono p') {o' : Obj} (ho' : o' ∈ Γ')
    (hf : ∀ a : BitVec 64, o'.lo ≤ a.toNat → a.toNat < o'.hi → Fresh p p' a)
    (hr : (C.ty o'.ty).region = .fmem) : p.fp ≤ o'.lo := by
  have hv' := (live_of hL' ho').2.1 hr
  have hpos := (lay_obj hL' ho').2.2.1
  have hlo : o'.lo < 2 ^ 64 := by
    have := obj_hi_lt hord' hL' ho'; unfold scratchEnd at this; unfold Obj.hi at this; lo_omega
  have := hf (BitVec.ofNat 64 o'.lo) (by rw [toNat_ofNat_lt hlo])
    (by rw [toNat_ofNat_lt hlo]; unfold Obj.hi; lo_omega)
  rw [Fresh, toNat_ofNat_lt hlo] at this
  unfold Ptrs.Ordered at hord hord'
  obtain ⟨m1, m2, m3⟩ := hm
  unfold Obj.hi at *
  lo_omega

/-- An old frame-memory object ending where an object of `Γ'` starts did not grow. -/
theorem oldOf_fmem_adj {C : Cfg} {Γ Γ' : Gam} {p p' : Ptrs} (hL : Layout C p Γ)
    (hL' : Layout C p' Γ') {o o' : Obj} (ho : o ∈ Γ) (ho' : o' ∈ Γ') (h : OldOf p p' o o')
    {y : Obj} (hy : y ∈ Γ') (hyl : y.lo = o.hi) : o'.size = o.size := by
  have hs := h.2.2.1
  have hlo := oldOf_lo h
  have hpos := (lay_obj hL ho).2.2.1
  have hypos := (lay_obj hL' hy).2.2.1
  by_contra hne
  have := byte_unique hL' ho' hy (a := o.hi) (by unfold Obj.hi at *; lo_omega) (by lo_omega)
  subst this
  lo_omega

/-- Old frame-memory objects ending below the frame mark do not grow, when the mark is below the
old `frame_mem_ptr` or an object of `Γ'` starts at the mark. -/
theorem fmem_nogrow {C : Cfg} {Γ Γ' : Gam} {p p' : Ptrs} (hord : p.Ordered)
    (hord' : p'.Ordered) (hL : Layout C p Γ) (hL' : Layout C p' Γ') (hm : p.Mono p') {mm : Nat}
    (hmf : mm ≤ p.fp) (hfm : mm < p.fp ∨ ∃ y ∈ Γ', y.lo = mm) {o o' : Obj} (ho : o ∈ Γ)
    (ho' : o' ∈ Γ') (h : OldOf p p' o o') (hr : (C.ty o.ty).region = .fmem) (hle : o.hi ≤ mm) :
    o'.size = o.size := by
  by_cases hlt : o.hi < p.fp
  · exact oldOf_fmem hord hord' hL hL' hm ho ho' h hr hlt
  · rcases hfm with h1 | ⟨y, hy, hyl⟩
    · exact absurd (by lo_omega) hlt
    · exact oldOf_fmem_adj hL hL' ho ho' h hy (by lo_omega)

/-- An old object survives a release iff its old version does. -/
theorem above_old {C : Cfg} {Γ : Gam} {p p' : Ptrs} (hL : Layout C p Γ)
    {o o' : Obj} (ho : o ∈ Γ) (h : OldOf p p' o o') {mk mm : Nat}
    (hng : (C.ty o.ty).region = .fmem → o.hi ≤ mm → o'.size = o.size) :
    Above C mk mm o' ↔ Above C mk mm o := by
  have hlo := oldOf_lo h
  unfold Above
  rw [← h.2.1]
  cases hr : (C.ty o.ty).region with
  | heap => exact Iff.rfl
  | scratch => simp only; rw [hlo]
  | fmem =>
      simp only
      have hs := h.2.2.1
      constructor
      · intro h1; unfold Obj.hi at *; lo_omega
      · intro h1
        have := hng hr h1
        unfold Obj.hi at *; lo_omega

/-! ## `MarkOK` under a step -/

theorem ptrs_some {s : State σ} {p q : Ptrs} (h : ptrsOf s = some p) (h' : ptrsOf s = some q) :
    q = p := Option.some.inj (h'.symm.trans h)

/-- **The release invariant under a step.** `hfm`: the frame mark is below the old
`frame_mem_ptr`, or an object of `Γ'` starts at it (so the objects ending at it cannot grow). -/
theorem markOK_step {C : Cfg} {tEV : Nat} {Γ Γ' : Gam} {s t : State σ} {p p' : Ptrs} {mk mm : Nat}
    (hp : ptrsOf s = some p) (hp' : ptrsOf t = some p') (hord : p.Ordered) (hord' : p'.Ordered)
    (hL : Layout C p Γ) (hL' : Layout C p' Γ') (hmo : p.Mono p') (hext : Ext Γ Γ')
    (hnf : NewFresh Γ Γ' p p') (hfm : mm < p.fp ∨ ∃ y ∈ Γ', y.lo = mm)
    (hev : ∀ e ∈ Γ, e.ty = tEV → Above C mk mm e →
      fld t.memory e.base 8 = fld s.memory e.base 8 ∧ fld t.memory e.base 24 = fld s.memory e.base 24)
    (h : MarkOK C tEV Γ s mk mm) : MarkOK C tEV Γ' t mk mm := by
  obtain ⟨hsp, hmf⟩ := h.ptrs p hp
  have ng : ∀ o ∈ Γ, ∀ o' ∈ Γ', OldOf p p' o o' →
      (C.ty o.ty).region = .fmem → o.hi ≤ mm → o'.size = o.size :=
    fun o ho o' ho' hh hr hle => fmem_nogrow hord hord' hL hL' hmo hmf hfm ho ho' hh hr hle
  have hmo' := hmo
  obtain ⟨m1, m2, m3⟩ := hmo
  refine ⟨h.rg, fun q hq => ?_, h.mkB, h.mmB, fun o' ho' => ?_, fun e' he' het hab => ?_,
    fun o' ho' hab x' hx' hxt hxo => ?_⟩
  · obtain rfl := ptrs_some hp' hq
    exact ⟨by lo_omega, by lo_omega⟩
  · rcases step_obj hord hord' hL hL' hmo' hext hnf ho' with ⟨o, ho, hold⟩ | hnew
    · have hlo := oldOf_lo hold
      have ht := hold.2.1
      refine ⟨fun hr => ?_, fun hr => ?_⟩
      · rw [← ht] at hr
        have := oldOf_scratch hord hord' hL hL' hmo' ho ho' hold hr
        have := (h.split o ho).1 hr
        lo_omega
      · rw [← ht] at hr
        rcases (h.split o ho).2 hr with h1 | h1
        · have := ng o ho o' ho' hold hr h1
          left; lo_omega
        · right; lo_omega
    · refine ⟨fun hr => Or.inl ?_, fun hr => Or.inr ?_⟩
      · have := new_scratch hord hord' hL' hmo' ho' hnew hr; lo_omega
      · have := new_fmem hord hord' hL' hmo' ho' hnew hr; lo_omega
  · rcases step_obj hord hord' hL hL' hmo' hext hnf he' with ⟨e, he, hold⟩ | hnew
    · have hab0 := (above_old hL he hold (ng e he e' he' hold)).mp hab
      have het0 : e.ty = tEV := hold.2.1.trans het
      obtain ⟨⟨x, hx, hxb, hxa⟩, ⟨y, hy, hyb, hya⟩⟩ := h.evDeps e he het0 hab0
      obtain ⟨k8, k24⟩ := hev e he het0 hab0
      rw [← hold.1, k8, k24]
      obtain ⟨x', hx', hxo⟩ := ext_oldOf hord hord' hL hL' hmo' hext hnf hx
      obtain ⟨y', hy', hyo⟩ := ext_oldOf hord hord' hL hL' hmo' hext hnf hy
      exact ⟨⟨x', hx', hxo.1.symm.trans hxb, (above_old hL hx hxo (ng x hx x' hx' hxo)).mpr hxa⟩,
        ⟨y', hy', hyo.1.symm.trans hyb, (above_old hL hy hyo (ng y hy y' hy' hyo)).mpr hya⟩⟩
    · exfalso
      have hr : (C.ty e'.ty).region = .scratch := by rw [het]; exact h.rg.1
      have := new_scratch hord hord' hL' hmo' he' hnew hr
      have hpos := (lay_obj hL' he').2.2.1
      unfold Above at hab
      rw [hr] at hab
      simp only at hab
      lo_omega
  · have hxr : (C.ty x'.ty).region = .scratch := h.rg.2 _ hxt
    have hxv := (live_of hL' hx').2.2 hxr
    have hxpos := (lay_obj hL' hx').2.2.1
    have hO := hord
    have hO' := hord'
    unfold Ptrs.Ordered at hO hO'
    cases hor : (C.ty o'.ty).region with
    | heap =>
        exfalso
        have := (live_of hL' ho').1 hor
        have hpos := (lay_obj hL' ho').2.2.1
        lo_omega
    | fmem =>
        exfalso
        have := (live_of hL' ho').2.1 hor
        have hpos := (lay_obj hL' ho').2.2.1
        lo_omega
    | scratch =>
        have hmk : mk ≤ o'.lo := by unfold Above at hab; rw [hor] at hab; exact hab
        rcases step_obj hord hord' hL hL' hmo' hext hnf ho' with ⟨o, ho, hold⟩ | hnew
        · have hlo := oldOf_lo hold
          have hab0 : Above C mk mm o := by
            unfold Above; rw [hold.2.1, hor]; simp only; lo_omega
          rcases step_obj hord hord' hL hL' hmo' hext hnf hx' with ⟨x, hx, hxold⟩ | hxnew
          · have hxr0 : (C.ty x.ty).region = .scratch := by rw [hxold.2.1]; exact hxr
            have hsz := oldOf_scratch hord hord' hL hL' hmo' hx hx' hxold hxr0
            have hxlo := oldOf_lo hxold
            have hxhi : x.hi = o.lo := by lo_omega
            have := h.adj o ho hab0 x hx (hxold.2.1 ▸ hxt) hxhi
            exact (above_old hL hx hxold (ng x hx x' hx' hxold)).mpr this
          · exfalso
            have := new_scratch hord hord' hL' hmo' hx' hxnew hxr
            lo_omega
        · exfalso
          have := new_scratch hord hord' hL' hmo' ho' hnew hor
          have hpos := (lay_obj hL' ho').2.2.1
          lo_omega

/-- `FrameAbove` under a step (the frame's records are old objects). -/
theorem frameAbove_step {C : Cfg} {tEV tCK : Nat} {Γ Γ' : Gam} {p p' : Ptrs} {mk mm : Nat}
    (hord : p.Ordered) (hord' : p'.Ordered) (hL : Layout C p Γ) (hL' : Layout C p' Γ')
    (hmo : p.Mono p') (hext : Ext Γ Γ') (hnf : NewFresh Γ Γ' p p') (hmf : mm ≤ p.fp)
    (hfm : mm < p.fp ∨ ∃ y ∈ Γ', y.lo = mm)
    {f : Frame} (hE : ∃ o ∈ Γ, o.base = f.1 ∧ o.ty = tEV) (hC : ∃ o ∈ Γ, o.base = f.2 ∧ o.ty = tCK)
    (h : FrameAbove C tEV tCK Γ mk mm f) : FrameAbove C tEV tCK Γ' mk mm f := by
  intro o' ho' hc
  have key : ∀ o ∈ Γ, o'.base = o.base → Above C mk mm o → Above C mk mm o' := fun o ho hb ha =>
    let hold := oldOf_of_base hord hord' hL hL' hmo hext hnf ho ho' hb
    (above_old hL ho hold (fmem_nogrow hord hord' hL hL' hmo hmf hfm ho ho' hold)).mpr ha
  rcases hc with ⟨hb, ht⟩ | ⟨hb, ht⟩
  · obtain ⟨o, ho, hob, hot⟩ := hE
    have hold := oldOf_of_base hord hord' hL hL' hmo hext hnf ho ho' (hb.trans hob.symm)
    exact key o ho (hb.trans hob.symm) (h o ho (Or.inl ⟨hob, hold.2.1.trans ht⟩))
  · obtain ⟨o, ho, hob, hot⟩ := hC
    have hold := oldOf_of_base hord hord' hL hL' hmo hext hnf ho ho' (hb.trans hob.symm)
    exact key o ho (hb.trans hob.symm) (h o ho (Or.inr ⟨hob, hold.2.1.trans ht⟩))

/-- EV records that do not survive, under a step. -/
theorem notAbove_step {C : Cfg} {tEV : Nat} {Γ Γ' : Gam} {p p' : Ptrs} {mk mm : Nat}
    (hord : p.Ordered) (hord' : p'.Ordered) (hL : Layout C p Γ) (hL' : Layout C p' Γ')
    (hmo : p.Mono p') (hext : Ext Γ Γ') (hnf : NewFresh Γ Γ' p p') (hmf : mm ≤ p.fp)
    (hfm : mm < p.fp ∨ ∃ y ∈ Γ', y.lo = mm)
    {b : BitVec 64} (hE : ∃ o ∈ Γ, o.base = b ∧ o.ty = tEV)
    (h : ∀ o ∈ Γ, o.base = b → o.ty = tEV → ¬ Above C mk mm o) :
    ∀ o' ∈ Γ', o'.base = b → o'.ty = tEV → ¬ Above C mk mm o' := by
  intro o' ho' hb ht ha
  obtain ⟨o, ho, hob, hot⟩ := hE
  have hold := oldOf_of_base hord hord' hL hL' hmo hext hnf ho ho' (hb.trans hob.symm)
  exact h o ho hob hot
    ((above_old hL ho hold (fmem_nogrow hord hord' hL hL' hmo hmf hfm ho ho' hold)).mp ha)

/-- `RetOK` under `Ext` (the buffer object persists, possibly grown). -/
theorem retOK_ext {C : Cfg} {Γ Γ' : Gam} {m m' : Mem} {e : BitVec 64} (hext : Ext Γ Γ')
    (h144 : fld m' e evRetd = fld m e evRetd) (h216 : fld m' e evRetdCap = fld m e evRetdCap)
    (h : RetOK C Γ m e) : RetOK C Γ' m' e := by
  unfold RetOK at *
  rw [h144, h216]
  rcases h with h | ⟨o, ho, hb, hs, hr, hsz⟩
  · exact Or.inl h
  · obtain ⟨o', ho', hb', ht', hs'⟩ := hext o ho
    exact Or.inr ⟨o', ho', hb'.trans hb, by rw [ht']; exact hs, by rw [ht']; exact hr,
      le_trans hsz hs'⟩

end InitECandidate.Solver.MemSafe.Frames
