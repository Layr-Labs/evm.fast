import InitECandidate.Solver.MemSafe.Ptx.F3mClose
import InitECandidate.Solver.MemSafe.Ptx.DropOwn
import InitECandidate.Solver.MemSafe.Ptx.PtSfx
import InitECandidate.Solver.MemSafe.Eb.Hyp

/-!
# Package F3 into `execute_block`'s hypotheses (main, F3m step 4)

* `hypKeepG_closed : Eb.HypKeepG σ`: F3's `Ptx.G_keepOwnerHeap` (`Ptx/DropOwn.lean`).
* `hypSft_closed : Eb.HypSft σ`: F3d's `state_fresh_tx` spec `Ptx.sf_spec` (`Ptx/PtSfx.lean`, post `QFin`: a step keeping every `prot`
  cell, `JrNZ`, `ev`/`cur_cont` small, `ts` a `tTS` object).
`Eb.HypPt` from `Ptx.pt_funSpec_final` needs more (`PtPreD2`'s extra facts at the call, and `JrNZ` / `PlKeep` / `StepD` after it):
package Ptb.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Plug
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem hypKeepG_closed : Eb.HypKeepG σ := fun hG hev hcc => Ptx.G_keepOwnerHeap hG hev hcc

theorem stepD_eb {Γ Γ' : Gam} {p p' : Ptrs} {s t : State σ} (h : Ptx.StepD Γ p s Γ' p' t) :
    Eb.StepD Γ p s Γ' p' t :=
  Eb.stepD_mk h.hp h.hp' h.mono h.ext h.nf h.hG h.hG'

theorem hypSft_closed : Eb.HypSft σ := by
  unfold Eb.HypSft Eb.CallR
  refine FunSpec.mono Ptx.sf_spec ?_
  intro _ s _ t h v hv Γ p hG hp hJ hEC _
  obtain ⟨he, hc⟩ := hEC
  obtain ⟨Γ', p', hs, hprot, -, -, -, hJt, he', hc', hts⟩ := h v hv Γ p hG hp hJ he hc
  refine ⟨Γ', p', ⟨stepD_eb hs, hJt, ⟨he', hc'⟩, fun a ha _ => ?_, fun o ho _ k hk hpk => ?_⟩, hts⟩
  · unfold rd; rw [hprot a (bCell_prot ha)]
  · unfold rd; rw [hprot _ ⟨o, ho, k, hk, hpk, rfl⟩]

end InitECandidate.Solver.MemSafe.Plug

#print axioms InitECandidate.Solver.MemSafe.Plug.hypKeepG_closed
#print axioms InitECandidate.Solver.MemSafe.Plug.hypSft_closed
