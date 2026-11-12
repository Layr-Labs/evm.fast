import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data144
import InitECandidate.Proofs.FrontendStages.Crep.Data145
import InitECandidate.Proofs.FrontendStages.Crep.Data146
import InitECandidate.Proofs.FrontendStages.Crep.Data147
import InitECandidate.Proofs.FrontendStages.Crep.Data148
import InitECandidate.Proofs.FrontendStages.Crep.Data149
import InitECandidate.Proofs.FrontendStages.Crep.Data150
import InitECandidate.Proofs.FrontendStages.Crep.Data151
import InitECandidate.Proofs.FrontendStages.Crep.Data152
import InitECandidate.Proofs.FrontendStages.Crep.Data153
import InitECandidate.Proofs.FrontendStages.Crep.Data154
import InitECandidate.Proofs.FrontendStages.Crep.Data155
import InitECandidate.Proofs.FrontendStages.Crep.Data156
import InitECandidate.Proofs.FrontendStages.Crep.Data157
import InitECandidate.Proofs.FrontendStages.Crep.Data158
import InitECandidate.Proofs.FrontendStages.Crep.Data159

/-! `csize ≤ crepS` on the crep entries `output144` … `output159` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part9
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `144` … `159` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output144, output145, output146, output147, output148, output149, output150, output151, output152, output153, output154, output155, output156, output157, output158, output159]

theorem o144 : crepOkB crepS output144 = true := crepOkB_of_raw data144 (by kernel_rfl)
theorem o145 : crepOkB crepS output145 = true := crepOkB_of_raw data145 (by kernel_rfl)
theorem o146 : crepOkB crepS output146 = true := crepOkB_of_raw data146 (by kernel_rfl)
theorem o147 : crepOkB crepS output147 = true := crepOkB_of_raw data147 (by kernel_rfl)
theorem o148 : crepOkB crepS output148 = true := crepOkB_of_raw data148 (by kernel_rfl)
theorem o149 : crepOkB crepS output149 = true := crepOkB_of_raw data149 (by kernel_rfl)
theorem o150 : crepOkB crepS output150 = true := crepOkB_of_raw data150 (by kernel_rfl)
theorem o151 : crepOkB crepS output151 = true := crepOkB_of_raw data151 (by kernel_rfl)
theorem o152 : crepOkB crepS output152 = true := crepOkB_of_raw data152 (by kernel_rfl)
theorem o153 : crepOkB crepS output153 = true := crepOkB_of_raw data153 (by kernel_rfl)
theorem o154 : crepOkB crepS output154 = true := crepOkB_of_raw data154 (by kernel_rfl)
theorem o155 : crepOkB crepS output155 = true := crepOkB_of_raw data155 (by kernel_rfl)
theorem o156 : crepOkB crepS output156 = true := crepOkB_of_raw data156 (by kernel_rfl)
theorem o157 : crepOkB crepS output157 = true := crepOkB_of_raw data157 (by kernel_rfl)
theorem o158 : crepOkB crepS output158 = true := crepOkB_of_raw data158 (by kernel_rfl)
theorem o159 : crepOkB crepS output159 = true := crepOkB_of_raw data159 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o144 (all_cons_of o145 (all_cons_of o146 (all_cons_of o147 (all_cons_of o148 (all_cons_of o149 (all_cons_of o150 (all_cons_of o151 (all_cons_of o152 (all_cons_of o153 (all_cons_of o154 (all_cons_of o155 (all_cons_of o156 (all_cons_of o157 (all_cons_of o158 (all_cons_of o159 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part9

#print axioms InitECandidate.Solver.Concrete.Crep.Part9.ok
