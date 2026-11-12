import InitECandidate.Solver.MemSafe.Pre.EmitLog
import InitECandidate.Solver.MemSafe.Hooks.RecDefs
import InitECandidate.Solver.MemSafe.Wire.Fold
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false

/-!
# `emit_transfer_log` at the challenge context

All four callee summaries are fold entries of `ShardsJL.tab26` (indices 445 `u256_is_zero`,
592 `memzero`, 593 `memcpy`, 586 `u256_to_be32`); no hypothesis remains.
-/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Pre
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Inc
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

theorem u256IsZero_guestJL {σ : Type} :
    CSumm σ guestCtx guestC (Hooks.guestHooksJL (σ := σ)) (nm "u256_is_zero") sgZ [] :=
  ctab% Wire.tab_guestJL

theorem memzero_guestJL {σ : Type} :
    CSumm σ guestCtx guestC (Hooks.guestHooksJL (σ := σ)) (nm "memzero") Helpers.sigMemzero [] :=
  ctab% Wire.tab_guestJL

theorem memcpy_guestJL {σ : Type} :
    CSumm σ guestCtx guestC (Hooks.guestHooksJL (σ := σ)) (nm "memcpy") Helpers.sigMemcpy [] :=
  ctab% Wire.tab_guestJL

theorem u256ToBe32_guestJL {σ : Type} :
    CSumm σ guestCtx guestC (Hooks.guestHooksJL (σ := σ)) (nm "u256_to_be32") sigBe32 [] :=
  ctab% Wire.tab_guestJL

/-- **`emit_transfer_log` at `guestCtx` / `guestHooksJL`**, every callee discharged. -/
theorem sumSpecA_emit_transfer_log_guestJL {σ : Type} :
    SumSpecA σ guestCtx guestC (Hooks.guestHooksJL (σ := σ)) (nm "emit_transfer_log") etlSig
      EtlPre (fun _ _ Γ a => LaPW Γ a) LogQ :=
  sumSpecA_emit_transfer_log Wire.foldOK_guestJL Hooks.guestHooksJL_mono Hooks.lstHooks_guestJL
    (fun Γ s o ht => Hooks.recBase_triv Γ s o (by rw [ht]; decide))
    u256IsZero_guestJL memcpy_guestJL memzero_guestJL u256ToBe32_guestJL

end InitECandidate.Solver.MemSafe.Pre

#print axioms InitECandidate.Solver.MemSafe.Pre.sumSpecA_emit_transfer_log_guestJL
