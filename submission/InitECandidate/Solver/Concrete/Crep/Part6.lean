import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data96
import InitECandidate.Proofs.FrontendStages.Crep.Data97
import InitECandidate.Proofs.FrontendStages.Crep.Data98
import InitECandidate.Proofs.FrontendStages.Crep.Data99
import InitECandidate.Proofs.FrontendStages.Crep.Data100
import InitECandidate.Proofs.FrontendStages.Crep.Data101
import InitECandidate.Proofs.FrontendStages.Crep.Data102
import InitECandidate.Proofs.FrontendStages.Crep.Data103
import InitECandidate.Proofs.FrontendStages.Crep.Data104
import InitECandidate.Proofs.FrontendStages.Crep.Data105
import InitECandidate.Proofs.FrontendStages.Crep.Data106
import InitECandidate.Proofs.FrontendStages.Crep.Data107
import InitECandidate.Proofs.FrontendStages.Crep.Data108
import InitECandidate.Proofs.FrontendStages.Crep.Data109
import InitECandidate.Proofs.FrontendStages.Crep.Data110
import InitECandidate.Proofs.FrontendStages.Crep.Data111

/-! `csize ≤ crepS` on the crep entries `output96` … `output111` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part6
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `96` … `111` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output96, output97, output98, output99, output100, output101, output102, output103, output104, output105, output106, output107, output108, output109, output110, output111]

theorem o96 : crepOkB crepS output96 = true := crepOkB_of_raw data96 (by kernel_rfl)
theorem o97 : crepOkB crepS output97 = true := crepOkB_of_raw data97 (by kernel_rfl)
theorem o98 : crepOkB crepS output98 = true := crepOkB_of_raw data98 (by kernel_rfl)
theorem o99 : crepOkB crepS output99 = true := crepOkB_of_raw data99 (by kernel_rfl)
theorem o100 : crepOkB crepS output100 = true := crepOkB_of_raw data100 (by kernel_rfl)
theorem o101 : crepOkB crepS output101 = true := crepOkB_of_raw data101 (by kernel_rfl)
theorem o102 : crepOkB crepS output102 = true := crepOkB_of_raw data102 (by kernel_rfl)
theorem o103 : crepOkB crepS output103 = true := crepOkB_of_raw data103 (by kernel_rfl)
theorem o104 : crepOkB crepS output104 = true := crepOkB_of_raw data104 (by kernel_rfl)
theorem o105 : crepOkB crepS output105 = true := crepOkB_of_raw data105 (by kernel_rfl)
theorem o106 : crepOkB crepS output106 = true := crepOkB_of_raw data106 (by kernel_rfl)
theorem o107 : crepOkB crepS output107 = true := crepOkB_of_raw data107 (by kernel_rfl)
theorem o108 : crepOkB crepS output108 = true := crepOkB_of_raw data108 (by kernel_rfl)
theorem o109 : crepOkB crepS output109 = true := crepOkB_of_raw data109 (by kernel_rfl)
theorem o110 : crepOkB crepS output110 = true := crepOkB_of_raw data110 (by kernel_rfl)
theorem o111 : crepOkB crepS output111 = true := crepOkB_of_raw data111 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o96 (all_cons_of o97 (all_cons_of o98 (all_cons_of o99 (all_cons_of o100 (all_cons_of o101 (all_cons_of o102 (all_cons_of o103 (all_cons_of o104 (all_cons_of o105 (all_cons_of o106 (all_cons_of o107 (all_cons_of o108 (all_cons_of o109 (all_cons_of o110 (all_cons_of o111 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part6

#print axioms InitECandidate.Solver.Concrete.Crep.Part6.ok
