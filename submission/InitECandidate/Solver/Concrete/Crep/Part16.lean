import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data256
import InitECandidate.Proofs.FrontendStages.Crep.Data257
import InitECandidate.Proofs.FrontendStages.Crep.Data258
import InitECandidate.Proofs.FrontendStages.Crep.Data259
import InitECandidate.Proofs.FrontendStages.Crep.Data260
import InitECandidate.Proofs.FrontendStages.Crep.Data261
import InitECandidate.Proofs.FrontendStages.Crep.Data262
import InitECandidate.Proofs.FrontendStages.Crep.Data263
import InitECandidate.Proofs.FrontendStages.Crep.Data264
import InitECandidate.Proofs.FrontendStages.Crep.Data265
import InitECandidate.Proofs.FrontendStages.Crep.Data266
import InitECandidate.Proofs.FrontendStages.Crep.Data267
import InitECandidate.Proofs.FrontendStages.Crep.Data268
import InitECandidate.Proofs.FrontendStages.Crep.Data269
import InitECandidate.Proofs.FrontendStages.Crep.Data270
import InitECandidate.Proofs.FrontendStages.Crep.Data271

/-! `csize ≤ crepS` on the crep entries `output256` … `output271` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part16
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `256` … `271` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output256, output257, output258, output259, output260, output261, output262, output263, output264, output265, output266, output267, output268, output269, output270, output271]

theorem o256 : crepOkB crepS output256 = true := crepOkB_of_raw data256 (by kernel_rfl)
theorem o257 : crepOkB crepS output257 = true := crepOkB_of_raw data257 (by kernel_rfl)
theorem o258 : crepOkB crepS output258 = true := crepOkB_of_raw data258 (by kernel_rfl)
theorem o259 : crepOkB crepS output259 = true := crepOkB_of_raw data259 (by kernel_rfl)
theorem o260 : crepOkB crepS output260 = true := crepOkB_of_raw data260 (by kernel_rfl)
theorem o261 : crepOkB crepS output261 = true := crepOkB_of_raw data261 (by kernel_rfl)
theorem o262 : crepOkB crepS output262 = true := crepOkB_of_raw data262 (by kernel_rfl)
theorem o263 : crepOkB crepS output263 = true := crepOkB_of_raw data263 (by kernel_rfl)
theorem o264 : crepOkB crepS output264 = true := crepOkB_of_raw data264 (by kernel_rfl)
theorem o265 : crepOkB crepS output265 = true := crepOkB_of_raw data265 (by kernel_rfl)
theorem o266 : crepOkB crepS output266 = true := crepOkB_of_raw data266 (by kernel_rfl)
theorem o267 : crepOkB crepS output267 = true := crepOkB_of_raw data267 (by kernel_rfl)
theorem o268 : crepOkB crepS output268 = true := crepOkB_of_raw data268 (by kernel_rfl)
theorem o269 : crepOkB crepS output269 = true := crepOkB_of_raw data269 (by kernel_rfl)
theorem o270 : crepOkB crepS output270 = true := crepOkB_of_raw data270 (by kernel_rfl)
theorem o271 : crepOkB crepS output271 = true := crepOkB_of_raw data271 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o256 (all_cons_of o257 (all_cons_of o258 (all_cons_of o259 (all_cons_of o260 (all_cons_of o261 (all_cons_of o262 (all_cons_of o263 (all_cons_of o264 (all_cons_of o265 (all_cons_of o266 (all_cons_of o267 (all_cons_of o268 (all_cons_of o269 (all_cons_of o270 (all_cons_of o271 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part16

#print axioms InitECandidate.Solver.Concrete.Crep.Part16.ok
