import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data592
import InitECandidate.Proofs.FrontendStages.Crep.Data593
import InitECandidate.Proofs.FrontendStages.Crep.Data594
import InitECandidate.Proofs.FrontendStages.Crep.Data595
import InitECandidate.Proofs.FrontendStages.Crep.Data596
import InitECandidate.Proofs.FrontendStages.Crep.Data597
import InitECandidate.Proofs.FrontendStages.Crep.Data598
import InitECandidate.Proofs.FrontendStages.Crep.Data599
import InitECandidate.Proofs.FrontendStages.Crep.Data600
import InitECandidate.Proofs.FrontendStages.Crep.Data601
import InitECandidate.Proofs.FrontendStages.Crep.Data602
import InitECandidate.Proofs.FrontendStages.Crep.Data603
import InitECandidate.Proofs.FrontendStages.Crep.Data604
import InitECandidate.Proofs.FrontendStages.Crep.Data605
import InitECandidate.Proofs.FrontendStages.Crep.Data606
import InitECandidate.Proofs.FrontendStages.Crep.Data607

/-! `csize ≤ crepS` on the crep entries `output592` … `output607` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part37
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `592` … `607` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output592, output593, output594, output595, output596, output597, output598, output599, output600, output601, output602, output603, output604, output605, output606, output607]

theorem o592 : crepOkB crepS output592 = true := crepOkB_of_raw data592 (by kernel_rfl)
theorem o593 : crepOkB crepS output593 = true := crepOkB_of_raw data593 (by kernel_rfl)
theorem o594 : crepOkB crepS output594 = true := crepOkB_of_raw data594 (by kernel_rfl)
theorem o595 : crepOkB crepS output595 = true := crepOkB_of_raw data595 (by kernel_rfl)
theorem o596 : crepOkB crepS output596 = true := crepOkB_of_raw data596 (by kernel_rfl)
theorem o597 : crepOkB crepS output597 = true := crepOkB_of_raw data597 (by kernel_rfl)
theorem o598 : crepOkB crepS output598 = true := crepOkB_of_raw data598 (by kernel_rfl)
theorem o599 : crepOkB crepS output599 = true := crepOkB_of_raw data599 (by kernel_rfl)
theorem o600 : crepOkB crepS output600 = true := crepOkB_of_raw data600 (by kernel_rfl)
theorem o601 : crepOkB crepS output601 = true := crepOkB_of_raw data601 (by kernel_rfl)
theorem o602 : crepOkB crepS output602 = true := crepOkB_of_raw data602 (by kernel_rfl)
theorem o603 : crepOkB crepS output603 = true := crepOkB_of_raw data603 (by kernel_rfl)
theorem o604 : crepOkB crepS output604 = true := crepOkB_of_raw data604 (by kernel_rfl)
theorem o605 : crepOkB crepS output605 = true := crepOkB_of_raw data605 (by kernel_rfl)
theorem o606 : crepOkB crepS output606 = true := crepOkB_of_raw data606 (by kernel_rfl)
theorem o607 : crepOkB crepS output607 = true := crepOkB_of_raw data607 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o592 (all_cons_of o593 (all_cons_of o594 (all_cons_of o595 (all_cons_of o596 (all_cons_of o597 (all_cons_of o598 (all_cons_of o599 (all_cons_of o600 (all_cons_of o601 (all_cons_of o602 (all_cons_of o603 (all_cons_of o604 (all_cons_of o605 (all_cons_of o606 (all_cons_of o607 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part37

#print axioms InitECandidate.Solver.Concrete.Crep.Part37.ok
