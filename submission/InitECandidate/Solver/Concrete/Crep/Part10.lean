import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data160
import InitECandidate.Proofs.FrontendStages.Crep.Data161
import InitECandidate.Proofs.FrontendStages.Crep.Data162
import InitECandidate.Proofs.FrontendStages.Crep.Data163
import InitECandidate.Proofs.FrontendStages.Crep.Data164
import InitECandidate.Proofs.FrontendStages.Crep.Data165
import InitECandidate.Proofs.FrontendStages.Crep.Data166
import InitECandidate.Proofs.FrontendStages.Crep.Data167
import InitECandidate.Proofs.FrontendStages.Crep.Data168
import InitECandidate.Proofs.FrontendStages.Crep.Data169
import InitECandidate.Proofs.FrontendStages.Crep.Data170
import InitECandidate.Proofs.FrontendStages.Crep.Data171
import InitECandidate.Proofs.FrontendStages.Crep.Data172
import InitECandidate.Proofs.FrontendStages.Crep.Data173
import InitECandidate.Proofs.FrontendStages.Crep.Data174
import InitECandidate.Proofs.FrontendStages.Crep.Data175

/-! `csize ≤ crepS` on the crep entries `output160` … `output175` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part10
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `160` … `175` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output160, output161, output162, output163, output164, output165, output166, output167, output168, output169, output170, output171, output172, output173, output174, output175]

theorem o160 : crepOkB crepS output160 = true := crepOkB_of_raw data160 (by kernel_rfl)
theorem o161 : crepOkB crepS output161 = true := crepOkB_of_raw data161 (by kernel_rfl)
theorem o162 : crepOkB crepS output162 = true := crepOkB_of_raw data162 (by kernel_rfl)
theorem o163 : crepOkB crepS output163 = true := crepOkB_of_raw data163 (by kernel_rfl)
theorem o164 : crepOkB crepS output164 = true := crepOkB_of_raw data164 (by kernel_rfl)
theorem o165 : crepOkB crepS output165 = true := crepOkB_of_raw data165 (by kernel_rfl)
theorem o166 : crepOkB crepS output166 = true := crepOkB_of_raw data166 (by kernel_rfl)
theorem o167 : crepOkB crepS output167 = true := crepOkB_of_raw data167 (by kernel_rfl)
theorem o168 : crepOkB crepS output168 = true := crepOkB_of_raw data168 (by kernel_rfl)
theorem o169 : crepOkB crepS output169 = true := crepOkB_of_raw data169 (by kernel_rfl)
theorem o170 : crepOkB crepS output170 = true := crepOkB_of_raw data170 (by kernel_rfl)
theorem o171 : crepOkB crepS output171 = true := crepOkB_of_raw data171 (by kernel_rfl)
theorem o172 : crepOkB crepS output172 = true := crepOkB_of_raw data172 (by kernel_rfl)
theorem o173 : crepOkB crepS output173 = true := crepOkB_of_raw data173 (by kernel_rfl)
theorem o174 : crepOkB crepS output174 = true := crepOkB_of_raw data174 (by kernel_rfl)
theorem o175 : crepOkB crepS output175 = true := crepOkB_of_raw data175 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o160 (all_cons_of o161 (all_cons_of o162 (all_cons_of o163 (all_cons_of o164 (all_cons_of o165 (all_cons_of o166 (all_cons_of o167 (all_cons_of o168 (all_cons_of o169 (all_cons_of o170 (all_cons_of o171 (all_cons_of o172 (all_cons_of o173 (all_cons_of o174 (all_cons_of o175 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part10

#print axioms InitECandidate.Solver.Concrete.Crep.Part10.ok
