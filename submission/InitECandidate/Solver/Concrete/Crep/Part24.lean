import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data384
import InitECandidate.Proofs.FrontendStages.Crep.Data385
import InitECandidate.Proofs.FrontendStages.Crep.Data386
import InitECandidate.Proofs.FrontendStages.Crep.Data387
import InitECandidate.Proofs.FrontendStages.Crep.Data388
import InitECandidate.Proofs.FrontendStages.Crep.Data389
import InitECandidate.Proofs.FrontendStages.Crep.Data390
import InitECandidate.Proofs.FrontendStages.Crep.Data391
import InitECandidate.Proofs.FrontendStages.Crep.Data392
import InitECandidate.Proofs.FrontendStages.Crep.Data393
import InitECandidate.Proofs.FrontendStages.Crep.Data394
import InitECandidate.Proofs.FrontendStages.Crep.Data395
import InitECandidate.Proofs.FrontendStages.Crep.Data396
import InitECandidate.Proofs.FrontendStages.Crep.Data397
import InitECandidate.Proofs.FrontendStages.Crep.Data398
import InitECandidate.Proofs.FrontendStages.Crep.Data399

/-! `csize ≤ crepS` on the crep entries `output384` … `output399` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part24
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `384` … `399` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output384, output385, output386, output387, output388, output389, output390, output391, output392, output393, output394, output395, output396, output397, output398, output399]

theorem o384 : crepOkB crepS output384 = true := crepOkB_of_raw data384 (by kernel_rfl)
theorem o385 : crepOkB crepS output385 = true := crepOkB_of_raw data385 (by kernel_rfl)
theorem o386 : crepOkB crepS output386 = true := crepOkB_of_raw data386 (by kernel_rfl)
theorem o387 : crepOkB crepS output387 = true := crepOkB_of_raw data387 (by kernel_rfl)
theorem o388 : crepOkB crepS output388 = true := crepOkB_of_raw data388 (by kernel_rfl)
theorem o389 : crepOkB crepS output389 = true := crepOkB_of_raw data389 (by kernel_rfl)
theorem o390 : crepOkB crepS output390 = true := crepOkB_of_raw data390 (by kernel_rfl)
theorem o391 : crepOkB crepS output391 = true := crepOkB_of_raw data391 (by kernel_rfl)
theorem o392 : crepOkB crepS output392 = true := crepOkB_of_raw data392 (by kernel_rfl)
theorem o393 : crepOkB crepS output393 = true := crepOkB_of_raw data393 (by kernel_rfl)
theorem o394 : crepOkB crepS output394 = true := crepOkB_of_raw data394 (by kernel_rfl)
theorem o395 : crepOkB crepS output395 = true := crepOkB_of_raw data395 (by kernel_rfl)
theorem o396 : crepOkB crepS output396 = true := crepOkB_of_raw data396 (by kernel_rfl)
theorem o397 : crepOkB crepS output397 = true := crepOkB_of_raw data397 (by kernel_rfl)
theorem o398 : crepOkB crepS output398 = true := crepOkB_of_raw data398 (by kernel_rfl)
theorem o399 : crepOkB crepS output399 = true := crepOkB_of_raw data399 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o384 (all_cons_of o385 (all_cons_of o386 (all_cons_of o387 (all_cons_of o388 (all_cons_of o389 (all_cons_of o390 (all_cons_of o391 (all_cons_of o392 (all_cons_of o393 (all_cons_of o394 (all_cons_of o395 (all_cons_of o396 (all_cons_of o397 (all_cons_of o398 (all_cons_of o399 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part24

#print axioms InitECandidate.Solver.Concrete.Crep.Part24.ok
