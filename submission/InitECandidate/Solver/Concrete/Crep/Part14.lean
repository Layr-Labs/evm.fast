import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data224
import InitECandidate.Proofs.FrontendStages.Crep.Data225
import InitECandidate.Proofs.FrontendStages.Crep.Data226
import InitECandidate.Proofs.FrontendStages.Crep.Data227
import InitECandidate.Proofs.FrontendStages.Crep.Data228
import InitECandidate.Proofs.FrontendStages.Crep.Data229
import InitECandidate.Proofs.FrontendStages.Crep.Data230
import InitECandidate.Proofs.FrontendStages.Crep.Data231
import InitECandidate.Proofs.FrontendStages.Crep.Data232
import InitECandidate.Proofs.FrontendStages.Crep.Data233
import InitECandidate.Proofs.FrontendStages.Crep.Data234
import InitECandidate.Proofs.FrontendStages.Crep.Data235
import InitECandidate.Proofs.FrontendStages.Crep.Data236
import InitECandidate.Proofs.FrontendStages.Crep.Data237
import InitECandidate.Proofs.FrontendStages.Crep.Data238
import InitECandidate.Proofs.FrontendStages.Crep.Data239

/-! `csize ≤ crepS` on the crep entries `output224` … `output239` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part14
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `224` … `239` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output224, output225, output226, output227, output228, output229, output230, output231, output232, output233, output234, output235, output236, output237, output238, output239]

theorem o224 : crepOkB crepS output224 = true := crepOkB_of_raw data224 (by kernel_rfl)
theorem o225 : crepOkB crepS output225 = true := crepOkB_of_raw data225 (by kernel_rfl)
theorem o226 : crepOkB crepS output226 = true := crepOkB_of_raw data226 (by kernel_rfl)
theorem o227 : crepOkB crepS output227 = true := crepOkB_of_raw data227 (by kernel_rfl)
theorem o228 : crepOkB crepS output228 = true := crepOkB_of_raw data228 (by kernel_rfl)
theorem o229 : crepOkB crepS output229 = true := crepOkB_of_raw data229 (by kernel_rfl)
theorem o230 : crepOkB crepS output230 = true := crepOkB_of_raw data230 (by kernel_rfl)
theorem o231 : crepOkB crepS output231 = true := crepOkB_of_raw data231 (by kernel_rfl)
theorem o232 : crepOkB crepS output232 = true := crepOkB_of_raw data232 (by kernel_rfl)
theorem o233 : crepOkB crepS output233 = true := crepOkB_of_raw data233 (by kernel_rfl)
theorem o234 : crepOkB crepS output234 = true := crepOkB_of_raw data234 (by kernel_rfl)
theorem o235 : crepOkB crepS output235 = true := crepOkB_of_raw data235 (by kernel_rfl)
theorem o236 : crepOkB crepS output236 = true := crepOkB_of_raw data236 (by kernel_rfl)
theorem o237 : crepOkB crepS output237 = true := crepOkB_of_raw data237 (by kernel_rfl)
theorem o238 : crepOkB crepS output238 = true := crepOkB_of_raw data238 (by kernel_rfl)
theorem o239 : crepOkB crepS output239 = true := crepOkB_of_raw data239 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o224 (all_cons_of o225 (all_cons_of o226 (all_cons_of o227 (all_cons_of o228 (all_cons_of o229 (all_cons_of o230 (all_cons_of o231 (all_cons_of o232 (all_cons_of o233 (all_cons_of o234 (all_cons_of o235 (all_cons_of o236 (all_cons_of o237 (all_cons_of o238 (all_cons_of o239 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part14

#print axioms InitECandidate.Solver.Concrete.Crep.Part14.ok
