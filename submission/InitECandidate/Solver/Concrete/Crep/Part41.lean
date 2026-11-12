import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data656
import InitECandidate.Proofs.FrontendStages.Crep.Data657
import InitECandidate.Proofs.FrontendStages.Crep.Data658
import InitECandidate.Proofs.FrontendStages.Crep.Data659
import InitECandidate.Proofs.FrontendStages.Crep.Data660
import InitECandidate.Proofs.FrontendStages.Crep.Data661
import InitECandidate.Proofs.FrontendStages.Crep.Data662
import InitECandidate.Proofs.FrontendStages.Crep.Data663
import InitECandidate.Proofs.FrontendStages.Crep.Data664
import InitECandidate.Proofs.FrontendStages.Crep.Data665
import InitECandidate.Proofs.FrontendStages.Crep.Data666
import InitECandidate.Proofs.FrontendStages.Crep.Data667
import InitECandidate.Proofs.FrontendStages.Crep.Data668
import InitECandidate.Proofs.FrontendStages.Crep.Data669
import InitECandidate.Proofs.FrontendStages.Crep.Data670
import InitECandidate.Proofs.FrontendStages.Crep.Data671

/-! `csize ≤ crepS` on the crep entries `output656` … `output671` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part41
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `656` … `671` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output656, output657, output658, output659, output660, output661, output662, output663, output664, output665, output666, output667, output668, output669, output670, output671]

theorem o656 : crepOkB crepS output656 = true := crepOkB_of_raw data656 (by kernel_rfl)
theorem o657 : crepOkB crepS output657 = true := crepOkB_of_raw data657 (by kernel_rfl)
theorem o658 : crepOkB crepS output658 = true := crepOkB_of_raw data658 (by kernel_rfl)
theorem o659 : crepOkB crepS output659 = true := crepOkB_of_raw data659 (by kernel_rfl)
theorem o660 : crepOkB crepS output660 = true := crepOkB_of_raw data660 (by kernel_rfl)
theorem o661 : crepOkB crepS output661 = true := crepOkB_of_raw data661 (by kernel_rfl)
theorem o662 : crepOkB crepS output662 = true := crepOkB_of_raw data662 (by kernel_rfl)
theorem o663 : crepOkB crepS output663 = true := crepOkB_of_raw data663 (by kernel_rfl)
theorem o664 : crepOkB crepS output664 = true := crepOkB_of_raw data664 (by kernel_rfl)
theorem o665 : crepOkB crepS output665 = true := crepOkB_of_raw data665 (by kernel_rfl)
theorem o666 : crepOkB crepS output666 = true := crepOkB_of_raw data666 (by kernel_rfl)
theorem o667 : crepOkB crepS output667 = true := crepOkB_of_raw data667 (by kernel_rfl)
theorem o668 : crepOkB crepS output668 = true := crepOkB_of_raw data668 (by kernel_rfl)
theorem o669 : crepOkB crepS output669 = true := crepOkB_of_raw data669 (by kernel_rfl)
theorem o670 : crepOkB crepS output670 = true := crepOkB_of_raw data670 (by kernel_rfl)
theorem o671 : crepOkB crepS output671 = true := crepOkB_of_raw data671 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o656 (all_cons_of o657 (all_cons_of o658 (all_cons_of o659 (all_cons_of o660 (all_cons_of o661 (all_cons_of o662 (all_cons_of o663 (all_cons_of o664 (all_cons_of o665 (all_cons_of o666 (all_cons_of o667 (all_cons_of o668 (all_cons_of o669 (all_cons_of o670 (all_cons_of o671 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part41

#print axioms InitECandidate.Solver.Concrete.Crep.Part41.ok
