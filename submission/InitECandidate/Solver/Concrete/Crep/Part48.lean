import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data768
import InitECandidate.Proofs.FrontendStages.Crep.Data769
import InitECandidate.Proofs.FrontendStages.Crep.Data770
import InitECandidate.Proofs.FrontendStages.Crep.Data771
import InitECandidate.Proofs.FrontendStages.Crep.Data772
import InitECandidate.Proofs.FrontendStages.Crep.Data773
import InitECandidate.Proofs.FrontendStages.Crep.Data774
import InitECandidate.Proofs.FrontendStages.Crep.Data775
import InitECandidate.Proofs.FrontendStages.Crep.Data776
import InitECandidate.Proofs.FrontendStages.Crep.Data777
import InitECandidate.Proofs.FrontendStages.Crep.Data778
import InitECandidate.Proofs.FrontendStages.Crep.Data779
import InitECandidate.Proofs.FrontendStages.Crep.Data780
import InitECandidate.Proofs.FrontendStages.Crep.Data781
import InitECandidate.Proofs.FrontendStages.Crep.Data782
import InitECandidate.Proofs.FrontendStages.Crep.Data783

/-! `csize ≤ crepS` on the crep entries `output768` … `output783` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part48
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `768` … `783` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output768, output769, output770, output771, output772, output773, output774, output775, output776, output777, output778, output779, output780, output781, output782, output783]

theorem o768 : crepOkB crepS output768 = true := crepOkB_of_raw data768 (by kernel_rfl)
theorem o769 : crepOkB crepS output769 = true := crepOkB_of_raw data769 (by kernel_rfl)
theorem o770 : crepOkB crepS output770 = true := crepOkB_of_raw data770 (by kernel_rfl)
theorem o771 : crepOkB crepS output771 = true := crepOkB_of_raw data771 (by kernel_rfl)
theorem o772 : crepOkB crepS output772 = true := crepOkB_of_raw data772 (by kernel_rfl)
theorem o773 : crepOkB crepS output773 = true := crepOkB_of_raw data773 (by kernel_rfl)
theorem o774 : crepOkB crepS output774 = true := crepOkB_of_raw data774 (by kernel_rfl)
theorem o775 : crepOkB crepS output775 = true := crepOkB_of_raw data775 (by kernel_rfl)
theorem o776 : crepOkB crepS output776 = true := crepOkB_of_raw data776 (by kernel_rfl)
theorem o777 : crepOkB crepS output777 = true := crepOkB_of_raw data777 (by kernel_rfl)
theorem o778 : crepOkB crepS output778 = true := crepOkB_of_raw data778 (by kernel_rfl)
theorem o779 : crepOkB crepS output779 = true := crepOkB_of_raw data779 (by kernel_rfl)
theorem o780 : crepOkB crepS output780 = true := crepOkB_of_raw data780 (by kernel_rfl)
theorem o781 : crepOkB crepS output781 = true := crepOkB_of_raw data781 (by kernel_rfl)
theorem o782 : crepOkB crepS output782 = true := crepOkB_of_raw data782 (by kernel_rfl)
theorem o783 : crepOkB crepS output783 = true := crepOkB_of_raw data783 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o768 (all_cons_of o769 (all_cons_of o770 (all_cons_of o771 (all_cons_of o772 (all_cons_of o773 (all_cons_of o774 (all_cons_of o775 (all_cons_of o776 (all_cons_of o777 (all_cons_of o778 (all_cons_of o779 (all_cons_of o780 (all_cons_of o781 (all_cons_of o782 (all_cons_of o783 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part48

#print axioms InitECandidate.Solver.Concrete.Crep.Part48.ok
