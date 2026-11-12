import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data800
import InitECandidate.Proofs.FrontendStages.Crep.Data801
import InitECandidate.Proofs.FrontendStages.Crep.Data802
import InitECandidate.Proofs.FrontendStages.Crep.Data803
import InitECandidate.Proofs.FrontendStages.Crep.Data804
import InitECandidate.Proofs.FrontendStages.Crep.Data805
import InitECandidate.Proofs.FrontendStages.Crep.Data806
import InitECandidate.Proofs.FrontendStages.Crep.Data807
import InitECandidate.Proofs.FrontendStages.Crep.Data808
import InitECandidate.Proofs.FrontendStages.Crep.Data809
import InitECandidate.Proofs.FrontendStages.Crep.Data810
import InitECandidate.Proofs.FrontendStages.Crep.Data811
import InitECandidate.Proofs.FrontendStages.Crep.Data812
import InitECandidate.Proofs.FrontendStages.Crep.Data813

/-! `csize ≤ crepS` on the crep entries `output800` … `output813` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part50
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `800` … `813` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output800, output801, output802, output803, output804, output805, output806, output807, output808, output809, output810, output811, output812, output813]

theorem o800 : crepOkB crepS output800 = true := crepOkB_of_raw data800 (by kernel_rfl)
theorem o801 : crepOkB crepS output801 = true := crepOkB_of_raw data801 (by kernel_rfl)
theorem o802 : crepOkB crepS output802 = true := crepOkB_of_raw data802 (by kernel_rfl)
theorem o803 : crepOkB crepS output803 = true := crepOkB_of_raw data803 (by kernel_rfl)
theorem o804 : crepOkB crepS output804 = true := crepOkB_of_raw data804 (by kernel_rfl)
theorem o805 : crepOkB crepS output805 = true := crepOkB_of_raw data805 (by kernel_rfl)
theorem o806 : crepOkB crepS output806 = true := crepOkB_of_raw data806 (by kernel_rfl)
theorem o807 : crepOkB crepS output807 = true := crepOkB_of_raw data807 (by kernel_rfl)
theorem o808 : crepOkB crepS output808 = true := crepOkB_of_raw data808 (by kernel_rfl)
theorem o809 : crepOkB crepS output809 = true := crepOkB_of_raw data809 (by kernel_rfl)
theorem o810 : crepOkB crepS output810 = true := crepOkB_of_raw data810 (by kernel_rfl)
theorem o811 : crepOkB crepS output811 = true := crepOkB_of_raw data811 (by kernel_rfl)
theorem o812 : crepOkB crepS output812 = true := crepOkB_of_raw data812 (by kernel_rfl)
theorem o813 : crepOkB crepS output813 = true := crepOkB_of_raw data813 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o800 (all_cons_of o801 (all_cons_of o802 (all_cons_of o803 (all_cons_of o804 (all_cons_of o805 (all_cons_of o806 (all_cons_of o807 (all_cons_of o808 (all_cons_of o809 (all_cons_of o810 (all_cons_of o811 (all_cons_of o812 (all_cons_of o813 (all_nil_of _)))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part50

#print axioms InitECandidate.Solver.Concrete.Crep.Part50.ok
