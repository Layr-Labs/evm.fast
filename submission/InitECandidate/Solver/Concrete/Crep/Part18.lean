import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data288
import InitECandidate.Proofs.FrontendStages.Crep.Data289
import InitECandidate.Proofs.FrontendStages.Crep.Data290
import InitECandidate.Proofs.FrontendStages.Crep.Data291
import InitECandidate.Proofs.FrontendStages.Crep.Data292
import InitECandidate.Proofs.FrontendStages.Crep.Data293
import InitECandidate.Proofs.FrontendStages.Crep.Data294
import InitECandidate.Proofs.FrontendStages.Crep.Data295
import InitECandidate.Proofs.FrontendStages.Crep.Data296
import InitECandidate.Proofs.FrontendStages.Crep.Data297
import InitECandidate.Proofs.FrontendStages.Crep.Data298
import InitECandidate.Proofs.FrontendStages.Crep.Data299
import InitECandidate.Proofs.FrontendStages.Crep.Data300
import InitECandidate.Proofs.FrontendStages.Crep.Data301
import InitECandidate.Proofs.FrontendStages.Crep.Data302
import InitECandidate.Proofs.FrontendStages.Crep.Data303

/-! `csize ≤ crepS` on the crep entries `output288` … `output303` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part18
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `288` … `303` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output288, output289, output290, output291, output292, output293, output294, output295, output296, output297, output298, output299, output300, output301, output302, output303]

theorem o288 : crepOkB crepS output288 = true := crepOkB_of_raw data288 (by kernel_rfl)
theorem o289 : crepOkB crepS output289 = true := crepOkB_of_raw data289 (by kernel_rfl)
theorem o290 : crepOkB crepS output290 = true := crepOkB_of_raw data290 (by kernel_rfl)
theorem o291 : crepOkB crepS output291 = true := crepOkB_of_raw data291 (by kernel_rfl)
theorem o292 : crepOkB crepS output292 = true := crepOkB_of_raw data292 (by kernel_rfl)
theorem o293 : crepOkB crepS output293 = true := crepOkB_of_raw data293 (by kernel_rfl)
theorem o294 : crepOkB crepS output294 = true := crepOkB_of_raw data294 (by kernel_rfl)
theorem o295 : crepOkB crepS output295 = true := crepOkB_of_raw data295 (by kernel_rfl)
theorem o296 : crepOkB crepS output296 = true := crepOkB_of_raw data296 (by kernel_rfl)
theorem o297 : crepOkB crepS output297 = true := crepOkB_of_raw data297 (by kernel_rfl)
theorem o298 : crepOkB crepS output298 = true := crepOkB_of_raw data298 (by kernel_rfl)
theorem o299 : crepOkB crepS output299 = true := crepOkB_of_raw data299 (by kernel_rfl)
theorem o300 : crepOkB crepS output300 = true := crepOkB_of_raw data300 (by kernel_rfl)
theorem o301 : crepOkB crepS output301 = true := crepOkB_of_raw data301 (by kernel_rfl)
theorem o302 : crepOkB crepS output302 = true := crepOkB_of_raw data302 (by kernel_rfl)
theorem o303 : crepOkB crepS output303 = true := crepOkB_of_raw data303 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o288 (all_cons_of o289 (all_cons_of o290 (all_cons_of o291 (all_cons_of o292 (all_cons_of o293 (all_cons_of o294 (all_cons_of o295 (all_cons_of o296 (all_cons_of o297 (all_cons_of o298 (all_cons_of o299 (all_cons_of o300 (all_cons_of o301 (all_cons_of o302 (all_cons_of o303 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part18

#print axioms InitECandidate.Solver.Concrete.Crep.Part18.ok
