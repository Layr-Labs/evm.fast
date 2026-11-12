import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data608
import InitECandidate.Proofs.FrontendStages.Crep.Data609
import InitECandidate.Proofs.FrontendStages.Crep.Data610
import InitECandidate.Proofs.FrontendStages.Crep.Data611
import InitECandidate.Proofs.FrontendStages.Crep.Data612
import InitECandidate.Proofs.FrontendStages.Crep.Data613
import InitECandidate.Proofs.FrontendStages.Crep.Data614
import InitECandidate.Proofs.FrontendStages.Crep.Data615
import InitECandidate.Proofs.FrontendStages.Crep.Data616
import InitECandidate.Proofs.FrontendStages.Crep.Data617
import InitECandidate.Proofs.FrontendStages.Crep.Data618
import InitECandidate.Proofs.FrontendStages.Crep.Data619
import InitECandidate.Proofs.FrontendStages.Crep.Data620
import InitECandidate.Proofs.FrontendStages.Crep.Data621
import InitECandidate.Proofs.FrontendStages.Crep.Data622
import InitECandidate.Proofs.FrontendStages.Crep.Data623

/-! `csize ≤ crepS` on the crep entries `output608` … `output623` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part38
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `608` … `623` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output608, output609, output610, output611, output612, output613, output614, output615, output616, output617, output618, output619, output620, output621, output622, output623]

theorem o608 : crepOkB crepS output608 = true := crepOkB_of_raw data608 (by kernel_rfl)
theorem o609 : crepOkB crepS output609 = true := crepOkB_of_raw data609 (by kernel_rfl)
theorem o610 : crepOkB crepS output610 = true := crepOkB_of_raw data610 (by kernel_rfl)
theorem o611 : crepOkB crepS output611 = true := crepOkB_of_raw data611 (by kernel_rfl)
theorem o612 : crepOkB crepS output612 = true := crepOkB_of_raw data612 (by kernel_rfl)
theorem o613 : crepOkB crepS output613 = true := crepOkB_of_raw data613 (by kernel_rfl)
theorem o614 : crepOkB crepS output614 = true := crepOkB_of_raw data614 (by kernel_rfl)
theorem o615 : crepOkB crepS output615 = true := crepOkB_of_raw data615 (by kernel_rfl)
theorem o616 : crepOkB crepS output616 = true := crepOkB_of_raw data616 (by kernel_rfl)
theorem o617 : crepOkB crepS output617 = true := crepOkB_of_raw data617 (by kernel_rfl)
theorem o618 : crepOkB crepS output618 = true := crepOkB_of_raw data618 (by kernel_rfl)
theorem o619 : crepOkB crepS output619 = true := crepOkB_of_raw data619 (by kernel_rfl)
theorem o620 : crepOkB crepS output620 = true := crepOkB_of_raw data620 (by kernel_rfl)
theorem o621 : crepOkB crepS output621 = true := crepOkB_of_raw data621 (by kernel_rfl)
theorem o622 : crepOkB crepS output622 = true := crepOkB_of_raw data622 (by kernel_rfl)
theorem o623 : crepOkB crepS output623 = true := crepOkB_of_raw data623 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o608 (all_cons_of o609 (all_cons_of o610 (all_cons_of o611 (all_cons_of o612 (all_cons_of o613 (all_cons_of o614 (all_cons_of o615 (all_cons_of o616 (all_cons_of o617 (all_cons_of o618 (all_cons_of o619 (all_cons_of o620 (all_cons_of o621 (all_cons_of o622 (all_cons_of o623 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part38

#print axioms InitECandidate.Solver.Concrete.Crep.Part38.ok
