import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data64
import InitECandidate.Proofs.FrontendStages.Crep.Data65
import InitECandidate.Proofs.FrontendStages.Crep.Data66
import InitECandidate.Proofs.FrontendStages.Crep.Data67
import InitECandidate.Proofs.FrontendStages.Crep.Data68
import InitECandidate.Proofs.FrontendStages.Crep.Data69
import InitECandidate.Proofs.FrontendStages.Crep.Data70
import InitECandidate.Proofs.FrontendStages.Crep.Data71
import InitECandidate.Proofs.FrontendStages.Crep.Data72
import InitECandidate.Proofs.FrontendStages.Crep.Data73
import InitECandidate.Proofs.FrontendStages.Crep.Data74
import InitECandidate.Proofs.FrontendStages.Crep.Data75
import InitECandidate.Proofs.FrontendStages.Crep.Data76
import InitECandidate.Proofs.FrontendStages.Crep.Data77
import InitECandidate.Proofs.FrontendStages.Crep.Data78
import InitECandidate.Proofs.FrontendStages.Crep.Data79

/-! `csize ≤ crepS` on the crep entries `output64` … `output79` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part4
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `64` … `79` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output64, output65, output66, output67, output68, output69, output70, output71, output72, output73, output74, output75, output76, output77, output78, output79]

theorem o64 : crepOkB crepS output64 = true := crepOkB_of_raw data64 (by kernel_rfl)
theorem o65 : crepOkB crepS output65 = true := crepOkB_of_raw data65 (by kernel_rfl)
theorem o66 : crepOkB crepS output66 = true := crepOkB_of_raw data66 (by kernel_rfl)
theorem o67 : crepOkB crepS output67 = true := crepOkB_of_raw data67 (by kernel_rfl)
theorem o68 : crepOkB crepS output68 = true := crepOkB_of_raw data68 (by kernel_rfl)
theorem o69 : crepOkB crepS output69 = true := crepOkB_of_raw data69 (by kernel_rfl)
theorem o70 : crepOkB crepS output70 = true := crepOkB_of_raw data70 (by kernel_rfl)
theorem o71 : crepOkB crepS output71 = true := crepOkB_of_raw data71 (by kernel_rfl)
theorem o72 : crepOkB crepS output72 = true := crepOkB_of_raw data72 (by kernel_rfl)
theorem o73 : crepOkB crepS output73 = true := crepOkB_of_raw data73 (by kernel_rfl)
theorem o74 : crepOkB crepS output74 = true := crepOkB_of_raw data74 (by kernel_rfl)
theorem o75 : crepOkB crepS output75 = true := crepOkB_of_raw data75 (by kernel_rfl)
theorem o76 : crepOkB crepS output76 = true := crepOkB_of_raw data76 (by kernel_rfl)
theorem o77 : crepOkB crepS output77 = true := crepOkB_of_raw data77 (by kernel_rfl)
theorem o78 : crepOkB crepS output78 = true := crepOkB_of_raw data78 (by kernel_rfl)
theorem o79 : crepOkB crepS output79 = true := crepOkB_of_raw data79 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o64 (all_cons_of o65 (all_cons_of o66 (all_cons_of o67 (all_cons_of o68 (all_cons_of o69 (all_cons_of o70 (all_cons_of o71 (all_cons_of o72 (all_cons_of o73 (all_cons_of o74 (all_cons_of o75 (all_cons_of o76 (all_cons_of o77 (all_cons_of o78 (all_cons_of o79 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part4

#print axioms InitECandidate.Solver.Concrete.Crep.Part4.ok
