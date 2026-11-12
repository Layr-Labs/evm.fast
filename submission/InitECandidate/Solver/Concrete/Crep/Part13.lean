import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data208
import InitECandidate.Proofs.FrontendStages.Crep.Data209
import InitECandidate.Proofs.FrontendStages.Crep.Data210
import InitECandidate.Proofs.FrontendStages.Crep.Data211
import InitECandidate.Proofs.FrontendStages.Crep.Data212
import InitECandidate.Proofs.FrontendStages.Crep.Data213
import InitECandidate.Proofs.FrontendStages.Crep.Data214
import InitECandidate.Proofs.FrontendStages.Crep.Data215
import InitECandidate.Proofs.FrontendStages.Crep.Data216
import InitECandidate.Proofs.FrontendStages.Crep.Data217
import InitECandidate.Proofs.FrontendStages.Crep.Data218
import InitECandidate.Proofs.FrontendStages.Crep.Data219
import InitECandidate.Proofs.FrontendStages.Crep.Data220
import InitECandidate.Proofs.FrontendStages.Crep.Data221
import InitECandidate.Proofs.FrontendStages.Crep.Data222
import InitECandidate.Proofs.FrontendStages.Crep.Data223

/-! `csize ≤ crepS` on the crep entries `output208` … `output223` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part13
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `208` … `223` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output208, output209, output210, output211, output212, output213, output214, output215, output216, output217, output218, output219, output220, output221, output222, output223]

theorem o208 : crepOkB crepS output208 = true := crepOkB_of_raw data208 (by kernel_rfl)
theorem o209 : crepOkB crepS output209 = true := crepOkB_of_raw data209 (by kernel_rfl)
theorem o210 : crepOkB crepS output210 = true := crepOkB_of_raw data210 (by kernel_rfl)
theorem o211 : crepOkB crepS output211 = true := crepOkB_of_raw data211 (by kernel_rfl)
theorem o212 : crepOkB crepS output212 = true := crepOkB_of_raw data212 (by kernel_rfl)
theorem o213 : crepOkB crepS output213 = true := crepOkB_of_raw data213 (by kernel_rfl)
theorem o214 : crepOkB crepS output214 = true := crepOkB_of_raw data214 (by kernel_rfl)
theorem o215 : crepOkB crepS output215 = true := crepOkB_of_raw data215 (by kernel_rfl)
theorem o216 : crepOkB crepS output216 = true := crepOkB_of_raw data216 (by kernel_rfl)
theorem o217 : crepOkB crepS output217 = true := crepOkB_of_raw data217 (by kernel_rfl)
theorem o218 : crepOkB crepS output218 = true := crepOkB_of_raw data218 (by kernel_rfl)
theorem o219 : crepOkB crepS output219 = true := crepOkB_of_raw data219 (by kernel_rfl)
theorem o220 : crepOkB crepS output220 = true := crepOkB_of_raw data220 (by kernel_rfl)
theorem o221 : crepOkB crepS output221 = true := crepOkB_of_raw data221 (by kernel_rfl)
theorem o222 : crepOkB crepS output222 = true := crepOkB_of_raw data222 (by kernel_rfl)
theorem o223 : crepOkB crepS output223 = true := crepOkB_of_raw data223 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o208 (all_cons_of o209 (all_cons_of o210 (all_cons_of o211 (all_cons_of o212 (all_cons_of o213 (all_cons_of o214 (all_cons_of o215 (all_cons_of o216 (all_cons_of o217 (all_cons_of o218 (all_cons_of o219 (all_cons_of o220 (all_cons_of o221 (all_cons_of o222 (all_cons_of o223 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part13

#print axioms InitECandidate.Solver.Concrete.Crep.Part13.ok
