import InitECandidate.Solver.MemSafe.Eb.GlFin
import InitECandidate.Solver.MemSafe.Eb.Stm2

/-!
# `execute_block`: the group global-keep lemmas as `GwK`
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

theorem gwK_of {f : MlS} {W : MlS → Prop}
    (h : ∀ g, ¬ W g → FunSpec σ guestCtx f (fun _ s _ t => t.globals.lookup g = s.globals.lookup g)) :
    GwK (σ := σ) f W := by
  intro vs body callee rs hl s hs hloc r hr v hv g hg
  exact h g hg vs body callee rs hl s hs hloc r hr

theorem gwk_tab {f : MlS} (hf : tabNames.contains f = true) : GwK (σ := σ) f (fun g => tabW.contains g = true) :=
  gwK_of fun g hg => funSpec_tab_gw guestCtx_code (by simpa using hg) hf

theorem gwk_bal {f : MlS} (hf : balNames.contains f = true) : GwK (σ := σ) f (fun g => balW.contains g = true) :=
  gwK_of fun g hg => funSpec_bal_gw guestCtx_code (by simpa using hg) hf

theorem gwk_sft {f : MlS} (hf : sftNames.contains f = true) : GwK (σ := σ) f (fun g => sftW.contains g = true) :=
  gwK_of fun g hg => funSpec_sft_gw guestCtx_code (by simpa using hg) hf

theorem gwk_puc {f : MlS} (hf : pucNames.contains f = true) : GwK (σ := σ) f (fun g => pucW.contains g = true) :=
  gwK_of fun g hg => funSpec_puc_gw guestCtx_code (by simpa using hg) hf

theorem gwk_pt {f : MlS} (hf : ptNames.contains f = true) : GwK (σ := σ) f (fun g => ptW.contains g = true) :=
  gwK_of fun g hg => funSpec_pt_gw guestCtx_code (by simpa using hg) hf

end InitECandidate.Solver.MemSafe.Eb
