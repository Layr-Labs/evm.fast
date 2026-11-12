import InitECandidate.Solver.MemSafe.Rpg.Final
import InitECandidate.Solver.MemSafe.Rpg.Inst
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.ShardsJL.AllR
import InitECandidate.Solver.MemSafe.Hooks.Rec
import InitECandidate.Solver.MemSafe.Fq.InvR

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Rpg
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

theorem rpEnv_guestR {σ : Type} : RpEnv σ guestCtx (Hooks.guestHooksR (σ := σ)) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hI := Fq.csumm_fq12_inv_guestR (σ := σ)
  have hB : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "bn254_pairing_check")
      Fq.bpcSig [] :=
    accepts_sound hF (ctabSound_cons Wire.tab_guestR hI) Fq.bpcCand_valid Fq.bpcCand_accepts
  exact { hH := hF.hH, hC := hF.hC, hal := hF.hal, hAC := hF.hAC, hNS := hF.hNS,
          hWS := winSpecs_guest hF.hX, hX := hF.hX,
          hT := ctabSound_cons (ctabSound_cons Wire.tab_guestR hI) hB,
          hF := Hooks.frameCfg_guestHooksR }

/-- **`RpGas σ`, modulo `pre_modexp`'s gas fact.** -/
theorem rpG_guestR_of {σ : Type}
    (hPM : GasFS σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "pre_modexp")) : Frames.RpGas σ :=
  rpG_of_gen rpEnv_guestR hPM

end InitECandidate.Solver.MemSafe.Rpg

#print axioms InitECandidate.Solver.MemSafe.Rpg.rpEnv_guestR
#print axioms InitECandidate.Solver.MemSafe.Rpg.rpG_guestR_of
