import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data448
import InitECandidate.Proofs.FrontendStages.Crep.Data449
import InitECandidate.Proofs.FrontendStages.Crep.Data450
import InitECandidate.Proofs.FrontendStages.Crep.Data451
import InitECandidate.Proofs.FrontendStages.Crep.Data452
import InitECandidate.Proofs.FrontendStages.Crep.Data453
import InitECandidate.Proofs.FrontendStages.Crep.Data454
import InitECandidate.Proofs.FrontendStages.Crep.Data455
import InitECandidate.Proofs.FrontendStages.Crep.Data456
import InitECandidate.Proofs.FrontendStages.Crep.Data457
import InitECandidate.Proofs.FrontendStages.Crep.Data458
import InitECandidate.Proofs.FrontendStages.Crep.Data459
import InitECandidate.Proofs.FrontendStages.Crep.Data460
import InitECandidate.Proofs.FrontendStages.Crep.Data461
import InitECandidate.Proofs.FrontendStages.Crep.Data462
import InitECandidate.Proofs.FrontendStages.Crep.Data463

/-! `csize ≤ crepS` on the crep entries `output448` … `output463` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part28
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `448` … `463` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output448, output449, output450, output451, output452, output453, output454, output455, output456, output457, output458, output459, output460, output461, output462, output463]

theorem o448 : crepOkB crepS output448 = true := crepOkB_of_raw data448 (by kernel_rfl)
theorem o449 : crepOkB crepS output449 = true := crepOkB_of_raw data449 (by kernel_rfl)
theorem o450 : crepOkB crepS output450 = true := crepOkB_of_raw data450 (by kernel_rfl)
theorem o451 : crepOkB crepS output451 = true := crepOkB_of_raw data451 (by kernel_rfl)
theorem o452 : crepOkB crepS output452 = true := crepOkB_of_raw data452 (by kernel_rfl)
theorem o453 : crepOkB crepS output453 = true := crepOkB_of_raw data453 (by kernel_rfl)
theorem o454 : crepOkB crepS output454 = true := crepOkB_of_raw data454 (by kernel_rfl)
theorem o455 : crepOkB crepS output455 = true := crepOkB_of_raw data455 (by kernel_rfl)
theorem o456 : crepOkB crepS output456 = true := crepOkB_of_raw data456 (by kernel_rfl)
theorem o457 : crepOkB crepS output457 = true := crepOkB_of_raw data457 (by kernel_rfl)
theorem o458 : crepOkB crepS output458 = true := crepOkB_of_raw data458 (by kernel_rfl)
theorem o459 : crepOkB crepS output459 = true := crepOkB_of_raw data459 (by kernel_rfl)
theorem o460 : crepOkB crepS output460 = true := crepOkB_of_raw data460 (by kernel_rfl)
theorem o461 : crepOkB crepS output461 = true := crepOkB_of_raw data461 (by kernel_rfl)
theorem o462 : crepOkB crepS output462 = true := crepOkB_of_raw data462 (by kernel_rfl)
theorem o463 : crepOkB crepS output463 = true := crepOkB_of_raw data463 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o448 (all_cons_of o449 (all_cons_of o450 (all_cons_of o451 (all_cons_of o452 (all_cons_of o453 (all_cons_of o454 (all_cons_of o455 (all_cons_of o456 (all_cons_of o457 (all_cons_of o458 (all_cons_of o459 (all_cons_of o460 (all_cons_of o461 (all_cons_of o462 (all_cons_of o463 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part28

#print axioms InitECandidate.Solver.Concrete.Crep.Part28.ok
