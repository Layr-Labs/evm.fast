import InitECandidate.Solver.MemSafe.Ra.Code
import InitECandidate.Solver.MemSafe.Ins.CallA
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false

/-!
# Owned blocks and the heap window (sonnet-ra)

* `Own p0 q Γ b n`: every aligned cell overlapping `[b, n)` lies outside all objects of `Γ`, is
  allocated in `q`, and was unallocated at the entry `p0` (a caller temporary since the entry).
  It gives `BufOK` and the footprint fact, and survives every non-growing call.
* `HI Mk Γ`: every heap object of `Γ` ends at or below `Mk`.
* `winOK_heap`: releasing the heap window at `Mk` is sound under `HI`.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Ra
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

def Own (p0 q : Ptrs) (Γ : Gam) (b n : Nat) : Prop :=
  ∀ x : BitVec 64, Overlap b n x →
    ¬ InObj Γ x.toNat ∧ q.Allocated x.toNat ∧ ¬ p0.Allocated x.toNat

theorem own_sub {p0 q : Ptrs} {Γ : Gam} {b n b' m : Nat} (h : Own p0 q Γ b n) (h1 : b ≤ b')
    (h2 : b' + m ≤ b + n) : Own p0 q Γ b' m := by
  intro x hx
  apply h x
  obtain ⟨a1, a2, a3⟩ := hx
  exact ⟨a1, by omega, by omega⟩

theorem own_bufOK {C : Cfg} {p0 q : Ptrs} {Γ : Gam} {b n : Nat} (h : Own p0 q Γ b n) :
    BufOK C Γ q b n := fun x hx => Or.inr ⟨(h x hx).1, (h x hx).2.1⟩

theorem own_foot {p0 q : Ptrs} {Γ : Gam} {b n : Nat} {x : BitVec 64} (h : Own p0 q Γ b n)
    (hx : Overlap b n x) : ¬ p0.Allocated x.toNat := (h x hx).2.2

theorem inObj_nf0 {Γ Γ' : Gam} {q : Ptrs} (h : NewFresh Γ Γ' q q) {x : BitVec 64}
    (hI : InObj Γ' x.toNat) : InObj Γ x.toNat := by
  obtain ⟨o, ho, h1, h2⟩ := hI
  rcases h o ho x h1 h2 with ⟨o0, ho0, hb, ht, h3, h4⟩ | hf
  · exact ⟨o0, ho0, h3, h4⟩
  · unfold Fresh at hf; omega

theorem own_step {p0 q q' : Ptrs} {Γ Γ' : Gam} {b n : Nat} (h : Own p0 q Γ b n)
    (hm : q.Mono q') (hnf : NewFresh Γ Γ' q q) : Own p0 q' Γ' b n := by
  intro x hx
  obtain ⟨h1, h2, h3⟩ := h x hx
  refine ⟨fun hI => h1 (inObj_nf0 hnf hI), ?_, h3⟩
  unfold Ptrs.Mono at hm
  unfold Ptrs.Allocated at h2 ⊢
  omega

theorem own_co {a : Act σ} {sg' : Sig} {vs : List (ValueHOL 64)} {Γ Γ' : Gam} {q q' : Ptrs}
    {s st : State σ} {r : PanSemResultExact 64} (co : CO a sg' vs Γ Γ' q q' s st r)
    (hg : sg'.grows = false) {b n : Nat} (h : Own a.p0 q Γ b n) : Own a.p0 q' Γ' b n :=
  own_step h co.mono (co.nfp hg)

/-- A fresh block, allocated since the entry. -/
theorem own_of_fresh {a : Act σ} {Γ' : Gam} {q q' : Ptrs} (hq : q.Ordered) (hq' : q'.Ordered)
    (hm : q.Mono q') (hm0 : a.p0.Mono q) (h0 : a.p0.Ordered) {w : BitVec 64} {n : Nat}
    (hf : FreshBuf Γ' q q' w n) : Own a.p0 q' Γ' w.toNat n := by
  intro x hx
  obtain ⟨hfr, hni⟩ := hf.2 x hx
  refine ⟨hni, fresh_alloc hq hfr, ?_⟩
  exact fresh_not_alloc h0 hq' (mono_trans hm0 hm) (fresh_mono hm0 hfr)

/-! ## The end of a writable buffer -/

theorem obj_end_le {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ) {o : Obj}
    (ho : o ∈ Γ) : o.lo + o.size ≤ scratchEnd := by
  have h1 := (hL.1 o ho).2.2.2.2
  unfold Region.Live at h1
  unfold Ptrs.Ordered at hord
  have he : heapEnd ≤ scratchEnd := by decide
  split at h1 <;> omega

/-- The cells of a writable buffer are below `scratchEnd`, and so is its end. -/
theorem bufOK_end {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ) {b n : Nat}
    (hb : b < 2 ^ 64) (hn : 0 < n) (hn2 : n < 2 ^ 32) (h : BufOK C Γ p b n) : b + n ≤ scratchEnd := by
  have hse : scratchEnd < 2 ^ 60 := by decide
  have hcell : ∀ x : BitVec 64, Overlap b n x → x.toNat + 8 ≤ scratchEnd := by
    intro x hx
    rcases h x hx with ⟨o, ho, k, hk, -, rfl⟩ | ⟨-, hal⟩
    · obtain ⟨h1, h2⟩ := cell_toNat hord hL ho hk
      unfold Obj.HasSlot at hk
      omega
    · unfold Ptrs.Ordered at hord
      have h8 := hx.1
      unfold Ptrs.Allocated at hal
      have : scratchEnd % 8 = 0 := by decide
      have he : heapEnd ≤ scratchEnd := by decide
      have he8 : heapEnd % 8 = 0 := by decide
      omega
  have hx0 : Overlap b n (BitVec.ofNat 64 (b / 8 * 8)) := by
    refine ⟨?_, ?_, ?_⟩ <;>
      simp only [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : b / 8 * 8 < 2 ^ 64)] <;> omega
  have h0 := hcell _ hx0
  rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : b / 8 * 8 < 2 ^ 64)] at h0
  have hx1 : Overlap b n (BitVec.ofNat 64 ((b + n - 1) / 8 * 8)) := by
    refine ⟨?_, ?_, ?_⟩ <;>
      simp only [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : (b + n - 1) / 8 * 8 < 2 ^ 64)] <;>
      omega
  have h1 := hcell _ hx1
  rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : (b + n - 1) / 8 * 8 < 2 ^ 64)] at h1
  omega

/-! ## Heap objects below the mark -/

def HI (Mk : Nat) (Γ : Gam) : Prop :=
  ∀ o ∈ Γ, (Types.guestC.ty o.ty).region = .heap → o.hi ≤ Mk

theorem hi_nf0 {q q' : Ptrs} {Γ Γ' : Gam} {Mk : Nat} (hord : q'.Ordered)
    (hL : Layout Types.guestC q' Γ') (nf : NewFresh Γ Γ' q q) (hI : HI Mk Γ) : HI Mk Γ' := by
  intro o ho hr
  have hsz := (hL.1 o ho).2.2.1
  have hend := obj_end_le hord hL ho
  have hse : scratchEnd < 2 ^ 60 := by decide
  have hcell : (BitVec.ofNat 64 (o.lo + o.size - 1)).toNat = o.lo + o.size - 1 := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  rcases nf o ho (BitVec.ofNat 64 (o.lo + o.size - 1)) (by rw [hcell]; omega)
      (by rw [hcell]; unfold Obj.hi Obj.lo; omega) with ⟨o0, ho0, hb, ht, h3, h4⟩ | hf
  · have := hI o0 ho0 (by rw [ht]; exact hr)
    rw [hcell] at h4
    unfold Obj.hi Obj.lo at *
    omega
  · unfold Fresh at hf; omega

theorem winOK_heap {a : Act σ} (ha : ActOK a X) (haC : a.C = Types.guestC) {Γ : Gam} {q : Ptrs}
    {s : State σ} (hh : Heap a Γ q s) {Mk : BitVec 64} (h8 : Mk.toNat % 8 = 0)
    (h0 : a.p0.hp ≤ Mk.toNat) (h1 : Mk.toNat ≤ q.hp) (hHI : HI Mk.toNat Γ) :
    WinOK a Γ q .heap Mk := by
  obtain ⟨⟨p1, hp1, hord, hL, -⟩, hps, hmono, -, hnf, -⟩ := hh
  rw [hps] at hp1
  cases hp1
  rw [haC] at hL
  have hmo : a.p0.Mono q := hmono
  refine ⟨h8, ⟨h0, hmono.2.1, hmono.2.2⟩, ⟨h1, le_rfl, le_rfl⟩, fun o ho => ?_, fun o ho x hx1 hx2 => ?_⟩
  · rw [haC]
    obtain ⟨-, -, -, -, hlive⟩ := hL.1 o ho
    cases hr : (Types.guestC.ty o.ty).region with
    | heap =>
      have := hHI o ho hr
      rw [hr] at hlive
      simp only [Region.Live, Ptrs.set] at hlive ⊢
      unfold Obj.hi Obj.lo at *
      omega
    | fmem => rw [hr] at hlive; simpa [Region.Live, Ptrs.set] using hlive
    | scratch => rw [hr] at hlive; simpa [Region.Live, Ptrs.set] using hlive
  · rcases hnf o ho x hx1 hx2 with hold | hfr
    · exact Or.inl hold
    · right
      have hlive := (hL.1 o ho).2.2.2.2
      unfold Ptrs.Ordered at hord
      simp only [Obj.lo, Obj.hi] at hx1 hx2
      unfold Fresh at hfr ⊢
      simp only [Ptrs.set]
      cases hr : (Types.guestC.ty o.ty).region with
      | heap =>
        have := hHI o ho hr
        unfold Obj.hi at this
        rcases hfr with h | h | h
        · exact Or.inl ⟨h.1, by omega⟩
        · exact Or.inr (Or.inl h)
        · exact Or.inr (Or.inr h)
      | fmem =>
        rw [hr] at hlive; simp only [Region.Live, Obj.lo] at hlive
        rcases hfr with h | h | h
        · omega
        · exact Or.inr (Or.inl h)
        · exact Or.inr (Or.inr h)
      | scratch =>
        rw [hr] at hlive; simp only [Region.Live, Obj.lo] at hlive
        rcases hfr with h | h | h
        · omega
        · exact Or.inr (Or.inl h)
        · exact Or.inr (Or.inr h)

end InitECandidate.Solver.MemSafe.Ra

#print axioms InitECandidate.Solver.MemSafe.Ra.own_of_fresh
#print axioms InitECandidate.Solver.MemSafe.Ra.bufOK_end
#print axioms InitECandidate.Solver.MemSafe.Ra.hi_nf0
#print axioms InitECandidate.Solver.MemSafe.Ra.winOK_heap
