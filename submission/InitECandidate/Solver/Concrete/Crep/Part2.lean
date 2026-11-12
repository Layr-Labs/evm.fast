import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data32
import InitECandidate.Proofs.FrontendStages.Crep.Data33
import InitECandidate.Proofs.FrontendStages.Crep.Data34
import InitECandidate.Proofs.FrontendStages.Crep.Data35
import InitECandidate.Proofs.FrontendStages.Crep.Data36
import InitECandidate.Proofs.FrontendStages.Crep.Data37
import InitECandidate.Proofs.FrontendStages.Crep.Data38
import InitECandidate.Proofs.FrontendStages.Crep.Data39
import InitECandidate.Proofs.FrontendStages.Crep.Data40
import InitECandidate.Proofs.FrontendStages.Crep.Data41
import InitECandidate.Proofs.FrontendStages.Crep.Data42
import InitECandidate.Proofs.FrontendStages.Crep.Data43
import InitECandidate.Proofs.FrontendStages.Crep.Data44
import InitECandidate.Proofs.FrontendStages.Crep.Data45
import InitECandidate.Proofs.FrontendStages.Crep.Data46
import InitECandidate.Proofs.FrontendStages.Crep.Data47

/-! `csize ≤ crepS` on the crep entries `output32` … `output47` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part2
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `32` … `47` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output32, output33, output34, output35, output36, output37, output38, output39, output40, output41, output42, output43, output44, output45, output46, output47]

theorem o32 : crepOkB crepS output32 = true := crepOkB_of_raw data32 (by kernel_rfl)
theorem o33 : crepOkB crepS output33 = true := crepOkB_of_raw data33 (by kernel_rfl)
theorem o34 : crepOkB crepS output34 = true := crepOkB_of_raw data34 (by kernel_rfl)
theorem o35 : crepOkB crepS output35 = true := crepOkB_of_raw data35 (by kernel_rfl)
theorem o36 : crepOkB crepS output36 = true := crepOkB_of_raw data36 (by kernel_rfl)
theorem o37 : crepOkB crepS output37 = true := crepOkB_of_raw data37 (by kernel_rfl)
theorem o38 : crepOkB crepS output38 = true := crepOkB_of_raw data38 (by kernel_rfl)
theorem o39 : crepOkB crepS output39 = true := crepOkB_of_raw data39 (by kernel_rfl)
theorem o40 : crepOkB crepS output40 = true := crepOkB_of_raw data40 (by kernel_rfl)
theorem o41 : crepOkB crepS output41 = true := crepOkB_of_raw data41 (by kernel_rfl)
theorem o42 : crepOkB crepS output42 = true := crepOkB_of_raw data42 (by kernel_rfl)
theorem o43 : crepOkB crepS output43 = true := crepOkB_of_raw data43 (by kernel_rfl)
theorem o44 : crepOkB crepS output44 = true := crepOkB_of_raw data44 (by kernel_rfl)
theorem o45 : crepOkB crepS output45 = true := crepOkB_of_raw data45 (by kernel_rfl)
theorem o46 : crepOkB crepS output46 = true := crepOkB_of_raw data46 (by kernel_rfl)
theorem o47 : crepOkB crepS output47 = true := crepOkB_of_raw data47 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o32 (all_cons_of o33 (all_cons_of o34 (all_cons_of o35 (all_cons_of o36 (all_cons_of o37 (all_cons_of o38 (all_cons_of o39 (all_cons_of o40 (all_cons_of o41 (all_cons_of o42 (all_cons_of o43 (all_cons_of o44 (all_cons_of o45 (all_cons_of o46 (all_cons_of o47 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part2

#print axioms InitECandidate.Solver.Concrete.Crep.Part2.ok
