import InitECandidate.Solver.MemSafe.D0.Alloc24

/-!
# `alloc(24)` with an `Abn` abnormal end (for loop bodies)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

section
local notation "HJ" => (Hooks.guestHooksR (σ := σ))

/-- **`var rn = alloc(24); k`** from a `KP` state; `hab` knows the abnormal end is `Abn`. -/
theorem hoareG_kp_alloc24n {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64} (hfs : fs = (e, c) :: rest)
    {u0 : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u0) {rn : MlS} {k : ProgHOL 64}
    {Qk : Option (PanSemResultExact 64) → State σ → Prop}
    (hk : ∀ (q : BitVec 64) (st : State σ),
      KPd HJ gw Γ0 s0 p0 fs e mg st (fun Γ2 p2 => ∃ (Γ1 : Gam) (p1 : Ptrs), FreshB Γ2 q ∧ q.toNat % 8 = 0) →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite rn (.val (.word q)) { st with locals := u0.locals }) k
        (fun r t => Qk r { t with locals := t.locals.resVarEq (rn, u0.locals.lookup rn) }))
    (hab : ∀ (r : PanSemResultExact 64) (t : State σ), Abn r →
      (¬ Abortive r → KP HJ gw Γ0 s0 p0 fs e mg t) → Qk (some r) t) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn .one (nm "alloc") [cw 24] k) Qk := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hH := hF.hooks
  have hFo := Rec.foldOK_guestR (σ := σ)
  have hM : HooksMono guestC HJ := Hooks.drvCfg_guestHooksR.mono
  have hAG : Struct.AllocG guestC := ⟨fun g hg => (hFo.hAC g hg).1, fun g hg => (hFo.hAC g hg).2⟩
  have hRd : RdHooks HJ := Hooks.rdHooks_guestR
  have hsg : ∀ g, g ∈ (⟨[.any], [], [], true⟩ : Sig).gw → g ∈ gw := fun g h => by simp at h
  have hgw : nmEv ∉ (⟨[.any], [], [], true⟩ : Sig).gw ∧ nmCC ∉ (⟨[.any], [], [], true⟩ : Sig).gw :=
    by simp
  have hgJ : JrOut (⟨[.any], [], [], true⟩ : Sig).gw := by simp [jrOut_iff]
  have hglob : ∀ (callee : Locs) (st : State σ), (∀ g, g ≠ Region.heap.global →
      st.globals.lookup g = (callEntryStateHOLFinite u0 callee).globals.lookup g) →
      st.globals.lookup gFrame = (callEntryStateHOLFinite u0 callee).globals.lookup gFrame :=
    fun callee st h => h gFrame (by decide)
  refine hoareG_decCall (FunSpec.and (allocSpec_alloc guestCtx_code) (funSpec_dom _)) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hAl, hd, hbe⟩ _ _
    subst s
    rw [evs_cons (ev_cw _ 24) evs_nil] at hvs
    cases hvs
    obtain ⟨-, Γa, pa, hruna, -⟩ := id hu
    have hpa := hruna.2.1
    have hpe : ptrsOf (callEntryStateHOLFinite u0 callee) = some pa := by
      rw [show ptrsOf (callEntryStateHOLFinite u0 callee) = ptrsOf u0 from Frames.ptrsOf_congr rfl]
      exact hpa
    obtain ⟨qa, hqa, hordp, -⟩ := hruna.2.2.2.2.2.1
    obtain rfl : pa = qa := (Option.some.inj (hqa.symm.trans hpa)).symm
    obtain ⟨hm, hgl, p', hp', hord', hmo, hret⟩ := hAl (by simp [Good]) _ pa rfl hpe hordp
    obtain ⟨q, rfl, hq8, hlive, hna⟩ := hret _ rfl
    have h24 : (BitVec.ofNat 64 24).toNat = 24 := by decide
    rw [h24] at hlive hna
    have hKP := kp_step_coreF hF hfs hgw hgJ (ks := []) (by simp) hu (vs := [.val (.word (BitVec.ofNat 64 24))])
      (callee := callee) (r := .returned (.val (.word q))) (st := st) (hglob callee st hgl)
      (Fx := fun _ _ Γ2 p2 => FreshB Γ2 q ∧ q.toNat % 8 = 0) ?_
    · exact hk q st hKP
    · intro Γ1 p1 hrun1 hch1 hE1
      have hG1 := hrun1.2.2.2.2.2.1
      have hp1 := hrun1.2.1
      obtain rfl : pa = p1 := (Option.some.inj (hp1.symm.trans hpa)).symm
      have hGe : G guestC HJ Γ1 (callEntryStateHOLFinite u0 callee) := (G_locFree hH u0 _ _).mpr hG1
      have hT0 := Struct.trk_refl (C := guestC) (H := HJ) (Γ0 := Γ1)
        (s0 := callEntryStateHOLFinite u0 callee) (p0 := pa) (PW := fun _ => False) hGe hpe
      have hT' := Struct.trk_alloc_obj (ty := tB8) (n := 24) (rg := .heap) hH hM hAG hT0 rfl rfl hpe
        hm hgl hp' hord' hmo hd hbe hq8 (by omega) (by omega) (by decide) rfl hlive
        (fun a h1 h2 => hna a h1 (by omega)) b8_scalar (by decide)
        (fun Γ s o h => hRd.b8 Γ s o h)
      obtain ⟨p2, hp2, hord2, hL2⟩ := Struct.trk_ptrs hT'
      obtain rfl : p2 = p' := Option.some.inj (hp2.symm.trans hp')
      obtain ⟨pp, hc⟩ := Struct.trk_sumCore (sg := ⟨[.any], [], [], true⟩)
        (PWs := fun a => ProtCell guestC Γ1 a ∧ False) (vs := [.val (.word (BitVec.ofNat 64 24))])
        (r := .returned (.val (.word q))) hT' hpe (fun a h => absurd h id) (fun h => by cases h)
        (fun p hp v hv => by intro i r w hr; simp at hr)
      obtain rfl : pp = p2 := Option.some.inj (hc.2.1.symm.trans hp2)
      refine ⟨_, pp, ?_, runT_trans hrun1 (runT_of_sumCore (gw := gw) hsg hc
        (bkeep_of_sumCore_any hGe (by intro pt h; simp at h; exact h) hc (fun a h => absurd h.2 id))),
        argsOK_any (by simp) rfl, fun _ _ _ _ => False, hc, fun a _ h => h.elim, Or.inl rfl⟩
      exact ⟨⟨⟨q, tB8, 24⟩, List.mem_append_right _ (List.mem_singleton_self _), rfl, rfl, le_refl _⟩, hq8⟩
  · intro s _ hs vs hvs callee r st ⟨hAl, hd, hbe⟩ _ habn
    subst s
    rw [evs_cons (ev_cw _ 24) evs_nil] at hvs
    cases hvs
    refine hab r _ habn fun hna => ?_
    obtain ⟨-, Γa, pa, hruna, -⟩ := id hu
    have hpa := hruna.2.1
    have hpe : ptrsOf (callEntryStateHOLFinite u0 callee) = some pa := by
      rw [show ptrsOf (callEntryStateHOLFinite u0 callee) = ptrsOf u0 from Frames.ptrsOf_congr rfl]
      exact hpa
    obtain ⟨qa, hqa, hordp, -⟩ := hruna.2.2.2.2.2.1
    obtain rfl : pa = qa := (Option.some.inj (hqa.symm.trans hpa)).symm
    obtain ⟨hm, hgl, p', hp', hord', hmo, -⟩ := hAl (good_of_abn habn) _ pa rfl hpe hordp
    refine kp_locals hH (kp_step_core hF hfs hgw hgJ (ks := []) (by simp) hu
      (vs := [.val (.word (BitVec.ofNat 64 24))]) (callee := callee) (r := r) (st := st)
      (hglob callee st hgl) ?_) _
    intro Γ1 p1 hrun1 hch1 hE1
    have hG1 := hrun1.2.2.2.2.2.1
    have hp1 := hrun1.2.1
    obtain rfl : pa = p1 := (Option.some.inj (hp1.symm.trans hpa)).symm
    have hGe : G guestC HJ Γ1 (callEntryStateHOLFinite u0 callee) := (G_locFree hH u0 _ _).mpr hG1
    have hT0 := Struct.trk_refl (C := guestC) (H := HJ) (Γ0 := Γ1)
      (s0 := callEntryStateHOLFinite u0 callee) (p0 := pa) (PW := fun _ => False) hGe hpe
    have hT' := Struct.trk_alloc hH hAG hT0 rfl rfl hpe hm hgl hp' hord' hmo hd hbe
    obtain ⟨pp, hc⟩ := Struct.trk_sumCore (sg := ⟨[.any], [], [], true⟩)
      (PWs := fun a => ProtCell guestC Γ1 a ∧ False) (vs := [.val (.word (BitVec.ofNat 64 24))])
      (r := r) hT' hpe (fun a h => absurd h id) (fun h => by cases h)
      (fun p hp v hv => absurd hv (Struct.abn_ne_ret habn v))
    exact ⟨Γ1, pp, runT_trans hrun1 (runT_of_sumCore (gw := gw) hsg hc
        (bkeep_of_sumCore_any hGe (by intro pt h; simp at h; exact h) hc (fun a h => absurd h.2 id))),
      argsOK_any (by simp) rfl, fun _ _ _ _ => False, hc, fun a _ h => h.elim, Or.inl rfl⟩

end

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.hoareG_kp_alloc24n
