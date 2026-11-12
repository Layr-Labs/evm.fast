import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data400
import InitECandidate.Proofs.FrontendStages.Crep.Data401
import InitECandidate.Proofs.FrontendStages.Crep.Data402
import InitECandidate.Proofs.FrontendStages.Crep.Data403
import InitECandidate.Proofs.FrontendStages.Crep.Data404
import InitECandidate.Proofs.FrontendStages.Crep.Data405
import InitECandidate.Proofs.FrontendStages.Crep.Data406
import InitECandidate.Proofs.FrontendStages.Crep.Data407
import InitECandidate.Proofs.FrontendStages.Crep.Data408
import InitECandidate.Proofs.FrontendStages.Crep.Data409
import InitECandidate.Proofs.FrontendStages.Crep.Data410
import InitECandidate.Proofs.FrontendStages.Crep.Data411
import InitECandidate.Proofs.FrontendStages.Crep.Data412
import InitECandidate.Proofs.FrontendStages.Crep.Data413
import InitECandidate.Proofs.FrontendStages.Crep.Data414
import InitECandidate.Proofs.FrontendStages.Crep.Data415

/-! `csize ≤ crepS` on the crep entries `output400` … `output415` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part25
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `400` … `415` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output400, output401, output402, output403, output404, output405, output406, output407, output408, output409, output410, output411, output412, output413, output414, output415]

theorem o400 : crepOkB crepS output400 = true := crepOkB_of_raw data400 (by kernel_rfl)
theorem o401 : crepOkB crepS output401 = true := crepOkB_of_raw data401 (by kernel_rfl)
theorem o402 : crepOkB crepS output402 = true := crepOkB_of_raw data402 (by kernel_rfl)
theorem o403 : crepOkB crepS output403 = true := crepOkB_of_raw data403 (by kernel_rfl)
theorem o404 : crepOkB crepS output404 = true := crepOkB_of_raw data404 (by kernel_rfl)
theorem o405 : crepOkB crepS output405 = true := crepOkB_of_raw data405 (by kernel_rfl)
theorem o406 : crepOkB crepS output406 = true := crepOkB_of_raw data406 (by kernel_rfl)
theorem o407 : crepOkB crepS output407 = true := crepOkB_of_raw data407 (by kernel_rfl)
theorem o408 : crepOkB crepS output408 = true := crepOkB_of_raw data408 (by kernel_rfl)
theorem o409 : crepOkB crepS output409 = true := crepOkB_of_raw data409 (by kernel_rfl)
theorem o410 : crepOkB crepS output410 = true := crepOkB_of_raw data410 (by kernel_rfl)
theorem o411 : crepOkB crepS output411 = true := crepOkB_of_raw data411 (by kernel_rfl)
theorem o412 : crepOkB crepS output412 = true := crepOkB_of_raw data412 (by kernel_rfl)
theorem o413 : crepOkB crepS output413 = true := crepOkB_of_raw data413 (by kernel_rfl)
theorem o414 : crepOkB crepS output414 = true := crepOkB_of_raw data414 (by kernel_rfl)
theorem o415 : crepOkB crepS output415 = true := crepOkB_of_raw data415 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o400 (all_cons_of o401 (all_cons_of o402 (all_cons_of o403 (all_cons_of o404 (all_cons_of o405 (all_cons_of o406 (all_cons_of o407 (all_cons_of o408 (all_cons_of o409 (all_cons_of o410 (all_cons_of o411 (all_cons_of o412 (all_cons_of o413 (all_cons_of o414 (all_cons_of o415 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part25

#print axioms InitECandidate.Solver.Concrete.Crep.Part25.ok
