import InitECandidate.Solver.MemSafe.Pre.EmitLog
import InitECandidate.Solver.MemSafe.Wire.FoldR
import InitECandidate.Solver.MemSafe.Pre.EmitLogJL
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.ShardsJL.AllR
import InitECandidate.Solver.MemSafe.Hooks.Rec
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Pre
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Inc
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

theorem u256IsZero_guestR {σ : Type} :
    CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "u256_is_zero") sgZ [] :=
  ctab% Wire.tab_guestR

theorem memzero_guestR {σ : Type} :
    CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "memzero") Helpers.sigMemzero [] :=
  ctab% Wire.tab_guestR

theorem memcpy_guestR {σ : Type} :
    CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "memcpy") Helpers.sigMemcpy [] :=
  ctab% Wire.tab_guestR

theorem u256ToBe32_guestR {σ : Type} :
    CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "u256_to_be32") sigBe32 [] :=
  ctab% Wire.tab_guestR

/-- **`emit_transfer_log` at `guestCtx` / `guestHooksR`**, every callee discharged. -/
theorem sumSpecA_emit_transfer_log_guestR {σ : Type} :
    SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "emit_transfer_log") etlSig
      EtlPre (fun _ _ Γ a => LaPW Γ a) LogQ :=
  sumSpecA_emit_transfer_log Rec.foldOK_guestR Hooks.guestHooksR_mono Hooks.lstHooks_guestR
    (fun Γ s o ht => ⟨Hooks.recBase_triv Γ s o (by rw [ht]; decide), fun e he hty => by
      have hm := Hooks.recTab_ty he
      rw [hty, ht] at hm
      exact absurd hm (by decide)⟩)
    u256IsZero_guestR memcpy_guestR memzero_guestR u256ToBe32_guestR

end InitECandidate.Solver.MemSafe.Pre

#print axioms InitECandidate.Solver.MemSafe.Pre.u256IsZero_guestR
#print axioms InitECandidate.Solver.MemSafe.Pre.memzero_guestR
#print axioms InitECandidate.Solver.MemSafe.Pre.memcpy_guestR
#print axioms InitECandidate.Solver.MemSafe.Pre.u256ToBe32_guestR
#print axioms InitECandidate.Solver.MemSafe.Pre.sumSpecA_emit_transfer_log_guestR
