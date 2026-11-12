import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data576
import InitECandidate.Proofs.FrontendStages.Crep.Data577
import InitECandidate.Proofs.FrontendStages.Crep.Data578
import InitECandidate.Proofs.FrontendStages.Crep.Data579
import InitECandidate.Proofs.FrontendStages.Crep.Data580
import InitECandidate.Proofs.FrontendStages.Crep.Data581
import InitECandidate.Proofs.FrontendStages.Crep.Data582
import InitECandidate.Proofs.FrontendStages.Crep.Data583
import InitECandidate.Proofs.FrontendStages.Crep.Data584
import InitECandidate.Proofs.FrontendStages.Crep.Data585
import InitECandidate.Proofs.FrontendStages.Crep.Data586
import InitECandidate.Proofs.FrontendStages.Crep.Data587
import InitECandidate.Proofs.FrontendStages.Crep.Data588
import InitECandidate.Proofs.FrontendStages.Crep.Data589
import InitECandidate.Proofs.FrontendStages.Crep.Data590
import InitECandidate.Proofs.FrontendStages.Crep.Data591

/-! `csize ≤ crepS` on the crep entries `output576` … `output591` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part36
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `576` … `591` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output576, output577, output578, output579, output580, output581, output582, output583, output584, output585, output586, output587, output588, output589, output590, output591]

theorem o576 : crepOkB crepS output576 = true := crepOkB_of_raw data576 (by kernel_rfl)
theorem o577 : crepOkB crepS output577 = true := crepOkB_of_raw data577 (by kernel_rfl)
theorem o578 : crepOkB crepS output578 = true := crepOkB_of_raw data578 (by kernel_rfl)
theorem o579 : crepOkB crepS output579 = true := crepOkB_of_raw data579 (by kernel_rfl)
theorem o580 : crepOkB crepS output580 = true := crepOkB_of_raw data580 (by kernel_rfl)
theorem o581 : crepOkB crepS output581 = true := crepOkB_of_raw data581 (by kernel_rfl)
theorem o582 : crepOkB crepS output582 = true := crepOkB_of_raw data582 (by kernel_rfl)
theorem o583 : crepOkB crepS output583 = true := crepOkB_of_raw data583 (by kernel_rfl)
theorem o584 : crepOkB crepS output584 = true := crepOkB_of_raw data584 (by kernel_rfl)
theorem o585 : crepOkB crepS output585 = true := crepOkB_of_raw data585 (by kernel_rfl)
theorem o586 : crepOkB crepS output586 = true := crepOkB_of_raw data586 (by kernel_rfl)
theorem o587 : crepOkB crepS output587 = true := crepOkB_of_raw data587 (by kernel_rfl)
theorem o588 : crepOkB crepS output588 = true := crepOkB_of_raw data588 (by kernel_rfl)
theorem o589 : crepOkB crepS output589 = true := crepOkB_of_raw data589 (by kernel_rfl)
theorem o590 : crepOkB crepS output590 = true := crepOkB_of_raw data590 (by kernel_rfl)
theorem o591 : crepOkB crepS output591 = true := crepOkB_of_raw data591 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o576 (all_cons_of o577 (all_cons_of o578 (all_cons_of o579 (all_cons_of o580 (all_cons_of o581 (all_cons_of o582 (all_cons_of o583 (all_cons_of o584 (all_cons_of o585 (all_cons_of o586 (all_cons_of o587 (all_cons_of o588 (all_cons_of o589 (all_cons_of o590 (all_cons_of o591 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part36

#print axioms InitECandidate.Solver.Concrete.Crep.Part36.ok
