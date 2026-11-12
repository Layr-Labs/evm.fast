import InitECandidate.Solver.MemSafe.Rpg.Final

/-!
# rpG: the challenge-context instance

`rpEnv_guestJL`: the standing hypotheses of the gas pass at `guestCtx` / `guestHooksJL`.
`rpG_guestJL_of`: `RpGas σ` from the `GasFS` fact of `pre_modexp` alone (the one body the
checker route does not cover).
-/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Rpg
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

theorem rpEnv_guestJL {σ : Type} : RpEnv σ guestCtx (Hooks.guestHooksJL (σ := σ)) := by
  have hF := Wire.foldOK_guestJL (σ := σ)
  have hI := Fq.csumm_fq12_inv_guestJL (σ := σ)
  have hB : CSumm σ guestCtx guestC (Hooks.guestHooksJL (σ := σ)) (nm "bn254_pairing_check")
      Fq.bpcSig [] :=
    accepts_sound hF (ctabSound_cons Wire.tab_guestJL hI) Fq.bpcCand_valid Fq.bpcCand_accepts
  exact { hH := hF.hH, hC := hF.hC, hal := hF.hal, hAC := hF.hAC, hNS := hF.hNS,
          hWS := winSpecs_guest hF.hX, hX := hF.hX,
          hT := ctabSound_cons (ctabSound_cons Wire.tab_guestJL hI) hB,
          hF := Hooks.frameCfg_guestHooksJL }

end InitECandidate.Solver.MemSafe.Rpg

#print axioms InitECandidate.Solver.MemSafe.Rpg.rpEnv_guestJL
