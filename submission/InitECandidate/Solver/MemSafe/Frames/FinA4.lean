import InitECandidate.Solver.MemSafe.Frames.FinA3

/-!
# `finish_child`: Phase A assembled

`pa_dec`, **`finH_hoare`** (the handler of `create_finish`), **`finA_hoare`** (the kind-2 prefix).
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem pa_locals {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} {s0 : State σ}
    {e c : BitVec 64} {rest : List Frame} {L0 : Locs} {u : State σ}
    (h : PA C H tEV tCK P R s0 e c rest L0 u) (l : Locs)
    (hl : ∀ x ∈ finNames, l.lookup x = u.locals.lookup x) :
    PA C H tEV tCK P R s0 e c rest L0 { u with locals := l } := by
  obtain ⟨hfl, hJ, Γa, hG, hch, hΦ, hck, hx⟩ := h
  refine ⟨fun x hx => (hl x hx).trans (hfl x hx), jrNZ_locals hJ l, Γa, (G_locFree hH u l u.clock).mpr hG,
    chainL_congr (s := u) (s' := { u with locals := l }) rfl rfl hch, ?_, hck,
    chainE_congr (s := u) (s' := { u with locals := l }) rfl rfl hx⟩
  have : Phi { u with locals := l } = Phi u := phi_locFree u _ _
  rw [this]; exact hΦ

/-- `var x = a; k` with `x` not a local of `finish_child`. -/
theorem pa_dec {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} {s0 : State σ}
    {e c : BitVec 64} {rest : List Frame} {L0 : Locs} {x : MlS} (hx : x ∉ finNames)
    {sh : ShapeHOL} {a : ExpHOL 64} {k : ProgHOL 64}
    (hk : HoareG σ X (PA C H tEV tCK P R s0 e c rest L0) k
      (fun ro u => (ro = none ∧ PA C H tEV tCK P R s0 e c rest L0 u) ∨ (ro ≠ none ∧ PAb C H ro u))) :
    HoareG σ X (PA C H tEV tCK P R s0 e c rest L0) (.dec x sh a k)
      (fun ro u => (ro = none ∧ PA C H tEV tCK P R s0 e c rest L0 u) ∨ (ro ≠ none ∧ PAb C H ro u)) := by
  refine hoareG_dec fun s _ hpa v _ _ => hoareG_conseq hk (fun t _ ht => ?_) (fun r t _ _ h => ?_)
  · subst ht
    exact pa_locals hH hpa _ fun y hy => lk_set_ne _ _ fun h => hx (by rw [h]; exact hy)
  · rcases h with ⟨h0, hpa'⟩ | ⟨h0, hab⟩
    · exact Or.inl ⟨h0, pa_locals hH hpa' _ fun y hy =>
        lookup_resVarEq_ne _ _ fun h => hx (by rw [h]; exact hy)⟩
    · exact Or.inr ⟨h0, pab_locals hH hab _⟩

section steps
variable {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} {Ic : Gam → Mem → Nat → BitVec 64 → BitVec 64 → Prop} {W : FinGw} (Hy : FinHyps σ X C H tEV tCK P R Ic W)
  {s0 : State σ} {e c : BitVec 64} {rest : List Frame} {L0 : Locs}

include Hy

/-- **The handler of `create_finish`.** -/
theorem finH_hoare :
    HoareG σ X (PA C H tEV tCK P R s0 e c rest L0) finH
      (fun ro u => (ro = none ∧ PA C H tEV tCK P R s0 e c rest L0 u) ∨ (ro ≠ none ∧ PAb C H ro u)) := by
  have hF := fin_hF Hy
  have hemp : ∀ s v, PA C H tEV tCK P R s0 e c rest L0 s → ev s (gv (nm "evm_empty")) = some v →
      ∃ x, v = .val (.word x) := by
    intro s v ⟨_, _, Γa, hG, _⟩ hv
    obtain ⟨k0, hk0⟩ := hF.empty
    obtain ⟨-, -, -, -, -, -, hGl, -⟩ := hG
    obtain ⟨w, hw, -⟩ := hGl _ k0 hk0
    have := gword_some hw
    have hv' : s.globals.lookup (nm "evm_empty") = some v := hv
    rw [this] at hv'
    exact ⟨w, (Option.some.inj hv').symm⟩
  exact hoareG_seqA (pa_sr Hy) (hoareG_seqA (pa_refill Hy) (hoareG_seqA (pa_halt Hy)
    (hoareG_seqA (pa_store Hy (j := 15) rfl (by simp [evDriverSlots]) (by decide) (by decide)
      (by decide) hemp)
      (pa_storeOut Hy (x := 0) (by decide)
        fun s v _ hv => by rw [ev_cw] at hv; exact (Option.some.inj hv).symm))))

/-- **The kind-2 prefix.** `create_finish(msg, child)` gets its extra precondition (`CfOK` of the
child's `CK_MSG`, the local `msg`) from the child / parent extension (`FinHyps.cfX`). -/
theorem finA_hoare {e' c' : BitVec 64}
    (hLm : L0.lookup (nm "msg") = some (.val (.word (fld s0.memory c 40)))) :
    HoareG σ X (PA C H tEV tCK P R s0 e c ((e', c') :: rest) L0) finA
      (fun ro u => (ro = none ∧ PA C H tEV tCK P R s0 e c ((e', c') :: rest) L0 u) ∨
        (ro ≠ none ∧ PAb C H ro u)) := by
  have hF := fin_hF Hy
  have hH := hF.hooks
  have key : ∀ s, PA C H tEV tCK P R s0 e c ((e', c') :: rest) L0 s → ∀ vs,
      evs s [lv (nm "msg"), lv (nm "child")] = some vs → ∀ callee r st,
      SumRelO C H (sgA 2 W.cf) (CfPre C tEV) (PWtopM tEV tCK gasKs) CfQ
        vs (callEntryStateHOLFinite s callee) r st → Good (some r) → ¬ Abortive r →
      (∃ Γ', G C H Γ' st) ∧
        PA C H tEV tCK P R s0 e c ((e', c') :: rest) L0 { st with locals := s.locals } := by
    intro s hpa vs hvs callee r st hR hg hna
    have hev0 : gword s nmEv = some e := pa_ev hpa
    obtain ⟨hfl, hJ, Γa, hG, hch, hΦ, hck, hx⟩ := hpa
    have hGe : G C H Γa (callEntryStateHOLFinite s callee) := (G_locFree hH s _ _).mpr hG
    have hG0 := hG
    obtain ⟨p, hp, -⟩ := hG0
    obtain ⟨oe, hoe, hoeb, hoet⟩ := (hch.objs (e, c) (by simp)).1
    have hoeb' : oe.base = e := hoeb
    -- the local `msg` is the child's `CK_MSG`
    have hcf : ∀ msg, vs.head? = some (.val (.word msg)) → ∀ q,
        ptrsOf (callEntryStateHOLFinite s callee) = some q →
        CfOK C Γa (callEntryStateHOLFinite s callee).memory q msg := by
      intro msg hmsg q hq
      obtain ⟨v1, vs1, rfl, hv1, -⟩ := evs_cons_inv hvs
      rw [ev_lv, hfl _ (by simp [finNames]), hLm] at hv1
      simp only [List.head?_cons, Option.some.injEq] at hmsg
      rw [← Option.some.inj hv1] at hmsg
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hmsg
      subst hmsg
      have hq' : ptrsOf s = some q := (ptrsOf_congr rfl).symm.trans hq
      have h40 : fld s.memory c 40 = fld s0.memory c 40 := hck 5 (by omega)
      have h1 : CfOK C Γa s.memory q (fld s.memory c 40) :=
        Hy.cfX Γa s.memory q (e, c) (e', c') (hx.1 q hq' (e, c) (by simp))
          (hx.2 (e, c) (e', c') ⟨[], rest, rfl⟩)
      rw [h40] at h1
      exact h1
    obtain ⟨Γ', p1, p2, hc, hfq, hgas⟩ := hR hg hna Γa hGe
      ⟨p, (ptrsOf_congr rfl).trans hp, (argsA Hy (evs_two hvs)).1⟩
      ⟨⟨oe, hoe, hoet, by rw [hoeb']; exact hev0⟩, jrNZ_congr rfl hJ, hcf⟩
    have hfp : p2.fp = p1.fp := hfq p1 p2 hc.1 hc.2.1
    exact ⟨⟨Γ', hc.2.2.2.2.2.1⟩, pa_sumW Hy (fun k hk => hk) Hy.gwcfE Hy.jcf
      ⟨hfl, hJ, Γa, hG, hch, hΦ, hck, hx⟩ hG hch hΦ hck hx hc
      (fun a hpa h => h.elim (fun h => h.2) (fun h => absurd (inObj_of_prot hGe hpa) h))
      (argsA Hy (p := p) (evs_two hvs)).2 hfp (hgas e hev0) _ hfl⟩
  refine hoareG_ite ?_ (hoareG_skip fun u _ h => Or.inl ⟨rfl, h.1⟩)
  refine hoareG_pre (pa_dec hH (by decide) ?_) (fun u _ h => h.1)
  refine hoareG_ite ?_ (hoareG_pre (pa_sr Hy) fun u _ h => h.1)
  refine hoareG_pre (pa_dec hH (by decide) ?_) (fun u _ h => h.1)
  refine hoareG_callH (sumSpecO_rel Hy.cf) ?_ ?_ ?_
  · intro s _ hpa vs hvs callee v st hR _
    exact ⟨fun _ => Or.inl ⟨rfl, (key s hpa vs hvs callee _ st hR (by simp [Good])
      (not_abortive_ret v)).2⟩, fun k x h => by cases h⟩
  · intro s _ hpa vs hvs callee v st hR _
    have hpa' := (key s hpa vs hvs callee _ st hR (by simp [Good]) (not_abortive_evm v)).2
    refine hoareG_pre (finH_hoare Hy) fun t _ ht => ?_
    subst ht
    exact pa_locals hH hpa' _ fun y hy => lk_set_ne _ _ fun h => absurd (h ▸ hy) (by decide)
  · intro s _ hpa vs hvs callee r st hR _ habn hne
    refine Or.inr ⟨by simp, fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'
    subst hr'
    obtain ⟨⟨Γ', hG'⟩, -⟩ := key s hpa vs hvs callee r st hR (good_of_abn habn) hna
    exact ⟨hne, not_returned_of_abn habn, Γ', (G_locFree hH st _ _).mpr hG'⟩

end steps

end InitECandidate.Solver.MemSafe.Frames
