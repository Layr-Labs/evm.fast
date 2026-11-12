import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data560
import InitECandidate.Proofs.FrontendStages.Crep.Data561
import InitECandidate.Proofs.FrontendStages.Crep.Data562
import InitECandidate.Proofs.FrontendStages.Crep.Data563
import InitECandidate.Proofs.FrontendStages.Crep.Data564
import InitECandidate.Proofs.FrontendStages.Crep.Data565
import InitECandidate.Proofs.FrontendStages.Crep.Data566
import InitECandidate.Proofs.FrontendStages.Crep.Data567
import InitECandidate.Proofs.FrontendStages.Crep.Data568
import InitECandidate.Proofs.FrontendStages.Crep.Data569
import InitECandidate.Proofs.FrontendStages.Crep.Data570
import InitECandidate.Proofs.FrontendStages.Crep.Data571
import InitECandidate.Proofs.FrontendStages.Crep.Data572
import InitECandidate.Proofs.FrontendStages.Crep.Data573
import InitECandidate.Proofs.FrontendStages.Crep.Data574
import InitECandidate.Proofs.FrontendStages.Crep.Data575

/-! `csize ≤ crepS` on the crep entries `output560` … `output575` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part35
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `560` … `575` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output560, output561, output562, output563, output564, output565, output566, output567, output568, output569, output570, output571, output572, output573, output574, output575]

theorem o560 : crepOkB crepS output560 = true := crepOkB_of_raw data560 (by kernel_rfl)
theorem o561 : crepOkB crepS output561 = true := crepOkB_of_raw data561 (by kernel_rfl)
theorem o562 : crepOkB crepS output562 = true := crepOkB_of_raw data562 (by kernel_rfl)
theorem o563 : crepOkB crepS output563 = true := crepOkB_of_raw data563 (by kernel_rfl)
theorem o564 : crepOkB crepS output564 = true := crepOkB_of_raw data564 (by kernel_rfl)
theorem o565 : crepOkB crepS output565 = true := crepOkB_of_raw data565 (by kernel_rfl)
theorem o566 : crepOkB crepS output566 = true := crepOkB_of_raw data566 (by kernel_rfl)
theorem o567 : crepOkB crepS output567 = true := crepOkB_of_raw data567 (by kernel_rfl)
theorem o568 : crepOkB crepS output568 = true := crepOkB_of_raw data568 (by kernel_rfl)
theorem o569 : crepOkB crepS output569 = true := crepOkB_of_raw data569 (by kernel_rfl)
theorem o570 : crepOkB crepS output570 = true := crepOkB_of_raw data570 (by kernel_rfl)
theorem o571 : crepOkB crepS output571 = true := crepOkB_of_raw data571 (by kernel_rfl)
theorem o572 : crepOkB crepS output572 = true := crepOkB_of_raw data572 (by kernel_rfl)
theorem o573 : crepOkB crepS output573 = true := crepOkB_of_raw data573 (by kernel_rfl)
theorem o574 : crepOkB crepS output574 = true := crepOkB_of_raw data574 (by kernel_rfl)
theorem o575 : crepOkB crepS output575 = true := crepOkB_of_raw data575 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o560 (all_cons_of o561 (all_cons_of o562 (all_cons_of o563 (all_cons_of o564 (all_cons_of o565 (all_cons_of o566 (all_cons_of o567 (all_cons_of o568 (all_cons_of o569 (all_cons_of o570 (all_cons_of o571 (all_cons_of o572 (all_cons_of o573 (all_cons_of o574 (all_cons_of o575 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part35

#print axioms InitECandidate.Solver.Concrete.Crep.Part35.ok
