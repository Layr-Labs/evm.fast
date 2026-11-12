import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data240
import InitECandidate.Proofs.FrontendStages.Crep.Data241
import InitECandidate.Proofs.FrontendStages.Crep.Data242
import InitECandidate.Proofs.FrontendStages.Crep.Data243
import InitECandidate.Proofs.FrontendStages.Crep.Data244
import InitECandidate.Proofs.FrontendStages.Crep.Data245
import InitECandidate.Proofs.FrontendStages.Crep.Data246
import InitECandidate.Proofs.FrontendStages.Crep.Data247
import InitECandidate.Proofs.FrontendStages.Crep.Data248
import InitECandidate.Proofs.FrontendStages.Crep.Data249
import InitECandidate.Proofs.FrontendStages.Crep.Data250
import InitECandidate.Proofs.FrontendStages.Crep.Data251
import InitECandidate.Proofs.FrontendStages.Crep.Data252
import InitECandidate.Proofs.FrontendStages.Crep.Data253
import InitECandidate.Proofs.FrontendStages.Crep.Data254
import InitECandidate.Proofs.FrontendStages.Crep.Data255

/-! `csize ≤ crepS` on the crep entries `output240` … `output255` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part15
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `240` … `255` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output240, output241, output242, output243, output244, output245, output246, output247, output248, output249, output250, output251, output252, output253, output254, output255]

theorem o240 : crepOkB crepS output240 = true := crepOkB_of_raw data240 (by kernel_rfl)
theorem o241 : crepOkB crepS output241 = true := crepOkB_of_raw data241 (by kernel_rfl)
theorem o242 : crepOkB crepS output242 = true := crepOkB_of_raw data242 (by kernel_rfl)
theorem o243 : crepOkB crepS output243 = true := crepOkB_of_raw data243 (by kernel_rfl)
theorem o244 : crepOkB crepS output244 = true := crepOkB_of_raw data244 (by kernel_rfl)
theorem o245 : crepOkB crepS output245 = true := crepOkB_of_raw data245 (by kernel_rfl)
theorem o246 : crepOkB crepS output246 = true := crepOkB_of_raw data246 (by kernel_rfl)
theorem o247 : crepOkB crepS output247 = true := crepOkB_of_raw data247 (by kernel_rfl)
theorem o248 : crepOkB crepS output248 = true := crepOkB_of_raw data248 (by kernel_rfl)
theorem o249 : crepOkB crepS output249 = true := crepOkB_of_raw data249 (by kernel_rfl)
theorem o250 : crepOkB crepS output250 = true := crepOkB_of_raw data250 (by kernel_rfl)
theorem o251 : crepOkB crepS output251 = true := crepOkB_of_raw data251 (by kernel_rfl)
theorem o252 : crepOkB crepS output252 = true := crepOkB_of_raw data252 (by kernel_rfl)
theorem o253 : crepOkB crepS output253 = true := crepOkB_of_raw data253 (by kernel_rfl)
theorem o254 : crepOkB crepS output254 = true := crepOkB_of_raw data254 (by kernel_rfl)
theorem o255 : crepOkB crepS output255 = true := crepOkB_of_raw data255 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o240 (all_cons_of o241 (all_cons_of o242 (all_cons_of o243 (all_cons_of o244 (all_cons_of o245 (all_cons_of o246 (all_cons_of o247 (all_cons_of o248 (all_cons_of o249 (all_cons_of o250 (all_cons_of o251 (all_cons_of o252 (all_cons_of o253 (all_cons_of o254 (all_cons_of o255 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part15

#print axioms InitECandidate.Solver.Concrete.Crep.Part15.ok
