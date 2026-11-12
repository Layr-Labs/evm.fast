import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data368
import InitECandidate.Proofs.FrontendStages.Crep.Data369
import InitECandidate.Proofs.FrontendStages.Crep.Data370
import InitECandidate.Proofs.FrontendStages.Crep.Data371
import InitECandidate.Proofs.FrontendStages.Crep.Data372
import InitECandidate.Proofs.FrontendStages.Crep.Data373
import InitECandidate.Proofs.FrontendStages.Crep.Data374
import InitECandidate.Proofs.FrontendStages.Crep.Data375
import InitECandidate.Proofs.FrontendStages.Crep.Data376
import InitECandidate.Proofs.FrontendStages.Crep.Data377
import InitECandidate.Proofs.FrontendStages.Crep.Data378
import InitECandidate.Proofs.FrontendStages.Crep.Data379
import InitECandidate.Proofs.FrontendStages.Crep.Data380
import InitECandidate.Proofs.FrontendStages.Crep.Data381
import InitECandidate.Proofs.FrontendStages.Crep.Data382
import InitECandidate.Proofs.FrontendStages.Crep.Data383

/-! `csize ≤ crepS` on the crep entries `output368` … `output383` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part23
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `368` … `383` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output368, output369, output370, output371, output372, output373, output374, output375, output376, output377, output378, output379, output380, output381, output382, output383]

theorem o368 : crepOkB crepS output368 = true := crepOkB_of_raw data368 (by kernel_rfl)
theorem o369 : crepOkB crepS output369 = true := crepOkB_of_raw data369 (by kernel_rfl)
theorem o370 : crepOkB crepS output370 = true := crepOkB_of_raw data370 (by kernel_rfl)
theorem o371 : crepOkB crepS output371 = true := crepOkB_of_raw data371 (by kernel_rfl)
theorem o372 : crepOkB crepS output372 = true := crepOkB_of_raw data372 (by kernel_rfl)
theorem o373 : crepOkB crepS output373 = true := crepOkB_of_raw data373 (by kernel_rfl)
theorem o374 : crepOkB crepS output374 = true := crepOkB_of_raw data374 (by kernel_rfl)
theorem o375 : crepOkB crepS output375 = true := crepOkB_of_raw data375 (by kernel_rfl)
theorem o376 : crepOkB crepS output376 = true := crepOkB_of_raw data376 (by kernel_rfl)
theorem o377 : crepOkB crepS output377 = true := crepOkB_of_raw data377 (by kernel_rfl)
theorem o378 : crepOkB crepS output378 = true := crepOkB_of_raw data378 (by kernel_rfl)
theorem o379 : crepOkB crepS output379 = true := crepOkB_of_raw data379 (by kernel_rfl)
theorem o380 : crepOkB crepS output380 = true := crepOkB_of_raw data380 (by kernel_rfl)
theorem o381 : crepOkB crepS output381 = true := crepOkB_of_raw data381 (by kernel_rfl)
theorem o382 : crepOkB crepS output382 = true := crepOkB_of_raw data382 (by kernel_rfl)
theorem o383 : crepOkB crepS output383 = true := crepOkB_of_raw data383 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o368 (all_cons_of o369 (all_cons_of o370 (all_cons_of o371 (all_cons_of o372 (all_cons_of o373 (all_cons_of o374 (all_cons_of o375 (all_cons_of o376 (all_cons_of o377 (all_cons_of o378 (all_cons_of o379 (all_cons_of o380 (all_cons_of o381 (all_cons_of o382 (all_cons_of o383 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part23

#print axioms InitECandidate.Solver.Concrete.Crep.Part23.ok
