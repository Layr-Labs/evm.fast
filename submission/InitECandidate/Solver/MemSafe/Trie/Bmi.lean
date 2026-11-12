import InitECandidate.Solver.MemSafe.Trie.BmiCode
import InitECandidate.Solver.MemSafe.Aw.Write

/-!
# `build_mpt_indexed`, the run at the small typing

For an activation `a` at a typing with no node objects: the body ends (on every non-abortive result) with the allocator monotone from the
entry and every changed cell in `a.Foot` (**`bmi_ghost`**). Nothing here knows the block state: the slice array is a read-only table of
values, each a `tVAL` slice, in cells allocated at entry and outside the typing (`ArrE`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

def bmiSig : Sig := ⟨[.any, .any, .buf 32], [], [], true⟩

/-- One cell of the array: allocated at entry, outside the typing, holding its entry value. -/
def CellE (p0 : Ptrs) (m0 : Mem) (Γ : Gam) (mm : Mem) (c : BitVec 64) : Prop :=
  p0.Allocated c.toNat ∧ ¬ InObj Γ c.toNat ∧ rd mm c = rd m0 c

/-- **The slice array**: `N` pairs at `A`, unchanged, each a `tVAL` slice. -/
def ArrE (p0 : Ptrs) (m0 : Mem) (A N : BitVec 64) (Γ : Gam) (mm : Mem) : Prop :=
  ∀ j : BitVec 64, j.toNat < N.toNat →
    CellE p0 m0 Γ mm (A + j * 16#64) ∧ CellE p0 m0 Γ mm (A + (j * 16#64 + 8#64)) ∧
      VInR tVAL Γ (rd m0 (A + j * 16#64)) (rd m0 (A + (j * 16#64 + 8#64)))

/-- The end of the run: allocator monotone, every change in the footprint. -/
def TopE (a : Act σ) (t : State σ) : Prop :=
  ∃ q', ptrsOf t = some q' ∧ q'.Ordered ∧ a.p0.Mono q' ∧ ModifiesOnly a.Foot a.s0.memory t.memory

def TopQ (a : Act σ) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ r', r = some r' → ¬ Abortive r' → TopE a t

theorem topE_of_heap {a : Act σ} {Γ : Gam} {q : Ptrs} {t : State σ} (hh : Heap a Γ q t) : TopE a t :=
  ⟨q, hh.2.1, heap_ord hh, hh.2.2.1, hh.2.2.2.2.2.1⟩

theorem topE_congr {a : Act σ} {t t' : State σ} (hm : t'.memory = t.memory) (hg : t'.globals = t.globals)
    (h : TopE a t) : TopE a t' := by
  obtain ⟨q, hq, ho, hm0, hmod⟩ := h
  exact ⟨q, (AllocImpl.ptrsOf_congr hg).trans hq, ho, hm0, by rw [hm]; exact hmod⟩

theorem topQ_loc {a : Act σ} {r : Option (PanSemResultExact 64)} {t : State σ} (l : LocalsH) (h : TopQ a r t) :
    TopQ a r { t with locals := l } :=
  fun r' hr' hna => topE_congr rfl rfl (h r' hr' hna)

theorem topQ_some {a : Act σ} {r' : PanSemResultExact 64} {t : State σ}
    (h : ¬ Abortive r' → ∃ Γ q, Heap a Γ q t) : TopQ a (some r') t := by
  intro r'' hr hna
  cases hr
  obtain ⟨Γ, q, hh⟩ := h hna
  exact topE_of_heap hh

theorem alloc_mono {p q : Ptrs} (hm : p.Mono q) {a : Nat} (h : p.Allocated a) : q.Allocated a := by
  obtain ⟨m1, m2, m3⟩ := hm
  unfold Ptrs.Allocated at *
  omega

theorem fresh_not_alloc {p q : Ptrs} (hp : p.Ordered) (hq : q.Ordered) (hm : p.Mono q) {x : BitVec 64}
    (h : Fresh p q x) : ¬ p.Allocated x.toNat := by
  obtain ⟨p1, p2, p3, p4, p5, -⟩ := hp
  obtain ⟨q1, q2, q3, q4, q5, -⟩ := hq
  obtain ⟨m1, m2, m3⟩ := hm
  unfold Ptrs.Allocated
  rcases h with h | h | h <;> omega

/-- A cell allocated at entry and outside the typing survives a callee that doesn't take it as an argument. -/
theorem cellE_step {a : Act σ} (hCb : a.Cb = Types.guestC) {sg' : Sig} {cs : List Cap}
    {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ} {m0 : Mem}
    (hMod : Mod a sg' cs vs Γ q s st) (hnf : NewFresh Γ Γ' q q') (hmo0 : a.p0.Mono q) (hmo : q.Mono q')
    (hord : q.Ordered) (hord' : q'.Ordered) (hL : Layout Types.guestC q Γ) {c : BitVec 64}
    (hE : CellE a.p0 m0 Γ s.memory c) (hargs : ¬ ArgCells sg'.params vs c) :
    CellE a.p0 m0 Γ' st.memory c := by
  obtain ⟨hA, hO, hv⟩ := hE
  refine ⟨hA, ?_, ?_⟩
  · rintro ⟨o, ho, h1, h2⟩
    rcases hnf o ho c h1 h2 with ⟨o0, ho0, -, -, h3, h4⟩ | hf
    · exact hO ⟨o0, ho0, h3, h4⟩
    · exact fresh_not_alloc hord hord' hmo hf (alloc_mono hmo0 hA)
  · have hcell : st.memory c = s.memory c := by
      refine hMod c ?_ hargs ?_ (alloc_mono hmo0 hA)
      · rintro ⟨o, ho, k, hk, -, he⟩
        rw [hCb] at *
        have hin := cell_in hord hL ho hk
        rw [← he] at hin
        exact hO hin
      · rintro ⟨⟨o, ho, k, hk, -, he⟩, -⟩
        rw [hCb] at *
        have hin := cell_in hord hL ho hk
        rw [← he] at hin
        exact hO hin
    unfold rd at *
    rw [hcell]
    exact hv

/-- The array across a callee whose argument cells avoid it. -/
theorem arrE_step {a : Act σ} (hCb : a.Cb = Types.guestC) {sg' : Sig} {cs : List Cap}
    {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ} {m0 : Mem} {A N : BitVec 64}
    (hMod : Mod a sg' cs vs Γ q s st) (hext : Ext Γ Γ') (hnf : NewFresh Γ Γ' q q') (hmo0 : a.p0.Mono q) (hmo : q.Mono q')
    (hord : q.Ordered) (hord' : q'.Ordered) (hL : Layout Types.guestC q Γ)
    (hE : ArrE a.p0 m0 A N Γ s.memory)
    (hargs : ∀ c, a.p0.Allocated c.toNat → ¬ InObj Γ c.toNat → ¬ ArgCells sg'.params vs c) :
    ArrE a.p0 m0 A N Γ' st.memory := by
  intro j hj
  obtain ⟨h1, h2, h3⟩ := hE j hj
  exact ⟨cellE_step hCb hMod hnf hmo0 hmo hord hord' hL h1 (hargs _ h1.1 h1.2.1),
    cellE_step hCb hMod hnf hmo0 hmo hord hord' hL h2 (hargs _ h2.1 h2.2.1), vInR_ext hext h3⟩

/-- The loop's memory invariant. -/
def EL (a : Act σ) (A N M : BitVec 64) (Γ : Gam) (q : Ptrs) (mm : Mem) : Prop :=
  HRecU a.p0 Γ q mm M ∧ ArrE a.p0 a.s0.memory A N Γ mm

/-- The handle across a callee whose argument cells avoid it. -/
theorem hrecU_step {a : Act σ} (hCb : a.Cb = Types.guestC) {sg' : Sig} {cs : List Cap}
    {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ} {M : BitVec 64}
    (hMod : Mod a sg' cs vs Γ q s st) (hext : Ext Γ Γ') (hnf : NewFresh Γ Γ' q q') (hmo : q.Mono q')
    (hord : q.Ordered) (hord' : q'.Ordered) (hL : Layout Types.guestC q Γ)
    (hE : HRecU a.p0 Γ q s.memory M)
    (hargs : ∀ y, ArgCells sg'.params vs y → y.toNat ≠ M.toNat ∧ y.toNat ≠ M.toNat + 8) :
    HRecU a.p0 Γ' q' st.memory M :=
  ⟨hrec_call hCb hMod hext hnf hmo hord hord' hL hE.1 hargs, hE.2⟩

end InitECandidate.Solver.MemSafe.Trie
