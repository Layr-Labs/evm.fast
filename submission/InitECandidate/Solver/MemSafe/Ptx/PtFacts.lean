import InitECandidate.Solver.MemSafe.Ptx.PtRun

/-!
# F3d: persistent facts

`Fct`: an object of `Γ`, a fresh buffer (since the entry), a writable buffer, a tracked word of a cell outside `Γ`
(allocated), a global pointing at an object, a state-independent proposition, and a pointer array whose elements are
writable buffers. `holds_step`: all of them survive a step of the typed heap; the memory facts also need the step to
leave their cells alone.
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

variable {σ : Type}

inductive Fct where
  | obj (b : BitVec 64) (ty n : Nat)
  | fbuf (w : BitVec 64) (n : Nat)
  | bufok (w : BitVec 64) (n : Nat)
  | memw (a v : BitVec 64)
  | gobj (g : MlS) (ty : Nat)
  | prop (P : Prop)
  | bufok0 (w : BitVec 64) (n : Nat)
  | arrbuf (blk : BitVec 64) (nblk cnt n : Nat)
  | cellv (a v : BitVec 64)

/-- The cells a fact reads from memory. -/
def Fct.reads : Fct → BitVec 64 → Prop
  | .memw a _, x => x = a
  | .cellv a _, x => x = a
  | .arrbuf blk _ cnt _, x => ∃ j, j < cnt ∧ x = blk + BitVec.ofNat 64 (8 * j)
  | _, _ => False

def Fct.holds (p0 : Ptrs) (Γ : Gam) (p : Ptrs) (u : State σ) : Fct → Prop
  | .obj b ty n => ∃ o ∈ Γ, o.base = b ∧ o.ty = ty ∧ n ≤ o.size
  | .fbuf w n => FreshBuf Γ p0 p w n
  | .bufok w n => BufOK guestC Γ p w.toNat n
  | .memw a v => rd u.memory a = v ∧ ¬ InObj Γ a.toNat ∧ Fresh p0 p a
  | .gobj g ty => ∃ w, gword u g = some w ∧ ∃ o ∈ Γ, o.base = w ∧ o.ty = ty
  | .prop P => P
  | .cellv a v => rd u.memory a = v ∧ ∃ o ∈ Γ, guestSt o.ty = false ∧ ∃ k, o.HasSlot k ∧
      (guestC.ty o.ty).slot k = .prot ∧ a = o.cell k
  | .bufok0 w n => BufOK guestC Γ p w.toNat n ∧ ∀ x : BitVec 64, Overlap w.toNat n x → InObj Γ x.toNat ∨ p0.Allocated x.toNat
  | .arrbuf blk nblk cnt n =>
      8 * cnt ≤ nblk ∧ blk.toNat + nblk < 2 ^ 64 ∧ blk.toNat % 8 = 0 ∧
      (∀ j, j < cnt → BufOK guestC Γ p (rd u.memory (blk + BitVec.ofNat 64 (8 * j))).toNat n ∧
        ∀ x : BitVec 64, Overlap (rd u.memory (blk + BitVec.ofNat 64 (8 * j))).toNat n x →
          InObj Γ x.toNat ∨ p0.Allocated x.toNat) ∧
      (∀ j, j < cnt → ¬ InObj Γ (blk + BitVec.ofNat 64 (8 * j)).toNat ∧
        Fresh p0 p (blk + BitVec.ofNat 64 (8 * j)))

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

theorem Fct.reads_alloc {p0 : Ptrs} {Γ : Gam} {p : Ptrs} {u : State σ} {f : Fct} (h : f.holds p0 Γ p u)
    (h0 : p0.Ordered) (hord : p.Ordered)
    (hnc : ∀ a v, f ≠ Fct.cellv a v) {a : BitVec 64} (ha : f.reads a) : ¬ InObj Γ a.toNat ∧ p.Allocated a.toNat := by
  cases f with
  | cellv a' v' => exact absurd rfl (hnc a' v')
  | memw a' v => obtain rfl : a = a' := ha; exact ⟨h.2.1, alloc_of_fresh h0 hord h.2.2⟩
  | arrbuf blk nblk cnt n =>
    obtain ⟨j, hj, rfl⟩ := ha
    exact ⟨(h.2.2.2.2 j hj).1, alloc_of_fresh h0 hord (h.2.2.2.2 j hj).2⟩
  | _ => exact absurd ha (by simp [Fct.reads])

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
  mono : p.Mono p'
  ext : Ext Γ Γ'
  nf : NewFresh Γ Γ' p p'
  hG : G guestC (HR σ) Γ u
  hG' : G guestC (HR σ) Γ' t

theorem stepD_of_core {sg : Sig} {PW : BitVec 64 → Prop} {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} {Γ Γ' : Gam} {u t : State σ} {p p' : Ptrs}
    (hG : G guestC (HR σ) Γ u) (hc : SumCore guestC (HR σ) sg PW Γ u vs r t Γ' p p') :
    StepD Γ p u Γ' p' t :=
  ⟨hc.1, hc.2.1, hc.2.2.1, hc.2.2.2.1, hc.2.2.2.2.1, hG, hc.2.2.2.2.2.1⟩

theorem stepD_refl {Γ : Gam} {p : Ptrs} {u : State σ} (hG : G guestC (HR σ) Γ u)
    (hp : ptrsOf u = some p) : StepD Γ p u Γ p u :=
  ⟨hp, hp, ⟨le_refl _, le_refl _, le_refl _⟩, fun o ho => ⟨o, ho, rfl, rfl, le_refl _⟩,
    fun o ho a h1 h2 => Or.inl ⟨o, ho, rfl, rfl, h1, h2⟩, hG, hG⟩

theorem stepD_trans {Γ Γ1 Γ2 : Gam} {p p1 p2 : Ptrs} {u t1 t2 : State σ}
    (h1 : StepD Γ p u Γ1 p1 t1) (h2 : StepD Γ1 p1 t1 Γ2 p2 t2) : StepD Γ p u Γ2 p2 t2 :=
  ⟨h1.hp, h2.hp', mono_trans h1.mono h2.mono, ext_trans h1.ext h2.ext,
    newFresh_trans h1.mono h2.mono h1.nf h2.nf, h1.hG, h2.hG'⟩

theorem holds_step {p0 : Ptrs} {Γ Γ' : Gam} {p p' : Ptrs} {u t : State σ} (h : StepD Γ p u Γ' p' t)
    (h0 : p0.Ordered) {S : FS}
    (hmem : ∀ f, S f → ∀ a, f.reads a → t.memory a = u.memory a)
    (hgl : ∀ g ty, S (Fct.gobj g ty) → gword t g = gword u g)
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
    refine ⟨hal, fun a ha => ⟨fresh_of_mono h.mono (hf' a ha).1, ?_⟩⟩
    exact notInObj_after hord hord' h.mono h.nf (hf' a ha).2
      (alloc_of_fresh h0 hord (hf' a ha).1)
  | bufok w n =>
    exact bufOK_step hord hord' h.mono h.ext h.nf hh
  | memw a v =>
    obtain ⟨hr, hn, hal⟩ := hh
    exact ⟨(hrd a rfl).trans hr, notInObj_after hord hord' h.mono h.nf hn (alloc_of_fresh h0 hord hal),
      fresh_of_mono h.mono hal⟩
  | gobj g ty =>
    obtain ⟨w, hw, o, ho, hb, ht⟩ := hh
    obtain ⟨o', ho', hb', ht', -⟩ := h.ext o ho
    exact ⟨w, (hgl g ty hf).trans hw, o', ho', hb'.trans hb, ht'.trans ht⟩
  | prop P => exact hh
  | cellv a v =>
    obtain ⟨hr, o, ho, hst, k, hk, hp, rfl⟩ := hh
    obtain ⟨o', ho', hb, ht, hs⟩ := h.ext o ho
    refine ⟨(hrd _ rfl).trans hr, o', ho', by rw [ht]; exact hst, k, ?_, by rw [ht]; exact hp, ?_⟩
    · unfold Obj.HasSlot at *; omega
    · unfold Obj.cell; rw [hb]
  | bufok0 w n =>
    exact ⟨bufOK_step hord hord' h.mono h.ext h.nf hh.1, fun x hx => (hh.2 x hx).imp (inObj_ext h.ext) id⟩
  | arrbuf blk nblk cnt n =>
    obtain ⟨h1, h2, h3, hb, hna⟩ := hh
    refine ⟨h1, h2, h3, fun j hj => ?_, fun j hj => ⟨?_, fresh_of_mono h.mono (hna j hj).2⟩⟩
    · have := hrd (blk + BitVec.ofNat 64 (8 * j)) ⟨j, hj, rfl⟩
      rw [this]
      exact ⟨bufOK_step hord hord' h.mono h.ext h.nf (hb j hj).1,
        fun x hx => ((hb j hj).2 x hx).imp (inObj_ext h.ext) id⟩
    · exact notInObj_after hord hord' h.mono h.nf (hna j hj).1 (alloc_of_fresh h0 hord (hna j hj).2)


/-- Pairwise disjoint blocks. -/
def BlocksSep (BL : List (BitVec 64 × Nat)) : Prop :=
  ∀ b1 ∈ BL, ∀ b2 ∈ BL, b1 ≠ b2 → ∀ a, ¬ (Overlap b1.1.toNat b1.2 a ∧ Overlap b2.1.toNat b2.2 a)

theorem blocksSep_nil : BlocksSep [] := fun _ h => absurd h (by simp)

/-- **A block allocated after the others is disjoint from them.** The old blocks are allocated before the
call, the new one is fresh. -/
theorem blocksSep_cons {BL : List (BitVec 64 × Nat)} {w : BitVec 64} {n : Nat} {p p' : Ptrs}
    {p0 : Ptrs} {Γ Γ' : Gam} {u : State σ} (hsep : BlocksSep BL)
    (hb : ∀ b ∈ BL, FreshBuf Γ p0 p b.1 b.2) (hnew : FreshBuf Γ' p p' w n) (h0 : p0.Ordered)
    (hord : p.Ordered) (hord' : p'.Ordered) (hm : p.Mono p') (hn : ∀ b ∈ BL, b ≠ (w, n)) :
    BlocksSep ((w, n) :: BL) := by
  intro b1 h1 b2 h2 hne a ⟨ha1, ha2⟩
  have key : ∀ b ∈ BL, Overlap b.1.toNat b.2 a → Overlap w.toNat n a → False := by
    intro b hbm hb1 hb2
    have hal := alloc_of_fresh h0 hord ((hb b hbm).2 a hb1).1
    have := fresh_not_alloc hord hord' hm (hnew.2 a hb2).1
    exact this hal
  rcases List.mem_cons.mp h1 with rfl | h1 <;> rcases List.mem_cons.mp h2 with rfl | h2
  · exact hne rfl
  · exact key b2 h2 ha2 ha1
  · exact key b1 h1 ha1 ha2
  · exact hsep b1 h1 b2 h2 hne a ⟨ha1, ha2⟩

end InitECandidate.Solver.MemSafe.Ptx
