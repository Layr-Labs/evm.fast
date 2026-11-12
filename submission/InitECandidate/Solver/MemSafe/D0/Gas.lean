import InitECandidate.Solver.MemSafe.D0.Kq
import InitECandidate.Solver.MemSafe.Frames.StateGasSum
import InitECandidate.Solver.MemSafe.Frames.EvSum
import InitECandidate.Solver.MemSafe.Frames.GasCode
import InitECandidate.Solver.MemSafe.Frames.GChkJL
import InitECandidate.Solver.MemSafe.Frames.CreateFin

/-!
# `charge_state_gas` with its exact footprint, and `charge_gas` / `charge_state_gas` in the `KP` form

* `csg_evSpec`: `SumSpec … "charge_state_gas" sg1n (EvRun) (PWrun tEV [8, 9, 24]) Q` with the exact
  three outcomes `CsgCase` (cf. `charge_evSpec`).
* `hoareG_kp_charge`, `hoareG_kp_csg`: `charge_gas(x);` / `charge_state_gas(x);` from a `KP` state.
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

variable {σ : Type} {X : Ctx 64}

/-- **`charge_state_gas` with its exact footprint.** -/
theorem csg_evSpec {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hC : X.code.lookup = guestCode)
    (hF : FrameCfg C H tEV tCK) :
    SumSpec σ X C H (nm "charge_state_gas") sg1n (fun _ s Γ => ∃ e, EvRun tEV Γ s e)
      (PWrun tEV [8, 9, 24])
      (fun vs s Γ r t Γ' => Γ' = Γ ∧ ptrsOf t = ptrsOf s ∧ t.globals = s.globals ∧
        ∃ e a, gword s nmEv = some e ∧ vs = [.val (.word a)] ∧ CsgCase s.memory e a r t.memory) := by
  refine FunSpec.mono (FunSpec.and (csg_spec hC) (funSpec_dom _)) ?_
  intro vs s r t ⟨hE, hd, hbe⟩ hg Γ hG _ ⟨oe, hoe, hoet, hoeb⟩
  obtain ⟨e, a, rfl, he, hglob, hcase⟩ := hE hg
  have ⟨p, hps, _, hL, _⟩ := hG
  rw [hoeb, Option.some.injEq] at he
  subst he
  let R : BitVec 64 → Prop := fun x => x = oe.cell 8 ∨ x = oe.cell 9 ∨ x = oe.cell 24
  have hsafe : SafeCells C H Γ s R := by
    rintro x (rfl | rfl | rfl)
    · exact safe_ev hF hL hoe hoet (j := 8) (by simp [evDriverSlots]) rfl
    · exact safe_ev hF hL hoe hoet (j := 9) (by simp [evDriverSlots]) rfl
    · exact safe_ev hF hL hoe hoet (j := 24) (by simp [evDriverSlots]) rfl
  have hRW : ∀ x, R x → ProtCell C Γ x → PWrun tEV [8, 9, 24] [.val (.word a)] s Γ x := by
    rintro x hx -
    refine ⟨oe, ⟨hoe, hoet, hoeb⟩, ?_⟩
    rcases hx with rfl | rfl | rfl
    · exact ⟨8, by simp, rfl⟩
    · exact ⟨9, by simp, rfl⟩
    · exact ⟨24, by simp, rfl⟩
  have hmod : ModifiesOnly R s.memory t.memory := by
    rcases hcase with ⟨-, -, hm⟩ | ⟨-, -, -, hm⟩ | ⟨-, -, -, hm⟩
    · rw [hm]
      exact modifiesOnly_upd (modifiesOnly_refl _ _) (Or.inr (Or.inl rfl)) _
    · rw [hm]; unfold csgMem
      exact modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_refl _ _)
        (Or.inr (Or.inl rfl)) _) (Or.inl rfl) _) (Or.inr (Or.inr rfl)) _
    · rw [hm]; exact modifiesOnly_refl _ _
  exact ⟨Γ, p, p, sumCore_local hF.hooks rfl hG hps hsafe hRW hmod hglob hd hbe,
    rfl, ptrsOf_congr hglob, hglob, oe.base, a, hoeb, rfl, hcase⟩

theorem csg_fp : KeepsFp σ guestCtx (nm "charge_state_gas") := Wire.keepsFp_guest (by decide_cbv)

/-- The footprint `PWrun ks` (`ks ⊆ {8, 9, 23, 24}`, all EV slots) lies in `PWtopM ks`. -/
theorem pwrun_topM {ks : List Nat} (hk8 : ∀ k ∈ ks, 8 * k + 8 ≤ 280) {vs : List (ValueHOL 64)}
    {s : State σ} {Γ : Gam} {a : BitVec 64} (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ s)
    (hw : PWrun tEV ks vs s Γ a) : PWtopM tEV tCK ks vs s Γ a := by
  obtain ⟨e', ⟨he', het', heb'⟩, k, hk, ha⟩ := hw
  subst ha
  obtain ⟨q, -, hord, hL, -⟩ := id hG
  have hsz := ev_size (Hooks.frameCfg_guestHooksR (σ := σ)) hL he' het'
  exact ⟨Or.inl ⟨e', ⟨he', het', heb'⟩, k, hk, rfl⟩,
    noMsg_of_ty hL he' (by rw [het']; decide) (inO_cell hord hL he' (by have := hk8 k hk; omega))⟩

section kpg
local notation "HJ" => (Hooks.guestHooksR (σ := σ))

/-- **`charge_gas(x);` from a `KP` state.** -/
theorem hoareG_kp_charge {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64} (hfs : fs = (e, c) :: rest)
    {u0 : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u0) {x : ExpHOL 64} :
    HoareG σ guestCtx (fun t => t = u0) (callD (nm "charge_gas") [x])
      (PS (KP HJ gw Γ0 s0 p0 fs e mg) u0.locals) := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have he := kp_ev_head hfs hu
  refine hoareG_kpCallD hF hfs (sumSpecA_of_sumSpec (charge_evSpec (σ := σ) guestCtx_code hF))
    charge_fp (by simp [sg1n]) (by simp [sg1n]) (by simp [sg1n, jrOut_iff]) (ks := [8, 23])
    (by decide) hu ?_ ?_ (Or.inr ?_)
  · intro vs hvs Γ1 p1 hp hG hL hE
    have hvs1 := evs_one hvs
    obtain ⟨o, ⟨ho, hot, hob⟩, hoe⟩ := evRun_of_chainL (hfs ▸ hL)
    refine ⟨argsOK_any (by simp [sg1n]) (by rw [evs_len hvs]; rfl), fun callee => ⟨o, ho, hot, ?_⟩⟩
    rw [hoe]; exact he
  · intro vs callee Γ1 a hG hp hw
    exact pwrun_topM (by decide) hG hw
  · intro vs callee Γ1 r st Γ2 hq
    obtain ⟨-, -, -, e', a, he', -, hcase⟩ := hq
    have he'' : e' = e := Option.some.inj (he'.symm.trans he)
    subst he''
    rcases hcase with ⟨-, -, hm⟩ | ⟨-, hle, hm⟩
    · rw [hm]; exact le_refl _
    · rw [hm]; exact gs_charge hle

/-- **`charge_state_gas(x);` from a `KP` state.** -/
theorem hoareG_kp_csg {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64} (hfs : fs = (e, c) :: rest)
    {u0 : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u0) {x : ExpHOL 64} :
    HoareG σ guestCtx (fun t => t = u0) (callD (nm "charge_state_gas") [x])
      (PS (KP HJ gw Γ0 s0 p0 fs e mg) u0.locals) := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have he := kp_ev_head hfs hu
  refine hoareG_kpCallD hF hfs (sumSpecA_of_sumSpec (csg_evSpec (σ := σ) guestCtx_code hF))
    csg_fp (by simp [sg1n]) (by simp [sg1n]) (by simp [sg1n, jrOut_iff]) (ks := [8, 9, 24])
    (by decide) hu ?_ ?_ (Or.inr ?_)
  · intro vs hvs Γ1 p1 hp hG hL hE
    obtain ⟨o, ⟨ho, hot, hob⟩, hoe⟩ := evRun_of_chainL (hfs ▸ hL)
    refine ⟨argsOK_any (by simp [sg1n]) (by rw [evs_len hvs]; rfl), fun callee => ⟨o, ho, hot, ?_⟩⟩
    rw [hoe]; exact he
  · intro vs callee Γ1 a hG hp hw
    exact pwrun_topM (by decide) hG hw
  · intro vs callee Γ1 r st Γ2 hq
    obtain ⟨-, -, -, e', a, he', -, hcase⟩ := hq
    have he'' : e' = e := Option.some.inj (he'.symm.trans he)
    subst he''
    exact gs_csg hcase

end kpg

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.csg_evSpec
#print axioms InitECandidate.Solver.MemSafe.D0.hoareG_kp_charge
#print axioms InitECandidate.Solver.MemSafe.D0.hoareG_kp_csg
