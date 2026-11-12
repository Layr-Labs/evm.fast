import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data176
import InitECandidate.Proofs.FrontendStages.Crep.Data177
import InitECandidate.Proofs.FrontendStages.Crep.Data178
import InitECandidate.Proofs.FrontendStages.Crep.Data179
import InitECandidate.Proofs.FrontendStages.Crep.Data180
import InitECandidate.Proofs.FrontendStages.Crep.Data181
import InitECandidate.Proofs.FrontendStages.Crep.Data182
import InitECandidate.Proofs.FrontendStages.Crep.Data183
import InitECandidate.Proofs.FrontendStages.Crep.Data184
import InitECandidate.Proofs.FrontendStages.Crep.Data185
import InitECandidate.Proofs.FrontendStages.Crep.Data186
import InitECandidate.Proofs.FrontendStages.Crep.Data187
import InitECandidate.Proofs.FrontendStages.Crep.Data188
import InitECandidate.Proofs.FrontendStages.Crep.Data189
import InitECandidate.Proofs.FrontendStages.Crep.Data190
import InitECandidate.Proofs.FrontendStages.Crep.Data191

/-! `csize ≤ crepS` on the crep entries `output176` … `output191` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part11
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `176` … `191` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output176, output177, output178, output179, output180, output181, output182, output183, output184, output185, output186, output187, output188, output189, output190, output191]

theorem o176 : crepOkB crepS output176 = true := crepOkB_of_raw data176 (by kernel_rfl)
theorem o177 : crepOkB crepS output177 = true := crepOkB_of_raw data177 (by kernel_rfl)
theorem o178 : crepOkB crepS output178 = true := crepOkB_of_raw data178 (by kernel_rfl)
theorem o179 : crepOkB crepS output179 = true := crepOkB_of_raw data179 (by kernel_rfl)
theorem o180 : crepOkB crepS output180 = true := crepOkB_of_raw data180 (by kernel_rfl)
theorem o181 : crepOkB crepS output181 = true := crepOkB_of_raw data181 (by kernel_rfl)
theorem o182 : crepOkB crepS output182 = true := crepOkB_of_raw data182 (by kernel_rfl)
theorem o183 : crepOkB crepS output183 = true := crepOkB_of_raw data183 (by kernel_rfl)
theorem o184 : crepOkB crepS output184 = true := crepOkB_of_raw data184 (by kernel_rfl)
theorem o185 : crepOkB crepS output185 = true := crepOkB_of_raw data185 (by kernel_rfl)
theorem o186 : crepOkB crepS output186 = true := crepOkB_of_raw data186 (by kernel_rfl)
theorem o187 : crepOkB crepS output187 = true := crepOkB_of_raw data187 (by kernel_rfl)
theorem o188 : crepOkB crepS output188 = true := crepOkB_of_raw data188 (by kernel_rfl)
theorem o189 : crepOkB crepS output189 = true := crepOkB_of_raw data189 (by kernel_rfl)
theorem o190 : crepOkB crepS output190 = true := crepOkB_of_raw data190 (by kernel_rfl)
theorem o191 : crepOkB crepS output191 = true := crepOkB_of_raw data191 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o176 (all_cons_of o177 (all_cons_of o178 (all_cons_of o179 (all_cons_of o180 (all_cons_of o181 (all_cons_of o182 (all_cons_of o183 (all_cons_of o184 (all_cons_of o185 (all_cons_of o186 (all_cons_of o187 (all_cons_of o188 (all_cons_of o189 (all_cons_of o190 (all_cons_of o191 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part11

#print axioms InitECandidate.Solver.Concrete.Crep.Part11.ok
