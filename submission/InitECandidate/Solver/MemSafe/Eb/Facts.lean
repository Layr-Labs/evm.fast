import InitECandidate.Solver.MemSafe.Eb.PlKeep

/-!
# `execute_block`: persistent facts

`Fct`: an object of `Γ`, a fresh buffer (since the entry), a writable buffer, a global that holds the base of an object, a value
of a cell of a non-state object, and a state-independent proposition. `holds_step`: all of them survive a step of the typed heap; the
memory facts also need the step to leave their cells alone.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

inductive Fct where
  | obj (b : BitVec 64) (ty n : Nat)
  | fbuf (w : BitVec 64) (n : Nat)
  | bufok (w : BitVec 64) (n : Nat)
  | gobj (g : MlS) (w : BitVec 64) (ty : Nat)
  | prop (P : Prop)
  | cellv (a v : BitVec 64)
  | pcv (a v : BitVec 64)
  | gval (g : MlS) (w : BitVec 64)
  | sla (A : BitVec 64) (n : Nat)
  | inval (c : BitVec 64) (n : Nat)
  | ent (A : BitVec 64) (j : Nat)

/-- The cells a fact reads from memory. -/
def Fct.reads : Fct → BitVec 64 → Prop
  | .cellv a _, x => x = a
  | .pcv a _, x => x = a
  | .ent A j, x => x = A + BitVec.ofNat 64 (16 * j) ∨ x = A + BitVec.ofNat 64 (16 * j + 8)
  | .sla A n, x => ∃ j, j < n ∧ (x = A + BitVec.ofNat 64 (16 * j) ∨ x = A + BitVec.ofNat 64 (16 * j + 8))
  | _, _ => False

def Fct.holds (p0 : Ptrs) (Γ : Gam) (p : Ptrs) (u : State σ) : Fct → Prop
  | .obj b ty n => ∃ o ∈ Γ, o.base = b ∧ o.ty = ty ∧ n ≤ o.size
  | .fbuf w n => FreshBuf Γ (Exb.gp0 p0) (Exb.gp0 p) w n
  | .bufok w n => BufOK guestC Γ (Exb.gp0 p) w.toNat n
  | .gobj g w ty => gword u g = some w ∧ ∃ o ∈ Γ, o.base = w ∧ o.ty = ty
  | .prop P => P
  | .cellv a v => rd u.memory a = v ∧ BCell guestC Γ a
  | .pcv a v => rd u.memory a = v ∧ PlCell Γ a
  | .gval g w => gword u g = some w
  | .inval c n => ∃ x ∈ Γ, x.ty = tVAL ∧ x.lo ≤ c.toNat ∧ c.toNat + n ≤ x.hi
  | .sla A n => ∀ j, j < n → BCell guestC Γ (A + BitVec.ofNat 64 (16 * j)) ∧ BCell guestC Γ (A + BitVec.ofNat 64 (16 * j + 8)) ∧
      Hooks.VInR tVAL Γ (rd u.memory (A + BitVec.ofNat 64 (16 * j))) (rd u.memory (A + BitVec.ofNat 64 (16 * j + 8)))
  | .ent A j => BCell guestC Γ (A + BitVec.ofNat 64 (16 * j)) ∧ BCell guestC Γ (A + BitVec.ofNat 64 (16 * j + 8)) ∧
      Hooks.VInR tVAL Γ (rd u.memory (A + BitVec.ofNat 64 (16 * j))) (rd u.memory (A + BitVec.ofNat 64 (16 * j + 8)))

/-- A set of facts. -/
abbrev FS := Fct → Prop

def HoldsAll (p0 : Ptrs) (Γ : Gam) (p : Ptrs) (u : State σ) (S : FS) : Prop :=
  ∀ f, S f → f.holds p0 Γ p u

theorem holdsAll_mono {p0 : Ptrs} {Γ : Gam} {p : Ptrs} {u : State σ} {S S' : FS}
    (h : HoldsAll p0 Γ p u S) (hs : ∀ f, S' f → S f) : HoldsAll p0 Γ p u S' :=
  fun f hf => h f (hs f hf)

theorem holdsAll_add {p0 : Ptrs} {Γ : Gam} {p : Ptrs} {u : State σ} {S : FS} {g : Fct}
    (h : HoldsAll p0 Γ p u S) (hg : g.holds p0 Γ p u) : HoldsAll p0 Γ p u (fun f => S f ∨ f = g) := by
  intro f hf
  rcases hf with hf | rfl
  · exact h f hf
  · exact hg

theorem holdsAll_loc {p0 : Ptrs} {Γ : Gam} {p : Ptrs} {u : State σ} {S : FS}
    (h : HoldsAll p0 Γ p u S) (l : Locs) (c : Nat) : HoldsAll p0 Γ p { u with locals := l, clock := c } S := by
  intro f hf
  have := h f hf
  cases f <;> first | exact this | simpa [Fct.holds, gword, rd] using this

theorem Fct.reads_alloc_cellv {a v x : BitVec 64} (hx : (Fct.cellv a v).reads x) : x = a := hx

theorem bCell_ext {Γ Γ' : Gam} (hx : Ext Γ Γ') {a : BitVec 64} (h : BCell guestC Γ a) : BCell guestC Γ' a := by
  obtain ⟨o, ho, hty, k, hk, hp, rfl⟩ := h
  obtain ⟨o', ho', hb, ht, hs⟩ := hx o ho
  refine ⟨o', ho', by rw [ht]; exact hty, k, ?_, by rw [ht]; exact hp, ?_⟩
  · unfold Obj.HasSlot at *; omega
  · unfold Obj.cell; rw [hb]

theorem plCell_ext {Γ Γ' : Gam} (hx : Ext Γ Γ') {a : BitVec 64} (h : PlCell Γ a) : PlCell Γ' a := by
  obtain ⟨o, ho, hty, k, hk, hp, rfl⟩ := h
  obtain ⟨o', ho', hb, ht, hs⟩ := hx o ho
  refine ⟨o', ho', by rw [ht]; exact hty, k, ?_, by rw [ht]; exact hp, ?_⟩
  · unfold Obj.HasSlot at *; omega
  · unfold Obj.cell; rw [hb]

theorem inObj_ext {Γ Γ' : Gam} (hx : Ext Γ Γ') {a : Nat} (h : InObj Γ a) : InObj Γ' a := by
  obtain ⟨o, ho, h1, h2⟩ := h
  obtain ⟨o', ho', hb, -, hs⟩ := hx o ho
  have e1 : o'.lo = o.lo := by unfold Obj.lo; rw [hb]
  have e2 : o'.hi = o'.lo + o'.size := rfl
  have e3 : o.hi = o.lo + o.size := rfl
  exact ⟨o', ho', by omega, by omega⟩

/-- A step of the typed heap. -/
structure StepD (Γ : Gam) (p : Ptrs) (u : State σ) (Γ' : Gam) (p' : Ptrs) (t : State σ) : Prop where
  hp : ptrsOf u = some p
  hp' : ptrsOf t = some p'
  mono : (Exb.gp0 p).Mono p'
  ext : Ext Γ Γ'
  nf : NewFresh Γ Γ' (Exb.gp0 p) p'
  hG : G guestC (HR σ) Γ u
  hG' : G guestC (HR σ) Γ' t

/-- A step with the full allocator monotonicity. -/
theorem stepD_mk {Γ Γ' : Gam} {p p' : Ptrs} {u t : State σ} (hp : ptrsOf u = some p) (hp' : ptrsOf t = some p')
    (hm : p.Mono p') (hx : Ext Γ Γ') (hnf : NewFresh Γ Γ' p p') (hG : G guestC (HR σ) Γ u)
    (hG' : G guestC (HR σ) Γ' t) : StepD Γ p u Γ' p' t :=
  ⟨hp, hp', mono_g_of_mono (ordered_of_G hG hp) (ordered_of_G hG' hp') hm, hx,
    newFresh_gp0 (ordered_of_G hG hp) hnf, hG, hG'⟩

theorem stepD_of_core {sg : Sig} {PW : BitVec 64 → Prop} {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} {Γ Γ' : Gam} {u t : State σ} {p p' : Ptrs}
    (hG : G guestC (HR σ) Γ u) (hc : SumCore guestC (HR σ) sg PW Γ u vs r t Γ' p p') :
    StepD Γ p u Γ' p' t :=
  have hp := ordered_of_G hG hc.1
  have hp' := ordered_of_G hc.2.2.2.2.2.1 hc.2.1
  ⟨hc.1, hc.2.1, mono_g_of_mono hp hp' hc.2.2.1, hc.2.2.2.1, newFresh_gp0 hp hc.2.2.2.2.1, hG, hc.2.2.2.2.2.1⟩

theorem stepD_refl {Γ : Gam} {p : Ptrs} {u : State σ} (hG : G guestC (HR σ) Γ u)
    (hp : ptrsOf u = some p) : StepD Γ p u Γ p u :=
  ⟨hp, hp, mono_g_refl (ordered_of_G hG hp), fun o ho => ⟨o, ho, rfl, rfl, le_refl _⟩,
    fun o ho a h1 h2 => Or.inl ⟨o, ho, rfl, rfl, h1, h2⟩, hG, hG⟩

theorem stepD_layout {Γ Γ' : Gam} {p p' : Ptrs} {u t : State σ} (h : StepD Γ p u Γ' p' t) : Layout guestC p' Γ' := by
  obtain ⟨q, hq, -, hL, -⟩ := h.hG'
  obtain rfl : q = p' := Option.some.inj (hq.symm.trans h.hp')
  exact hL

theorem stepD_trans {Γ Γ1 Γ2 : Gam} {p p1 p2 : Ptrs} {u t1 t2 : State σ}
    (h1 : StepD Γ p u Γ1 p1 t1) (h2 : StepD Γ1 p1 t1 Γ2 p2 t2) : StepD Γ p u Γ2 p2 t2 :=
  ⟨h1.hp, h2.hp', mono_g_trans h1.mono h2.mono, ext_trans h1.ext h2.ext,
    newFresh_trans_g (ordered_of_G h2.hG h2.hp) (ordered_of_G h2.hG' h2.hp') h1.mono (stepD_layout h2)
      h1.nf h2.nf, h1.hG, h2.hG'⟩

theorem stepD_loc {Γ Γ' : Gam} {p p' : Ptrs} {u t : State σ} (h : StepD Γ p u Γ' p' t) (l : Locs) (c : Nat) :
    StepD Γ p u Γ' p' { t with locals := l, clock := c } :=
  ⟨h.hp, (ptrsOf_congr rfl).trans h.hp', h.mono, h.ext, h.nf, h.hG,
    (G_locFree Hooks.guestHooksR_lawful t l c).mpr h.hG'⟩

theorem holds_step {p0 : Ptrs} {Γ Γ' : Gam} {p p' : Ptrs} {u t : State σ} (h : StepD Γ p u Γ' p' t)
    (h0 : p0.Ordered) {S : FS}
    (hmem : ∀ f, S f → ∀ a, f.reads a → t.memory a = u.memory a)
    (hgl : ∀ g w ty, S (Fct.gobj g w ty) → gword t g = gword u g)
    (hgv : ∀ g w, S (Fct.gval g w) → gword t g = gword u g)
    (hL : HoldsAll p0 Γ p u S) : HoldsAll p0 Γ' p' t S := by
  have hord := ordered_of_G h.hG h.hp
  have hord' := ordered_of_G h.hG' h.hp'
  intro f hf
  have hh := hL f hf
  have hrd : ∀ a, f.reads a → rd t.memory a = rd u.memory a := fun a ha => by
    unfold rd; rw [hmem f hf a ha]
  cases f with
  | obj b ty n =>
    obtain ⟨o, ho, hb, ht, hs⟩ := hh
    obtain ⟨o', ho', hb', ht', hs'⟩ := h.ext o ho
    exact ⟨o', ho', hb'.trans hb, ht'.trans ht, le_trans hs hs'⟩
  | fbuf w n =>
    obtain ⟨hal, hf'⟩ := hh
    refine ⟨hal, fun a ha => ?_⟩
    obtain ⟨h1, h2, h3⟩ := alloc_of_gfresh h0 (hf' a ha).1
    have hm := h.mono
    have hn := notInObj_after (Exb.gp0_ord hord) hord' h.mono h.nf (hf' a ha).2 (by
      simp only [Ptrs.Allocated, Exb.gp0, Ptrs.Ordered] at *; omega)
    refine ⟨?_, hn⟩
    simp only [Fresh, Exb.gp0, Ptrs.Mono] at *; omega
  | bufok w n =>
    intro a ha
    rcases hh a ha with hs | ⟨hn, hal⟩
    · exact Or.inl (scell_ext h.ext hs)
    · refine Or.inr ⟨notInObj_after (Exb.gp0_ord hord) hord' h.mono h.nf hn hal, ?_⟩
      have hm := h.mono
      simp only [Ptrs.Allocated, Exb.gp0, Ptrs.Mono] at hal hm ⊢; omega
  | gobj g w ty =>
    obtain ⟨hw, o, ho, hb, ht⟩ := hh
    obtain ⟨o', ho', hb', ht', -⟩ := h.ext o ho
    exact ⟨(hgl g w ty hf).trans hw, o', ho', hb'.trans hb, ht'.trans ht⟩
  | prop P => exact hh
  | gval g w => exact (hgv g w hf).trans hh
  | ent A j =>
    obtain ⟨b1, b2, hv⟩ := hh
    have e1 : rd t.memory (A + BitVec.ofNat 64 (16 * j)) = rd u.memory (A + BitVec.ofNat 64 (16 * j)) :=
      hrd _ (Or.inl rfl)
    have e2 : rd t.memory (A + BitVec.ofNat 64 (16 * j + 8)) = rd u.memory (A + BitVec.ofNat 64 (16 * j + 8)) :=
      hrd _ (Or.inr rfl)
    refine ⟨bCell_ext h.ext b1, bCell_ext h.ext b2, ?_⟩
    rw [e1, e2]
    exact Hooks.vInR_ext h.ext hv
  | inval c n =>
    obtain ⟨x, hx, ht, h1, h2⟩ := hh
    obtain ⟨x', hx', hb, ht', hs⟩ := h.ext x hx
    have e1 : x'.lo = x.lo := by unfold Obj.lo; rw [hb]
    have e2 : x'.hi = x'.lo + x'.size := rfl
    have e3 : x.hi = x.lo + x.size := rfl
    exact ⟨x', hx', ht'.trans ht, by omega, by omega⟩
  | sla A n =>
    intro j hj
    obtain ⟨b1, b2, hv⟩ := hh j hj
    have e1 : rd t.memory (A + BitVec.ofNat 64 (16 * j)) = rd u.memory (A + BitVec.ofNat 64 (16 * j)) :=
      hrd _ ⟨j, hj, Or.inl rfl⟩
    have e2 : rd t.memory (A + BitVec.ofNat 64 (16 * j + 8)) = rd u.memory (A + BitVec.ofNat 64 (16 * j + 8)) :=
      hrd _ ⟨j, hj, Or.inr rfl⟩
    refine ⟨bCell_ext h.ext b1, bCell_ext h.ext b2, ?_⟩
    rw [e1, e2]
    exact Hooks.vInR_ext h.ext hv
  | pcv a v =>
    obtain ⟨hr, o, ho, hst, k, hk, hp, rfl⟩ := hh
    obtain ⟨o', ho', hb, ht, hs⟩ := h.ext o ho
    refine ⟨(hrd _ rfl).trans hr, o', ho', by rw [ht]; exact hst, k, ?_, by rw [ht]; exact hp, ?_⟩
    · unfold Obj.HasSlot at *; omega
    · unfold Obj.cell; rw [hb]
  | cellv a v =>
    obtain ⟨hr, o, ho, hst, k, hk, hp, rfl⟩ := hh
    obtain ⟨o', ho', hb, ht, hs⟩ := h.ext o ho
    refine ⟨(hrd _ rfl).trans hr, o', ho', by rw [ht]; exact hst, k, ?_, by rw [ht]; exact hp, ?_⟩
    · unfold Obj.HasSlot at *; omega
    · unfold Obj.cell; rw [hb]

end InitECandidate.Solver.MemSafe.Eb

#print axioms InitECandidate.Solver.MemSafe.Eb.holds_step
