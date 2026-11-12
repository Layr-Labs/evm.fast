import InitECandidate.Solver.MemSafe.Ptx.PtHoare

/-!
# F3d: the table summaries `process_transaction` calls (instances of `ShardsR.tab_soundR`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

def jrCap : Cap := ⟨nm "journal", 9, [], true⟩
def skCap : Cap := ⟨nm "sk_buf", 24, [], false⟩

theorem tab_set_account_balance :
    CSumm σ guestCtx guestC (HR σ) (nm "set_account_balance") ⟨[.buf 20, .any], [], [Hooks.gJn], true⟩
      (tblCaps ++ [jrCap, skCap]) := ctab% ShardsR.tab_soundR

theorem tab_tx_chain_id :
    CSumm σ guestCtx guestC (HR σ) (nm "tx_chain_id") ⟨[.any], [], [], false⟩ [] := ctab% ShardsR.tab_soundR

theorem tab_recover_sender :
    CSumm σ guestCtx guestC (HR σ) (nm "recover_sender_with_chain_id")
      ⟨[.fits (.ptr tTX), .any, .buf 20], [], [], false⟩ [] := ctab% ShardsR.tab_soundR

theorem tab_validate_transaction :
    CSumm σ guestCtx guestC (HR σ) (nm "validate_transaction") ⟨[.any, .any], [], [], false⟩ [] :=
  ctab% ShardsR.tab_soundR

theorem tab_check_transaction :
    CSumm σ guestCtx guestC (HR σ) (nm "check_transaction") ⟨[.any, .buf 20], [], [], true⟩
      (tblCaps ++ [skCap]) := ctab% ShardsR.tab_soundR

theorem tab_calculate_total_blob_gas :
    CSumm σ guestCtx guestC (HR σ) (nm "calculate_total_blob_gas") ⟨[.any], [], [], false⟩ [] :=
  ctab% ShardsR.tab_soundR

theorem tab_get_account :
    CSumm σ guestCtx guestC (HR σ) (nm "get_account") ⟨[.buf 20], [], [], true⟩ tblCaps :=
  ctab% ShardsR.tab_soundR

theorem tab_calculate_blob_gas_price :
    CSumm σ guestCtx guestC (HR σ) (nm "calculate_blob_gas_price") ⟨[.any], [], [], false⟩ [] :=
  ctab% ShardsR.tab_soundR

theorem tab_fee_mul :
    CSumm σ guestCtx guestC (HR σ) (nm "fee_mul") ⟨[.any, .any], [], [], false⟩ [] := ctab% ShardsR.tab_soundR

theorem tab_increment_nonce :
    CSumm σ guestCtx guestC (HR σ) (nm "increment_nonce") ⟨[.buf 20], [], [Hooks.gJn], true⟩
      (tblCaps ++ [jrCap, skCap]) := ctab% ShardsR.tab_soundR

theorem tab_u256_sub :
    CSumm σ guestCtx guestC (HR σ) (nm "u256_sub") ⟨[.any, .any], [], [], false⟩ [] := ctab% ShardsR.tab_soundR

theorem tab_tx_has_access_list :
    CSumm σ guestCtx guestC (HR σ) (nm "tx_has_access_list") ⟨[.any], [], [], false⟩ [] :=
  ctab% ShardsR.tab_soundR

theorem tab_tx_is_blob :
    CSumm σ guestCtx guestC (HR σ) (nm "tx_is_blob") ⟨[.any], [], [], false⟩ [] := ctab% ShardsR.tab_soundR

theorem tab_tx_is_setcode :
    CSumm σ guestCtx guestC (HR σ) (nm "tx_is_setcode") ⟨[.any], [], [], false⟩ [] := ctab% ShardsR.tab_soundR

theorem tab_memcpy :
    CSumm σ guestCtx guestC (HR σ) (nm "memcpy") ⟨[.bufArg 2 1 0, .any, .any], [], [], false⟩ [] :=
  ctab% ShardsR.tab_soundR

theorem tab_keccak256 :
    CSumm σ guestCtx guestC (HR σ) (nm "keccak256") ⟨[.any, .any, .buf 32], [], [], false⟩ [] :=
  ctab% ShardsR.tab_soundR

theorem tab_alloc :
    CSumm σ guestCtx guestC (HR σ) (nm "alloc") ⟨[.any], [.freshArg 0 1 0], [], false⟩ [] :=
  ctab% ShardsR.tab_soundR

theorem tab_htab_new_20_64 :
    CSumm σ guestCtx guestC (HR σ) (nm "htab_new") ⟨[.eq 20, .eq 64], [.fits (.ptr tHTh20)], [], true⟩ [] :=
  ctab% ShardsR.tab_soundR

theorem tab_htab_new_52_16 :
    CSumm σ guestCtx guestC (HR σ) (nm "htab_new") ⟨[.eq 52, .eq 16], [.fits (.ptr tHTh52)], [], true⟩ [] :=
  ctab% ShardsR.tab_soundR

theorem tab_htab_set_20 :
    CSumm σ guestCtx guestC (HR σ) (nm "htab_set") ⟨[.fits (.ptr tHTh20), .buf 20, .any], [], [], true⟩
      [⟨nm "*", tHTh20, [], true⟩, ⟨nm "*", 14, [], true⟩] := ctab% ShardsR.tab_soundR

theorem tab_htab_set_52 :
    CSumm σ guestCtx guestC (HR σ) (nm "htab_set") ⟨[.fits (.ptr tHTh52), .buf 52, .any], [], [], true⟩
      [⟨nm "*", tHTh52, [], true⟩, ⟨nm "*", 14, [], true⟩] := ctab% ShardsR.tab_soundR

theorem tab_udiv_small5 :
    CSumm σ guestCtx guestC (HR σ) (nm "udiv_small5") ⟨[.any], [], [], false⟩ [] := ctab% ShardsR.tab_soundR

theorem tab_min :
    CSumm σ guestCtx guestC (HR σ) (nm "min") ⟨[.any, .any], [], [], false⟩ [] := ctab% ShardsR.tab_soundR

theorem tab_max :
    CSumm σ guestCtx guestC (HR σ) (nm "max") ⟨[.any, .any], [], [], false⟩ [] := ctab% ShardsR.tab_soundR

theorem tab_create_ether :
    CSumm σ guestCtx guestC (HR σ) (nm "create_ether") ⟨[.buf 20, .any], [], [Hooks.gJn], true⟩
      (tblCaps ++ [jrCap, skCap]) := ctab% ShardsR.tab_soundR

theorem tab_clear_account :
    CSumm σ guestCtx guestC (HR σ) (nm "clear_account_preserving_balance") ⟨[.buf 20], [], [Hooks.gJn], true⟩
      ([skCap] ++ tblCaps ++ [jrCap]) := ctab% ShardsR.tab_soundR

theorem tab_htab_item :
    CSumm σ guestCtx guestC (HR σ) (nm "htab_item") ⟨[.any, .any], [], [], false⟩ [] := ctab% ShardsR.tab_soundR

end InitECandidate.Solver.MemSafe.Ptx
