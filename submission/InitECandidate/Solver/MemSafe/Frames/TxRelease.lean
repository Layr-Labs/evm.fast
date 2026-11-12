import InitECandidate.Solver.MemSafe.Frames.ChainXG

/-!
# Releasing a transaction's frame

`process_transaction` ends with `scratch_release(mk); frame_mem_release(mm)`, with `mk` / `mm` read
from memory. Once the typing holds only heap objects, any valid marks (`MarkVals`) keep `G`.

**`G_relHeap`**: `G` for heap-only `Γ` after moving the scratch and frame-memory pointers to valid
marks, memory unchanged. Together with `Aw.G_heapOnly` this is the whole transaction-level release;
`finish_child`'s `G_release` is the frame-level version, which keeps older scratch objects.
-/

set_option autoImplicit false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

/-- **`G` for a heap-only typing after a release to valid marks.** -/
theorem G_relHeap {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hAG : Helpers.AllocGlobs C)
    {Γ : Gam} {s t : State σ} (hG : G C H Γ s) (hHeap : ∀ o ∈ Γ, (C.ty o.ty).region = .heap)
    {mk mm : BitVec 64} (hMk : MarkVals mk mm) (hm : t.memory = s.memory)
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be)
    (hgs : t.globals.lookup gScratch = some (.val (.word mk)))
    (hgf : t.globals.lookup gFrame = some (.val (.word mm)))
    (hgo : ∀ g, g ≠ gScratch → g ≠ gFrame → t.globals.lookup g = s.globals.lookup g) :
    G C H Γ t := by
  have hG0 := hG
  obtain ⟨p, hp, hord, hL, -⟩ := hG0
  obtain ⟨ha, hb, hc, hga, -, -, rfl⟩ := ptrsOf_parts hp
  obtain ⟨m1, m2, m3, m4, m5⟩ := hMk
  have hO := hord
  unfold Ptrs.Ordered at hO
  simp only at hO
  have hp' : ptrsOf t = some ⟨ha.toNat, mm.toNat, mk.toNat⟩ := by
    refine ptrsOf_of (a := ha) (b := mm) (c := mk) ?_ ?_ ?_
    · unfold gword; rw [hgo gHeap (by decide) (by decide)]; unfold gword at hga
      exact hga
    · unfold gword; rw [hgf]
    · unfold gword; rw [hgs]
  have hord' : (⟨ha.toNat, mm.toNat, mk.toNat⟩ : Ptrs).Ordered := by
    unfold Ptrs.Ordered
    simp only
    omega
  refine G_reptr hH hAG hG hp' hord' (fun o ho => ?_) hm hd hbe
    (fun g h1 h2 h3 => hgo g h3 h2)
  have hr := hHeap o ho
  have hv := (live_of hL ho).1 hr
  rw [hr]
  show heapBase ≤ o.lo ∧ o.lo + o.size ≤ ha.toNat
  exact hv

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.G_relHeap
