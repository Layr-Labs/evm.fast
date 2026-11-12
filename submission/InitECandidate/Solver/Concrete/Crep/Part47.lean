import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data752
import InitECandidate.Proofs.FrontendStages.Crep.Data753
import InitECandidate.Proofs.FrontendStages.Crep.Data754
import InitECandidate.Proofs.FrontendStages.Crep.Data755
import InitECandidate.Proofs.FrontendStages.Crep.Data756
import InitECandidate.Proofs.FrontendStages.Crep.Data757
import InitECandidate.Proofs.FrontendStages.Crep.Data758
import InitECandidate.Proofs.FrontendStages.Crep.Data759
import InitECandidate.Proofs.FrontendStages.Crep.Data760
import InitECandidate.Proofs.FrontendStages.Crep.Data761
import InitECandidate.Proofs.FrontendStages.Crep.Data762
import InitECandidate.Proofs.FrontendStages.Crep.Data763
import InitECandidate.Proofs.FrontendStages.Crep.Data764
import InitECandidate.Proofs.FrontendStages.Crep.Data765
import InitECandidate.Proofs.FrontendStages.Crep.Data766
import InitECandidate.Proofs.FrontendStages.Crep.Data767

/-! `csize ≤ crepS` on the crep entries `output752` … `output767` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part47
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `752` … `767` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output752, output753, output754, output755, output756, output757, output758, output759, output760, output761, output762, output763, output764, output765, output766, output767]

theorem o752 : crepOkB crepS output752 = true := crepOkB_of_raw data752 (by kernel_rfl)
theorem o753 : crepOkB crepS output753 = true := crepOkB_of_raw data753 (by kernel_rfl)
theorem o754 : crepOkB crepS output754 = true := crepOkB_of_raw data754 (by kernel_rfl)
theorem o755 : crepOkB crepS output755 = true := crepOkB_of_raw data755 (by kernel_rfl)
theorem o756 : crepOkB crepS output756 = true := crepOkB_of_raw data756 (by kernel_rfl)
theorem o757 : crepOkB crepS output757 = true := crepOkB_of_raw data757 (by kernel_rfl)
theorem o758 : crepOkB crepS output758 = true := crepOkB_of_raw data758 (by kernel_rfl)
theorem o759 : crepOkB crepS output759 = true := crepOkB_of_raw data759 (by kernel_rfl)
theorem o760 : crepOkB crepS output760 = true := crepOkB_of_raw data760 (by kernel_rfl)
theorem o761 : crepOkB crepS output761 = true := crepOkB_of_raw data761 (by kernel_rfl)
theorem o762 : crepOkB crepS output762 = true := crepOkB_of_raw data762 (by kernel_rfl)
theorem o763 : crepOkB crepS output763 = true := crepOkB_of_raw data763 (by kernel_rfl)
theorem o764 : crepOkB crepS output764 = true := crepOkB_of_raw data764 (by kernel_rfl)
theorem o765 : crepOkB crepS output765 = true := crepOkB_of_raw data765 (by kernel_rfl)
theorem o766 : crepOkB crepS output766 = true := crepOkB_of_raw data766 (by kernel_rfl)
theorem o767 : crepOkB crepS output767 = true := crepOkB_of_raw data767 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o752 (all_cons_of o753 (all_cons_of o754 (all_cons_of o755 (all_cons_of o756 (all_cons_of o757 (all_cons_of o758 (all_cons_of o759 (all_cons_of o760 (all_cons_of o761 (all_cons_of o762 (all_cons_of o763 (all_cons_of o764 (all_cons_of o765 (all_cons_of o766 (all_cons_of o767 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part47

#print axioms InitECandidate.Solver.Concrete.Crep.Part47.ok
