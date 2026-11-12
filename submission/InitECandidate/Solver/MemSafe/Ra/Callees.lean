import InitECandidate.Solver.MemSafe.Ra.Kit
import InitECandidate.Solver.MemSafe.Dn.Dwtm
import InitECandidate.Solver.MemSafe.Rec.UMin
import InitECandidate.Solver.MemSafe.Rec.TxLeaf
import InitECandidate.Solver.MemSafe.Rec.UVal
import InitECandidate.Solver.MemSafe.Helpers.Rlp

set_option autoImplicit false

/-!
# The callee summaries `recover_authority` uses (sonnet-ra)

The fold entries (`ctab% Rec.tab26_guestR`), each as a `SumSpecA`, and the value specs of the RLP
writers, `u256_to_be_min` and `rlp_list_header_len`.
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Ra
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type}

theorem alloc_C :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "alloc")
      ⟨[.any], [.freshArg 0 1 0], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

theorem keccak_C :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "keccak256")
      ⟨[.any, .any, .buf 32], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

theorem toBeMin_C :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "u256_to_be_min")
      ⟨[.any, .buf 32], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

theorem encBytes_C :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "rlp_encode_bytes")
      ⟨[.bufArg 2 1 9, .any, .any], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

theorem encWord_C :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "rlp_encode_word")
      ⟨[.buf 9, .any], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

theorem lhl_C :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "rlp_list_header_len")
      ⟨[.any], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

theorem elh_C :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "rlp_encode_list_header")
      ⟨[.buf 9, .any], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

theorem isZero_C :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "u256_is_zero")
      ⟨[.any], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

theorem lt_C :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "u256_lt")
      ⟨[.any, .any], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

theorem gt_C :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "u256_gt")
      ⟨[.any, .any], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

theorem recover_C :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "secp256k1_recover")
      ⟨[.any, .any, .any, .any, .buf 64], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

theorem memcpy_C :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "memcpy") Helpers.sigMemcpy [] :=
  memcpy_R

end InitECandidate.Solver.MemSafe.Ra

#print axioms InitECandidate.Solver.MemSafe.Ra.alloc_C
#print axioms InitECandidate.Solver.MemSafe.Ra.encBytes_C
#print axioms InitECandidate.Solver.MemSafe.Ra.recover_C
