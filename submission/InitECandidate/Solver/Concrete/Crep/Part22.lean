import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data352
import InitECandidate.Proofs.FrontendStages.Crep.Data353
import InitECandidate.Proofs.FrontendStages.Crep.Data354
import InitECandidate.Proofs.FrontendStages.Crep.Data355
import InitECandidate.Proofs.FrontendStages.Crep.Data356
import InitECandidate.Proofs.FrontendStages.Crep.Data357
import InitECandidate.Proofs.FrontendStages.Crep.Data358
import InitECandidate.Proofs.FrontendStages.Crep.Data359
import InitECandidate.Proofs.FrontendStages.Crep.Data360
import InitECandidate.Proofs.FrontendStages.Crep.Data361
import InitECandidate.Proofs.FrontendStages.Crep.Data362
import InitECandidate.Proofs.FrontendStages.Crep.Data363
import InitECandidate.Proofs.FrontendStages.Crep.Data364
import InitECandidate.Proofs.FrontendStages.Crep.Data365
import InitECandidate.Proofs.FrontendStages.Crep.Data366
import InitECandidate.Proofs.FrontendStages.Crep.Data367

/-! `csize ≤ crepS` on the crep entries `output352` … `output367` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part22
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `352` … `367` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output352, output353, output354, output355, output356, output357, output358, output359, output360, output361, output362, output363, output364, output365, output366, output367]

theorem o352 : crepOkB crepS output352 = true := crepOkB_of_raw data352 (by kernel_rfl)
theorem o353 : crepOkB crepS output353 = true := crepOkB_of_raw data353 (by kernel_rfl)
theorem o354 : crepOkB crepS output354 = true := crepOkB_of_raw data354 (by kernel_rfl)
theorem o355 : crepOkB crepS output355 = true := crepOkB_of_raw data355 (by kernel_rfl)
theorem o356 : crepOkB crepS output356 = true := crepOkB_of_raw data356 (by kernel_rfl)
theorem o357 : crepOkB crepS output357 = true := crepOkB_of_raw data357 (by kernel_rfl)
theorem o358 : crepOkB crepS output358 = true := crepOkB_of_raw data358 (by kernel_rfl)
theorem o359 : crepOkB crepS output359 = true := crepOkB_of_raw data359 (by kernel_rfl)
theorem o360 : crepOkB crepS output360 = true := crepOkB_of_raw data360 (by kernel_rfl)
theorem o361 : crepOkB crepS output361 = true := crepOkB_of_raw data361 (by kernel_rfl)
theorem o362 : crepOkB crepS output362 = true := crepOkB_of_raw data362 (by kernel_rfl)
theorem o363 : crepOkB crepS output363 = true := crepOkB_of_raw data363 (by kernel_rfl)
theorem o364 : crepOkB crepS output364 = true := crepOkB_of_raw data364 (by kernel_rfl)
theorem o365 : crepOkB crepS output365 = true := crepOkB_of_raw data365 (by kernel_rfl)
theorem o366 : crepOkB crepS output366 = true := crepOkB_of_raw data366 (by kernel_rfl)
theorem o367 : crepOkB crepS output367 = true := crepOkB_of_raw data367 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o352 (all_cons_of o353 (all_cons_of o354 (all_cons_of o355 (all_cons_of o356 (all_cons_of o357 (all_cons_of o358 (all_cons_of o359 (all_cons_of o360 (all_cons_of o361 (all_cons_of o362 (all_cons_of o363 (all_cons_of o364 (all_cons_of o365 (all_cons_of o366 (all_cons_of o367 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part22

#print axioms InitECandidate.Solver.Concrete.Crep.Part22.ok
