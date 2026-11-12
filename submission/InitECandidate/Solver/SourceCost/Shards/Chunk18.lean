import InitECandidate.Solver.SourceCost.Shards.States

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.SourceCost.Shards
open InitECandidate.Solver.SourceCost Flapjack.Basis.Pure.MlString
open Flapjack.Pancake.PanLang (MlS ProgHOL)

theorem chunk18_step : chunk18.foldl tblStep2 state18 = state19 := by
  decide_cbv

theorem chunk18_valid : ∀ p ∈ chunk18, PairValid p :=
  (valid_cons (declPair_valid (List.getElem_mem (n := 494) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 495) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 496) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 497) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 498) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 499) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 500) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 501) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 502) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 503) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 504) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 505) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 506) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 507) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 508) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 509) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 510) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 511) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 512) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 513) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 514) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 515) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 516) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 517) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 518) (by decide)) ⟨_, rfl⟩)
    valid_nil)))))))))))))))))))))))))

end InitECandidate.Solver.SourceCost.Shards
