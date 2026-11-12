import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data784
import InitECandidate.Proofs.FrontendStages.Crep.Data785
import InitECandidate.Proofs.FrontendStages.Crep.Data786
import InitECandidate.Proofs.FrontendStages.Crep.Data787
import InitECandidate.Proofs.FrontendStages.Crep.Data788
import InitECandidate.Proofs.FrontendStages.Crep.Data789
import InitECandidate.Proofs.FrontendStages.Crep.Data790
import InitECandidate.Proofs.FrontendStages.Crep.Data791
import InitECandidate.Proofs.FrontendStages.Crep.Data792
import InitECandidate.Proofs.FrontendStages.Crep.Data793
import InitECandidate.Proofs.FrontendStages.Crep.Data794
import InitECandidate.Proofs.FrontendStages.Crep.Data795
import InitECandidate.Proofs.FrontendStages.Crep.Data796
import InitECandidate.Proofs.FrontendStages.Crep.Data797
import InitECandidate.Proofs.FrontendStages.Crep.Data798
import InitECandidate.Proofs.FrontendStages.Crep.Data799

/-! `csize ≤ crepS` on the crep entries `output784` … `output799` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part49
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `784` … `799` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output784, output785, output786, output787, output788, output789, output790, output791, output792, output793, output794, output795, output796, output797, output798, output799]

theorem o784 : crepOkB crepS output784 = true := crepOkB_of_raw data784 (by kernel_rfl)
theorem o785 : crepOkB crepS output785 = true := crepOkB_of_raw data785 (by kernel_rfl)
theorem o786 : crepOkB crepS output786 = true := crepOkB_of_raw data786 (by kernel_rfl)
theorem o787 : crepOkB crepS output787 = true := crepOkB_of_raw data787 (by kernel_rfl)
theorem o788 : crepOkB crepS output788 = true := crepOkB_of_raw data788 (by kernel_rfl)
theorem o789 : crepOkB crepS output789 = true := crepOkB_of_raw data789 (by kernel_rfl)
theorem o790 : crepOkB crepS output790 = true := crepOkB_of_raw data790 (by kernel_rfl)
theorem o791 : crepOkB crepS output791 = true := crepOkB_of_raw data791 (by kernel_rfl)
theorem o792 : crepOkB crepS output792 = true := crepOkB_of_raw data792 (by kernel_rfl)
theorem o793 : crepOkB crepS output793 = true := crepOkB_of_raw data793 (by kernel_rfl)
theorem o794 : crepOkB crepS output794 = true := crepOkB_of_raw data794 (by kernel_rfl)
theorem o795 : crepOkB crepS output795 = true := crepOkB_of_raw data795 (by kernel_rfl)
theorem o796 : crepOkB crepS output796 = true := crepOkB_of_raw data796 (by kernel_rfl)
theorem o797 : crepOkB crepS output797 = true := crepOkB_of_raw data797 (by kernel_rfl)
theorem o798 : crepOkB crepS output798 = true := crepOkB_of_raw data798 (by kernel_rfl)
theorem o799 : crepOkB crepS output799 = true := crepOkB_of_raw data799 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o784 (all_cons_of o785 (all_cons_of o786 (all_cons_of o787 (all_cons_of o788 (all_cons_of o789 (all_cons_of o790 (all_cons_of o791 (all_cons_of o792 (all_cons_of o793 (all_cons_of o794 (all_cons_of o795 (all_cons_of o796 (all_cons_of o797 (all_cons_of o798 (all_cons_of o799 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part49

#print axioms InitECandidate.Solver.Concrete.Crep.Part49.ok
