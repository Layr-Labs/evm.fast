import InitECandidate.Solver.MemSafe.D0.AuthorizationPrefix
import InitECandidate.Solver.MemSafe.D0.Sd12

/-!
# `set_delegation`: conditional cost of the authorization callee
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

def authorizationDelegationPrice : Nat :=
  1 + 12 + (340282366920938464441052043338374447207 +
    (1 + 0 + (340282366920938464441052043338374447207 + (1 + 12 + authorizationLoopPrice))))

section
local notation "HJ" => (Hooks.guestHooksR (σ := σ))
local notation "gwJ" => [Hooks.gJn]
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
  {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}

/-- Stage `var written = htab_new(20, 8); …`. -/
theorem authorizationS0_cost {tE : Nat} (hTE : TeHook σ tE) (hRA : RaH σ) (hSC : SetCodeH σ)
    (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gwJ Γ0 s0 p0 fs e mg u0) {T Bv : BitVec 64}
    (hl : LA u0.locals [(nm "benv", .val (.word Bv)), (nm "te", .val (.word T)),
      (nm "msg", .val (.word mg))])
    (hT : ∃ x ∈ Γ0, x.base = T ∧ x.ty = tE) :
    Inv.CostP σ guestCtx (fun t => t = u0)
      (.decCall (nm "written") .one (nm "htab_new") [cw 20, cw 8]
        (.seq (callD (nm "htab_set") [lv (nm "written"), lLoad "te" 0, cw 1])
          (.decCall (nm "vz") .one (nm "u256_is_zero")
            [.load (.comb [.one, .one, .one, .one]) (.op .add [lv (nm "te"), cw 16])]
            (.seq (.ite (.cmp .equal (lv (nm "vz")) (cw 0))
                (callD (nm "htab_set") [lv (nm "written"), lLoad "msg" 32, cw 1]) .skip)
              (.decCall (nm "set_for") .one (nm "htab_new") [cw 20, cw 8]
                (.dec (nm "auths") .one (lLoad "te" 144)
                  (.dec (nm "n") .one (lLoad "te" 152) (.dec (nm "i") .one (cw 0) sdLoop))))))))
      authorizationDelegationPrice := by
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
    obtain ⟨W, rfl⟩ := val_of_shapeEq_one' hsh
    obtain ⟨hJ, Γ2, p2, hrun, hch, hE, hΦ, h112, Γ1', hQ, hp2⟩ := hst
    have hG2 := hrun.2.2.2.2.2.1
    have hFW : Fits Γ2 (.ptr tHTh20) W := hQ W rfl
    have hu2 : KP HJ gwJ Γ2 st p2 fs e mg st :=
      ⟨hJ, Γ2, p2, runT_refl hG2 hrun.2.1, hch, hE, le_refl _, h112⟩
    have hu2s := kp_locals hH hu2 (setVarHOLFinite (nm "written") (.val (.word W))
      { st with locals := u0.locals }).locals
    have hl2 := la_set (s := st) hl (nm "written") (.val (.word W))
    obtain ⟨x, hx, hxb, hxt⟩ := hT
    obtain ⟨x', hx', hb', ht', -⟩ := hrun.2.2.2.1 x hx
    exact authorizationS1_cost hTE hRA hSC hfs hu2s hl2 hFW ⟨x', hx', hb'.trans hxb, ht'.trans hxt⟩

/-- Stage `var te = msg[MSG_TE]; var benv = msg[MSG_BE]; …`. -/
theorem authorizationS00_cost {tE : Nat} (hTE : TeHook σ tE) (hRA : RaH σ) (hSC : SetCodeH σ)
    (hfs : fs = (e, c) :: rest) {u0 : State σ}
    (hu : KP HJ gwJ Γ0 s0 p0 fs e mg u0)
    (hl : LA u0.locals [(nm "msg", .val (.word mg))]) :
    Inv.CostP σ guestCtx (fun t => t = u0)
      (.dec (nm "te") .one (lLoad "msg" 8)
        (.dec (nm "benv") .one (lLoad "msg" 0)
          (.decCall (nm "written") .one (nm "htab_new") [cw 20, cw 8]
            (.seq (callD (nm "htab_set") [lv (nm "written"), lLoad "te" 0, cw 1])
              (.decCall (nm "vz") .one (nm "u256_is_zero")
                [.load (.comb [.one, .one, .one, .one]) (.op .add [lv (nm "te"), cw 16])]
                (.seq (.ite (.cmp .equal (lv (nm "vz")) (cw 0))
                    (callD (nm "htab_set") [lv (nm "written"), lLoad "msg" 32, cw 1]) .skip)
                  (.decCall (nm "set_for") .one (nm "htab_new") [cw 20, cw 8]
                    (.dec (nm "auths") .one (lLoad "te" 144)
                      (.dec (nm "n") .one (lLoad "te" 152)
                        (.dec (nm "i") .one (cw 0) sdLoop))))))))))
      authorizationDelegationPrice := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  obtain ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, h112⟩ := hu
  have hG1 := hrun.2.2.2.2.2.1
  have hp1 := hrun.2.1
  have hu1 : KP HJ gwJ Γ1 u0 p1 fs e mg u0 :=
    ⟨hJ, Γ1, p1, runT_refl hG1 hp1, hch, hE, le_refl _, h112⟩
  have hTo := te_obj hTE hfs hu1 hG1 hp1 hE
  have hmsg : u0.locals.lookup (nm "msg") = some (.val (.word mg)) := la_lookup hl rfl
  refine Inv.costP_dec fun s _ hs v hv _ => ?_
  subst s
  have hvT := ev_lLoad_eq hmsg hv
  subst hvT
  set T := fld u0.memory mg 8 with hTd
  have hu2 := kp_locals hH hu1 (setVarHOLFinite (nm "te") (.val (.word T)) u0).locals
  have hl2 := la_set (s := u0) hl (nm "te") (.val (.word T))
  set u2 := setVarHOLFinite (nm "te") (.val (.word T)) u0 with hu2d
  have hmsg2 : u2.locals.lookup (nm "msg") = some (.val (.word mg)) := la_lookup hl2 rfl
  refine Inv.costP_dec fun s _ hs v hv _ => ?_
  subst s
  have hvB := ev_lLoad_eq hmsg2 hv
  subst hvB
  set Bv := fld u2.memory mg 0 with hBd
  have hu3 := kp_locals hH hu2 (setVarHOLFinite (nm "benv") (.val (.word Bv)) u2).locals
  have hl3 := la_set (s := u2) hl2 (nm "benv") (.val (.word Bv))
  exact authorizationS0_cost hTE hRA hSC hfs hu3 hl3 hTo

/-- **The body of `set_delegation`**: on every non-abortive result, `KP`. -/
theorem authorizationBody_cost {tE : Nat} (hTE : TeHook σ tE) (hRA : RaH σ) (hSC : SetCodeH σ)
    (hfs : fs = (e, c) :: rest) (hs0 : KP HJ gwJ Γ0 s0 p0 fs e (fld s0.memory e 112) s0) :
    Inv.CostP σ guestCtx (fun u => u = s0) sdBody authorizationDelegationPrice := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  set mg := fld s0.memory e 112 with hmg
  have he0 : gword s0 nmEv = some e := by
    obtain ⟨-, Γ1, p1, -, hch, -⟩ := hs0
    exact ev_head (hfs ▸ hch)
  rw [sdBody_eq]
  unfold sdBodyX
  refine Inv.costP_dec fun s _ hs vm hvm _ => ?_
  subst s
  obtain ⟨rfl, -⟩ := ev_gLoad_eq he0 hvm
  have hu1 := kp_locals hH hs0 (setVarHOLFinite (nm "msg") (.val (.word mg)) s0).locals
  have hl1 : LA (setVarHOLFinite (nm "msg") (.val (.word mg)) s0).locals
      [(nm "msg", .val (.word mg))] := fun x v hx => by
    simp only [List.lookup] at hx
    by_cases hxn : x == nm "msg"
    · simp only [hxn] at hx
      have : x = nm "msg" := by simpa using hxn
      subst this; rw [← Option.some.inj hx]; exact lk_set_self _ _ _
    · simp [hxn] at hx
  exact authorizationS00_cost hTE hRA hSC hfs hu1 hl1

end

def AuthorizationPre {σ : Type} (fs : List Frame) (vs : List (ValueHOL 64)) (s : State σ) : Prop :=
  ∃ Γ, G guestC (Hooks.guestHooksR (σ := σ)) Γ s ∧ SdPre fs vs s Γ

theorem authorizationCallee_cost {tE : Nat} (hTE : TeHook σ tE) (hRA : RaH σ) (hSC : SetCodeH σ)
    (fs : List Frame) :
    Inv.CalleeCostP σ guestCtx (nm "set_delegation") (AuthorizationPre fs) authorizationDelegationPrice := by
  intro vs body callee rs hl s hctx hpre hgood
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_zero code_sd hl
  obtain ⟨Γ, hG, _, hch, hE, hJ⟩ := hpre.2
  have ⟨p, hps, _⟩ := hG
  obtain ⟨e, c, rest, hfs, _, _, _⟩ := hch.chain
  have hk : KP (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ s p fs e (fld s.memory e 112) s :=
    ⟨hJ, Γ, p, runT_refl hG hps, hch, hE, le_refl _, rfl⟩
  exact authorizationBody_cost hTE hRA hSC hfs hk s hctx rfl hgood

#print axioms authorizationCallee_cost

end InitECandidate.Solver.MemSafe.D0
