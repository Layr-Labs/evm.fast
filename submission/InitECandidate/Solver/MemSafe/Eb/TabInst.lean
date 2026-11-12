import InitECandidate.Solver.MemSafe.Eb.Tabs
import InitECandidate.Solver.MemSafe.ShardsR.All

/-!
# `execute_block`: table instances (`ctab% ShardsR.tab_soundR`) as `CSumm`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem tab_alloc :
    CSumm σ guestCtx guestC (HR σ) (nm "alloc") ⟨[.any], [.freshArg 0 1 0], [], false⟩ [] :=
  ctab% ShardsR.tab_soundR

theorem tab_memzero :
    CSumm σ guestCtx guestC (HR σ) (nm "memzero") Helpers.sigMemzero [] := ctab% ShardsR.tab_soundR

theorem tab_memcpy :
    CSumm σ guestCtx guestC (HR σ) (nm "memcpy") Helpers.sigMemcpy [] := ctab% ShardsR.tab_soundR

theorem tab_lst_new :
    CSumm σ guestCtx guestC (HR σ) (nm "lst_new") ⟨[.eq 8, .eq 16], [.fits (.ptr tLSTh)], [], true⟩ [] :=
  ctab% ShardsR.tab_soundR

theorem tab_track :
    CSumm σ guestCtx guestC (HR σ) (nm "track_ancestor_access") ⟨[.any], [], [], false⟩ [] :=
  ctab% ShardsR.tab_soundR

theorem tab_vbal :
    CSumm σ guestCtx guestC (HR σ) (nm "validate_block_access_list_gas_limit") ⟨[.any], [], [], false⟩ [] :=
  ctab% ShardsR.tab_soundR

theorem tab_memeq :
    CSumm σ guestCtx guestC (HR σ) (nm "memeq") ⟨[.any, .any, .any], [], [], false⟩ [] :=
  ctab% ShardsR.tab_soundR

theorem tab_keccak :
    CSumm σ guestCtx guestC (HR σ) (nm "keccak256") ⟨[.any, .any, .buf 32], [], [], false⟩ [] :=
  ctab% ShardsR.tab_soundR

theorem tab_max :
    CSumm σ guestCtx guestC (HR σ) (nm "max") ⟨[.any, .any], [], [], false⟩ [] := ctab% ShardsR.tab_soundR

theorem tab_extract :
    CSumm σ guestCtx guestC (HR σ) (nm "extract_deposit_data") ⟨[.any, .any, .buf 192], [], [], false⟩ [] :=
  ctab% ShardsR.tab_soundR

end InitECandidate.Solver.MemSafe.Eb
