import InitECandidate.Solver.MemSafe.Hooks.RecWs
import InitECandidate.Solver.Spec.Mpt.Leaves.Nodedb

/-!
# Lemma (a): a frozen node DB satisfies `NdbW` below `heap_ptr` (witg)

**`ndbW_of_ndbR : Layout guestC p Γ → NdbR Γ m T → NdbW T p.hp m`**: the witness set `S` of
`NdbW` is the reachable set `Rch m T`; every record cell lies in a live heap object, so in
`[heapBase, hp)`, and every slice ends below its record object's end, so below `hp`.
-/

namespace InitECandidate.Solver.Wit
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Leaves (NdbW InH)

/-- A record cell lies in the live heap. -/
theorem inH_of_rcell {p : Ptrs} {Γ : Gam} (hL : Layout guestC p Γ) {a : BitVec 64}
    (h : RCell Γ a) : InH p.hp a := by
  obtain ⟨x, hx, hreg, h1, h2⟩ := rcell_in h
  have hl := (hL.1 x hx).2.2.2.2
  rw [hreg] at hl
  simp only [Region.Live] at hl
  unfold InH; unfold Obj.hi Obj.lo at *; omega

/-- **Lemma (a).** A frozen node DB (`NdbR`, the `wsD` row's invariant) is a node DB in the
sense of `nodedb_lookup` (`NdbW`) below the current `heap_ptr`. -/
theorem ndbW_of_ndbR {p : Ptrs} {Γ : Gam} (hL : Layout guestC p Γ) {m : Mem} {T : BitVec 64}
    (h : NdbR Γ m T) : NdbW T p.hp m := by
  obtain ⟨h0, h40, h56, hS⟩ := h
  refine ⟨inH_of_rcell hL h0, inH_of_rcell hL h40, inH_of_rcell hL h56, Rch m T, Rch.root,
    fun n hr hn0 => ?_⟩
  obtain ⟨k24, k8, hleaf, hint⟩ := hS n hr hn0
  refine ⟨inH_of_rcell hL k24, inH_of_rcell hL k8, fun hk => ?_,
    fun hk => ⟨inH_of_rcell hL (hint hk), Rch.left hr hn0 hk, Rch.right hr hn0 hk⟩⟩
  have hsl := hleaf hk
  obtain ⟨c0, c8⟩ := slRec_cells hsl
  obtain ⟨⟨x, hx, -, hreg, k, -, -, -, -, -, hb, hend⟩, -⟩ := hsl
  have hl := (hL.1 x hx).2.2.2.2
  rw [hreg] at hl
  simp only [Region.Live] at hl
  refine ⟨inH_of_rcell hL c0, inH_of_rcell hL c8, hb, ?_⟩
  show (rd m (Inv.LEFT m T n)).toNat + (rd m (Inv.LEFT m T n + BitVec.ofNat 64 8)).toNat ≤ p.hp
  unfold Obj.hi Obj.lo at *; omega

end InitECandidate.Solver.Wit

#print axioms InitECandidate.Solver.Wit.ndbW_of_ndbR
