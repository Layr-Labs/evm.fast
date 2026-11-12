import InitECandidate.Solver.MemSafe.Ptx.PtL8

/-!
# F3e: sub-buffers of an object with scalar slots are safe argument buffers; `env_eq`
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

macro "env_eq" : tactic =>
  `(tactic| (funext y; simp (config := {decide := true}) only [Env.set]; split_ifs <;> simp_all (config := {decide := true})))

/-- A byte range inside an object whose slots are all scalar is a safe buffer. -/
theorem bufok0_obj {p0 : Ptrs} {Γ : Gam} {p : Ptrs} {u : State σ} (hG : G guestC (HR σ) Γ u)
    (hp : ptrsOf u = some p) {o : Obj} (ho : o ∈ Γ) (hslot : ∀ k, (guestC.ty o.ty).slot k = .scalar)
    {d : BitVec 64} {m : Nat} (h1 : o.lo ≤ d.toNat) (h2 : d.toNat + m ≤ o.hi) :
    (Fct.bufok0 d m).holds p0 Γ p u := by
  obtain ⟨q, hq, hord, hL, -⟩ := hG
  obtain rfl : q = p := Option.some.inj (hq.symm.trans hp)
  obtain ⟨o8, os8, -, -, -⟩ := hL.1 o ho
  have hb64 : heapEnd < 2 ^ 64 := by unfold heapEnd; norm_num
  have hcell : ∀ x : BitVec 64, Overlap d.toNat m x → ∃ k, o.HasSlot k ∧ x = o.cell k := by
    intro x hx
    obtain ⟨hx8, hx1, hx2⟩ := hx
    simp only [Obj.lo, Obj.hi] at h1 h2 o8 os8
    have hhi := (hL.1 o ho).2.2.2.2
    have hlo : o.base.toNat ≤ x.toNat := by omega
    have hhx : x.toNat + 8 ≤ o.base.toNat + o.size := by omega
    refine ⟨(x.toNat - o.base.toNat) / 8, by unfold Obj.HasSlot; omega, ?_⟩
    apply BitVec.eq_of_toNat_eq
    rw [(cell_toNat hord hL ho (k := (x.toNat - o.base.toNat) / 8) (by unfold Obj.HasSlot; omega)).1]
    unfold Obj.lo
    omega
  constructor
  · intro x hx
    obtain ⟨k, hk, rfl⟩ := hcell x hx
    exact Or.inl ⟨o, ho, k, hk, hslot k, rfl⟩
  · intro x hx
    obtain ⟨k, hk, rfl⟩ := hcell x hx
    exact Or.inl (cell_in hord hL ho hk)

end InitECandidate.Solver.MemSafe.Ptx
