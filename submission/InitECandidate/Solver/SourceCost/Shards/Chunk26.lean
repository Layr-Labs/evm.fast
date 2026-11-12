import InitECandidate.Solver.SourceCost.Shards.States

set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.SourceCost.Shards
open InitECandidate.Solver.SourceCost Flapjack.Basis.Pure.MlString
open Flapjack.Pancake.PanLang (MlS ProgHOL)

theorem chunk26_step : chunk26.foldl tblStep2 state26 = state27 := by
  decide_cbv

theorem chunk26_valid : ∀ p ∈ chunk26, PairValid p :=
  (valid_cons (declPair_valid (List.getElem_mem (n := 812) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 815) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 802) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 814) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 773) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 799) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 800) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 716) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 797) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 798) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 809) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 821) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 622) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 623) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 827) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 625) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 626) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 629) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 627) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 628) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 624) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 630) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 828) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 829) (by decide)) ⟨_, rfl⟩)
    (valid_cons (declPair_valid (List.getElem_mem (n := 649) (by decide)) ⟨_, rfl⟩)
    valid_nil)))))))))))))))))))))))))

end InitECandidate.Solver.SourceCost.Shards
