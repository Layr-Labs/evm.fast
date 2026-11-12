import InitECandidate.Solver.MemSafe.Stor3.Env
import InitECandidate.Solver.MemSafe.Frames.GcrSteps
import InitECandidate.Solver.MemSafe.Frames.StateGasSum

set_option autoImplicit false

/-!
# `charge_state_gas` / `credit_state_gas_refund` as `GK` steps (sonnet-store3)

`gcr_csg` / `gcr_credit` (frames10, on `KG`) transposed to `GK`, with an arbitrary amount
expression whose value is a word: the step is confined to the running frame's driver cells
(`kg_top`), `Φ` is not raised and the active bit is kept (the `QGasN` post of the summary).
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Stor3
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-- A step confined to the driver cells keeps `GK` when `Φ` does not rise and the active bit is kept. -/
theorem gk_topstep {H : Hooks σ} (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam}
    {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame}
    (hfs : fs = (e, c) :: rest) {d : Nat} {u : State σ} (hu : GK H gw Γ0 s0 p0 fs d u)
    {t : State σ} (hmod : ModifiesOnly (TopCells e c) u.memory t.memory)
    (hglob : t.globals = u.globals) (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be)
    (hΦ : Phi t ≤ Phi u) (hact : act t = act u) : GK H gw Γ0 s0 p0 fs d t := by
  obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE⟩, hΦ0, hact0⟩ := hu
  obtain ⟨hrun', hch', hE', -⟩ := kg_top hF hfs hrun hch hE hmod hglob hd hbe
  refine ⟨⟨jrNZ_congr hglob hJ, Γ1, p1, hrun', hch', hE'⟩, by omega, ?_⟩
  rw [hact]
  rcases hact0 with h | h
  · exact Or.inl h
  · exact Or.inr (by omega)

/-- **`charge_state_gas(x)`** on a `GK` state (`x` evaluates to a word). -/
theorem hl_csg {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e c : BitVec 64} {rest : List Frame} (hfs : fs = (e, c) :: rest) {x : ExpHOL 64} {b : Bool}
    {u0 : State σ} (hu : GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs (bd b) u0) :
    HoareG σ guestCtx (fun t => t = u0) (callD (nm "charge_state_gas") [x])
      (HL (GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs) b u0.locals) := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hH := hF.hooks
  have hK := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hH (gw := gw) (Γ0 := Γ0)
    (s0 := s0) (p0 := p0) (fs := fs)
  have he := gk_gword hfs hu
  have key : ∀ vs callee r (st : State σ),
      SumRelX guestC (Hooks.guestHooksR (σ := σ)) (sg1 []) (fun _ s Γ => Chain guestC tEV tCK Γ s)
        (fun _ s Γ a => ProtCell guestC Γ a ∧ ¬ KCell guestC Γ a) (QGasN guestC tEV tCK) vs
        (callEntryStateHOLFinite u0 callee) r st →
      (Good (some r) → ∃ e' a, vs = [.val (.word a)] ∧
        gword (callEntryStateHOLFinite u0 callee) nmEv = some e' ∧
        st.globals = (callEntryStateHOLFinite u0 callee).globals ∧
        CsgCase (callEntryStateHOLFinite u0 callee).memory e' a r st.memory) →
      st.memaddrs = (callEntryStateHOLFinite u0 callee).memaddrs →
      st.be = (callEntryStateHOLFinite u0 callee).be →
      Good (some r) → ¬ Abortive r → GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs (bd b) st := by
    intro vs callee r st hR hE hd hbe hg hna
    have hue : GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs (bd b) (callEntryStateHOLFinite u0 callee) :=
      hK.congr _ u0 _ hu rfl rfl rfl rfl
    obtain ⟨e', a, rfl, he', hglob, hcase⟩ := hE hg
    have he1 : e' = e := by
      have : gword u0 nmEv = some e' := he'
      rw [he] at this; exact (Option.some.inj this).symm
    subst he1
    have hmod : ModifiesOnly (TopCells e' c) (callEntryStateHOLFinite u0 callee).memory st.memory := by
      rcases hcase with ⟨_, _, hm⟩ | ⟨_, _, _, hm⟩ | ⟨_, _, _, hm⟩
      · rw [hm]
        exact modifiesOnly_upd (modifiesOnly_refl _ _) (Or.inl ⟨9, by simp [evDriverSlots], rfl⟩) _
      · rw [hm]
        unfold csgMem
        refine modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_refl _ _) ?_ _)
          ?_ _) ?_ _
        · exact Or.inl ⟨9, by simp [evDriverSlots], rfl⟩
        · exact Or.inl ⟨8, by simp [evDriverSlots], rfl⟩
        · exact Or.inl ⟨24, by simp [evDriverSlots], rfl⟩
      · rw [hm]; exact modifiesOnly_refl _ _
    obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE1⟩, -, -⟩ := id hue
    have hG1 := hrun.2.2.2.2.2.1
    have hpe : ∃ p, ptrsOf (callEntryStateHOLFinite u0 callee) = some p ∧
        ArgsOK guestC Γ1 p (sg1 []).params [.val (.word a)] :=
      ⟨p1, hrun.2.1, argsOK_any (any_sg1 []) rfl⟩
    obtain ⟨Γ', -, -, -, -, hact, hΦ⟩ := hR hg hna Γ1 hG1 hpe ⟨fs, hch⟩
    exact gk_topstep hF hfs hue hmod hglob hd hbe hΦ hact
  refine hoareG_callD (R := fun vs s r t => SumRelX guestC (Hooks.guestHooksR (σ := σ)) (sg1 [])
      (fun _ s Γ => Chain guestC tEV tCK Γ s) (fun _ s Γ a => ProtCell guestC Γ a ∧ ¬ KCell guestC Γ a)
      (QGasN guestC tEV tCK) vs s r t ∧
      (Good (some r) → ∃ e' a, vs = [.val (.word a)] ∧ gword s nmEv = some e' ∧
        t.globals = s.globals ∧ CsgCase s.memory e' a r t.memory) ∧
      t.memaddrs = s.memaddrs ∧ t.be = s.be)
    (FunSpec.and (sumSpecA_relX (sumSpecA_of_sumSpec (csg_sumSpec guestCtx_code hF)))
      (FunSpec.and (csg_spec guestCtx_code) (funSpec_dom _))) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hR, hE, hd, hbe⟩ _
    subst hs
    have hk := key vs callee _ st hR hE hd hbe (by simp [Good]) (not_abortive_ret v)
    exact ⟨⟨fun _ => hK.congr _ st _ hk rfl rfl rfl rfl, fun r hr => by cases hr⟩, fun _ => rfl⟩
  · intro s _ hs vs hvs callee r st ⟨hR, hE, hd, hbe⟩ _ habn
    subst hs
    refine ⟨⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩, fun h0 => by cases h0⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    have hk := key vs callee r st hR hE hd hbe (good_of_abn habn) hna
    rw [rbd_abn habn]
    exact hK.congr _ st _ (hK.mono _ _ _ hk (Nat.zero_le _)) rfl rfl rfl rfl

/-- **`credit_state_gas_refund(x)`** on a `GK` state (`x` evaluates to a word). -/
theorem hl_credit {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e c : BitVec 64} {rest : List Frame} (hfs : fs = (e, c) :: rest) {x : ExpHOL 64} {b : Bool}
    {u0 : State σ} (hu : GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs (bd b) u0) :
    HoareG σ guestCtx (fun t => t = u0) (callD (nm "credit_state_gas_refund") [x])
      (HL (GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs) b u0.locals) := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hH := hF.hooks
  have hK := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hH (gw := gw) (Γ0 := Γ0)
    (s0 := s0) (p0 := p0) (fs := fs)
  have he := gk_gword hfs hu
  have key : ∀ vs callee r (st : State σ),
      SumRelX guestC (Hooks.guestHooksR (σ := σ)) (sg1 []) (fun _ s Γ => Chain guestC tEV tCK Γ s)
        (fun _ s Γ a => ProtCell guestC Γ a ∧ ¬ KCell guestC Γ a) (QGasN guestC tEV tCK) vs
        (callEntryStateHOLFinite u0 callee) r st →
      (Good (some r) → ∃ e' a, vs = [.val (.word a)] ∧
        gword (callEntryStateHOLFinite u0 callee) nmEv = some e' ∧
        r = .returned (.val (.word 0)) ∧ st.globals = (callEntryStateHOLFinite u0 callee).globals ∧
        st.memory = creditMem (callEntryStateHOLFinite u0 callee).memory e' a) →
      st.memaddrs = (callEntryStateHOLFinite u0 callee).memaddrs →
      st.be = (callEntryStateHOLFinite u0 callee).be →
      Good (some r) → ¬ Abortive r → GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs (bd b) st := by
    intro vs callee r st hR hE hd hbe hg hna
    have hue : GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs (bd b) (callEntryStateHOLFinite u0 callee) :=
      hK.congr _ u0 _ hu rfl rfl rfl rfl
    obtain ⟨e', a, rfl, he', hr, hglob, hm⟩ := hE hg
    have he1 : e' = e := by
      have : gword u0 nmEv = some e' := he'
      rw [he] at this; exact (Option.some.inj this).symm
    subst he1
    have hmod : ModifiesOnly (TopCells e' c) (callEntryStateHOLFinite u0 callee).memory st.memory := by
      rw [hm]
      unfold creditMem
      refine modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_refl _ _) ?_ _)
        ?_ _) ?_ _
      · exact Or.inl ⟨8, by simp [evDriverSlots], rfl⟩
      · exact Or.inl ⟨24, by simp [evDriverSlots], rfl⟩
      · exact Or.inl ⟨9, by simp [evDriverSlots], rfl⟩
    obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE1⟩, -, -⟩ := id hue
    have hG1 := hrun.2.2.2.2.2.1
    have hpe : ∃ p, ptrsOf (callEntryStateHOLFinite u0 callee) = some p ∧
        ArgsOK guestC Γ1 p (sg1 []).params [.val (.word a)] :=
      ⟨p1, hrun.2.1, argsOK_any (any_sg1 []) rfl⟩
    obtain ⟨Γ', -, -, -, -, hact, hΦ⟩ := hR hg hna Γ1 hG1 hpe ⟨fs, hch⟩
    exact gk_topstep hF hfs hue hmod hglob hd hbe hΦ hact
  refine hoareG_callD (R := fun vs s r t => SumRelX guestC (Hooks.guestHooksR (σ := σ)) (sg1 [])
      (fun _ s Γ => Chain guestC tEV tCK Γ s) (fun _ s Γ a => ProtCell guestC Γ a ∧ ¬ KCell guestC Γ a)
      (QGasN guestC tEV tCK) vs s r t ∧
      (Good (some r) → ∃ e' a, vs = [.val (.word a)] ∧ gword s nmEv = some e' ∧
        r = .returned (.val (.word 0)) ∧ t.globals = s.globals ∧
        t.memory = creditMem s.memory e' a) ∧
      t.memaddrs = s.memaddrs ∧ t.be = s.be)
    (FunSpec.and (sumSpecA_relX (sumSpecA_of_sumSpec (credit_sumSpec guestCtx_code hF)))
      (FunSpec.and (credit_spec guestCtx_code) (funSpec_dom _))) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hR, hE, hd, hbe⟩ _
    subst hs
    have hk := key vs callee _ st hR hE hd hbe (by simp [Good]) (not_abortive_ret v)
    exact ⟨⟨fun _ => hK.congr _ st _ hk rfl rfl rfl rfl, fun r hr => by cases hr⟩, fun _ => rfl⟩
  · intro s _ hs vs hvs callee r st ⟨hR, hE, hd, hbe⟩ _ habn
    subst hs
    refine ⟨⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩, fun h0 => by cases h0⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    have hk := key vs callee r st hR hE hd hbe (good_of_abn habn) hna
    rw [rbd_abn habn]
    exact hK.congr _ st _ (hK.mono _ _ _ hk (Nat.zero_le _)) rfl rfl rfl rfl

end InitECandidate.Solver.MemSafe.Stor3

#print axioms InitECandidate.Solver.MemSafe.Stor3.gk_topstep
#print axioms InitECandidate.Solver.MemSafe.Stor3.hl_csg
#print axioms InitECandidate.Solver.MemSafe.Stor3.hl_credit
