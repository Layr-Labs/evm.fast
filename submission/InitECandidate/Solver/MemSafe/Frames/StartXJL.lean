import InitECandidate.Solver.MemSafe.Frames.StartX
import InitECandidate.Solver.MemSafe.Frames.GcSpec
import InitECandidate.Solver.MemSafe.Wire.FinTableR
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `start_child` / `generic_call` for `guestHooksR` from `frame_prologue` (frames9, task 2a)

`frame_start`'s extended summary and its `NoEvm` fact are discharged (`start_sumSpecX`,
`noEvm_fstart`; `frame_exception` is on the cost table's escape-free list). What remains is
**`frame_prologue`'s summary on the extension** (`SumSpecT`, Pre `PreInvX … GP GR M`, post
`QProX … GP GR`).

* `noEvm_fstart_guestR`, **`fst_sumSpecX_guestR hgJS hpro`**;
* **`sc_sumSpecX_guestRp hgJS hpro`**: `start_child` (Pre `PreSCX … NewPreG XPG`, post `QSCX`);
* **`gc_sumSpecT_guestRp hgJS hpro`**: `generic_call` (Pre `PreGC M`, post `QGC`).
-/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Wire
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

/-- `frame_start` raises no `EvmErr` (challenge context). -/
theorem noEvm_fstart_guestR : NoEvm σ guestCtx (nm "frame_start") :=
  noEvm_fstart guestCtx_code (noEvm_guest (by decide_cbv))

/-- **`frame_start`'s extended summary for `guestHooksR`**, from `frame_prologue`'s. -/
theorem fst_sumSpecX_guestR {M : Nat} {gwS : List MlS} (hgJS : JrOut gwS)
    (hpro : SumSpecT σ guestCtx guestC Hooks.guestHooksR (nm "frame_prologue") (sg0 gwS)
      (PreInvX guestC tEV tCK GP GR M) (QProX guestC tEV tCK GP GR)) :
    SumSpecT σ guestCtx guestC Hooks.guestHooksR (nm "frame_start") (sg0 gwS)
      (PreInvX guestC tEV tCK GP GR M) (QLeX guestC tEV tCK GP GR) :=
  start_sumSpecX guestCtx_code Hooks.frameCfg_guestHooksR hgJS hpro

/-- **`start_child` for `guestHooksR`**, open only in `frame_prologue`'s extended summary. -/
theorem sc_sumSpecX_guestRp {M : Nat} {gwS : List MlS} (hgJS : JrOut gwS)
    (hpro : SumSpecT σ guestCtx guestC Hooks.guestHooksR (nm "frame_prologue") (sg0 gwS)
      (PreInvX guestC tEV tCK GP GR M) (QProX guestC tEV tCK GP GR)) :
    SumSpecT σ guestCtx guestC Hooks.guestHooksR (nm "start_child")
      (sgSC ([Hooks.gJn] ++ [] ++ gwS)) (PreSCX guestC guestSt tEV tCK M NewPreG XPG)
      (QSCX guestC tEV tCK GP GR) :=
  sc_sumSpecX_guestR hgJS (fst_sumSpecX_guestR hgJS hpro) noEvm_fstart_guestR

/-- **`generic_call` for `guestHooksR`**, open only in `frame_prologue`'s extended summary. -/
theorem gc_sumSpecT_guestRp {M : Nat} {gwS : List MlS} (hgJS : JrOut gwS)
    (hpro : SumSpecT σ guestCtx guestC Hooks.guestHooksR (nm "frame_prologue") (sg0 gwS)
      (PreInvX guestC tEV tCK GP GR M) (QProX guestC tEV tCK GP GR)) :
    SumSpecT σ guestCtx guestC Hooks.guestHooksR (nm "generic_call")
      (sgA 16 (nmEv :: nmCC :: ([Hooks.gJn] ++ [] ++ gwS))) (PreGC M) QGC :=
  gc_sumSpecT_guestR hgJS (fst_sumSpecX_guestR hgJS hpro) noEvm_fstart_guestR

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.noEvm_fstart_guestR
#print axioms InitECandidate.Solver.MemSafe.Frames.fst_sumSpecX_guestR
#print axioms InitECandidate.Solver.MemSafe.Frames.sc_sumSpecX_guestRp
#print axioms InitECandidate.Solver.MemSafe.Frames.gc_sumSpecT_guestRp
