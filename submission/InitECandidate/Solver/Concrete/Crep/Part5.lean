import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data80
import InitECandidate.Proofs.FrontendStages.Crep.Data81
import InitECandidate.Proofs.FrontendStages.Crep.Data82
import InitECandidate.Proofs.FrontendStages.Crep.Data83
import InitECandidate.Proofs.FrontendStages.Crep.Data84
import InitECandidate.Proofs.FrontendStages.Crep.Data85
import InitECandidate.Proofs.FrontendStages.Crep.Data86
import InitECandidate.Proofs.FrontendStages.Crep.Data87
import InitECandidate.Proofs.FrontendStages.Crep.Data88
import InitECandidate.Proofs.FrontendStages.Crep.Data89
import InitECandidate.Proofs.FrontendStages.Crep.Data90
import InitECandidate.Proofs.FrontendStages.Crep.Data91
import InitECandidate.Proofs.FrontendStages.Crep.Data92
import InitECandidate.Proofs.FrontendStages.Crep.Data93
import InitECandidate.Proofs.FrontendStages.Crep.Data94
import InitECandidate.Proofs.FrontendStages.Crep.Data95

/-! `csize ≤ crepS` on the crep entries `output80` … `output95` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part5
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `80` … `95` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output80, output81, output82, output83, output84, output85, output86, output87, output88, output89, output90, output91, output92, output93, output94, output95]

theorem o80 : crepOkB crepS output80 = true := crepOkB_of_raw data80 (by kernel_rfl)
theorem o81 : crepOkB crepS output81 = true := crepOkB_of_raw data81 (by kernel_rfl)
theorem o82 : crepOkB crepS output82 = true := crepOkB_of_raw data82 (by kernel_rfl)
theorem o83 : crepOkB crepS output83 = true := crepOkB_of_raw data83 (by kernel_rfl)
theorem o84 : crepOkB crepS output84 = true := crepOkB_of_raw data84 (by kernel_rfl)
theorem o85 : crepOkB crepS output85 = true := crepOkB_of_raw data85 (by kernel_rfl)
theorem o86 : crepOkB crepS output86 = true := crepOkB_of_raw data86 (by kernel_rfl)
theorem o87 : crepOkB crepS output87 = true := crepOkB_of_raw data87 (by kernel_rfl)
theorem o88 : crepOkB crepS output88 = true := crepOkB_of_raw data88 (by kernel_rfl)
theorem o89 : crepOkB crepS output89 = true := crepOkB_of_raw data89 (by kernel_rfl)
theorem o90 : crepOkB crepS output90 = true := crepOkB_of_raw data90 (by kernel_rfl)
theorem o91 : crepOkB crepS output91 = true := crepOkB_of_raw data91 (by kernel_rfl)
theorem o92 : crepOkB crepS output92 = true := crepOkB_of_raw data92 (by kernel_rfl)
theorem o93 : crepOkB crepS output93 = true := crepOkB_of_raw data93 (by kernel_rfl)
theorem o94 : crepOkB crepS output94 = true := crepOkB_of_raw data94 (by kernel_rfl)
theorem o95 : crepOkB crepS output95 = true := crepOkB_of_raw data95 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o80 (all_cons_of o81 (all_cons_of o82 (all_cons_of o83 (all_cons_of o84 (all_cons_of o85 (all_cons_of o86 (all_cons_of o87 (all_cons_of o88 (all_cons_of o89 (all_cons_of o90 (all_cons_of o91 (all_cons_of o92 (all_cons_of o93 (all_cons_of o94 (all_cons_of o95 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part5

#print axioms InitECandidate.Solver.Concrete.Crep.Part5.ok
