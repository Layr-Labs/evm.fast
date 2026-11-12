import InitECandidate.Solver.SourceCost.Shards.States

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.SourceCost.Shards
open InitECandidate.Solver.SourceCost Flapjack.Basis.Pure.MlString
open Flapjack.Pancake.PanLang (MlS ProgHOL)

theorem chunk1_step : chunk1.foldl tblStep2 state1 = state2 := by
  decide_cbv

theorem chunk1_valid : ∀ p ∈ chunk1, PairValid p :=
  (valid_cons (declPair_valid (List.getElem_mem (n := 30) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 31) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 32) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 33) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 34) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 35) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 36) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 38) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 39) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 40) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 41) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 42) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 43) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 44) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 45) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 46) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 47) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 48) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 49) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 50) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 51) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 52) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 53) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 54) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 55) (by decide)) ⟨_, rfl⟩)
    valid_nil)))))))))))))))))))))))))

end InitECandidate.Solver.SourceCost.Shards
