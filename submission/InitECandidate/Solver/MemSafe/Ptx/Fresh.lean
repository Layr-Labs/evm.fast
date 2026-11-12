import InitECandidate.Solver.MemSafe.Ptx.Kit

/-!
# F3: a fresh block as a disjoint, fresh object
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Struct

variable {σ : Type}

theorem fresh_byte {Γ : Gam} {p0 p : Ptrs} (h0 : p0.Ordered) (h : p.Ordered) {w : BitVec 64} {n : Nat}
    (hn8 : n % 8 = 0) (hf : FreshBuf Γ p0 p w n) {a : Nat} (ha1 : w.toNat ≤ a) (ha2 : a < w.toNat + n)
    (ha64 : a < 2 ^ 64) : Fresh p0 p (BitVec.ofNat 64 a) := by
  have hc64 : a / 8 * 8 < 2 ^ 64 := by omega
  have hov : Overlap w.toNat n (BitVec.ofNat 64 (a / 8 * 8)) := by
    unfold Overlap
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hc64]
    have := hf.1
    omega
  have hfr := (hf.2 _ hov).1
  unfold Fresh at hfr ⊢
  rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hc64] at hfr
  rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt ha64]
  unfold Ptrs.Ordered at h0 h
  omega

/-- A fresh block of whole cells is disjoint from `Γ`. -/
theorem freshBuf_disj {C : Cfg} {Γ : Gam} {p0 p : Ptrs} (hL : Layout C p Γ) {w : BitVec 64} {n : Nat}
    (hn8 : n % 8 = 0) (hf : FreshBuf Γ p0 p w n) {a : Nat} (ha1 : w.toNat ≤ a)
    (ha2 : a < w.toNat + n) (hw : w.toNat + n < 2 ^ 64) : ¬ InObj Γ a := by
  intro hin
  have hc : InObj Γ (a / 8 * 8) := by
    obtain ⟨o, ho, h1, h2⟩ := hin
    obtain ⟨a1, a2, -⟩ := hL.1 o ho
    refine ⟨o, ho, ?_, ?_⟩ <;> unfold Obj.lo Obj.hi at * <;> omega
  have hc64 : a / 8 * 8 < 2 ^ 64 := by omega
  have hov : Overlap w.toNat n (BitVec.ofNat 64 (a / 8 * 8)) := by
    unfold Overlap
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hc64]
    have := hf.1
    omega
  have := (hf.2 _ hov).2
  rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hc64] at this
  exact this hc

end InitECandidate.Solver.MemSafe.Ptx
