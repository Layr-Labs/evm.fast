import InitECandidate.Solver.SourceCost.Shards.States

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.SourceCost.Shards
open InitECandidate.Solver.SourceCost Flapjack.Basis.Pure.MlString
open Flapjack.Pancake.PanLang (MlS ProgHOL)

theorem chunk10_step : chunk10.foldl tblStep2 state10 = state11 := by
  decide_cbv

theorem chunk10_valid : ∀ p ∈ chunk10, PairValid p :=
  (valid_cons (declPair_valid (List.getElem_mem (n := 276) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 277) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 278) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 279) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 280) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 286) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 281) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 288) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 289) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 287) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 282) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 283) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 284) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 285) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 290) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 291) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 292) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 293) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 294) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 296) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 297) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 298) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 299) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 300) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 301) (by decide)) ⟨_, rfl⟩)
    valid_nil)))))))))))))))))))))))))

end InitECandidate.Solver.SourceCost.Shards
