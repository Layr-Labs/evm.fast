import InitECandidate.Solver.MemSafeFrames
import InitECandidate.Solver.MemSafe.Ops.All
import InitECandidate.Solver.MemSafe.Ops2.All
import InitECandidate.Solver.MemSafe.Ops3.All
import InitECandidate.Solver.MemSafe.Ops4.All
import InitECandidate.Solver.MemSafe.Fq.FullR
import InitECandidate.Solver.MemSafe.Mod.PreModexpR
import InitECandidate.Solver.MemSafe.Ops5.All
import InitECandidate.Solver.MemSafe.Ops6.All
import InitECandidate.Solver.MemSafe.Ops7.All
import InitECandidate.Solver.MemSafe.Calls.All
import InitECandidate.Solver.MemSafe.Cca.All
import InitECandidate.Solver.MemSafe.Hooks.Rec
import InitECandidate.Solver.MemSafe.Stor3.Final
import InitECandidate.Solver.MemSafe.Stor4.Final
import InitECandidate.Solver.MemSafe.Sc.EcoFinal

/-!
# Assembling the frame loop's hypotheses (`FHypsB`)

`fhypsB_of_stage` fills every `FHypsB` field from the proved theorems, with no open hypothesis
(the trie-values stage `VTy tVAL`, `NVal` is discharged by `Dn.vty_tVAL`, `Dn.nval_tVAL`). This also checks that each helper theorem has its field's exact type.
-/

namespace InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Wire

/-- **The frame loop's hypotheses (no open hypothesis).** -/
theorem fhypsB_of_stage {σ : Type} : FHypsB σ where
  pm := Mod.csumm_pre_modexp_guestR
  pc := Fq.csumm_pairing_check_guestR
  rpG := Ops4.rpG_guestR
  op_exp := j_op_exp
  op_keccak := j_op_keccak
  op_balance := j_op_balance
  op_calldataload := j_op_calldataload
  op_calldatacopy := j_op_calldatacopy
  op_codecopy := j_op_codecopy
  op_extcodesize := j_op_extcodesize
  op_extcodecopy := j_op_extcodecopy
  op_returndatacopy := j_op_returndatacopy
  op_extcodehash := j_op_extcodehash
  op_selfbalance := j_op_selfbalance
  op_mload := j_op_mload
  op_mstore := j_op_mstore
  op_mstore8 := Ops4.j_op_mstore8
  op_sload := Stor3.op_sload_R Dn.vty_tVAL Dn.nval_tVAL
  op_sstore := Stor3.op_sstore_R Dn.vty_tVAL Dn.nval_tVAL Stor4.setStorageSumm
  op_jump := j_op_jump
  op_jumpi := j_op_jumpi
  op_tload := j_op_tload
  op_tstore := j_op_tstore
  op_mcopy := j_op_mcopy
  op_push := j_op_push
  op_swap := j_op_swap
  op_log := j_op_log
  op_swapn := Ops4.j_op_swapn
  op_exchange := Ops4.j_op_exchange
  op_create := j_op_create Cca.ccaHyp_proved
  op_call := Calls.j_op_call (Calls.callHyps_of_eco Sc.ecoHyp_proved)
  op_callcode := Calls.j_op_callcode (Calls.callHyps_of_eco Sc.ecoHyp_proved)
  op_return := j_op_return
  op_delegatecall := Calls.j_op_delegatecall (Calls.callHyps_of_eco Sc.ecoHyp_proved)
  op_create2 := j_op_create2
  op_staticcall := Calls.j_op_staticcall (Calls.callHyps_of_eco Sc.ecoHyp_proved)
  op_revert := j_op_revert
  op_selfdestruct := Stor3.op_selfdestruct_R

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.fhypsB_of_stage
