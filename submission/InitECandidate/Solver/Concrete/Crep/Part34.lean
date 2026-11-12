import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data544
import InitECandidate.Proofs.FrontendStages.Crep.Data545
import InitECandidate.Proofs.FrontendStages.Crep.Data546
import InitECandidate.Proofs.FrontendStages.Crep.Data547
import InitECandidate.Proofs.FrontendStages.Crep.Data548
import InitECandidate.Proofs.FrontendStages.Crep.Data549
import InitECandidate.Proofs.FrontendStages.Crep.Data550
import InitECandidate.Proofs.FrontendStages.Crep.Data551
import InitECandidate.Proofs.FrontendStages.Crep.Data552
import InitECandidate.Proofs.FrontendStages.Crep.Data553
import InitECandidate.Proofs.FrontendStages.Crep.Data554
import InitECandidate.Proofs.FrontendStages.Crep.Data555
import InitECandidate.Proofs.FrontendStages.Crep.Data556
import InitECandidate.Proofs.FrontendStages.Crep.Data557
import InitECandidate.Proofs.FrontendStages.Crep.Data558
import InitECandidate.Proofs.FrontendStages.Crep.Data559

/-! `csize ≤ crepS` on the crep entries `output544` … `output559` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part34
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `544` … `559` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output544, output545, output546, output547, output548, output549, output550, output551, output552, output553, output554, output555, output556, output557, output558, output559]

theorem o544 : crepOkB crepS output544 = true := crepOkB_of_raw data544 (by kernel_rfl)
theorem o545 : crepOkB crepS output545 = true := crepOkB_of_raw data545 (by kernel_rfl)
theorem o546 : crepOkB crepS output546 = true := crepOkB_of_raw data546 (by kernel_rfl)
theorem o547 : crepOkB crepS output547 = true := crepOkB_of_raw data547 (by kernel_rfl)
theorem o548 : crepOkB crepS output548 = true := crepOkB_of_raw data548 (by kernel_rfl)
theorem o549 : crepOkB crepS output549 = true := crepOkB_of_raw data549 (by kernel_rfl)
theorem o550 : crepOkB crepS output550 = true := crepOkB_of_raw data550 (by kernel_rfl)
theorem o551 : crepOkB crepS output551 = true := crepOkB_of_raw data551 (by kernel_rfl)
theorem o552 : crepOkB crepS output552 = true := crepOkB_of_raw data552 (by kernel_rfl)
theorem o553 : crepOkB crepS output553 = true := crepOkB_of_raw data553 (by kernel_rfl)
theorem o554 : crepOkB crepS output554 = true := crepOkB_of_raw data554 (by kernel_rfl)
theorem o555 : crepOkB crepS output555 = true := crepOkB_of_raw data555 (by kernel_rfl)
theorem o556 : crepOkB crepS output556 = true := crepOkB_of_raw data556 (by kernel_rfl)
theorem o557 : crepOkB crepS output557 = true := crepOkB_of_raw data557 (by kernel_rfl)
theorem o558 : crepOkB crepS output558 = true := crepOkB_of_raw data558 (by kernel_rfl)
theorem o559 : crepOkB crepS output559 = true := crepOkB_of_raw data559 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o544 (all_cons_of o545 (all_cons_of o546 (all_cons_of o547 (all_cons_of o548 (all_cons_of o549 (all_cons_of o550 (all_cons_of o551 (all_cons_of o552 (all_cons_of o553 (all_cons_of o554 (all_cons_of o555 (all_cons_of o556 (all_cons_of o557 (all_cons_of o558 (all_cons_of o559 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part34

#print axioms InitECandidate.Solver.Concrete.Crep.Part34.ok
