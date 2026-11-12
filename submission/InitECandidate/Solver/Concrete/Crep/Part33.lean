import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data528
import InitECandidate.Proofs.FrontendStages.Crep.Data529
import InitECandidate.Proofs.FrontendStages.Crep.Data530
import InitECandidate.Proofs.FrontendStages.Crep.Data531
import InitECandidate.Proofs.FrontendStages.Crep.Data532
import InitECandidate.Proofs.FrontendStages.Crep.Data533
import InitECandidate.Proofs.FrontendStages.Crep.Data534
import InitECandidate.Proofs.FrontendStages.Crep.Data535
import InitECandidate.Proofs.FrontendStages.Crep.Data536
import InitECandidate.Proofs.FrontendStages.Crep.Data537
import InitECandidate.Proofs.FrontendStages.Crep.Data538
import InitECandidate.Proofs.FrontendStages.Crep.Data539
import InitECandidate.Proofs.FrontendStages.Crep.Data540
import InitECandidate.Proofs.FrontendStages.Crep.Data541
import InitECandidate.Proofs.FrontendStages.Crep.Data542
import InitECandidate.Proofs.FrontendStages.Crep.Data543

/-! `csize ≤ crepS` on the crep entries `output528` … `output543` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part33
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `528` … `543` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output528, output529, output530, output531, output532, output533, output534, output535, output536, output537, output538, output539, output540, output541, output542, output543]

theorem o528 : crepOkB crepS output528 = true := crepOkB_of_raw data528 (by kernel_rfl)
theorem o529 : crepOkB crepS output529 = true := crepOkB_of_raw data529 (by kernel_rfl)
theorem o530 : crepOkB crepS output530 = true := crepOkB_of_raw data530 (by kernel_rfl)
theorem o531 : crepOkB crepS output531 = true := crepOkB_of_raw data531 (by kernel_rfl)
theorem o532 : crepOkB crepS output532 = true := crepOkB_of_raw data532 (by kernel_rfl)
theorem o533 : crepOkB crepS output533 = true := crepOkB_of_raw data533 (by kernel_rfl)
theorem o534 : crepOkB crepS output534 = true := crepOkB_of_raw data534 (by kernel_rfl)
theorem o535 : crepOkB crepS output535 = true := crepOkB_of_raw data535 (by kernel_rfl)
theorem o536 : crepOkB crepS output536 = true := crepOkB_of_raw data536 (by kernel_rfl)
theorem o537 : crepOkB crepS output537 = true := crepOkB_of_raw data537 (by kernel_rfl)
theorem o538 : crepOkB crepS output538 = true := crepOkB_of_raw data538 (by kernel_rfl)
theorem o539 : crepOkB crepS output539 = true := crepOkB_of_raw data539 (by kernel_rfl)
theorem o540 : crepOkB crepS output540 = true := crepOkB_of_raw data540 (by kernel_rfl)
theorem o541 : crepOkB crepS output541 = true := crepOkB_of_raw data541 (by kernel_rfl)
theorem o542 : crepOkB crepS output542 = true := crepOkB_of_raw data542 (by kernel_rfl)
theorem o543 : crepOkB crepS output543 = true := crepOkB_of_raw data543 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o528 (all_cons_of o529 (all_cons_of o530 (all_cons_of o531 (all_cons_of o532 (all_cons_of o533 (all_cons_of o534 (all_cons_of o535 (all_cons_of o536 (all_cons_of o537 (all_cons_of o538 (all_cons_of o539 (all_cons_of o540 (all_cons_of o541 (all_cons_of o542 (all_cons_of o543 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part33

#print axioms InitECandidate.Solver.Concrete.Crep.Part33.ok
