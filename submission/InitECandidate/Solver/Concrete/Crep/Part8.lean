import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data128
import InitECandidate.Proofs.FrontendStages.Crep.Data129
import InitECandidate.Proofs.FrontendStages.Crep.Data130
import InitECandidate.Proofs.FrontendStages.Crep.Data131
import InitECandidate.Proofs.FrontendStages.Crep.Data132
import InitECandidate.Proofs.FrontendStages.Crep.Data133
import InitECandidate.Proofs.FrontendStages.Crep.Data134
import InitECandidate.Proofs.FrontendStages.Crep.Data135
import InitECandidate.Proofs.FrontendStages.Crep.Data136
import InitECandidate.Proofs.FrontendStages.Crep.Data137
import InitECandidate.Proofs.FrontendStages.Crep.Data138
import InitECandidate.Proofs.FrontendStages.Crep.Data139
import InitECandidate.Proofs.FrontendStages.Crep.Data140
import InitECandidate.Proofs.FrontendStages.Crep.Data141
import InitECandidate.Proofs.FrontendStages.Crep.Data142
import InitECandidate.Proofs.FrontendStages.Crep.Data143

/-! `csize ≤ crepS` on the crep entries `output128` … `output143` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part8
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `128` … `143` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output128, output129, output130, output131, output132, output133, output134, output135, output136, output137, output138, output139, output140, output141, output142, output143]

theorem o128 : crepOkB crepS output128 = true := crepOkB_of_raw data128 (by kernel_rfl)
theorem o129 : crepOkB crepS output129 = true := crepOkB_of_raw data129 (by kernel_rfl)
theorem o130 : crepOkB crepS output130 = true := crepOkB_of_raw data130 (by kernel_rfl)
theorem o131 : crepOkB crepS output131 = true := crepOkB_of_raw data131 (by kernel_rfl)
theorem o132 : crepOkB crepS output132 = true := crepOkB_of_raw data132 (by kernel_rfl)
theorem o133 : crepOkB crepS output133 = true := crepOkB_of_raw data133 (by kernel_rfl)
theorem o134 : crepOkB crepS output134 = true := crepOkB_of_raw data134 (by kernel_rfl)
theorem o135 : crepOkB crepS output135 = true := crepOkB_of_raw data135 (by kernel_rfl)
theorem o136 : crepOkB crepS output136 = true := crepOkB_of_raw data136 (by kernel_rfl)
theorem o137 : crepOkB crepS output137 = true := crepOkB_of_raw data137 (by kernel_rfl)
theorem o138 : crepOkB crepS output138 = true := crepOkB_of_raw data138 (by kernel_rfl)
theorem o139 : crepOkB crepS output139 = true := crepOkB_of_raw data139 (by kernel_rfl)
theorem o140 : crepOkB crepS output140 = true := crepOkB_of_raw data140 (by kernel_rfl)
theorem o141 : crepOkB crepS output141 = true := crepOkB_of_raw data141 (by kernel_rfl)
theorem o142 : crepOkB crepS output142 = true := crepOkB_of_raw data142 (by kernel_rfl)
theorem o143 : crepOkB crepS output143 = true := crepOkB_of_raw data143 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o128 (all_cons_of o129 (all_cons_of o130 (all_cons_of o131 (all_cons_of o132 (all_cons_of o133 (all_cons_of o134 (all_cons_of o135 (all_cons_of o136 (all_cons_of o137 (all_cons_of o138 (all_cons_of o139 (all_cons_of o140 (all_cons_of o141 (all_cons_of o142 (all_cons_of o143 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part8

#print axioms InitECandidate.Solver.Concrete.Crep.Part8.ok
