import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data416
import InitECandidate.Proofs.FrontendStages.Crep.Data417
import InitECandidate.Proofs.FrontendStages.Crep.Data418
import InitECandidate.Proofs.FrontendStages.Crep.Data419
import InitECandidate.Proofs.FrontendStages.Crep.Data420
import InitECandidate.Proofs.FrontendStages.Crep.Data421
import InitECandidate.Proofs.FrontendStages.Crep.Data422
import InitECandidate.Proofs.FrontendStages.Crep.Data423
import InitECandidate.Proofs.FrontendStages.Crep.Data424
import InitECandidate.Proofs.FrontendStages.Crep.Data425
import InitECandidate.Proofs.FrontendStages.Crep.Data426
import InitECandidate.Proofs.FrontendStages.Crep.Data427
import InitECandidate.Proofs.FrontendStages.Crep.Data428
import InitECandidate.Proofs.FrontendStages.Crep.Data429
import InitECandidate.Proofs.FrontendStages.Crep.Data430
import InitECandidate.Proofs.FrontendStages.Crep.Data431

/-! `csize ≤ crepS` on the crep entries `output416` … `output431` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part26
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `416` … `431` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output416, output417, output418, output419, output420, output421, output422, output423, output424, output425, output426, output427, output428, output429, output430, output431]

theorem o416 : crepOkB crepS output416 = true := crepOkB_of_raw data416 (by kernel_rfl)
theorem o417 : crepOkB crepS output417 = true := crepOkB_of_raw data417 (by kernel_rfl)
theorem o418 : crepOkB crepS output418 = true := crepOkB_of_raw data418 (by kernel_rfl)
theorem o419 : crepOkB crepS output419 = true := crepOkB_of_raw data419 (by kernel_rfl)
theorem o420 : crepOkB crepS output420 = true := crepOkB_of_raw data420 (by kernel_rfl)
theorem o421 : crepOkB crepS output421 = true := crepOkB_of_raw data421 (by kernel_rfl)
theorem o422 : crepOkB crepS output422 = true := crepOkB_of_raw data422 (by kernel_rfl)
theorem o423 : crepOkB crepS output423 = true := crepOkB_of_raw data423 (by kernel_rfl)
theorem o424 : crepOkB crepS output424 = true := crepOkB_of_raw data424 (by kernel_rfl)
theorem o425 : crepOkB crepS output425 = true := crepOkB_of_raw data425 (by kernel_rfl)
theorem o426 : crepOkB crepS output426 = true := crepOkB_of_raw data426 (by kernel_rfl)
theorem o427 : crepOkB crepS output427 = true := crepOkB_of_raw data427 (by kernel_rfl)
theorem o428 : crepOkB crepS output428 = true := crepOkB_of_raw data428 (by kernel_rfl)
theorem o429 : crepOkB crepS output429 = true := crepOkB_of_raw data429 (by kernel_rfl)
theorem o430 : crepOkB crepS output430 = true := crepOkB_of_raw data430 (by kernel_rfl)
theorem o431 : crepOkB crepS output431 = true := crepOkB_of_raw data431 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o416 (all_cons_of o417 (all_cons_of o418 (all_cons_of o419 (all_cons_of o420 (all_cons_of o421 (all_cons_of o422 (all_cons_of o423 (all_cons_of o424 (all_cons_of o425 (all_cons_of o426 (all_cons_of o427 (all_cons_of o428 (all_cons_of o429 (all_cons_of o430 (all_cons_of o431 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part26

#print axioms InitECandidate.Solver.Concrete.Crep.Part26.ok
