import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data640
import InitECandidate.Proofs.FrontendStages.Crep.Data641
import InitECandidate.Proofs.FrontendStages.Crep.Data642
import InitECandidate.Proofs.FrontendStages.Crep.Data643
import InitECandidate.Proofs.FrontendStages.Crep.Data644
import InitECandidate.Proofs.FrontendStages.Crep.Data645
import InitECandidate.Proofs.FrontendStages.Crep.Data646
import InitECandidate.Proofs.FrontendStages.Crep.Data647
import InitECandidate.Proofs.FrontendStages.Crep.Data648
import InitECandidate.Proofs.FrontendStages.Crep.Data649
import InitECandidate.Proofs.FrontendStages.Crep.Data650
import InitECandidate.Proofs.FrontendStages.Crep.Data651
import InitECandidate.Proofs.FrontendStages.Crep.Data652
import InitECandidate.Proofs.FrontendStages.Crep.Data653
import InitECandidate.Proofs.FrontendStages.Crep.Data654
import InitECandidate.Proofs.FrontendStages.Crep.Data655

/-! `csize ≤ crepS` on the crep entries `output640` … `output655` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part40
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `640` … `655` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output640, output641, output642, output643, output644, output645, output646, output647, output648, output649, output650, output651, output652, output653, output654, output655]

theorem o640 : crepOkB crepS output640 = true := crepOkB_of_raw data640 (by kernel_rfl)
theorem o641 : crepOkB crepS output641 = true := crepOkB_of_raw data641 (by kernel_rfl)
theorem o642 : crepOkB crepS output642 = true := crepOkB_of_raw data642 (by kernel_rfl)
theorem o643 : crepOkB crepS output643 = true := crepOkB_of_raw data643 (by kernel_rfl)
theorem o644 : crepOkB crepS output644 = true := crepOkB_of_raw data644 (by kernel_rfl)
theorem o645 : crepOkB crepS output645 = true := crepOkB_of_raw data645 (by kernel_rfl)
theorem o646 : crepOkB crepS output646 = true := crepOkB_of_raw data646 (by kernel_rfl)
theorem o647 : crepOkB crepS output647 = true := crepOkB_of_raw data647 (by kernel_rfl)
theorem o648 : crepOkB crepS output648 = true := crepOkB_of_raw data648 (by kernel_rfl)
theorem o649 : crepOkB crepS output649 = true := crepOkB_of_raw data649 (by kernel_rfl)
theorem o650 : crepOkB crepS output650 = true := crepOkB_of_raw data650 (by kernel_rfl)
theorem o651 : crepOkB crepS output651 = true := crepOkB_of_raw data651 (by kernel_rfl)
theorem o652 : crepOkB crepS output652 = true := crepOkB_of_raw data652 (by kernel_rfl)
theorem o653 : crepOkB crepS output653 = true := crepOkB_of_raw data653 (by kernel_rfl)
theorem o654 : crepOkB crepS output654 = true := crepOkB_of_raw data654 (by kernel_rfl)
theorem o655 : crepOkB crepS output655 = true := crepOkB_of_raw data655 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o640 (all_cons_of o641 (all_cons_of o642 (all_cons_of o643 (all_cons_of o644 (all_cons_of o645 (all_cons_of o646 (all_cons_of o647 (all_cons_of o648 (all_cons_of o649 (all_cons_of o650 (all_cons_of o651 (all_cons_of o652 (all_cons_of o653 (all_cons_of o654 (all_cons_of o655 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part40

#print axioms InitECandidate.Solver.Concrete.Crep.Part40.ok
