import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data304
import InitECandidate.Proofs.FrontendStages.Crep.Data305
import InitECandidate.Proofs.FrontendStages.Crep.Data306
import InitECandidate.Proofs.FrontendStages.Crep.Data307
import InitECandidate.Proofs.FrontendStages.Crep.Data308
import InitECandidate.Proofs.FrontendStages.Crep.Data309
import InitECandidate.Proofs.FrontendStages.Crep.Data310
import InitECandidate.Proofs.FrontendStages.Crep.Data311
import InitECandidate.Proofs.FrontendStages.Crep.Data312
import InitECandidate.Proofs.FrontendStages.Crep.Data313
import InitECandidate.Proofs.FrontendStages.Crep.Data314
import InitECandidate.Proofs.FrontendStages.Crep.Data315
import InitECandidate.Proofs.FrontendStages.Crep.Data316
import InitECandidate.Proofs.FrontendStages.Crep.Data317
import InitECandidate.Proofs.FrontendStages.Crep.Data318
import InitECandidate.Proofs.FrontendStages.Crep.Data319

/-! `csize ≤ crepS` on the crep entries `output304` … `output319` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part19
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `304` … `319` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output304, output305, output306, output307, output308, output309, output310, output311, output312, output313, output314, output315, output316, output317, output318, output319]

theorem o304 : crepOkB crepS output304 = true := crepOkB_of_raw data304 (by kernel_rfl)
theorem o305 : crepOkB crepS output305 = true := crepOkB_of_raw data305 (by kernel_rfl)
theorem o306 : crepOkB crepS output306 = true := crepOkB_of_raw data306 (by kernel_rfl)
theorem o307 : crepOkB crepS output307 = true := crepOkB_of_raw data307 (by kernel_rfl)
theorem o308 : crepOkB crepS output308 = true := crepOkB_of_raw data308 (by kernel_rfl)
theorem o309 : crepOkB crepS output309 = true := crepOkB_of_raw data309 (by kernel_rfl)
theorem o310 : crepOkB crepS output310 = true := crepOkB_of_raw data310 (by kernel_rfl)
theorem o311 : crepOkB crepS output311 = true := crepOkB_of_raw data311 (by kernel_rfl)
theorem o312 : crepOkB crepS output312 = true := crepOkB_of_raw data312 (by kernel_rfl)
theorem o313 : crepOkB crepS output313 = true := crepOkB_of_raw data313 (by kernel_rfl)
theorem o314 : crepOkB crepS output314 = true := crepOkB_of_raw data314 (by kernel_rfl)
theorem o315 : crepOkB crepS output315 = true := crepOkB_of_raw data315 (by kernel_rfl)
theorem o316 : crepOkB crepS output316 = true := crepOkB_of_raw data316 (by kernel_rfl)
theorem o317 : crepOkB crepS output317 = true := crepOkB_of_raw data317 (by kernel_rfl)
theorem o318 : crepOkB crepS output318 = true := crepOkB_of_raw data318 (by kernel_rfl)
theorem o319 : crepOkB crepS output319 = true := crepOkB_of_raw data319 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o304 (all_cons_of o305 (all_cons_of o306 (all_cons_of o307 (all_cons_of o308 (all_cons_of o309 (all_cons_of o310 (all_cons_of o311 (all_cons_of o312 (all_cons_of o313 (all_cons_of o314 (all_cons_of o315 (all_cons_of o316 (all_cons_of o317 (all_cons_of o318 (all_cons_of o319 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part19

#print axioms InitECandidate.Solver.Concrete.Crep.Part19.ok
