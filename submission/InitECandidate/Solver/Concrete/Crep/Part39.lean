import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data624
import InitECandidate.Proofs.FrontendStages.Crep.Data625
import InitECandidate.Proofs.FrontendStages.Crep.Data626
import InitECandidate.Proofs.FrontendStages.Crep.Data627
import InitECandidate.Proofs.FrontendStages.Crep.Data628
import InitECandidate.Proofs.FrontendStages.Crep.Data629
import InitECandidate.Proofs.FrontendStages.Crep.Data630
import InitECandidate.Proofs.FrontendStages.Crep.Data631
import InitECandidate.Proofs.FrontendStages.Crep.Data632
import InitECandidate.Proofs.FrontendStages.Crep.Data633
import InitECandidate.Proofs.FrontendStages.Crep.Data634
import InitECandidate.Proofs.FrontendStages.Crep.Data635
import InitECandidate.Proofs.FrontendStages.Crep.Data636
import InitECandidate.Proofs.FrontendStages.Crep.Data637
import InitECandidate.Proofs.FrontendStages.Crep.Data638
import InitECandidate.Proofs.FrontendStages.Crep.Data639

/-! `csize ≤ crepS` on the crep entries `output624` … `output639` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part39
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `624` … `639` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output624, output625, output626, output627, output628, output629, output630, output631, output632, output633, output634, output635, output636, output637, output638, output639]

theorem o624 : crepOkB crepS output624 = true := crepOkB_of_raw data624 (by kernel_rfl)
theorem o625 : crepOkB crepS output625 = true := crepOkB_of_raw data625 (by kernel_rfl)
theorem o626 : crepOkB crepS output626 = true := crepOkB_of_raw data626 (by kernel_rfl)
theorem o627 : crepOkB crepS output627 = true := crepOkB_of_raw data627 (by kernel_rfl)
theorem o628 : crepOkB crepS output628 = true := crepOkB_of_raw data628 (by kernel_rfl)
theorem o629 : crepOkB crepS output629 = true := crepOkB_of_raw data629 (by kernel_rfl)
theorem o630 : crepOkB crepS output630 = true := crepOkB_of_raw data630 (by kernel_rfl)
theorem o631 : crepOkB crepS output631 = true := crepOkB_of_raw data631 (by kernel_rfl)
theorem o632 : crepOkB crepS output632 = true := crepOkB_of_raw data632 (by kernel_rfl)
theorem o633 : crepOkB crepS output633 = true := crepOkB_of_raw data633 (by kernel_rfl)
theorem o634 : crepOkB crepS output634 = true := crepOkB_of_raw data634 (by kernel_rfl)
theorem o635 : crepOkB crepS output635 = true := crepOkB_of_raw data635 (by kernel_rfl)
theorem o636 : crepOkB crepS output636 = true := crepOkB_of_raw data636 (by kernel_rfl)
theorem o637 : crepOkB crepS output637 = true := crepOkB_of_raw data637 (by kernel_rfl)
theorem o638 : crepOkB crepS output638 = true := crepOkB_of_raw data638 (by kernel_rfl)
theorem o639 : crepOkB crepS output639 = true := crepOkB_of_raw data639 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o624 (all_cons_of o625 (all_cons_of o626 (all_cons_of o627 (all_cons_of o628 (all_cons_of o629 (all_cons_of o630 (all_cons_of o631 (all_cons_of o632 (all_cons_of o633 (all_cons_of o634 (all_cons_of o635 (all_cons_of o636 (all_cons_of o637 (all_cons_of o638 (all_cons_of o639 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part39

#print axioms InitECandidate.Solver.Concrete.Crep.Part39.ok
