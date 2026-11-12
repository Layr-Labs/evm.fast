import InitECandidate.Solver.MemSafe.Wg.Gp1

/-!
# Wg: `process_general_purpose_requests`, the deposit buffer state and its steps
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

/-- A fresh block is shorter than `2^32` bytes. -/
theorem fbuf_le {Γ : Gam} {p0 p : Ptrs} {w : BitVec 64} {N : Nat} (h0 : p0.Ordered) (h : p.Ordered)
    (hf : FreshBuf Γ p0 p w N) : N < 2 ^ 32 := by
  by_cases hN : N = 0
  · omega
  obtain ⟨hal, hfr⟩ := hf
  have hw := w.isLt
  have ha : (BitVec.ofNat 64 (min (w.toNat + N - 1) (2 ^ 64 - 1) / 8 * 8)).toNat =
      min (w.toNat + N - 1) (2 ^ 64 - 1) / 8 * 8 := by
    rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
  have hov : Overlap w.toNat N (BitVec.ofNat 64 (min (w.toNat + N - 1) (2 ^ 64 - 1) / 8 * 8)) := by
    refine ⟨by rw [ha]; omega, by rw [ha]; omega, by rw [ha]; omega⟩
  obtain ⟨hfresh, -⟩ := hfr _ hov
  unfold Fresh at hfresh
  unfold Ptrs.Ordered at h0 h
  unfold heapEnd scratchEnd at h0 h
  rw [ha] at hfresh
  omega

/-- The locals `dep`, `dep_n`, `dep_cap` of `process_general_purpose_requests`. -/
def EnDep (En : Env) (dep dn dc : BitVec 64) : Env :=
  ((En.set (nm "dep") (.val (.word dep))).set (nm "dep_n") (.val (.word dn))).set (nm "dep_cap") (.val (.word dc))

/-- The facts with the deposit buffer. -/
def DepS (S : FS) (dep : BitVec 64) (Nd : Nat) : FS := fun f => S f ∨ f = Fct.fbuf dep Nd

/-- `dep_n ≤ dep_cap ≤ Nd < 2^32`: the buffer holds `Nd` bytes, `dep_cap` of them are capacity. -/
def DepP (dn dc : BitVec 64) (Nd : Nat) : Prop := dn.toNat ≤ dc.toNat ∧ dc.toNat ≤ Nd ∧ Nd < 2 ^ 32

/-- The invariant of the deposit buffer state. -/
def DepI (E : EbE σ) (En : Env) (S : FS) : State σ → Prop := fun t =>
  ∃ (dep dn dc : BitVec 64) (Nd : Nat), DepP dn dc Nd ∧ PA E (EnDep En dep dn dc) (DepS S dep Nd) t

section g2
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS}

theorem envDep_get {dep dn dc : BitVec 64} :
    (EnDep En dep dn dc) (nm "dep") = some (.val (.word dep)) ∧ (EnDep En dep dn dc) (nm "dep_n") = some (.val (.word dn)) ∧
    (EnDep En dep dn dc) (nm "dep_cap") = some (.val (.word dc)) := by
  refine ⟨?_, ?_, ?_⟩ <;> simp (config := { decide := true }) [EnDep, Env.set]

theorem envDep_other {dep dn dc : BitVec 64} {x : MlS} (h1 : x ≠ nm "dep") (h2 : x ≠ nm "dep_n") (h3 : x ≠ nm "dep_cap") :
    (EnDep En dep dn dc) x = En x := by
  simp [EnDep, Env.set, h1, h2, h3]

end g2

end InitECandidate.Solver.MemSafe.Wg
