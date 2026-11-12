import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data672
import InitECandidate.Proofs.FrontendStages.Crep.Data673
import InitECandidate.Proofs.FrontendStages.Crep.Data674
import InitECandidate.Proofs.FrontendStages.Crep.Data675
import InitECandidate.Proofs.FrontendStages.Crep.Data676
import InitECandidate.Proofs.FrontendStages.Crep.Data677
import InitECandidate.Proofs.FrontendStages.Crep.Data678
import InitECandidate.Proofs.FrontendStages.Crep.Data679
import InitECandidate.Proofs.FrontendStages.Crep.Data680
import InitECandidate.Proofs.FrontendStages.Crep.Data681
import InitECandidate.Proofs.FrontendStages.Crep.Data682
import InitECandidate.Proofs.FrontendStages.Crep.Data683
import InitECandidate.Proofs.FrontendStages.Crep.Data684
import InitECandidate.Proofs.FrontendStages.Crep.Data685
import InitECandidate.Proofs.FrontendStages.Crep.Data686
import InitECandidate.Proofs.FrontendStages.Crep.Data687

/-! `csize ≤ crepS` on the crep entries `output672` … `output687` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part42
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `672` … `687` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output672, output673, output674, output675, output676, output677, output678, output679, output680, output681, output682, output683, output684, output685, output686, output687]

theorem o672 : crepOkB crepS output672 = true := crepOkB_of_raw data672 (by kernel_rfl)
theorem o673 : crepOkB crepS output673 = true := crepOkB_of_raw data673 (by kernel_rfl)
theorem o674 : crepOkB crepS output674 = true := crepOkB_of_raw data674 (by kernel_rfl)
theorem o675 : crepOkB crepS output675 = true := crepOkB_of_raw data675 (by kernel_rfl)
theorem o676 : crepOkB crepS output676 = true := crepOkB_of_raw data676 (by kernel_rfl)
theorem o677 : crepOkB crepS output677 = true := crepOkB_of_raw data677 (by kernel_rfl)
theorem o678 : crepOkB crepS output678 = true := crepOkB_of_raw data678 (by kernel_rfl)
theorem o679 : crepOkB crepS output679 = true := crepOkB_of_raw data679 (by kernel_rfl)
theorem o680 : crepOkB crepS output680 = true := crepOkB_of_raw data680 (by kernel_rfl)
theorem o681 : crepOkB crepS output681 = true := crepOkB_of_raw data681 (by kernel_rfl)
theorem o682 : crepOkB crepS output682 = true := crepOkB_of_raw data682 (by kernel_rfl)
theorem o683 : crepOkB crepS output683 = true := crepOkB_of_raw data683 (by kernel_rfl)
theorem o684 : crepOkB crepS output684 = true := crepOkB_of_raw data684 (by kernel_rfl)
theorem o685 : crepOkB crepS output685 = true := crepOkB_of_raw data685 (by kernel_rfl)
theorem o686 : crepOkB crepS output686 = true := crepOkB_of_raw data686 (by kernel_rfl)
theorem o687 : crepOkB crepS output687 = true := crepOkB_of_raw data687 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o672 (all_cons_of o673 (all_cons_of o674 (all_cons_of o675 (all_cons_of o676 (all_cons_of o677 (all_cons_of o678 (all_cons_of o679 (all_cons_of o680 (all_cons_of o681 (all_cons_of o682 (all_cons_of o683 (all_cons_of o684 (all_cons_of o685 (all_cons_of o686 (all_cons_of o687 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part42

#print axioms InitECandidate.Solver.Concrete.Crep.Part42.ok
