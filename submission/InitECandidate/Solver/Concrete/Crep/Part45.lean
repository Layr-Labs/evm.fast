import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data720
import InitECandidate.Proofs.FrontendStages.Crep.Data721
import InitECandidate.Proofs.FrontendStages.Crep.Data722
import InitECandidate.Proofs.FrontendStages.Crep.Data723
import InitECandidate.Proofs.FrontendStages.Crep.Data724
import InitECandidate.Proofs.FrontendStages.Crep.Data725
import InitECandidate.Proofs.FrontendStages.Crep.Data726
import InitECandidate.Proofs.FrontendStages.Crep.Data727
import InitECandidate.Proofs.FrontendStages.Crep.Data728
import InitECandidate.Proofs.FrontendStages.Crep.Data729
import InitECandidate.Proofs.FrontendStages.Crep.Data730
import InitECandidate.Proofs.FrontendStages.Crep.Data731
import InitECandidate.Proofs.FrontendStages.Crep.Data732
import InitECandidate.Proofs.FrontendStages.Crep.Data733
import InitECandidate.Proofs.FrontendStages.Crep.Data734
import InitECandidate.Proofs.FrontendStages.Crep.Data735

/-! `csize ≤ crepS` on the crep entries `output720` … `output735` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part45
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `720` … `735` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output720, output721, output722, output723, output724, output725, output726, output727, output728, output729, output730, output731, output732, output733, output734, output735]

theorem o720 : crepOkB crepS output720 = true := crepOkB_of_raw data720 (by kernel_rfl)
theorem o721 : crepOkB crepS output721 = true := crepOkB_of_raw data721 (by kernel_rfl)
theorem o722 : crepOkB crepS output722 = true := crepOkB_of_raw data722 (by kernel_rfl)
theorem o723 : crepOkB crepS output723 = true := crepOkB_of_raw data723 (by kernel_rfl)
theorem o724 : crepOkB crepS output724 = true := crepOkB_of_raw data724 (by kernel_rfl)
theorem o725 : crepOkB crepS output725 = true := crepOkB_of_raw data725 (by kernel_rfl)
theorem o726 : crepOkB crepS output726 = true := crepOkB_of_raw data726 (by kernel_rfl)
theorem o727 : crepOkB crepS output727 = true := crepOkB_of_raw data727 (by kernel_rfl)
theorem o728 : crepOkB crepS output728 = true := crepOkB_of_raw data728 (by kernel_rfl)
theorem o729 : crepOkB crepS output729 = true := crepOkB_of_raw data729 (by kernel_rfl)
theorem o730 : crepOkB crepS output730 = true := crepOkB_of_raw data730 (by kernel_rfl)
theorem o731 : crepOkB crepS output731 = true := crepOkB_of_raw data731 (by kernel_rfl)
theorem o732 : crepOkB crepS output732 = true := crepOkB_of_raw data732 (by kernel_rfl)
theorem o733 : crepOkB crepS output733 = true := crepOkB_of_raw data733 (by kernel_rfl)
theorem o734 : crepOkB crepS output734 = true := crepOkB_of_raw data734 (by kernel_rfl)
theorem o735 : crepOkB crepS output735 = true := crepOkB_of_raw data735 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o720 (all_cons_of o721 (all_cons_of o722 (all_cons_of o723 (all_cons_of o724 (all_cons_of o725 (all_cons_of o726 (all_cons_of o727 (all_cons_of o728 (all_cons_of o729 (all_cons_of o730 (all_cons_of o731 (all_cons_of o732 (all_cons_of o733 (all_cons_of o734 (all_cons_of o735 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part45

#print axioms InitECandidate.Solver.Concrete.Crep.Part45.ok
