import InitECandidate.Solver.MemSafe.Frames.ChainXG

/-!
# The length of a log list (package L3)

`lnn_le_of_logsG`: from `LogsG` (its list array is a `Γ` object with `8 N ≤ size`) and a
`Layout`, `N ≤ 2^25`. Every object lies between `heapBase` and `scratchEnd`
(`scratchEnd - heapBase = 264167424 < 2^28`).
-/

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe.Types

/-- An object of a `Layout` is at most `scratchEnd - heapBase` bytes large. -/
theorem obj_size_le {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {o : Obj} (ho : o ∈ Γ) : o.size ≤ scratchEnd - heapBase := by
  obtain ⟨-, -, -, -, hlive⟩ := hL.1 o ho
  have h := hord
  unfold Ptrs.Ordered at h
  have hhe : heapBase ≤ heapEnd := by decide
  generalize (C.ty o.ty).region = r at hlive
  cases r <;> simp only [Region.Live] at hlive <;> unfold Obj.lo at hlive <;> omega

/-- **The log list has at most `2^25` elements.** -/
theorem lnn_le_of_logsG {C : Cfg} {p : Ptrs} {Γ : Gam} {m : Mem} {hp : Nat} {e : BitVec 64}
    (hord : p.Ordered) (hL : Layout C p Γ) (h : LogsG Γ m hp e) :
    (rd m (fld m e 88 + BitVec.ofNat 64 8)).toNat ≤ 2 ^ 25 := by
  obtain ⟨⟨x, hxΓ, -, -, hs⟩, -⟩ := h
  have := obj_size_le hord hL hxΓ
  have h2 : scratchEnd - heapBase < 2 ^ 28 := by decide
  omega

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.lnn_le_of_logsG
