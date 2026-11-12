import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data512
import InitECandidate.Proofs.FrontendStages.Crep.Data513
import InitECandidate.Proofs.FrontendStages.Crep.Data514
import InitECandidate.Proofs.FrontendStages.Crep.Data515
import InitECandidate.Proofs.FrontendStages.Crep.Data516
import InitECandidate.Proofs.FrontendStages.Crep.Data517
import InitECandidate.Proofs.FrontendStages.Crep.Data518
import InitECandidate.Proofs.FrontendStages.Crep.Data519
import InitECandidate.Proofs.FrontendStages.Crep.Data520
import InitECandidate.Proofs.FrontendStages.Crep.Data521
import InitECandidate.Proofs.FrontendStages.Crep.Data522
import InitECandidate.Proofs.FrontendStages.Crep.Data523
import InitECandidate.Proofs.FrontendStages.Crep.Data524
import InitECandidate.Proofs.FrontendStages.Crep.Data525
import InitECandidate.Proofs.FrontendStages.Crep.Data526
import InitECandidate.Proofs.FrontendStages.Crep.Data527

/-! `csize ≤ crepS` on the crep entries `output512` … `output527` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part32
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `512` … `527` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output512, output513, output514, output515, output516, output517, output518, output519, output520, output521, output522, output523, output524, output525, output526, output527]

theorem o512 : crepOkB crepS output512 = true := crepOkB_of_raw data512 (by kernel_rfl)
theorem o513 : crepOkB crepS output513 = true := crepOkB_of_raw data513 (by kernel_rfl)
theorem o514 : crepOkB crepS output514 = true := crepOkB_of_raw data514 (by kernel_rfl)
theorem o515 : crepOkB crepS output515 = true := crepOkB_of_raw data515 (by kernel_rfl)
theorem o516 : crepOkB crepS output516 = true := crepOkB_of_raw data516 (by kernel_rfl)
theorem o517 : crepOkB crepS output517 = true := crepOkB_of_raw data517 (by kernel_rfl)
theorem o518 : crepOkB crepS output518 = true := crepOkB_of_raw data518 (by kernel_rfl)
theorem o519 : crepOkB crepS output519 = true := crepOkB_of_raw data519 (by kernel_rfl)
theorem o520 : crepOkB crepS output520 = true := crepOkB_of_raw data520 (by kernel_rfl)
theorem o521 : crepOkB crepS output521 = true := crepOkB_of_raw data521 (by kernel_rfl)
theorem o522 : crepOkB crepS output522 = true := crepOkB_of_raw data522 (by kernel_rfl)
theorem o523 : crepOkB crepS output523 = true := crepOkB_of_raw data523 (by kernel_rfl)
theorem o524 : crepOkB crepS output524 = true := crepOkB_of_raw data524 (by kernel_rfl)
theorem o525 : crepOkB crepS output525 = true := crepOkB_of_raw data525 (by kernel_rfl)
theorem o526 : crepOkB crepS output526 = true := crepOkB_of_raw data526 (by kernel_rfl)
theorem o527 : crepOkB crepS output527 = true := crepOkB_of_raw data527 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o512 (all_cons_of o513 (all_cons_of o514 (all_cons_of o515 (all_cons_of o516 (all_cons_of o517 (all_cons_of o518 (all_cons_of o519 (all_cons_of o520 (all_cons_of o521 (all_cons_of o522 (all_cons_of o523 (all_cons_of o524 (all_cons_of o525 (all_cons_of o526 (all_cons_of o527 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part32

#print axioms InitECandidate.Solver.Concrete.Crep.Part32.ok
