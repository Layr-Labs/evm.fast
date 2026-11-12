import InitECandidate.Solver.MemSafe.Stor3.Sload
import InitECandidate.Solver.MemSafe.Stor3.Sstore
import InitECandidate.Solver.MemSafe.Stor3.Sd
import InitECandidate.Solver.MemSafe.Stor3.Etl
import InitECandidate.Solver.MemSafe.Dn.Cfg

set_option autoImplicit false

/-!
# The three storage / selfdestruct handler fields at `guestHooksR` (sonnet-store3)

* `op_sload_R hV hNV`, `op_sstore_R hV hNV hSS` : the trie-values stage `hV`, `hNV` (as in
  `Dn.op_dispatch_condCost_Cfg`) gives `ws_get_storage`'s summary (`Dn.csumm_wgs_Fin`), hence
  `get_storage`'s (`csumm_gs_of_wgs`) and `get_storage_original`'s (`St2.gsoSumm_of_wgs`);
  `op_sstore_R` additionally takes `SetStorageSumm σ` (the open `set_storage` summary).
* `op_selfdestruct_R` takes no hypothesis (`etlStep` : the `GK` step of `emit_transfer_log`).
-/

namespace InitECandidate.Solver.MemSafe.Stor3
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

theorem csumm_gs_R {tV : Nat} (hV : Band4.VTy tV)
    (hNV : ∀ (Γ : Gam) (s : State σ), G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s → ∀ o ∈ Γ,
      Band4.NVal tV Γ s o) :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "get_storage")
      Band3.gsSig gsCaps :=
  csumm_gs_of_wgs (Dn.csumm_wgs_Fin (Dn.staged_of_tv hV hNV) Dn.cfg_hWSz Dn.cfg_hWS4)

theorem csumm_gso_R {tV : Nat} (hV : Band4.VTy tV)
    (hNV : ∀ (Γ : Gam) (s : State σ), G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s → ∀ o ∈ Γ,
      Band4.NVal tV Γ s o) :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "get_storage_original")
      Band3.gsoSig Band3.rpsrCaps :=
  St2.gsoSumm_of_wgs (Dn.csumm_wgs_Fin (Dn.staged_of_tv hV hNV) Dn.cfg_hWSz Dn.cfg_hWS4)

/-- **`op_sload`** (`FHypsRest.op_sload`) under the trie-values stage. -/
theorem op_sload_R {tV : Nat} (hV : Band4.VTy tV)
    (hNV : ∀ (Γ : Gam) (s : State σ), G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s → ∀ o ∈ Γ,
      Band4.NVal tV Γ s o) :
    OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_sload") :=
  j_op_sload (csumm_gs_R hV hNV)

/-- **`op_sstore`** (`FHypsRest.op_sstore`) under the trie-values stage and `SetStorageSumm`. -/
theorem op_sstore_R {tV : Nat} (hV : Band4.VTy tV)
    (hNV : ∀ (Γ : Gam) (s : State σ), G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s → ∀ o ∈ Γ,
      Band4.NVal tV Γ s o) (hSS : SetStorageSumm σ) :
    OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_sstore") :=
  j_op_sstore (csumm_gso_R hV hNV) (csumm_gs_R hV hNV) hSS

/-- **`op_selfdestruct`** (`FHypsRest.op_selfdestruct`), no hypothesis. -/
theorem op_selfdestruct_R :
    OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_selfdestruct") :=
  j_op_selfdestruct etlStep

end InitECandidate.Solver.MemSafe.Stor3

#print axioms InitECandidate.Solver.MemSafe.Stor3.op_sload_R
#print axioms InitECandidate.Solver.MemSafe.Stor3.op_sstore_R
#print axioms InitECandidate.Solver.MemSafe.Stor3.op_selfdestruct_R
