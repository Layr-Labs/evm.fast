import InitECandidate.Solver.AuthorizationWork.AuthorizationBothBody
import InitECandidate.Solver.MemSafe.D0.Wire
import InitECandidate.Solver.MemSafe.Entry.Pi

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace AuthorizationBothProof
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.D0

variable {σ : Type}
local notation "HJ" => (Hooks.guestHooksR (σ := σ))
local notation "gwJ" => [Hooks.gJn]

private abbrev restPrice : Nat := 4540047341746002664886476852531012437178993

def authorizationDepthPrice : Nat := (1 + authorizationDelegationPrice + 1) + restPrice

example : authorizationDepthPrice = 7920515615371364099168624885993974679687384955740 := by
  decide +kernel

private theorem authorizationBranch_cost {tE : Nat} (hTE : TeHook σ tE)
    (hRA : RaH σ) (hSC : SetCodeH σ) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    {fs : List Frame} {e mg : BitVec 64} {u0 : State σ}
    (hu : KP HJ gwJ Γ0 s0 p0 fs e mg u0) :
    Inv.CostP σ guestCtx (fun t => t = u0) d0A (1 + authorizationDelegationPrice + 1) := by
  unfold d0A
  refine Inv.costP_seq (R := fun _ => True) ?_ (fun _ _ _ _ _ => trivial) ?_
  · refine Inv.costP_callD (authorizationCallee_cost hTE hRA hSC fs) ?_
    intro s _ hs vs hvs callee
    subst s
    obtain rfl := evs_zero hvs
    obtain ⟨hJ, Γ, p, hrun, hch, hE, _, _⟩ := hu
    have hG := hrun.2.2.2.2.2.1
    exact ⟨Γ, (G_locFree Hooks.guestHooksR_lawful u0 callee (u0.clock - 1)).mpr hG, rfl,
      chainL_congr (s := u0) (s' := callEntryStateHOLFinite u0 callee) rfl rfl hch,
      chainE_congr (s := u0) (s' := callEntryStateHOLFinite u0 callee) rfl rfl hE,
      jrNZ_congr rfl hJ⟩
  · exact Inv.costP_of_cost (ThirdSourceAnalyzer.cost_guest_costA (by decide_cbv))

theorem authorizationDepthBody_cost {tE : Nat} (hTE : TeHook σ tE)
    (hRA : RaH σ) (hSC : SetCodeH σ) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    {fs : List Frame} {e c : BitVec 64} {rest : List Frame} (hfs : fs = (e, c) :: rest)
    (hs0 : KP HJ gwJ Γ0 s0 p0 fs e (fld s0.memory e 112) s0) :
    Inv.CostP σ guestCtx (fun u => u = s0) d0Body authorizationDepthPrice := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  set mg := fld s0.memory e 112
  have he0 : gword s0 nmEv = some e := by
    obtain ⟨_, Γ1, p1, _, hch, _⟩ := hs0
    exact ev_head (hfs ▸ hch)
  rw [d0Body_eq]
  unfold d0BodyX
  have tail :
      Inv.CostP σ guestCtx (fun u => u = s0)
        (.dec (nm "msg") .one (gLoad "ev" 112)
          (.dec (nm "te") .one (lLoad "msg" 8)
            (.seq (.ite (.cmp .notEqual (lLoad "te" 152) (cw 0)) d0A .skip) d0Rest)))
        authorizationDepthPrice := by
    refine Inv.costP_dec fun s _ hs vm hvm _ => ?_
    subst s
    obtain ⟨rfl, _⟩ := ev_gLoad_eq he0 hvm
    have hu1 := kp_locals hH hs0 (setVarHOLFinite (nm "msg") (.val (.word mg)) s0).locals
    set u1 := setVarHOLFinite (nm "msg") (.val (.word mg)) s0
    have hmsg1 : u1.locals.lookup (nm "msg") = some (.val (.word mg)) := lk_set_self _ _ _
    refine Inv.costP_dec fun s _ hs vt hvt _ => ?_
    subst s
    have hvT := ev_lLoad_eq hmsg1 hvt
    subst hvT
    set T := fld u1.memory mg 8
    have hu2 := kp_locals hH hu1 (setVarHOLFinite (nm "te") (.val (.word T)) u1).locals
    unfold authorizationDepthPrice
    refine Inv.costP_seq (R := fun _ => True) ?_ (fun _ _ _ _ _ => trivial)
      (Inv.costP_of_cost (ThirdSourceAnalyzer.cost_guest_costA (by decide_cbv)))
    have hbranch : Inv.CostP σ guestCtx
        (fun t => t = setVarHOLFinite (nm "te") (.val (.word T)) u1)
        d0A (1 + authorizationDelegationPrice + 1) := authorizationBranch_cost hTE hRA hSC hu2
    refine (Inv.costP_ite (hbranch.pre (fun _ _ h => h.1))
      (Inv.costP_of_cost (cost_skip (σ := σ) (X := guestCtx)))).mono ?_
    simp only [Nat.max_zero, Nat.le_refl]
  simpa only [Nat.zero_add] using Inv.costP_seq
    (Inv.costP_of_cost (cost_skip (σ := σ) (X := guestCtx)))
    (fun s hctx h _ _ => by simpa only [evaluateHOLFiniteState_skip] using h)
    tail

theorem authorizationDepth_cost (M : Nat) :
    Inv.CalleeCostP σ guestCtx (nm "depth0_prepare")
      (fun _ s => Entry.PI M s) authorizationDepthPrice := by
  intro vs body callee rs hl s hs hP hgood
  rw [guestCtx_code] at hl
  obtain ⟨rfl, _, _⟩ := lookupCode_zero code_d0 hl
  obtain ⟨Γ, p, hG, hp, ⟨⟨fs, hch, hE⟩, _⟩, hJ⟩ := hP.2
  obtain ⟨e, c, rest, hfs, _, _, _⟩ := hch.chain
  have hk : KP HJ gwJ Γ s p fs e (fld s.memory e 112) s :=
    ⟨hJ, Γ, p, runT_refl hG hp, hch, hE, le_refl _, rfl⟩
  exact authorizationDepthBody_cost teHook_proved raH_proved setCodeH_proved hfs hk s hs rfl hgood

#print axioms authorizationDepth_cost

end AuthorizationBothProof
