import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data320
import InitECandidate.Proofs.FrontendStages.Crep.Data321
import InitECandidate.Proofs.FrontendStages.Crep.Data322
import InitECandidate.Proofs.FrontendStages.Crep.Data323
import InitECandidate.Proofs.FrontendStages.Crep.Data324
import InitECandidate.Proofs.FrontendStages.Crep.Data325
import InitECandidate.Proofs.FrontendStages.Crep.Data326
import InitECandidate.Proofs.FrontendStages.Crep.Data327
import InitECandidate.Proofs.FrontendStages.Crep.Data328
import InitECandidate.Proofs.FrontendStages.Crep.Data329
import InitECandidate.Proofs.FrontendStages.Crep.Data330
import InitECandidate.Proofs.FrontendStages.Crep.Data331
import InitECandidate.Proofs.FrontendStages.Crep.Data332
import InitECandidate.Proofs.FrontendStages.Crep.Data333
import InitECandidate.Proofs.FrontendStages.Crep.Data334
import InitECandidate.Proofs.FrontendStages.Crep.Data335

/-! `csize ≤ crepS` on the crep entries `output320` … `output335` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part20
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `320` … `335` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output320, output321, output322, output323, output324, output325, output326, output327, output328, output329, output330, output331, output332, output333, output334, output335]

theorem o320 : crepOkB crepS output320 = true := crepOkB_of_raw data320 (by kernel_rfl)
theorem o321 : crepOkB crepS output321 = true := crepOkB_of_raw data321 (by kernel_rfl)
theorem o322 : crepOkB crepS output322 = true := crepOkB_of_raw data322 (by kernel_rfl)
theorem o323 : crepOkB crepS output323 = true := crepOkB_of_raw data323 (by kernel_rfl)
theorem o324 : crepOkB crepS output324 = true := crepOkB_of_raw data324 (by kernel_rfl)
theorem o325 : crepOkB crepS output325 = true := crepOkB_of_raw data325 (by kernel_rfl)
theorem o326 : crepOkB crepS output326 = true := crepOkB_of_raw data326 (by kernel_rfl)
theorem o327 : crepOkB crepS output327 = true := crepOkB_of_raw data327 (by kernel_rfl)
theorem o328 : crepOkB crepS output328 = true := crepOkB_of_raw data328 (by kernel_rfl)
theorem o329 : crepOkB crepS output329 = true := crepOkB_of_raw data329 (by kernel_rfl)
theorem o330 : crepOkB crepS output330 = true := crepOkB_of_raw data330 (by kernel_rfl)
theorem o331 : crepOkB crepS output331 = true := crepOkB_of_raw data331 (by kernel_rfl)
theorem o332 : crepOkB crepS output332 = true := crepOkB_of_raw data332 (by kernel_rfl)
theorem o333 : crepOkB crepS output333 = true := crepOkB_of_raw data333 (by kernel_rfl)
theorem o334 : crepOkB crepS output334 = true := crepOkB_of_raw data334 (by kernel_rfl)
theorem o335 : crepOkB crepS output335 = true := crepOkB_of_raw data335 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o320 (all_cons_of o321 (all_cons_of o322 (all_cons_of o323 (all_cons_of o324 (all_cons_of o325 (all_cons_of o326 (all_cons_of o327 (all_cons_of o328 (all_cons_of o329 (all_cons_of o330 (all_cons_of o331 (all_cons_of o332 (all_cons_of o333 (all_cons_of o334 (all_cons_of o335 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part20

#print axioms InitECandidate.Solver.Concrete.Crep.Part20.ok
