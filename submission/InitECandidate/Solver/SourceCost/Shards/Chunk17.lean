import InitECandidate.Solver.SourceCost.Shards.States

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.SourceCost.Shards
open InitECandidate.Solver.SourceCost Flapjack.Basis.Pure.MlString
open Flapjack.Pancake.PanLang (MlS ProgHOL)

theorem chunk17_step : chunk17.foldl tblStep2 state17 = state18 := by
  decide_cbv

theorem chunk17_valid : ∀ p ∈ chunk17, PairValid p :=
  (valid_cons (declPair_valid (List.getElem_mem (n := 469) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 470) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 471) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 472) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 473) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 474) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 475) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 476) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 477) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 478) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 479) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 480) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 481) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 482) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 483) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 484) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 485) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 486) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 487) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 488) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 489) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 490) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 491) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 492) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 493) (by decide)) ⟨_, rfl⟩)
    valid_nil)))))))))))))))))))))))))

end InitECandidate.Solver.SourceCost.Shards
