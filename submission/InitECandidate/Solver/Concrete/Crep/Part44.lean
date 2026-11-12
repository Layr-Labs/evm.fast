import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data704
import InitECandidate.Proofs.FrontendStages.Crep.Data705
import InitECandidate.Proofs.FrontendStages.Crep.Data706
import InitECandidate.Proofs.FrontendStages.Crep.Data707
import InitECandidate.Proofs.FrontendStages.Crep.Data708
import InitECandidate.Proofs.FrontendStages.Crep.Data709
import InitECandidate.Proofs.FrontendStages.Crep.Data710
import InitECandidate.Proofs.FrontendStages.Crep.Data711
import InitECandidate.Proofs.FrontendStages.Crep.Data712
import InitECandidate.Proofs.FrontendStages.Crep.Data713
import InitECandidate.Proofs.FrontendStages.Crep.Data714
import InitECandidate.Proofs.FrontendStages.Crep.Data715
import InitECandidate.Proofs.FrontendStages.Crep.Data716
import InitECandidate.Proofs.FrontendStages.Crep.Data717
import InitECandidate.Proofs.FrontendStages.Crep.Data718
import InitECandidate.Proofs.FrontendStages.Crep.Data719

/-! `csize ≤ crepS` on the crep entries `output704` … `output719` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part44
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `704` … `719` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output704, output705, output706, output707, output708, output709, output710, output711, output712, output713, output714, output715, output716, output717, output718, output719]

theorem o704 : crepOkB crepS output704 = true := crepOkB_of_raw data704 (by kernel_rfl)
theorem o705 : crepOkB crepS output705 = true := crepOkB_of_raw data705 (by kernel_rfl)
theorem o706 : crepOkB crepS output706 = true := crepOkB_of_raw data706 (by kernel_rfl)
theorem o707 : crepOkB crepS output707 = true := crepOkB_of_raw data707 (by kernel_rfl)
theorem o708 : crepOkB crepS output708 = true := crepOkB_of_raw data708 (by kernel_rfl)
theorem o709 : crepOkB crepS output709 = true := crepOkB_of_raw data709 (by kernel_rfl)
theorem o710 : crepOkB crepS output710 = true := crepOkB_of_raw data710 (by kernel_rfl)
theorem o711 : crepOkB crepS output711 = true := crepOkB_of_raw data711 (by kernel_rfl)
theorem o712 : crepOkB crepS output712 = true := crepOkB_of_raw data712 (by kernel_rfl)
theorem o713 : crepOkB crepS output713 = true := crepOkB_of_raw data713 (by kernel_rfl)
theorem o714 : crepOkB crepS output714 = true := crepOkB_of_raw data714 (by kernel_rfl)
theorem o715 : crepOkB crepS output715 = true := crepOkB_of_raw data715 (by kernel_rfl)
theorem o716 : crepOkB crepS output716 = true := crepOkB_of_raw data716 (by kernel_rfl)
theorem o717 : crepOkB crepS output717 = true := crepOkB_of_raw data717 (by kernel_rfl)
theorem o718 : crepOkB crepS output718 = true := crepOkB_of_raw data718 (by kernel_rfl)
theorem o719 : crepOkB crepS output719 = true := crepOkB_of_raw data719 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o704 (all_cons_of o705 (all_cons_of o706 (all_cons_of o707 (all_cons_of o708 (all_cons_of o709 (all_cons_of o710 (all_cons_of o711 (all_cons_of o712 (all_cons_of o713 (all_cons_of o714 (all_cons_of o715 (all_cons_of o716 (all_cons_of o717 (all_cons_of o718 (all_cons_of o719 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part44

#print axioms InitECandidate.Solver.Concrete.Crep.Part44.ok
