import InitECandidate.Solver.MemSafe.D0.Sd10
import InitECandidate.Solver.AuthorizationWork.AuthorizationBothLoop

/-!
# `set_delegation`: the stages before the loop (the authorization count and index)
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

/-- Returning zero consumes no source-clock ticks after the loop. -/
theorem authorizationLoopReturn_cost (hRA : RaH σ) (hSC : SetCodeH σ)
    (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gwJ Γ0 s0 p0 fs e mg u0) (hG0 : G guestC HJ Γ0 s0)
    {W S A N : BitVec 64} {xs0 : List (MlS × ValueHOL 64)}
    (hxW : xs0.lookup (nm "written") = some (.val (.word W)))
    (hxS : xs0.lookup (nm "set_for") = some (.val (.word S)))
    (hxA : xs0.lookup (nm "auths") = some (.val (.word A)))
    (hxN : xs0.lookup (nm "n") = some (.val (.word N))) (hfr : IterFresh xs0)
    (hl : LA u0.locals ((nm "i", .val (.word (BitVec.ofNat 64 0))) :: xs0))
    (hB : LBp W S A N Γ0 p0) :
    Inv.CostP σ guestCtx (fun t => t = u0) sdLoop AuthorizationBothLoop.authorizationLoopPrice := by
  unfold sdLoop
  have hloop := (AuthorizationBothLoop.authorizationLoop_cost (Γ0 := Γ0) (s0 := s0) (p0 := p0) (mg := mg)
    hRA hSC hfs hxW hxS hxA hxN hfr).pre (P' := fun t => t = u0) (fun t _ ht => by
      subst t
      exact ⟨kpd_base lbp_mono hu hG0 hB, 0, Nat.zero_le _, hl⟩)
  simpa only [Nat.add_zero] using Inv.costP_seq (R := fun _ => True) hloop
    (fun _ _ _ _ _ => trivial) (Inv.costP_of_cost (cost_return (cw 0)))

/-- The stage `var auths = te[TE_AUTHS]; var n = te[TE_AUTHS_N]; var i = 0; while …; return 0`. -/
theorem authorizationLoad_cost {tE : Nat} (hTE : TeHook σ tE) (hRA : RaH σ) (hSC : SetCodeH σ)
    (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gwJ Γ0 s0 p0 fs e mg u0) {W S T Bv : BitVec 64}
    (hl : LA u0.locals [(nm "set_for", .val (.word S)), (nm "written", .val (.word W)),
      (nm "benv", .val (.word Bv)), (nm "te", .val (.word T)), (nm "msg", .val (.word mg))])
    (hW : Fits Γ0 (.ptr tHTh20) W) (hS : Fits Γ0 (.ptr tHTh20) S)
    (hT : ∃ x ∈ Γ0, x.base = T ∧ x.ty = tE) :
    Inv.CostP σ guestCtx (fun t => t = u0)
      (.dec (nm "auths") .one (lLoad "te" 144)
        (.dec (nm "n") .one (lLoad "te" 152) (.dec (nm "i") .one (cw 0) sdLoop)))
      AuthorizationBothLoop.authorizationLoopPrice := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  obtain ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, h112⟩ := hu
  have hG1 := hrun.2.2.2.2.2.1
  have hp1 := hrun.2.1
  obtain ⟨x, hx, hxb, hxt⟩ := hT
  obtain ⟨x', hx', hb', ht', -⟩ := hrun.2.2.2.1 x hx
  obtain ⟨-, hsub⟩ := hTE.wf Γ1 u0 p1 hG1 hp1 x' hx' (ht'.trans hxt)
  have hxT : x'.base = T := hb'.trans hxb
  rw [hxT] at hsub
  have hu1 : KP HJ gwJ Γ1 u0 p1 fs e mg u0 := ⟨hJ, Γ1, p1, runT_refl hG1 hp1, hch, hE, le_refl _, h112⟩
  have hte : u0.locals.lookup (nm "te") = some (.val (.word T)) := la_lookup hl rfl
  refine Inv.costP_dec fun s _ hs v hv _ => ?_
  subst s
  have hvA := ev_lLoad_eq hte hv
  subst hvA
  set A := fld u0.memory T 144 with hAd
  have hu2 := kp_locals hH hu1 (setVarHOLFinite (nm "auths") (.val (.word A)) u0).locals
  have hl2 := la_set (s := u0) hl (nm "auths") (.val (.word A))
  set u2 := setVarHOLFinite (nm "auths") (.val (.word A)) u0 with hu2d
  have hte2 : u2.locals.lookup (nm "te") = some (.val (.word T)) := la_lookup hl2 rfl
  refine Inv.costP_dec fun s _ hs v hv _ => ?_
  subst s
  have hvN := ev_lLoad_eq hte2 hv
  subst hvN
  set N := fld u2.memory T 152 with hNd
  have hu3 := kp_locals hH hu2 (setVarHOLFinite (nm "n") (.val (.word N)) u2).locals
  have hl3 := la_set (s := u2) hl2 (nm "n") (.val (.word N))
  set u3 := setVarHOLFinite (nm "n") (.val (.word N)) u2 with hu3d
  refine Inv.costP_dec fun s _ hs v hv _ => ?_
  subst s
  rw [ev_cw] at hv; obtain rfl := (Option.some.inj hv).symm
  have hu4 := kp_locals hH hu3 (setVarHOLFinite (nm "i") (.val (.word (BitVec.ofNat 64 0))) u3).locals
  have hl4 := la_set (s := u3) hl3 (nm "i") (.val (.word (BitVec.ofNat 64 0)))
  set u4 := setVarHOLFinite (nm "i") (.val (.word (BitVec.ofNat 64 0))) u3 with hu4d
  let xs0 : List (MlS × ValueHOL 64) := (nm "n", .val (.word N)) :: (nm "auths", .val (.word A)) ::
    [(nm "set_for", .val (.word S)), (nm "written", .val (.word W)),
      (nm "benv", .val (.word Bv)), (nm "te", .val (.word T)), (nm "msg", .val (.word mg))]
  have hfr : IterFresh xs0 := by
    intro n hn
    simp only [iterNames, List.mem_cons, List.mem_nil_iff, or_false] at hn
    rcases hn with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> rfl
  have hsubA : Hooks.SubArr Γ1 A N.toNat tAUTH 120 := hsub
  exact authorizationLoopReturn_cost hRA hSC hfs hu4 hG1 (xs0 := xs0) rfl rfl rfl rfl hfr hl4
    ⟨fits_ext hrun.2.2.2.1 hW, fits_ext hrun.2.2.2.1 hS, hsubA⟩


end

#print axioms authorizationLoad_cost

end AuthorizationBothProof
