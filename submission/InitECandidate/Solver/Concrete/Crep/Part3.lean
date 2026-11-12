import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data48
import InitECandidate.Proofs.FrontendStages.Crep.Data49
import InitECandidate.Proofs.FrontendStages.Crep.Data50
import InitECandidate.Proofs.FrontendStages.Crep.Data51
import InitECandidate.Proofs.FrontendStages.Crep.Data52
import InitECandidate.Proofs.FrontendStages.Crep.Data53
import InitECandidate.Proofs.FrontendStages.Crep.Data54
import InitECandidate.Proofs.FrontendStages.Crep.Data55
import InitECandidate.Proofs.FrontendStages.Crep.Data56
import InitECandidate.Proofs.FrontendStages.Crep.Data57
import InitECandidate.Proofs.FrontendStages.Crep.Data58
import InitECandidate.Proofs.FrontendStages.Crep.Data59
import InitECandidate.Proofs.FrontendStages.Crep.Data60
import InitECandidate.Proofs.FrontendStages.Crep.Data61
import InitECandidate.Proofs.FrontendStages.Crep.Data62
import InitECandidate.Proofs.FrontendStages.Crep.Data63

/-! `csize ≤ crepS` on the crep entries `output48` … `output63` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part3
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `48` … `63` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output48, output49, output50, output51, output52, output53, output54, output55, output56, output57, output58, output59, output60, output61, output62, output63]

theorem o48 : crepOkB crepS output48 = true := crepOkB_of_raw data48 (by kernel_rfl)
theorem o49 : crepOkB crepS output49 = true := crepOkB_of_raw data49 (by kernel_rfl)
theorem o50 : crepOkB crepS output50 = true := crepOkB_of_raw data50 (by kernel_rfl)
theorem o51 : crepOkB crepS output51 = true := crepOkB_of_raw data51 (by kernel_rfl)
theorem o52 : crepOkB crepS output52 = true := crepOkB_of_raw data52 (by kernel_rfl)
theorem o53 : crepOkB crepS output53 = true := crepOkB_of_raw data53 (by kernel_rfl)
theorem o54 : crepOkB crepS output54 = true := crepOkB_of_raw data54 (by kernel_rfl)
theorem o55 : crepOkB crepS output55 = true := crepOkB_of_raw data55 (by kernel_rfl)
theorem o56 : crepOkB crepS output56 = true := crepOkB_of_raw data56 (by kernel_rfl)
theorem o57 : crepOkB crepS output57 = true := crepOkB_of_raw data57 (by kernel_rfl)
theorem o58 : crepOkB crepS output58 = true := crepOkB_of_raw data58 (by kernel_rfl)
theorem o59 : crepOkB crepS output59 = true := crepOkB_of_raw data59 (by kernel_rfl)
theorem o60 : crepOkB crepS output60 = true := crepOkB_of_raw data60 (by kernel_rfl)
theorem o61 : crepOkB crepS output61 = true := crepOkB_of_raw data61 (by kernel_rfl)
theorem o62 : crepOkB crepS output62 = true := crepOkB_of_raw data62 (by kernel_rfl)
theorem o63 : crepOkB crepS output63 = true := crepOkB_of_raw data63 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o48 (all_cons_of o49 (all_cons_of o50 (all_cons_of o51 (all_cons_of o52 (all_cons_of o53 (all_cons_of o54 (all_cons_of o55 (all_cons_of o56 (all_cons_of o57 (all_cons_of o58 (all_cons_of o59 (all_cons_of o60 (all_cons_of o61 (all_cons_of o62 (all_cons_of o63 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part3

#print axioms InitECandidate.Solver.Concrete.Crep.Part3.ok
