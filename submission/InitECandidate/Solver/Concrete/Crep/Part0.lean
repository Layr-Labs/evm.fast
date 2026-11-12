import InitECandidate.Solver.Concrete.Basic
import InitECandidate.Proofs.FrontendStages.Crep.Data0
import InitECandidate.Proofs.FrontendStages.Crep.Data1
import InitECandidate.Proofs.FrontendStages.Crep.Data2
import InitECandidate.Proofs.FrontendStages.Crep.Data3
import InitECandidate.Proofs.FrontendStages.Crep.Data4
import InitECandidate.Proofs.FrontendStages.Crep.Data5
import InitECandidate.Proofs.FrontendStages.Crep.Data6
import InitECandidate.Proofs.FrontendStages.Crep.Data7
import InitECandidate.Proofs.FrontendStages.Crep.Data8
import InitECandidate.Proofs.FrontendStages.Crep.Data9
import InitECandidate.Proofs.FrontendStages.Crep.Data10
import InitECandidate.Proofs.FrontendStages.Crep.Data11
import InitECandidate.Proofs.FrontendStages.Crep.Data12
import InitECandidate.Proofs.FrontendStages.Crep.Data13
import InitECandidate.Proofs.FrontendStages.Crep.Data14
import InitECandidate.Proofs.FrontendStages.Crep.Data15

/-! `csize ≤ crepS` on the crep entries `output0` … `output15` of the baseline crep
program `FrontendStages.Crep.outputs` (`= FrontendStages.pass3`): one kernel-checked Boolean
evaluation per entry, through the baseline's structural `crepProgToHOL`. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Concrete.Crep.Part0
open Flapjack InitECandidate.Proofs.FrontendStages.Crep
open Flapjack.Basis.Pure.MlString (MlString)

/-- Entries `0` … `15` of `FrontendStages.Crep.outputs`. -/
def part : List (MlString × List Nat × CrepProgHOL 64) := [output0, output1, output2, output3, output4, output5, output6, output7, output8, output9, output10, output11, output12, output13, output14, output15]

theorem o0 : crepOkB crepS output0 = true := crepOkB_of_raw data0 (by kernel_rfl)
theorem o1 : crepOkB crepS output1 = true := crepOkB_of_raw data1 (by kernel_rfl)
theorem o2 : crepOkB crepS output2 = true := crepOkB_of_raw data2 (by kernel_rfl)
theorem o3 : crepOkB crepS output3 = true := crepOkB_of_raw data3 (by kernel_rfl)
theorem o4 : crepOkB crepS output4 = true := crepOkB_of_raw data4 (by kernel_rfl)
theorem o5 : crepOkB crepS output5 = true := crepOkB_of_raw data5 (by kernel_rfl)
theorem o6 : crepOkB crepS output6 = true := crepOkB_of_raw data6 (by kernel_rfl)
theorem o7 : crepOkB crepS output7 = true := crepOkB_of_raw data7 (by kernel_rfl)
theorem o8 : crepOkB crepS output8 = true := crepOkB_of_raw data8 (by kernel_rfl)
theorem o9 : crepOkB crepS output9 = true := crepOkB_of_raw data9 (by kernel_rfl)
theorem o10 : crepOkB crepS output10 = true := crepOkB_of_raw data10 (by kernel_rfl)
theorem o11 : crepOkB crepS output11 = true := crepOkB_of_raw data11 (by kernel_rfl)
theorem o12 : crepOkB crepS output12 = true := crepOkB_of_raw data12 (by kernel_rfl)
theorem o13 : crepOkB crepS output13 = true := crepOkB_of_raw data13 (by kernel_rfl)
theorem o14 : crepOkB crepS output14 = true := crepOkB_of_raw data14 (by kernel_rfl)
theorem o15 : crepOkB crepS output15 = true := crepOkB_of_raw data15 (by kernel_rfl)

theorem ok : part.all (crepOkB crepS) = true := by
  unfold part
  exact (all_cons_of o0 (all_cons_of o1 (all_cons_of o2 (all_cons_of o3 (all_cons_of o4 (all_cons_of o5 (all_cons_of o6 (all_cons_of o7 (all_cons_of o8 (all_cons_of o9 (all_cons_of o10 (all_cons_of o11 (all_cons_of o12 (all_cons_of o13 (all_cons_of o14 (all_cons_of o15 (all_nil_of _)))))))))))))))))

end InitECandidate.Solver.Concrete.Crep.Part0

#print axioms InitECandidate.Solver.Concrete.Crep.Part0.ok
