import InitECandidate.Solver.MemSafe.D0.Kc
import InitECandidate.Solver.MemSafe.D0.D0Code2
import InitECandidate.Solver.MemSafe.D0.Sd12

/-!
# `depth0_prepare`: the authorization branch (`d0A`)

`set_delegation(); var used = frame_state_gas_used(ev); st ev + 200, used; st msg + 48, ev[72];
st ev + 192, 0`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.Wire

variable {σ : Type}

theorem fsgu_kp : KpSpec σ (nm "frame_state_gas_used") ⟨[.any], [], [], false⟩ :=
  sumSpecA_caps (cs := []) (by exact ctab% tabJL_guestR) (by decide) (by decide)

theorem fsgu_fp : KeepsFp σ guestCtx (nm "frame_state_gas_used") := keepsFp_guest (by decide_cbv)

section
local notation "HJ" => (Hooks.guestHooksR (σ := σ))
local notation "gwJ" => [Hooks.gJn]
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
  {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64}

theorem d0_A {tE : Nat} (hTE : TeHook σ tE) (hRA : RaH σ) (hSC : SetCodeH σ) (hRec : RecNoMsg σ)
    (hfs : fs = (e, c) :: rest) {u0 : State σ} (hu : KP HJ gwJ Γ0 s0 p0 fs e mg u0) {T : BitVec 64}
    (hl : LA u0.locals [(nm "te", .val (.word T)), (nm "msg", .val (.word mg))]) :
    HoareG σ guestCtx (fun t => t = u0) d0A
      (PLQ (KP HJ gwJ Γ0 s0 p0 fs e mg)
        (fun L => LA L [(nm "te", .val (.word T)), (nm "msg", .val (.word mg))])) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  have h112 : fld u0.memory e 112 = mg := hu.2.choose_spec.choose_spec.2.2.2.2
  unfold d0A
  refine plq_seq_ps (Pl := fun L => LA L [(nm "te", .val (.word T)), (nm "msg", .val (.word mg))])
    (hoareG_kpCallT (sd_sumSpec hTE hRA hSC fs) (fun g h => h) hu ?_ ?_) fun u1 hk1 hl1 => ?_
  · intro vs hvs Γ1 p1 hr hp hG hL hE
    rw [evs_zero hvs]
    refine ⟨⟨rfl, fun i pt v h => by simp [sg0] at h⟩, fun callee => ⟨rfl, ?_, ?_, jrNZ_congr rfl hu.1⟩⟩
    · exact chainL_congr (s := u0) (s' := callEntryStateHOLFinite u0 callee) rfl rfl hL
    · exact chainE_congr (s := u0) (s' := callEntryStateHOLFinite u0 callee) rfl rfl hE
  · intro vs callee Γ1 r st Γ2 hq hna
    obtain ⟨c1, c2, c3, c4, c5⟩ := hq hna
    refine ⟨c1, c2, ?_, c4, ?_⟩
    · rw [phi_locFree.entry] at c3; exact c3
    · rw [c5 e c rest hfs]; exact h112
  have hl1' : LA u1.locals [(nm "te", .val (.word T)), (nm "msg", .val (.word mg))] := by
    rw [hl1]; exact hl
  have g := sgOK0 (sg := (⟨[.any], [], [], false⟩ : Sig)) (gw := gwJ) rfl
  refine plq_decCall hfs fsgu_kp fsgu_fp g.1 g.2.1 g.2.2 hk1 (hargs_any (by simp) rfl hk1)
    (fun _ _ _ _ _ _ h => h) (fun L o hL => la_res hL rfl o) ?_
  intro vs callee hvs v st hst hsh
  obtain ⟨uv, rfl⟩ := val_of_shapeEq_one' hsh
  have hu2 := kp_locals hH (kp_of_kpd hst) (setVarHOLFinite (nm "used") (.val (.word uv))
    { st with locals := u1.locals }).locals
  have hl2 := la_set (s := st) hl1' (nm "used") (.val (.word uv))
  set u2 := setVarHOLFinite (nm "used") (.val (.word uv)) { st with locals := u1.locals } with hu2d
  have hused : u2.locals.lookup (nm "used") = some (.val (.word uv)) := lk_set_self _ _ _
  refine plq_seq_ps (Pl := fun L => LA L [(nm "te", .val (.word T)), (nm "msg", .val (.word mg))])
    (hoareG_kpStEvN hfs hu2 (off := 200) (Or.inr (Or.inr (Or.inr rfl)))
      (fun v hv => hx_lv hused hv)) fun u3 hk3 hl3 => ?_
  have hl3' : LA u3.locals [(nm "te", .val (.word T)), (nm "msg", .val (.word mg))] := by
    have : LA u3.locals ((nm "used", .val (.word uv)) :: [(nm "te", .val (.word T)), (nm "msg", .val (.word mg))]) := by
      rw [hl3]; exact hl2
    exact la_drop this rfl
  have hmsg3 : u3.locals.lookup (nm "msg") = some (.val (.word mg)) := la_lookup hl3' rfl
  have he3 := kp_ev_head hfs hk3
  refine plq_seq_ps (Pl := fun L => LA L [(nm "te", .val (.word T)), (nm "msg", .val (.word mg))])
    (hoareG_kpStMsgN hRec hfs hk3 hmsg3 (off := 48) (Or.inl rfl) ?_) fun u4 hk4 hl4 => ?_
  · intro v hv
    obtain ⟨hv', -⟩ := ev_gLoad_eq he3 hv
    exact ⟨_, hv'⟩
  have hl4' : LA u4.locals [(nm "te", .val (.word T)), (nm "msg", .val (.word mg))] := by
    rw [hl4]; exact hl3'
  exact plq_ps hl4' (hoareG_kpStSpill0N hfs hk4 (ev_cw u4 0))

end

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.d0_A
