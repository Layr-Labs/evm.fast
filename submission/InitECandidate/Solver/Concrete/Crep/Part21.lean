import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data336
import InitECandidate.Proofs.FrontendStages.Crep.Data337
import InitECandidate.Proofs.FrontendStages.Crep.Data338
import InitECandidate.Proofs.FrontendStages.Crep.Data339
import InitECandidate.Proofs.FrontendStages.Crep.Data340
import InitECandidate.Proofs.FrontendStages.Crep.Data341
import InitECandidate.Proofs.FrontendStages.Crep.Data342
import InitECandidate.Proofs.FrontendStages.Crep.Data343
import InitECandidate.Proofs.FrontendStages.Crep.Data344
import InitECandidate.Proofs.FrontendStages.Crep.Data345
import InitECandidate.Proofs.FrontendStages.Crep.Data346
import InitECandidate.Proofs.FrontendStages.Crep.Data347
import InitECandidate.Proofs.FrontendStages.Crep.Data348
import InitECandidate.Proofs.FrontendStages.Crep.Data349
import InitECandidate.Proofs.FrontendStages.Crep.Data350
import InitECandidate.Proofs.FrontendStages.Crep.Data351

/-! `csize ≤ crepS` on the crep entries `output336` … `output351` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part21
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `336` … `351` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output336, output337, output338, output339, output340, output341, output342, output343, output344, output345, output346, output347, output348, output349, output350, output351]

theorem o336 : crepOkB crepS output336 = true := crepOkB_of_raw data336 (by kernel_rfl)
theorem o337 : crepOkB crepS output337 = true := crepOkB_of_raw data337 (by kernel_rfl)
theorem o338 : crepOkB crepS output338 = true := crepOkB_of_raw data338 (by kernel_rfl)
theorem o339 : crepOkB crepS output339 = true := crepOkB_of_raw data339 (by kernel_rfl)
theorem o340 : crepOkB crepS output340 = true := crepOkB_of_raw data340 (by kernel_rfl)
theorem o341 : crepOkB crepS output341 = true := crepOkB_of_raw data341 (by kernel_rfl)
theorem o342 : crepOkB crepS output342 = true := crepOkB_of_raw data342 (by kernel_rfl)
theorem o343 : crepOkB crepS output343 = true := crepOkB_of_raw data343 (by kernel_rfl)
theorem o344 : crepOkB crepS output344 = true := crepOkB_of_raw data344 (by kernel_rfl)
theorem o345 : crepOkB crepS output345 = true := crepOkB_of_raw data345 (by kernel_rfl)
theorem o346 : crepOkB crepS output346 = true := crepOkB_of_raw data346 (by kernel_rfl)
theorem o347 : crepOkB crepS output347 = true := crepOkB_of_raw data347 (by kernel_rfl)
theorem o348 : crepOkB crepS output348 = true := crepOkB_of_raw data348 (by kernel_rfl)
theorem o349 : crepOkB crepS output349 = true := crepOkB_of_raw data349 (by kernel_rfl)
theorem o350 : crepOkB crepS output350 = true := crepOkB_of_raw data350 (by kernel_rfl)
theorem o351 : crepOkB crepS output351 = true := crepOkB_of_raw data351 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o336 (all_cons_of o337 (all_cons_of o338 (all_cons_of o339 (all_cons_of o340 (all_cons_of o341 (all_cons_of o342 (all_cons_of o343 (all_cons_of o344 (all_cons_of o345 (all_cons_of o346 (all_cons_of o347 (all_cons_of o348 (all_cons_of o349 (all_cons_of o350 (all_cons_of o351 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part21

#print axioms InitECandidate.Solver.Concrete.Crep.Part21.ok
