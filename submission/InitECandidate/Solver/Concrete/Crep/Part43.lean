import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data688
import InitECandidate.Proofs.FrontendStages.Crep.Data689
import InitECandidate.Proofs.FrontendStages.Crep.Data690
import InitECandidate.Proofs.FrontendStages.Crep.Data691
import InitECandidate.Proofs.FrontendStages.Crep.Data692
import InitECandidate.Proofs.FrontendStages.Crep.Data693
import InitECandidate.Proofs.FrontendStages.Crep.Data694
import InitECandidate.Proofs.FrontendStages.Crep.Data695
import InitECandidate.Proofs.FrontendStages.Crep.Data696
import InitECandidate.Proofs.FrontendStages.Crep.Data697
import InitECandidate.Proofs.FrontendStages.Crep.Data698
import InitECandidate.Proofs.FrontendStages.Crep.Data699
import InitECandidate.Proofs.FrontendStages.Crep.Data700
import InitECandidate.Proofs.FrontendStages.Crep.Data701
import InitECandidate.Proofs.FrontendStages.Crep.Data702
import InitECandidate.Proofs.FrontendStages.Crep.Data703

/-! `csize ≤ crepS` on the crep entries `output688` … `output703` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part43
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `688` … `703` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output688, output689, output690, output691, output692, output693, output694, output695, output696, output697, output698, output699, output700, output701, output702, output703]

theorem o688 : crepOkB crepS output688 = true := crepOkB_of_raw data688 (by kernel_rfl)
theorem o689 : crepOkB crepS output689 = true := crepOkB_of_raw data689 (by kernel_rfl)
theorem o690 : crepOkB crepS output690 = true := crepOkB_of_raw data690 (by kernel_rfl)
theorem o691 : crepOkB crepS output691 = true := crepOkB_of_raw data691 (by kernel_rfl)
theorem o692 : crepOkB crepS output692 = true := crepOkB_of_raw data692 (by kernel_rfl)
theorem o693 : crepOkB crepS output693 = true := crepOkB_of_raw data693 (by kernel_rfl)
theorem o694 : crepOkB crepS output694 = true := crepOkB_of_raw data694 (by kernel_rfl)
theorem o695 : crepOkB crepS output695 = true := crepOkB_of_raw data695 (by kernel_rfl)
theorem o696 : crepOkB crepS output696 = true := crepOkB_of_raw data696 (by kernel_rfl)
theorem o697 : crepOkB crepS output697 = true := crepOkB_of_raw data697 (by kernel_rfl)
theorem o698 : crepOkB crepS output698 = true := crepOkB_of_raw data698 (by kernel_rfl)
theorem o699 : crepOkB crepS output699 = true := crepOkB_of_raw data699 (by kernel_rfl)
theorem o700 : crepOkB crepS output700 = true := crepOkB_of_raw data700 (by kernel_rfl)
theorem o701 : crepOkB crepS output701 = true := crepOkB_of_raw data701 (by kernel_rfl)
theorem o702 : crepOkB crepS output702 = true := crepOkB_of_raw data702 (by kernel_rfl)
theorem o703 : crepOkB crepS output703 = true := crepOkB_of_raw data703 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o688 (all_cons_of o689 (all_cons_of o690 (all_cons_of o691 (all_cons_of o692 (all_cons_of o693 (all_cons_of o694 (all_cons_of o695 (all_cons_of o696 (all_cons_of o697 (all_cons_of o698 (all_cons_of o699 (all_cons_of o700 (all_cons_of o701 (all_cons_of o702 (all_cons_of o703 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part43

#print axioms InitECandidate.Solver.Concrete.Crep.Part43.ok
