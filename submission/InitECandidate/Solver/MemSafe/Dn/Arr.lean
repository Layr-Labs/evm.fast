import InitECandidate.Solver.MemSafe.Dn.CoKit
import InitECandidate.Solver.Spec.Mpt.Decode.Chain

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

/-!
# The slice array of a decoder record, and `tVAL` sub-slices (stage 2b)

* `vInR_sub`: a sub-slice of a slice inside a `tVAL` object is inside it.
* `RngFree Ar n Γ q`: the byte range `[Ar, Ar + n)` is allocated and outside every object of `Γ` (the
  array `rlp_list_to_slices` allocates); it survives calls (`rngFree_co`) and its cells are unchanged by them
  (`rng_mem_co`).
* `ArrS Ar cnt lo hi Γ q M`: `Ar` is such an array of `cnt` slices, all inside `[lo, hi)` (`SIn`, numeric).
  With `VInR tVAL Γ lo (hi - lo)`, every slice is inside a `tVAL` object (`arrS_vin`).
* `RecS Γ q M r`: what a decoder record carries: its input slice `[rec+48, +56)` is inside a `tVAL` object,
  its slice array (`rec+24`, 2 or 17 slices) is `ArrS` in that slice, and an extension record's nibbles
  (`rec+64`, `rec+72`) are `NIn`.
-/

namespace InitECandidate.Solver.MemSafe.Dn
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.Spec.Mpt.Dec (SIn sIn_mono)

variable {σ : Type}

theorem vInR_sub {tV : Nat} {Γ : Gam} {P N B C : BitVec 64} (h : Hooks.VInR tV Γ P N)
    (h1 : P.toNat ≤ B.toNat) (h2 : B.toNat + C.toNat ≤ P.toNat + N.toNat) : Hooks.VInR tV Γ B C := by
  by_cases hC : C = 0
  · exact Or.inl hC
  rcases h with h0 | ⟨x, hx, ht, hl, hh⟩
  · subst h0
    have h00 : (0 : BitVec 64).toNat = 0 := rfl
    have : C.toNat = 0 := by omega
    exact absurd (BitVec.eq_of_toNat_eq (by simpa using this)) hC
  · exact Or.inr ⟨x, hx, ht, by omega, by omega⟩

def RngFree (Ar : BitVec 64) (n : Nat) (Γ : Gam) (q : Ptrs) : Prop :=
  ∀ x : BitVec 64, Ar.toNat ≤ x.toNat → x.toNat < Ar.toNat + n → ¬ InObj Γ x.toNat ∧ q.Allocated x.toNat

theorem rngFree_co {a : Act σ} {sg' : Sig} {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs}
    {s st : State σ} {r : PanSemResultExact 64} (co : CO a sg' vs Γ Γ' q q' s st r)
    {Ar : BitVec 64} {n : Nat} (h : RngFree Ar n Γ q) : RngFree Ar n Γ' q' := by
  intro x h1 h2
  obtain ⟨h3, h4⟩ := h x h1 h2
  have hord := heap_ord co.heap0
  have hord' := heap_ord co.heap
  refine ⟨?_, Spec.Mpt.Dec.allocated_mono co.mono h4⟩
  rintro ⟨o, ho, hlo, hhi⟩
  rcases co.nf o ho x hlo hhi with ⟨o0, ho0, -, -, hlo0, hhi0⟩ | hfr
  · exact h3 ⟨o0, ho0, hlo0, hhi0⟩
  · exact fresh_not_alloc hord hord' co.mono hfr h4

theorem rng_mem_co {a : Act σ} (haC : a.C = Types.guestC) (haCb : a.Cb = Types.guestC) {sg' : Sig}
    {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    {r : PanSemResultExact 64} (co : CO a sg' vs Γ Γ' q q' s st r) {Ar : BitVec 64} {n : Nat}
    (h : RngFree Ar n Γ q) {x : BitVec 64} (h1 : Ar.toNat ≤ x.toNat) (h2 : x.toNat < Ar.toNat + n) :
    st.memory x = s.memory x := by
  obtain ⟨hni, hal⟩ := h x h1 h2
  obtain ⟨p1, hp1, hord, hL, -⟩ := co.heap0.1
  rw [co.heap0.2.1] at hp1
  cases hp1
  rw [haC] at hL
  refine co.frame x (fun ⟨o, ho, k, hk, _, hxk⟩ => hni ?_) hal
  exact hxk ▸ cell_in hord hL ho hk

def ArrS (Ar : BitVec 64) (cnt lo hi : Nat) (Γ : Gam) (q : Ptrs) (M : Mem) : Prop :=
  RngFree Ar (16 * cnt) Γ q ∧ Ar.toNat + 16 * cnt ≤ heapEnd ∧ SIn M Ar cnt lo hi

theorem toNat_addk' {x : BitVec 64} {k : Nat} (h : x.toNat + k < 2 ^ 64) :
    (x + BitVec.ofNat 64 k).toNat = x.toNat + k := by
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := k) (by omega), Nat.mod_eq_of_lt h]

theorem sIn_congr {M M' : Mem} {Ar : BitVec 64} {cnt lo hi : Nat}
    (hE : Ar.toNat + 16 * cnt ≤ heapEnd)
    (hM : ∀ x : BitVec 64, Ar.toNat ≤ x.toNat → x.toNat < Ar.toNat + 16 * cnt → M' x = M x)
    (h : SIn M Ar cnt lo hi) : SIn M' Ar cnt lo hi := by
  intro j hj
  have hE' := Hooks.heapEnd_lt
  have e1 : (Ar + BitVec.ofNat 64 (16 * j)).toNat = Ar.toNat + 16 * j := toNat_addk' (by omega)
  have e2 : (Ar + BitVec.ofNat 64 (16 * j + 8)).toNat = Ar.toNat + (16 * j + 8) := toNat_addk' (by omega)
  have r1 : rd M' (Ar + BitVec.ofNat 64 (16 * j)) = rd M (Ar + BitVec.ofNat 64 (16 * j)) :=
    Hooks.rd_congr (hM _ (by rw [e1]; omega) (by rw [e1]; omega))
  have r2 : rd M' (Ar + BitVec.ofNat 64 (16 * j + 8)) = rd M (Ar + BitVec.ofNat 64 (16 * j + 8)) :=
    Hooks.rd_congr (hM _ (by rw [e2]; omega) (by rw [e2]; omega))
  rw [r1, r2]
  exact h j hj

theorem arrS_co {a : Act σ} (haC : a.C = Types.guestC) (haCb : a.Cb = Types.guestC) {sg' : Sig}
    {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    {r : PanSemResultExact 64} (co : CO a sg' vs Γ Γ' q q' s st r) {Ar : BitVec 64} {cnt lo hi : Nat}
    (h : ArrS Ar cnt lo hi Γ q s.memory) : ArrS Ar cnt lo hi Γ' q' st.memory :=
  ⟨rngFree_co co h.1, h.2.1, sIn_congr h.2.1 (fun x h1 h2 => rng_mem_co haC haCb co h.1 h1 h2) h.2.2⟩

theorem arrS_mono {Ar : BitVec 64} {cnt lo hi lo' hi' : Nat} {Γ : Gam} {q : Ptrs} {M : Mem}
    (h : ArrS Ar cnt lo hi Γ q M) (h1 : lo' ≤ lo) (h2 : hi ≤ hi') : ArrS Ar cnt lo' hi' Γ q M :=
  ⟨h.1, h.2.1, sIn_mono h.2.2 h1 h2⟩

theorem arrS_vin {Ar : BitVec 64} {cnt : Nat} {P N : BitVec 64} {Γ : Gam} {q : Ptrs} {M : Mem}
    (h : ArrS Ar cnt P.toNat (P.toNat + N.toNat) Γ q M) (hP : Hooks.VInR Types.tVAL Γ P N) {j : Nat}
    (hj : j < cnt) :
    Hooks.VInR Types.tVAL Γ (rd M (Ar + BitVec.ofNat 64 (16 * j))) (rd M (Ar + BitVec.ofNat 64 (16 * j + 8))) :=
  vInR_sub hP (h.2.2 j hj).1 (h.2.2 j hj).2

/-- What a decoder record carries. -/
def RecS (Γ : Gam) (q : Ptrs) (M : Mem) (r : BitVec 64) : Prop :=
  Hooks.VInR Types.tVAL Γ (rd M (r + 48)) (rd M (r + 56)) ∧
    ArrS (rd M (r + 24)) (if rd M (r + 8) = 1 then 2 else 17) (rd M (r + 48)).toNat
      ((rd M (r + 48)).toNat + (rd M (r + 56)).toNat) Γ q M ∧
    (rd M (r + 8) = 1 → Hooks.NIn Γ (rd M (r + 64)) (rd M (r + 72)))


theorem rngFree_ext {Γ Γ' : Gam} {q q' : Ptrs} (he : Ext Γ Γ') (hnf : NewFresh Γ Γ' q q')
    (hmo : q.Mono q') (hord : q.Ordered) (hord' : q'.Ordered) {Ar : BitVec 64} {n : Nat}
    (h : RngFree Ar n Γ q) : RngFree Ar n Γ' q' := by
  intro x h1 h2
  obtain ⟨h3, h4⟩ := h x h1 h2
  refine ⟨?_, Spec.Mpt.Dec.allocated_mono hmo h4⟩
  rintro ⟨o, ho, hlo, hhi⟩
  rcases hnf o ho x hlo hhi with ⟨o0, ho0, -, -, hlo0, hhi0⟩ | hfr
  · exact h3 ⟨o0, ho0, hlo0, hhi0⟩
  · exact fresh_not_alloc hord hord' hmo hfr h4

/-- The input slice of `_decode_step`: in the heap below `heap_ptr`, inside a `tVAL` object. -/
def E0 (P N : BitVec 64) (Γ : Gam) (q : Ptrs) (_ : Mem) : Prop :=
  heapBase ≤ P.toNat ∧ P.toNat + N.toNat ≤ q.hp ∧ Hooks.VInR Types.tVAL Γ P N

theorem e0_mono {P N : BitVec 64} {Γ Γ' : Gam} {q q' : Ptrs} {M M' : Mem} (h : E0 P N Γ q M)
    (he : Ext Γ Γ') (hm : q.Mono q') : E0 P N Γ' q' M' :=
  ⟨h.1, le_trans h.2.1 hm.1, Hooks.vInR_ext he h.2.2⟩

/-- The entry slice and a slice array of `cnt` slices inside it. -/
def EA (P N Ar : BitVec 64) (cnt : Nat) (Γ : Gam) (q : Ptrs) (M : Mem) : Prop :=
  E0 P N Γ q M ∧ ArrS Ar cnt P.toNat (P.toNat + N.toNat) Γ q M

theorem ea_co {a : Act σ} (haC : a.C = Types.guestC) (haCb : a.Cb = Types.guestC) {sg' : Sig}
    {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs} {s st : State σ}
    {r : PanSemResultExact 64} (co : CO a sg' vs Γ Γ' q q' s st r) {P N Ar : BitVec 64} {cnt : Nat}
    (h : EA P N Ar cnt Γ q s.memory) : EA P N Ar cnt Γ' q' st.memory :=
  ⟨e0_mono h.1 co.ext co.mono, arrS_co haC haCb co h.2⟩

/-- A store above the heap leaves a slice array alone. -/
theorem arrS_upd {Ar : BitVec 64} {cnt lo hi : Nat} {Γ : Gam} {q : Ptrs} {M : Mem}
    (h : ArrS Ar cnt lo hi Γ q M) {A V : BitVec 64} (hA : heapEnd ≤ A.toNat) :
    ArrS Ar cnt lo hi Γ q (Struct.upd M A V) :=
  ⟨h.1, h.2.1, sIn_congr h.2.1 (fun x h1 h2 => by
    have hne : x ≠ A := fun e => by
      have := h.2.1
      rw [e] at h2
      omega
    unfold Struct.upd; rw [if_neg hne]) h.2.2⟩

theorem ea_upd {P N Ar : BitVec 64} {cnt : Nat} {Γ : Gam} {q : Ptrs} {M : Mem}
    (h : EA P N Ar cnt Γ q M) {A V : BitVec 64} (hA : heapEnd ≤ A.toNat) :
    EA P N Ar cnt Γ q (Struct.upd M A V) := ⟨h.1, arrS_upd h.2 hA⟩


theorem recS_ext_gam {Γ Γ' : Gam} {q q' : Ptrs} {M : Mem} {r : BitVec 64} (h : RecS Γ q M r)
    (he : Ext Γ Γ') (hnf : NewFresh Γ Γ' q q') (hmo : q.Mono q') (hord : q.Ordered)
    (hord' : q'.Ordered) : RecS Γ' q' M r :=
  ⟨Hooks.vInR_ext he h.1, ⟨rngFree_ext he hnf hmo hord hord' h.2.1.1, h.2.1.2.1, h.2.1.2.2⟩,
    fun h8 => Hooks.nIn_ext he (h.2.2 h8)⟩

/-- A record's slice array and slices are unchanged when the memory agrees on the record cells and on
the free heap cells. -/
theorem recS_mem {Γ : Gam} {q : Ptrs} {M M' : Mem} {r : BitVec 64} (h : RecS Γ q M r)
    (h8 : rd M' (r + 8) = rd M (r + 8)) (h24 : rd M' (r + 24) = rd M (r + 24))
    (h48 : rd M' (r + 48) = rd M (r + 48)) (h56 : rd M' (r + 56) = rd M (r + 56))
    (h64 : rd M' (r + 64) = rd M (r + 64)) (h72 : rd M' (r + 72) = rd M (r + 72))
    (hM : ∀ x : BitVec 64, x.toNat < heapEnd → ¬ InObj Γ x.toNat → q.Allocated x.toNat → M' x = M x) :
    RecS Γ q M' r := by
  unfold RecS at h ⊢
  rw [h8, h24, h48, h56, h64, h72]
  obtain ⟨hv, ⟨hf, he, hs⟩, hn⟩ := h
  refine ⟨hv, ⟨hf, he, sIn_congr he (fun x hx1 hx2 => ?_) hs⟩, hn⟩
  have hx := hf x hx1 hx2
  have hE : x.toNat < heapEnd := by
    have : (rd M (r + 24)).toNat + 16 * (if rd M (r + 8) = 1 then 2 else 17) ≤ heapEnd := he
    omega
  exact hM x hE hx.1 hx.2

end InitECandidate.Solver.MemSafe.Dn
#print axioms InitECandidate.Solver.MemSafe.Dn.arrS_co
#print axioms InitECandidate.Solver.MemSafe.Dn.arrS_vin
