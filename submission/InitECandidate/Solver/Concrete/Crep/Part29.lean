import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data464
import InitECandidate.Proofs.FrontendStages.Crep.Data465
import InitECandidate.Proofs.FrontendStages.Crep.Data466
import InitECandidate.Proofs.FrontendStages.Crep.Data467
import InitECandidate.Proofs.FrontendStages.Crep.Data468
import InitECandidate.Proofs.FrontendStages.Crep.Data469
import InitECandidate.Proofs.FrontendStages.Crep.Data470
import InitECandidate.Proofs.FrontendStages.Crep.Data471
import InitECandidate.Proofs.FrontendStages.Crep.Data472
import InitECandidate.Proofs.FrontendStages.Crep.Data473
import InitECandidate.Proofs.FrontendStages.Crep.Data474
import InitECandidate.Proofs.FrontendStages.Crep.Data475
import InitECandidate.Proofs.FrontendStages.Crep.Data476
import InitECandidate.Proofs.FrontendStages.Crep.Data477
import InitECandidate.Proofs.FrontendStages.Crep.Data478
import InitECandidate.Proofs.FrontendStages.Crep.Data479

/-! `csize ≤ crepS` on the crep entries `output464` … `output479` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part29
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `464` … `479` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output464, output465, output466, output467, output468, output469, output470, output471, output472, output473, output474, output475, output476, output477, output478, output479]

theorem o464 : crepOkB crepS output464 = true := crepOkB_of_raw data464 (by kernel_rfl)
theorem o465 : crepOkB crepS output465 = true := crepOkB_of_raw data465 (by kernel_rfl)
theorem o466 : crepOkB crepS output466 = true := crepOkB_of_raw data466 (by kernel_rfl)
theorem o467 : crepOkB crepS output467 = true := crepOkB_of_raw data467 (by kernel_rfl)
theorem o468 : crepOkB crepS output468 = true := crepOkB_of_raw data468 (by kernel_rfl)
theorem o469 : crepOkB crepS output469 = true := crepOkB_of_raw data469 (by kernel_rfl)
theorem o470 : crepOkB crepS output470 = true := crepOkB_of_raw data470 (by kernel_rfl)
theorem o471 : crepOkB crepS output471 = true := crepOkB_of_raw data471 (by kernel_rfl)
theorem o472 : crepOkB crepS output472 = true := crepOkB_of_raw data472 (by kernel_rfl)
theorem o473 : crepOkB crepS output473 = true := crepOkB_of_raw data473 (by kernel_rfl)
theorem o474 : crepOkB crepS output474 = true := crepOkB_of_raw data474 (by kernel_rfl)
theorem o475 : crepOkB crepS output475 = true := crepOkB_of_raw data475 (by kernel_rfl)
theorem o476 : crepOkB crepS output476 = true := crepOkB_of_raw data476 (by kernel_rfl)
theorem o477 : crepOkB crepS output477 = true := crepOkB_of_raw data477 (by kernel_rfl)
theorem o478 : crepOkB crepS output478 = true := crepOkB_of_raw data478 (by kernel_rfl)
theorem o479 : crepOkB crepS output479 = true := crepOkB_of_raw data479 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o464 (all_cons_of o465 (all_cons_of o466 (all_cons_of o467 (all_cons_of o468 (all_cons_of o469 (all_cons_of o470 (all_cons_of o471 (all_cons_of o472 (all_cons_of o473 (all_cons_of o474 (all_cons_of o475 (all_cons_of o476 (all_cons_of o477 (all_cons_of o478 (all_cons_of o479 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part29

#print axioms InitECandidate.Solver.Concrete.Crep.Part29.ok
