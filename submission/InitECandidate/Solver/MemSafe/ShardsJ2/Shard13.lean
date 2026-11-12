import InitECandidate.Solver.MemSafe.ShardsJ2.Tabs

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.ShardsJ2
open InitECandidate.Solver.MemSafe.Shards
open InitECandidate.Solver.MemSafe InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

theorem chunk13_ok : chkChunk cfg tab18 chunk13 = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 2; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem chunk13_valid : ∀ e ∈ chunk13, e.Valid :=
  (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 616) (by decide)) ⟨_, rfl⟩) rfl _ _)
    mvalid_nil)

theorem chunk13_tab : chunkTab tab18 chunk13 = tab19 := rfl

end InitECandidate.Solver.MemSafe.ShardsJ2
