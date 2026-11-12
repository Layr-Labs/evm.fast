import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data112
import InitECandidate.Proofs.FrontendStages.Crep.Data113
import InitECandidate.Proofs.FrontendStages.Crep.Data114
import InitECandidate.Proofs.FrontendStages.Crep.Data115
import InitECandidate.Proofs.FrontendStages.Crep.Data116
import InitECandidate.Proofs.FrontendStages.Crep.Data117
import InitECandidate.Proofs.FrontendStages.Crep.Data118
import InitECandidate.Proofs.FrontendStages.Crep.Data119
import InitECandidate.Proofs.FrontendStages.Crep.Data120
import InitECandidate.Proofs.FrontendStages.Crep.Data121
import InitECandidate.Proofs.FrontendStages.Crep.Data122
import InitECandidate.Proofs.FrontendStages.Crep.Data123
import InitECandidate.Proofs.FrontendStages.Crep.Data124
import InitECandidate.Proofs.FrontendStages.Crep.Data125
import InitECandidate.Proofs.FrontendStages.Crep.Data126
import InitECandidate.Proofs.FrontendStages.Crep.Data127

/-! `csize ≤ crepS` on the crep entries `output112` … `output127` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part7
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `112` … `127` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output112, output113, output114, output115, output116, output117, output118, output119, output120, output121, output122, output123, output124, output125, output126, output127]

theorem o112 : crepOkB crepS output112 = true := crepOkB_of_raw data112 (by kernel_rfl)
theorem o113 : crepOkB crepS output113 = true := crepOkB_of_raw data113 (by kernel_rfl)
theorem o114 : crepOkB crepS output114 = true := crepOkB_of_raw data114 (by kernel_rfl)
theorem o115 : crepOkB crepS output115 = true := crepOkB_of_raw data115 (by kernel_rfl)
theorem o116 : crepOkB crepS output116 = true := crepOkB_of_raw data116 (by kernel_rfl)
theorem o117 : crepOkB crepS output117 = true := crepOkB_of_raw data117 (by kernel_rfl)
theorem o118 : crepOkB crepS output118 = true := crepOkB_of_raw data118 (by kernel_rfl)
theorem o119 : crepOkB crepS output119 = true := crepOkB_of_raw data119 (by kernel_rfl)
theorem o120 : crepOkB crepS output120 = true := crepOkB_of_raw data120 (by kernel_rfl)
theorem o121 : crepOkB crepS output121 = true := crepOkB_of_raw data121 (by kernel_rfl)
theorem o122 : crepOkB crepS output122 = true := crepOkB_of_raw data122 (by kernel_rfl)
theorem o123 : crepOkB crepS output123 = true := crepOkB_of_raw data123 (by kernel_rfl)
theorem o124 : crepOkB crepS output124 = true := crepOkB_of_raw data124 (by kernel_rfl)
theorem o125 : crepOkB crepS output125 = true := crepOkB_of_raw data125 (by kernel_rfl)
theorem o126 : crepOkB crepS output126 = true := crepOkB_of_raw data126 (by kernel_rfl)
theorem o127 : crepOkB crepS output127 = true := crepOkB_of_raw data127 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o112 (all_cons_of o113 (all_cons_of o114 (all_cons_of o115 (all_cons_of o116 (all_cons_of o117 (all_cons_of o118 (all_cons_of o119 (all_cons_of o120 (all_cons_of o121 (all_cons_of o122 (all_cons_of o123 (all_cons_of o124 (all_cons_of o125 (all_cons_of o126 (all_cons_of o127 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part7

#print axioms InitECandidate.Solver.Concrete.Crep.Part7.ok
