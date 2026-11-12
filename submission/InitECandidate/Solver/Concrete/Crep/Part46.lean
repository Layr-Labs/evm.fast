import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data736
import InitECandidate.Proofs.FrontendStages.Crep.Data737
import InitECandidate.Proofs.FrontendStages.Crep.Data738
import InitECandidate.Proofs.FrontendStages.Crep.Data739
import InitECandidate.Proofs.FrontendStages.Crep.Data740
import InitECandidate.Proofs.FrontendStages.Crep.Data741
import InitECandidate.Proofs.FrontendStages.Crep.Data742
import InitECandidate.Proofs.FrontendStages.Crep.Data743
import InitECandidate.Proofs.FrontendStages.Crep.Data744
import InitECandidate.Proofs.FrontendStages.Crep.Data745
import InitECandidate.Proofs.FrontendStages.Crep.Data746
import InitECandidate.Proofs.FrontendStages.Crep.Data747
import InitECandidate.Proofs.FrontendStages.Crep.Data748
import InitECandidate.Proofs.FrontendStages.Crep.Data749
import InitECandidate.Proofs.FrontendStages.Crep.Data750
import InitECandidate.Proofs.FrontendStages.Crep.Data751

/-! `csize ≤ crepS` on the crep entries `output736` … `output751` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part46
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `736` … `751` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output736, output737, output738, output739, output740, output741, output742, output743, output744, output745, output746, output747, output748, output749, output750, output751]

theorem o736 : crepOkB crepS output736 = true := crepOkB_of_raw data736 (by kernel_rfl)
theorem o737 : crepOkB crepS output737 = true := crepOkB_of_raw data737 (by kernel_rfl)
theorem o738 : crepOkB crepS output738 = true := crepOkB_of_raw data738 (by kernel_rfl)
theorem o739 : crepOkB crepS output739 = true := crepOkB_of_raw data739 (by kernel_rfl)
theorem o740 : crepOkB crepS output740 = true := crepOkB_of_raw data740 (by kernel_rfl)
theorem o741 : crepOkB crepS output741 = true := crepOkB_of_raw data741 (by kernel_rfl)
theorem o742 : crepOkB crepS output742 = true := crepOkB_of_raw data742 (by kernel_rfl)
theorem o743 : crepOkB crepS output743 = true := crepOkB_of_raw data743 (by kernel_rfl)
theorem o744 : crepOkB crepS output744 = true := crepOkB_of_raw data744 (by kernel_rfl)
theorem o745 : crepOkB crepS output745 = true := crepOkB_of_raw data745 (by kernel_rfl)
theorem o746 : crepOkB crepS output746 = true := crepOkB_of_raw data746 (by kernel_rfl)
theorem o747 : crepOkB crepS output747 = true := crepOkB_of_raw data747 (by kernel_rfl)
theorem o748 : crepOkB crepS output748 = true := crepOkB_of_raw data748 (by kernel_rfl)
theorem o749 : crepOkB crepS output749 = true := crepOkB_of_raw data749 (by kernel_rfl)
theorem o750 : crepOkB crepS output750 = true := crepOkB_of_raw data750 (by kernel_rfl)
theorem o751 : crepOkB crepS output751 = true := crepOkB_of_raw data751 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o736 (all_cons_of o737 (all_cons_of o738 (all_cons_of o739 (all_cons_of o740 (all_cons_of o741 (all_cons_of o742 (all_cons_of o743 (all_cons_of o744 (all_cons_of o745 (all_cons_of o746 (all_cons_of o747 (all_cons_of o748 (all_cons_of o749 (all_cons_of o750 (all_cons_of o751 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part46

#print axioms InitECandidate.Solver.Concrete.Crep.Part46.ok
