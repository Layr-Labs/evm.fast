import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data272
import InitECandidate.Proofs.FrontendStages.Crep.Data273
import InitECandidate.Proofs.FrontendStages.Crep.Data274
import InitECandidate.Proofs.FrontendStages.Crep.Data275
import InitECandidate.Proofs.FrontendStages.Crep.Data276
import InitECandidate.Proofs.FrontendStages.Crep.Data277
import InitECandidate.Proofs.FrontendStages.Crep.Data278
import InitECandidate.Proofs.FrontendStages.Crep.Data279
import InitECandidate.Proofs.FrontendStages.Crep.Data280
import InitECandidate.Proofs.FrontendStages.Crep.Data281
import InitECandidate.Proofs.FrontendStages.Crep.Data282
import InitECandidate.Proofs.FrontendStages.Crep.Data283
import InitECandidate.Proofs.FrontendStages.Crep.Data284
import InitECandidate.Proofs.FrontendStages.Crep.Data285
import InitECandidate.Proofs.FrontendStages.Crep.Data286
import InitECandidate.Proofs.FrontendStages.Crep.Data287

/-! `csize ≤ crepS` on the crep entries `output272` … `output287` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part17
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `272` … `287` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output272, output273, output274, output275, output276, output277, output278, output279, output280, output281, output282, output283, output284, output285, output286, output287]

theorem o272 : crepOkB crepS output272 = true := crepOkB_of_raw data272 (by kernel_rfl)
theorem o273 : crepOkB crepS output273 = true := crepOkB_of_raw data273 (by kernel_rfl)
theorem o274 : crepOkB crepS output274 = true := crepOkB_of_raw data274 (by kernel_rfl)
theorem o275 : crepOkB crepS output275 = true := crepOkB_of_raw data275 (by kernel_rfl)
theorem o276 : crepOkB crepS output276 = true := crepOkB_of_raw data276 (by kernel_rfl)
theorem o277 : crepOkB crepS output277 = true := crepOkB_of_raw data277 (by kernel_rfl)
theorem o278 : crepOkB crepS output278 = true := crepOkB_of_raw data278 (by kernel_rfl)
theorem o279 : crepOkB crepS output279 = true := crepOkB_of_raw data279 (by kernel_rfl)
theorem o280 : crepOkB crepS output280 = true := crepOkB_of_raw data280 (by kernel_rfl)
theorem o281 : crepOkB crepS output281 = true := crepOkB_of_raw data281 (by kernel_rfl)
theorem o282 : crepOkB crepS output282 = true := crepOkB_of_raw data282 (by kernel_rfl)
theorem o283 : crepOkB crepS output283 = true := crepOkB_of_raw data283 (by kernel_rfl)
theorem o284 : crepOkB crepS output284 = true := crepOkB_of_raw data284 (by kernel_rfl)
theorem o285 : crepOkB crepS output285 = true := crepOkB_of_raw data285 (by kernel_rfl)
theorem o286 : crepOkB crepS output286 = true := crepOkB_of_raw data286 (by kernel_rfl)
theorem o287 : crepOkB crepS output287 = true := crepOkB_of_raw data287 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o272 (all_cons_of o273 (all_cons_of o274 (all_cons_of o275 (all_cons_of o276 (all_cons_of o277 (all_cons_of o278 (all_cons_of o279 (all_cons_of o280 (all_cons_of o281 (all_cons_of o282 (all_cons_of o283 (all_cons_of o284 (all_cons_of o285 (all_cons_of o286 (all_cons_of o287 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part17

#print axioms InitECandidate.Solver.Concrete.Crep.Part17.ok
