import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data480
import InitECandidate.Proofs.FrontendStages.Crep.Data481
import InitECandidate.Proofs.FrontendStages.Crep.Data482
import InitECandidate.Proofs.FrontendStages.Crep.Data483
import InitECandidate.Proofs.FrontendStages.Crep.Data484
import InitECandidate.Proofs.FrontendStages.Crep.Data485
import InitECandidate.Proofs.FrontendStages.Crep.Data486
import InitECandidate.Proofs.FrontendStages.Crep.Data487
import InitECandidate.Proofs.FrontendStages.Crep.Data488
import InitECandidate.Proofs.FrontendStages.Crep.Data489
import InitECandidate.Proofs.FrontendStages.Crep.Data490
import InitECandidate.Proofs.FrontendStages.Crep.Data491
import InitECandidate.Proofs.FrontendStages.Crep.Data492
import InitECandidate.Proofs.FrontendStages.Crep.Data493
import InitECandidate.Proofs.FrontendStages.Crep.Data494
import InitECandidate.Proofs.FrontendStages.Crep.Data495

/-! `csize ≤ crepS` on the crep entries `output480` … `output495` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part30
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `480` … `495` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output480, output481, output482, output483, output484, output485, output486, output487, output488, output489, output490, output491, output492, output493, output494, output495]

theorem o480 : crepOkB crepS output480 = true := crepOkB_of_raw data480 (by kernel_rfl)
theorem o481 : crepOkB crepS output481 = true := crepOkB_of_raw data481 (by kernel_rfl)
theorem o482 : crepOkB crepS output482 = true := crepOkB_of_raw data482 (by kernel_rfl)
theorem o483 : crepOkB crepS output483 = true := crepOkB_of_raw data483 (by kernel_rfl)
theorem o484 : crepOkB crepS output484 = true := crepOkB_of_raw data484 (by kernel_rfl)
theorem o485 : crepOkB crepS output485 = true := crepOkB_of_raw data485 (by kernel_rfl)
theorem o486 : crepOkB crepS output486 = true := crepOkB_of_raw data486 (by kernel_rfl)
theorem o487 : crepOkB crepS output487 = true := crepOkB_of_raw data487 (by kernel_rfl)
theorem o488 : crepOkB crepS output488 = true := crepOkB_of_raw data488 (by kernel_rfl)
theorem o489 : crepOkB crepS output489 = true := crepOkB_of_raw data489 (by kernel_rfl)
theorem o490 : crepOkB crepS output490 = true := crepOkB_of_raw data490 (by kernel_rfl)
theorem o491 : crepOkB crepS output491 = true := crepOkB_of_raw data491 (by kernel_rfl)
theorem o492 : crepOkB crepS output492 = true := crepOkB_of_raw data492 (by kernel_rfl)
theorem o493 : crepOkB crepS output493 = true := crepOkB_of_raw data493 (by kernel_rfl)
theorem o494 : crepOkB crepS output494 = true := crepOkB_of_raw data494 (by kernel_rfl)
theorem o495 : crepOkB crepS output495 = true := crepOkB_of_raw data495 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o480 (all_cons_of o481 (all_cons_of o482 (all_cons_of o483 (all_cons_of o484 (all_cons_of o485 (all_cons_of o486 (all_cons_of o487 (all_cons_of o488 (all_cons_of o489 (all_cons_of o490 (all_cons_of o491 (all_cons_of o492 (all_cons_of o493 (all_cons_of o494 (all_cons_of o495 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part30

#print axioms InitECandidate.Solver.Concrete.Crep.Part30.ok
