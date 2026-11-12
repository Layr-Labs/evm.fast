import InitECandidate.Solver.Spec.Inv.Memcpy

/-!
# `memcpy` does not wrap around the address space

**`funSpec_memcpy_nw`**: a returning `memcpy(D, S, N)` with `64 ≤ D` and a memory domain above
`128` has `D + N < 2 ^ 64 + 8`. Every store of the copy is at `D + i + k` (`k < 32`); a store whose
address wrapped past `2 ^ 64` would be below `128`, outside the domain. So the loop counter keeps
`D + i < 2 ^ 64 + 8`, and the copy ends with `i ≥ N`.

`set_retdata` needs it: for `n ≥ 2 ^ 64 - 8` its `alloc(n + 8)` wraps to a tiny block, and only
the fault of the following `memcpy(dst, p, n)` rules that run out.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.Spec.Inv

section nw
variable {σ : Type} {X : Ctx 64} (s0 : PanSemStateFiniteExact 64 σ) (D S N : BitVec 64)

/-- The locals and the domain at loop counter `I`, with `D + I < 2 ^ 64 + 8`. -/
def NWI (I : BitVec 64) (u : PanSemStateFiniteExact 64 σ) : Prop :=
  DLk u "dst" D ∧ DLk u "src" S ∧ DLk u "n" N ∧ DLk u "i" I ∧ u.memaddrs = s0.memaddrs ∧
    D.toNat + I.toNat < 2 ^ 64 + 8

/-- Loop head state. -/
def NW (u : PanSemStateFiniteExact 64 σ) : Prop := ∃ I : BitVec 64, NWI s0 D S N I u

variable {s0 D S N} (hdom : ∀ a, s0.memaddrs a → 128 ≤ a.toNat) (hD : 64 ≤ D.toNat)
include hdom hD

theorem nw_addr {I : BitVec 64} {k : Nat} (hk : k < 32) (hI : D.toNat + I.toNat < 2 ^ 64 + 8)
    (h : 128 ≤ (D + BitVec.ofNat 64 (I.toNat + k)).toNat / 8 * 8) :
    D.toNat + I.toNat + k < 2 ^ 64 := by
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : I.toNat + k < 2 ^ 64)] at h
  by_contra hc
  rw [show (D.toNat + (I.toNat + k)) % 2 ^ 64 = D.toNat + I.toNat + k - 2 ^ 64 by omega] at h
  have := Nat.div_mul_le_self (D.toNat + I.toNat + k - 2 ^ 64) 8
  omega

theorem nw_stW {I : BitVec 64} (k : Nat) (hk : k < 32) :
    Hoare σ X (NWI s0 D S N I) (stW k)
      (fun r u => r = none ∧ (NWI s0 D S N I u ∧ D.toNat + I.toNat + k < 2 ^ 64)) := by
  refine hoare_store fun u _ ⟨hDl, hS, hN, hI, hd, hb⟩ w v mem hw hv hmem => ?_
  rw [ev_oE hDl hI] at hw
  cases hw
  obtain ⟨w', -, -, rfl⟩ := ev_load_one hv
  rw [mem_word u.memory] at hmem
  obtain ⟨hdD, rfl⟩ := store_word_dom hmem
  refine ⟨rfl, ⟨hDl, hS, hN, hI, hd, hb⟩, ?_⟩
  rw [hd] at hdD
  have h1 := hdom _ hdD
  exact nw_addr hdom hD hk hb (by omega)

theorem nw_stB {I : BitVec 64} (k : Nat) (hk : k < 32) :
    Hoare σ X (NWI s0 D S N I) (stB k)
      (fun r u => r = none ∧ (NWI s0 D S N I u ∧ D.toNat + I.toNat + k < 2 ^ 64)) := by
  refine hoare_storeByte fun u _ ⟨hDl, hS, hN, hI, hd, hb⟩ w x mem hw _ hmem => ?_
  rw [ev_oE hDl hI] at hw
  cases hw
  obtain ⟨hdD, rfl⟩ := storeByte_eq hmem
  refine ⟨rfl, ⟨hDl, hS, hN, hI, hd, hb⟩, ?_⟩
  rw [hd] at hdD
  have h1 := hdom _ hdD
  rw [align_toNat] at h1
  exact nw_addr hdom hD hk hb h1

theorem nw_inc {I : BitVec 64} (k j : Nat) (hj : j ≤ k + 8) :
    Hoare σ X (fun u => NWI s0 D S N I u ∧ D.toNat + I.toNat + k < 2 ^ 64) (incI j)
      (fun r u => r = none ∧ NW s0 D S N u) := by
  refine hoare_assign fun u _ ⟨⟨hDl, hS, hN, hI, hd, hb⟩, hlt⟩ v hv _ => ?_
  rw [ev_add2 (ev_lv_w hI) (ev_cw u j)] at hv
  cases hv
  have ht : (I + BitVec.ofNat 64 j).toNat = I.toNat + j := by
    rw [ofs_eq, BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
  refine ⟨rfl, I + BitVec.ofNat 64 j, by lks, by lks, by lks, ?_, hd, by rw [ht]; omega⟩
  unfold DLk; rw [lk_set_self]

/-- A loop whose body is a store sequence then an increment keeps `NW`. -/
theorem nw_loop {c : ExpHOL 64} {b : ProgHOL 64}
    (hb : ∀ I, Hoare σ X (NWI s0 D S N I) b (fun r u => r = none ∧ NW s0 D S N u)) :
    Hoare σ X (NW s0 D S N) (.while c b) (fun r u => r = none ∧ NW s0 D S N u) := by
  refine hoare_while (fun _ h => h) ?_ (fun u _ h _ => ⟨rfl, h⟩)
  intro u hu ⟨⟨I, hI⟩, _⟩ ht
  have := hb I u hu hI ht
  refine ⟨fun _ => this.2, fun hr => absurd (this.1.symm.trans hr) (by simp),
    fun hr => absurd (this.1.symm.trans hr) (by simp), fun v hr => absurd (this.1.symm.trans hr) (by simp)⟩

theorem nw_W32 : Hoare σ X (NW s0 D S N) (.while (geN 32) cpW32) (fun r u => r = none ∧ NW s0 D S N u) :=
  nw_loop hdom hD fun _ => hseq (nw_stW hdom hD 0 (by omega)) (hoare_pre (hseq (nw_stW hdom hD 8 (by omega))
    (hoare_pre (hseq (nw_stW hdom hD 16 (by omega)) (hoare_pre (hseq (nw_stW hdom hD 24 (by omega))
      (nw_inc hdom hD 24 32 (by omega))) (fun _ _ h => h.1))) (fun _ _ h => h.1))) (fun _ _ h => h.1))

theorem nw_W8 : Hoare σ X (NW s0 D S N) (.while (geN 8) cpW8) (fun r u => r = none ∧ NW s0 D S N u) :=
  nw_loop hdom hD fun _ => hseq (nw_stW hdom hD 0 (by omega)) (nw_inc hdom hD 0 8 (by omega))

theorem nw_B8 : Hoare σ X (NW s0 D S N) (.while (geN 8) cpB8) (fun r u => r = none ∧ NW s0 D S N u) := by
  refine nw_loop hdom hD fun _ => ?_
  refine hseq (nw_stB hdom hD 0 (by omega)) (hoare_pre ?_ (fun _ _ h => h.1))
  refine hseq (nw_stB hdom hD 1 (by omega)) (hoare_pre ?_ (fun _ _ h => h.1))
  refine hseq (nw_stB hdom hD 2 (by omega)) (hoare_pre ?_ (fun _ _ h => h.1))
  refine hseq (nw_stB hdom hD 3 (by omega)) (hoare_pre ?_ (fun _ _ h => h.1))
  refine hseq (nw_stB hdom hD 4 (by omega)) (hoare_pre ?_ (fun _ _ h => h.1))
  refine hseq (nw_stB hdom hD 5 (by omega)) (hoare_pre ?_ (fun _ _ h => h.1))
  refine hseq (nw_stB hdom hD 6 (by omega)) (hoare_pre ?_ (fun _ _ h => h.1))
  exact hseq (nw_stB hdom hD 7 (by omega)) (nw_inc hdom hD 7 8 (by omega))

theorem nw_B1 : Hoare σ X (NW s0 D S N) (.while (.cmp .lower (lv (nm "i")) (lv (nm "n"))) cpB1)
    (fun r _ => r = none ∧ D.toNat + N.toNat < 2 ^ 64 + 8) := by
  refine hoare_while (I := NW s0 D S N) (fun _ h => h) ?_ ?_
  · intro u hu ⟨⟨I, hI⟩, _⟩ ht
    have := hseq (nw_stB hdom hD (I := I) 0 (by omega)) (nw_inc hdom hD 0 1 (by omega)) u hu hI ht
    refine ⟨fun _ => this.2, fun hr => absurd (this.1.symm.trans hr) (by simp),
      fun hr => absurd (this.1.symm.trans hr) (by simp), fun v hr => absurd (this.1.symm.trans hr) (by simp)⟩
  · intro u _ ⟨I, _, _, hN, hI, _, hb⟩ hc
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
    rw [ev_lv_w hI] at hx
    rw [ev_lv_w hN] at hy
    cases hx; cases hy
    have := lower_false hxy
    exact ⟨rfl, by omega⟩

omit hD in
theorem nw_zero (hD : DLk s0 "dst" D) (hS : DLk s0 "src" S) (hN : DLk s0 "n" N) (hD64 : 64 ≤ D.toNat) :
    NW s0 D S N (setVarHOLFinite (nm "i") (.val (.word (BitVec.ofNat 64 0))) s0) := by
  refine ⟨0, by lks, by lks, by lks, by unfold DLk; rw [lk_set_self]; rfl, rfl, ?_⟩
  have := D.isLt
  simp only [BitVec.ofNat_eq_ofNat, BitVec.toNat_ofNat, Nat.zero_mod]
  omega

theorem nw_body (hDl : DLk s0 "dst" D) (hS : DLk s0 "src" S) (hN : DLk s0 "n" N) :
    Hoare σ X (fun t => t = s0) mcBody
      (fun r _ => ∀ v, r = some (.returned v) → D.toNat + N.toNat < 2 ^ 64 + 8) := by
  refine hoare_dec fun u _ hu v hv _ => ?_
  have hu' : u = s0 := hu
  subst hu'
  rw [ev_cw] at hv
  cases hv
  have h0 := nw_zero hdom hDl hS hN hD
  refine hseq (R := NW u D S N) ?_ ?_
  · refine hoare_ite ?_ ?_
    · intro t ht ⟨ht0, _⟩ htr
      subst ht0
      exact hseq (nw_W32 hdom hD) (nw_W8 hdom hD) _ ht h0 htr
    · exact hoare_skip fun t _ ⟨ht0, _⟩ => by subst ht0; exact ⟨rfl, h0⟩
  · refine hseq (nw_B8 hdom hD) (hseq (nw_B1 hdom hD) ?_)
    refine hoare_return fun t _ hcs v _ => ?_
    intro v' _
    exact hcs

end nw

section spec
variable {σ : Type} {X : Ctx 64}

/-- **`memcpy` does not wrap**: a returning copy to `D ≥ 64` (domain above `128`) has
`D + N < 2 ^ 64 + 8`. -/
theorem funSpec_memcpy_nw (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "memcpy") (fun vs s r _ => ∀ D S N : BitVec 64,
      vs = [.val (.word D), .val (.word S), .val (.word N)] → 64 ≤ D.toNat →
      (∀ a, s.memaddrs a → 128 ≤ a.toNat) → ∀ v, r = .returned v →
        D.toNat + N.toNat < 2 ^ 64 + 8) := by
  intro vs body callee rs hl s hs hloc r hr D S N hvs hD hdom v hv
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, C, hABC, -, -, -, hA, hB, hC'⟩ :=
    lookupCode_three_full code_memcpy (by decide) (by decide) (by decide) hl
  rw [hvs] at hABC
  simp only [List.cons.injEq, and_true] at hABC
  obtain ⟨rfl, rfl, rfl⟩ := hABC
  have hDl : DLk s "dst" D := by unfold DLk; rw [hloc]; exact hA
  have hS : DLk s "src" S := by unfold DLk; rw [hloc]; exact hB
  have hN : DLk s "n" N := by unfold DLk; rw [hloc]; exact hC'
  have H := nw_body (X := X) hdom hD hDl hS hN s hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H
  exact H _ rfl

end spec

end InitECandidate.Solver.MemSafe.Frames
