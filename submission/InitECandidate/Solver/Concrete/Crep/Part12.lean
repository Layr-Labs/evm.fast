import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data192
import InitECandidate.Proofs.FrontendStages.Crep.Data193
import InitECandidate.Proofs.FrontendStages.Crep.Data194
import InitECandidate.Proofs.FrontendStages.Crep.Data195
import InitECandidate.Proofs.FrontendStages.Crep.Data196
import InitECandidate.Proofs.FrontendStages.Crep.Data197
import InitECandidate.Proofs.FrontendStages.Crep.Data198
import InitECandidate.Proofs.FrontendStages.Crep.Data199
import InitECandidate.Proofs.FrontendStages.Crep.Data200
import InitECandidate.Proofs.FrontendStages.Crep.Data201
import InitECandidate.Proofs.FrontendStages.Crep.Data202
import InitECandidate.Proofs.FrontendStages.Crep.Data203
import InitECandidate.Proofs.FrontendStages.Crep.Data204
import InitECandidate.Proofs.FrontendStages.Crep.Data205
import InitECandidate.Proofs.FrontendStages.Crep.Data206
import InitECandidate.Proofs.FrontendStages.Crep.Data207

/-! `csize ≤ crepS` on the crep entries `output192` … `output207` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part12
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `192` … `207` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output192, output193, output194, output195, output196, output197, output198, output199, output200, output201, output202, output203, output204, output205, output206, output207]

theorem o192 : crepOkB crepS output192 = true := crepOkB_of_raw data192 (by kernel_rfl)
theorem o193 : crepOkB crepS output193 = true := crepOkB_of_raw data193 (by kernel_rfl)
theorem o194 : crepOkB crepS output194 = true := crepOkB_of_raw data194 (by kernel_rfl)
theorem o195 : crepOkB crepS output195 = true := crepOkB_of_raw data195 (by kernel_rfl)
theorem o196 : crepOkB crepS output196 = true := crepOkB_of_raw data196 (by kernel_rfl)
theorem o197 : crepOkB crepS output197 = true := crepOkB_of_raw data197 (by kernel_rfl)
theorem o198 : crepOkB crepS output198 = true := crepOkB_of_raw data198 (by kernel_rfl)
theorem o199 : crepOkB crepS output199 = true := crepOkB_of_raw data199 (by kernel_rfl)
theorem o200 : crepOkB crepS output200 = true := crepOkB_of_raw data200 (by kernel_rfl)
theorem o201 : crepOkB crepS output201 = true := crepOkB_of_raw data201 (by kernel_rfl)
theorem o202 : crepOkB crepS output202 = true := crepOkB_of_raw data202 (by kernel_rfl)
theorem o203 : crepOkB crepS output203 = true := crepOkB_of_raw data203 (by kernel_rfl)
theorem o204 : crepOkB crepS output204 = true := crepOkB_of_raw data204 (by kernel_rfl)
theorem o205 : crepOkB crepS output205 = true := crepOkB_of_raw data205 (by kernel_rfl)
theorem o206 : crepOkB crepS output206 = true := crepOkB_of_raw data206 (by kernel_rfl)
theorem o207 : crepOkB crepS output207 = true := crepOkB_of_raw data207 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o192 (all_cons_of o193 (all_cons_of o194 (all_cons_of o195 (all_cons_of o196 (all_cons_of o197 (all_cons_of o198 (all_cons_of o199 (all_cons_of o200 (all_cons_of o201 (all_cons_of o202 (all_cons_of o203 (all_cons_of o204 (all_cons_of o205 (all_cons_of o206 (all_cons_of o207 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part12

#print axioms InitECandidate.Solver.Concrete.Crep.Part12.ok
