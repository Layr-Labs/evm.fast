import InitECandidate.Solver.MemSafe.D0.Sd11
import InitECandidate.Solver.AuthorizationWork.AuthorizationBothLoad
import InitECandidate.Solver.MemSafe.D0.AuthorizationBindCost

/-!
# `set_delegation`: cost at the second table allocation
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace AuthorizationBothProof
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.D0

variable {σ : Type}

section
local notation "HJ" => (Hooks.guestHooksR (σ := σ))
local notation "gwJ" => [Hooks.gJn]
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
  {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}

/-- Stage `var set_for = htab_new(20, 8); …`. -/
theorem authorizationSetFor_cost {tE : Nat} (hTE : TeHook σ tE) (hRA : RaH σ) (hSC : SetCodeH σ)
    (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gwJ Γ0 s0 p0 fs e mg u0) {W T Bv : BitVec 64}
    (hl : LA u0.locals [(nm "written", .val (.word W)),
      (nm "benv", .val (.word Bv)), (nm "te", .val (.word T)), (nm "msg", .val (.word mg))])
    (hW : Fits Γ0 (.ptr tHTh20) W) (hT : ∃ x ∈ Γ0, x.base = T ∧ x.ty = tE) :
    Inv.CostP σ guestCtx (fun t => t = u0)
      (.decCall (nm "set_for") .one (nm "htab_new") [cw 20, cw 8]
        (.dec (nm "auths") .one (lLoad "te" 144)
          (.dec (nm "n") .one (lLoad "te" 152) (.dec (nm "i") .one (cw 0) sdLoop))))
      (1 + 12 + AuthorizationBothLoop.authorizationLoopPrice) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  have g := sgOK0 (sg := Shards.newSig (20, 8)) (gw := gwJ) rfl
  have hprice : CalleeCost σ guestCtx (nm "htab_new") 12 :=
    calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  refine costP_kpDecCallT (Hooks.frameCfg_guestHooksR (σ := σ)) hfs hn_kp hn_fp
    g.1 g.2.1 g.2.2 (ks := []) (by simp) hu ?_ (fun _ _ _ _ _ _ h => h) (Or.inl rfl) hprice ?_
  · intro vs hvs Γ1 p1 hr hp hG hL hE
    rw [evs_cw2 hvs]
    exact ⟨argsOK_new, fun _ => jrNZ_congr rfl hu.1⟩
  · intro vs callee hvs v st hst hsh
    obtain ⟨S, rfl⟩ := val_of_shapeEq_one' hsh
    obtain ⟨hJ, Γ2, p2, hrun, hch, hE, hΦ, h112, Γ1', hQ, hp2⟩ := hst
    have hG2 := hrun.2.2.2.2.2.1
    have hFS : Fits Γ2 (.ptr tHTh20) S := hQ S rfl
    have hu2 : KP HJ gwJ Γ2 st p2 fs e mg st :=
      ⟨hJ, Γ2, p2, runT_refl hG2 hrun.2.1, hch, hE, le_refl _, h112⟩
    have hu2s := kp_locals hH hu2 (setVarHOLFinite (nm "set_for") (.val (.word S))
      { st with locals := u0.locals }).locals
    have hl2 := la_set (s := st) hl (nm "set_for") (.val (.word S))
    obtain ⟨x, hx, hxb, hxt⟩ := hT
    obtain ⟨x', hx', hb', ht', -⟩ := hrun.2.2.2.1 x hx
    exact authorizationLoad_cost hTE hRA hSC hfs hu2s hl2
      (fits_ext hrun.2.2.2.1 hW) hFS ⟨x', hx', hb'.trans hxb, ht'.trans hxt⟩

end

#print axioms authorizationSetFor_cost

end AuthorizationBothProof
