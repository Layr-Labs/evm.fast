import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data496
import InitECandidate.Proofs.FrontendStages.Crep.Data497
import InitECandidate.Proofs.FrontendStages.Crep.Data498
import InitECandidate.Proofs.FrontendStages.Crep.Data499
import InitECandidate.Proofs.FrontendStages.Crep.Data500
import InitECandidate.Proofs.FrontendStages.Crep.Data501
import InitECandidate.Proofs.FrontendStages.Crep.Data502
import InitECandidate.Proofs.FrontendStages.Crep.Data503
import InitECandidate.Proofs.FrontendStages.Crep.Data504
import InitECandidate.Proofs.FrontendStages.Crep.Data505
import InitECandidate.Proofs.FrontendStages.Crep.Data506
import InitECandidate.Proofs.FrontendStages.Crep.Data507
import InitECandidate.Proofs.FrontendStages.Crep.Data508
import InitECandidate.Proofs.FrontendStages.Crep.Data509
import InitECandidate.Proofs.FrontendStages.Crep.Data510
import InitECandidate.Proofs.FrontendStages.Crep.Data511

/-! `csize ≤ crepS` on the crep entries `output496` … `output511` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part31
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `496` … `511` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output496, output497, output498, output499, output500, output501, output502, output503, output504, output505, output506, output507, output508, output509, output510, output511]

theorem o496 : crepOkB crepS output496 = true := crepOkB_of_raw data496 (by kernel_rfl)
theorem o497 : crepOkB crepS output497 = true := crepOkB_of_raw data497 (by kernel_rfl)
theorem o498 : crepOkB crepS output498 = true := crepOkB_of_raw data498 (by kernel_rfl)
theorem o499 : crepOkB crepS output499 = true := crepOkB_of_raw data499 (by kernel_rfl)
theorem o500 : crepOkB crepS output500 = true := crepOkB_of_raw data500 (by kernel_rfl)
theorem o501 : crepOkB crepS output501 = true := crepOkB_of_raw data501 (by kernel_rfl)
theorem o502 : crepOkB crepS output502 = true := crepOkB_of_raw data502 (by kernel_rfl)
theorem o503 : crepOkB crepS output503 = true := crepOkB_of_raw data503 (by kernel_rfl)
theorem o504 : crepOkB crepS output504 = true := crepOkB_of_raw data504 (by kernel_rfl)
theorem o505 : crepOkB crepS output505 = true := crepOkB_of_raw data505 (by kernel_rfl)
theorem o506 : crepOkB crepS output506 = true := crepOkB_of_raw data506 (by kernel_rfl)
theorem o507 : crepOkB crepS output507 = true := crepOkB_of_raw data507 (by kernel_rfl)
theorem o508 : crepOkB crepS output508 = true := crepOkB_of_raw data508 (by kernel_rfl)
theorem o509 : crepOkB crepS output509 = true := crepOkB_of_raw data509 (by kernel_rfl)
theorem o510 : crepOkB crepS output510 = true := crepOkB_of_raw data510 (by kernel_rfl)
theorem o511 : crepOkB crepS output511 = true := crepOkB_of_raw data511 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o496 (all_cons_of o497 (all_cons_of o498 (all_cons_of o499 (all_cons_of o500 (all_cons_of o501 (all_cons_of o502 (all_cons_of o503 (all_cons_of o504 (all_cons_of o505 (all_cons_of o506 (all_cons_of o507 (all_cons_of o508 (all_cons_of o509 (all_cons_of o510 (all_cons_of o511 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part31

#print axioms InitECandidate.Solver.Concrete.Crep.Part31.ok
