import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data432
import InitECandidate.Proofs.FrontendStages.Crep.Data433
import InitECandidate.Proofs.FrontendStages.Crep.Data434
import InitECandidate.Proofs.FrontendStages.Crep.Data435
import InitECandidate.Proofs.FrontendStages.Crep.Data436
import InitECandidate.Proofs.FrontendStages.Crep.Data437
import InitECandidate.Proofs.FrontendStages.Crep.Data438
import InitECandidate.Proofs.FrontendStages.Crep.Data439
import InitECandidate.Proofs.FrontendStages.Crep.Data440
import InitECandidate.Proofs.FrontendStages.Crep.Data441
import InitECandidate.Proofs.FrontendStages.Crep.Data442
import InitECandidate.Proofs.FrontendStages.Crep.Data443
import InitECandidate.Proofs.FrontendStages.Crep.Data444
import InitECandidate.Proofs.FrontendStages.Crep.Data445
import InitECandidate.Proofs.FrontendStages.Crep.Data446
import InitECandidate.Proofs.FrontendStages.Crep.Data447

/-! `csize ≤ crepS` on the crep entries `output432` … `output447` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part27
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `432` … `447` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output432, output433, output434, output435, output436, output437, output438, output439, output440, output441, output442, output443, output444, output445, output446, output447]

theorem o432 : crepOkB crepS output432 = true := crepOkB_of_raw data432 (by kernel_rfl)
theorem o433 : crepOkB crepS output433 = true := crepOkB_of_raw data433 (by kernel_rfl)
theorem o434 : crepOkB crepS output434 = true := crepOkB_of_raw data434 (by kernel_rfl)
theorem o435 : crepOkB crepS output435 = true := crepOkB_of_raw data435 (by kernel_rfl)
theorem o436 : crepOkB crepS output436 = true := crepOkB_of_raw data436 (by kernel_rfl)
theorem o437 : crepOkB crepS output437 = true := crepOkB_of_raw data437 (by kernel_rfl)
theorem o438 : crepOkB crepS output438 = true := crepOkB_of_raw data438 (by kernel_rfl)
theorem o439 : crepOkB crepS output439 = true := crepOkB_of_raw data439 (by kernel_rfl)
theorem o440 : crepOkB crepS output440 = true := crepOkB_of_raw data440 (by kernel_rfl)
theorem o441 : crepOkB crepS output441 = true := crepOkB_of_raw data441 (by kernel_rfl)
theorem o442 : crepOkB crepS output442 = true := crepOkB_of_raw data442 (by kernel_rfl)
theorem o443 : crepOkB crepS output443 = true := crepOkB_of_raw data443 (by kernel_rfl)
theorem o444 : crepOkB crepS output444 = true := crepOkB_of_raw data444 (by kernel_rfl)
theorem o445 : crepOkB crepS output445 = true := crepOkB_of_raw data445 (by kernel_rfl)
theorem o446 : crepOkB crepS output446 = true := crepOkB_of_raw data446 (by kernel_rfl)
theorem o447 : crepOkB crepS output447 = true := crepOkB_of_raw data447 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o432 (all_cons_of o433 (all_cons_of o434 (all_cons_of o435 (all_cons_of o436 (all_cons_of o437 (all_cons_of o438 (all_cons_of o439 (all_cons_of o440 (all_cons_of o441 (all_cons_of o442 (all_cons_of o443 (all_cons_of o444 (all_cons_of o445 (all_cons_of o446 (all_cons_of o447 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part27

#print axioms InitECandidate.Solver.Concrete.Crep.Part27.ok
