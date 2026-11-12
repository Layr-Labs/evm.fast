import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data16
import InitECandidate.Proofs.FrontendStages.Crep.Data17
import InitECandidate.Proofs.FrontendStages.Crep.Data18
import InitECandidate.Proofs.FrontendStages.Crep.Data19
import InitECandidate.Proofs.FrontendStages.Crep.Data20
import InitECandidate.Proofs.FrontendStages.Crep.Data21
import InitECandidate.Proofs.FrontendStages.Crep.Data22
import InitECandidate.Proofs.FrontendStages.Crep.Data23
import InitECandidate.Proofs.FrontendStages.Crep.Data24
import InitECandidate.Proofs.FrontendStages.Crep.Data25
import InitECandidate.Proofs.FrontendStages.Crep.Data26
import InitECandidate.Proofs.FrontendStages.Crep.Data27
import InitECandidate.Proofs.FrontendStages.Crep.Data28
import InitECandidate.Proofs.FrontendStages.Crep.Data29
import InitECandidate.Proofs.FrontendStages.Crep.Data30
import InitECandidate.Proofs.FrontendStages.Crep.Data31

/-! `csize ≤ crepS` on the crep entries `output16` … `output31` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part1
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `16` … `31` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output16, output17, output18, output19, output20, output21, output22, output23, output24, output25, output26, output27, output28, output29, output30, output31]

theorem o16 : crepOkB crepS output16 = true := crepOkB_of_raw data16 (by kernel_rfl)
theorem o17 : crepOkB crepS output17 = true := crepOkB_of_raw data17 (by kernel_rfl)
theorem o18 : crepOkB crepS output18 = true := crepOkB_of_raw data18 (by kernel_rfl)
theorem o19 : crepOkB crepS output19 = true := crepOkB_of_raw data19 (by kernel_rfl)
theorem o20 : crepOkB crepS output20 = true := crepOkB_of_raw data20 (by kernel_rfl)
theorem o21 : crepOkB crepS output21 = true := crepOkB_of_raw data21 (by kernel_rfl)
theorem o22 : crepOkB crepS output22 = true := crepOkB_of_raw data22 (by kernel_rfl)
theorem o23 : crepOkB crepS output23 = true := crepOkB_of_raw data23 (by kernel_rfl)
theorem o24 : crepOkB crepS output24 = true := crepOkB_of_raw data24 (by kernel_rfl)
theorem o25 : crepOkB crepS output25 = true := crepOkB_of_raw data25 (by kernel_rfl)
theorem o26 : crepOkB crepS output26 = true := crepOkB_of_raw data26 (by kernel_rfl)
theorem o27 : crepOkB crepS output27 = true := crepOkB_of_raw data27 (by kernel_rfl)
theorem o28 : crepOkB crepS output28 = true := crepOkB_of_raw data28 (by kernel_rfl)
theorem o29 : crepOkB crepS output29 = true := crepOkB_of_raw data29 (by kernel_rfl)
theorem o30 : crepOkB crepS output30 = true := crepOkB_of_raw data30 (by kernel_rfl)
theorem o31 : crepOkB crepS output31 = true := crepOkB_of_raw data31 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o16 (all_cons_of o17 (all_cons_of o18 (all_cons_of o19 (all_cons_of o20 (all_cons_of o21 (all_cons_of o22 (all_cons_of o23 (all_cons_of o24 (all_cons_of o25 (all_cons_of o26 (all_cons_of o27 (all_cons_of o28 (all_cons_of o29 (all_cons_of o30 (all_cons_of o31 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part1

#print axioms InitECandidate.Solver.Concrete.Crep.Part1.ok
