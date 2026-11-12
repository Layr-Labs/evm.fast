import InitECandidate.Solver.MemSafe.Frames.FinA

/-!
# `finish_child`: Phase A (`create_finish` / `state_restore` on the child)

* `pa_sr`: `state_restore(csnap)`; `pa_refill`, `pa_halt`, `pa_st`: the handler's exact steps;
  `pa_dec`: a local declaration; **`finH_hoare`**, **`finA_hoare`**.
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

section steps
variable {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} {Ic : Gam → Mem → Nat → BitVec 64 → BitVec 64 → Prop} {W : FinGw} (Hy : FinHyps σ X C H tEV tCK P R Ic W)
  {s0 : State σ} {e c : BitVec 64} {rest : List Frame} {L0 : Locs}

include Hy

/-- The post of a summarized child-side call, by `pa_coreW` (any core cell set `PWx` whose `prot`
cells are in `PWtopM ks`). -/
theorem pa_sumW {sg : Sig} {ks : List Nat} (hks : ∀ k ∈ ks, k ∈ gasKs)
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hgJ : JrOut (sg.gw)) {s st : State σ} {Γa : Gam}
    (hpa : PA C H tEV tCK P R s0 e c rest L0 s) (hG : G C H Γa s)
    (hch : ChainL C tEV tCK Γa s ((e, c) :: rest)) (hΦ : Phi s ≤ Phi s0)
    (hck : ∀ j, j < 13 → fld s.memory c (8 * j) = fld s0.memory c (8 * j))
    (hx : ChainE P R Γa s ((e, c) :: rest))
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {Γ' : Gam} {pu pt : Ptrs} {callee : Locs}
    {PWx : BitVec 64 → Prop}
    (hc : SumCore C H sg PWx Γa (callEntryStateHOLFinite s callee) vs r st Γ' pu pt)
    (hpw : ∀ a, ProtCell C Γa a → PWx a → PWtopM tEV tCK ks vs (callEntryStateHOLFinite s callee) Γa a)
    (hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell C Γa a) (hfp : pt.fp = pu.fp)
    (hgas : (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
      (fld s.memory e 64).toNat + (fld s.memory e 192).toNat) (l : Locs)
    (hl : ∀ x ∈ finNames, l.lookup x = L0.lookup x) :
    PA C H tEV tCK P R s0 e c rest L0 { st with locals := l } := by
  have hF := fin_hF Hy
  have hH := hF.hooks
  have hGe : G C H Γa (callEntryStateHOLFinite s callee) := (G_locFree hH s _ _).mpr hG
  have hche : ChainL C tEV tCK Γa (callEntryStateHOLFinite s callee) ((e, c) :: rest) :=
    chainL_congr (s := s) (s' := callEntryStateHOLFinite s callee) rfl rfl hch
  obtain ⟨hcl, hΦ', hck'⟩ := pa_coreW hF hGe hche hks hgw hc (fun a hp h => (hpw a hp h).1)
    hac hfp hgas
  have hks' : ∀ k ∈ ks, 8 * k + 8 ≤ 280 := fun k hk => by
    have := hks k hk; simp only [gasKs, List.mem_cons, List.mem_nil_iff, or_false] at this; omega
  have hksX : ∀ k ∈ ks, k ∉ evXSlots := fun k hk => by
    have := hks k hk; simp only [gasKs, List.mem_cons, List.mem_nil_iff, or_false] at this
    rcases this with rfl | rfl | rfl | rfl <;> decide
  obtain ⟨e1, c1, rest1, hfs1, hev, -, -⟩ := hche.chain
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs1
  obtain ⟨⟨rfl, rfl⟩, rfl⟩ := hfs1
  have hxe := chainE_sumCoreW hF Hy.xcfg Hy.evX hks' hksX hGe hc hac hpw hev
    (hche.objs (e, c) (by simp)).1 hche.objs
    (chainE_congr (s := s) (s' := callEntryStateHOLFinite s callee) rfl rfl hx)
  refine ⟨hl, jrNZ_locals (jrNZ_sumCore Hy.pgJ hgJ hc (jrNZ_congr rfl hpa.2.1)) l, Γ',
    (G_locFree hH st _ _).mpr hc.2.2.2.2.2.1,
    chainL_congr (s := st) (s' := { st with locals := l }) rfl rfl hcl, ?_,
    fun j hj => (hck' j hj).trans (hck j hj),
    chainE_congr (s := st) (s' := { st with locals := l }) rfl rfl hxe⟩
  have h1 : Phi { st with locals := l } = Phi st := phi_locFree st _ _
  have h2 : Phi (callEntryStateHOLFinite s callee) = Phi s := phi_locFree s _ _
  rw [h1]; rw [h2] at hΦ'; omega

/-- The post of a summarized child-side call, by `pa_core`. -/
theorem pa_sum {sg : Sig} {ks : List Nat} (hks : ∀ k ∈ ks, k ∈ gasKs)
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hgJ : JrOut (sg.gw)) {s st : State σ} {Γa : Gam}
    (hpa : PA C H tEV tCK P R s0 e c rest L0 s) (hG : G C H Γa s)
    (hch : ChainL C tEV tCK Γa s ((e, c) :: rest)) (hΦ : Phi s ≤ Phi s0)
    (hck : ∀ j, j < 13 → fld s.memory c (8 * j) = fld s0.memory c (8 * j))
    (hx : ChainE P R Γa s ((e, c) :: rest))
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {Γ' : Gam} {pu pt : Ptrs} {callee : Locs}
    (hc : SumCore C H sg (fun a => ProtCell C Γa a ∧ PWtopM tEV tCK ks vs
      (callEntryStateHOLFinite s callee) Γa a) Γa (callEntryStateHOLFinite s callee) vs r st Γ' pu pt)
    (hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell C Γa a) (hfp : pt.fp = pu.fp)
    (hgas : (fld st.memory e 64).toNat + (fld st.memory e 192).toNat ≤
      (fld s.memory e 64).toNat + (fld s.memory e 192).toNat) (l : Locs)
    (hl : ∀ x ∈ finNames, l.lookup x = L0.lookup x) :
    PA C H tEV tCK P R s0 e c rest L0 { st with locals := l } :=
  pa_sumW Hy hks hgw hgJ hpa hG hch hΦ hck hx hc (fun _ _ h => h.2) hac hfp hgas l hl

/-- `state_restore(csnap)` on the child. -/
theorem pa_sr {a : ExpHOL 64} :
    HoareG σ X (PA C H tEV tCK P R s0 e c rest L0) (callD (nm "state_restore") [a])
      (fun ro u => (ro = none ∧ PA C H tEV tCK P R s0 e c rest L0 u) ∨ (ro ≠ none ∧ PAb C H ro u)) := by
  have hF := fin_hF Hy
  have hH := hF.hooks
  have key : ∀ s, PA C H tEV tCK P R s0 e c rest L0 s → ∀ vs, evs s [a] = some vs → ∀ callee r st,
      SumRelA C H (sgA 1 W.sr) (fun _ s _ => JrNZ s) (PWtopM tEV tCK []) FQ vs
        (callEntryStateHOLFinite s callee) r st → Good (some r) → ¬ Abortive r →
      NoE r ∧ ∃ Γ', G C H Γ' st ∧ (∀ v, r = .returned v →
        PA C H tEV tCK P R s0 e c rest L0 { st with locals := s.locals }) := by
    intro s hpa vs hvs callee r st hR hg hna
    obtain ⟨hfl, hJ, Γa, hG, hch, hΦ, hck, hx⟩ := hpa
    have hGe : G C H Γa (callEntryStateHOLFinite s callee) := (G_locFree hH s _ _).mpr hG
    have hG0 := hG
    obtain ⟨p, hp, hord, hL, -⟩ := hG0
    obtain ⟨Γ', p1, p2, hc, hfq, hne⟩ := hR hg hna Γa hGe
      ⟨p, (ptrsOf_congr rfl).trans hp, (argsA Hy (evs_one_len hvs)).1⟩ (jrNZ_congr rfl hJ)
    have hac := (argsA (Hy := Hy) (Γ := Γa) (p := p) (gw := W.sr) (evs_one_len hvs)).2
    have hpk := keep_pwtop (sumCore_prot hc hGe hac)
    obtain ⟨oe, hoe, hoeb, hoet⟩ := (hch.objs (e, c) (by simp)).1
    have hoeb' : oe.base = e := hoeb
    have hesz : ∀ x ∈ Γa, x.ty = tEV → ∀ k ∈ ([] : List Nat), x.HasSlot k := by simp
    have hsz := ev_size hF hL hoe hoet
    have k8 := frame_keep hord hL hesz hpk hoe (Or.inl hoet) (j := 8) (by unfold Obj.HasSlot; omega)
      (by rw [hoet]; exact hF.evProt 8 (by simp [evProtSlots])) fun _ => by simp
    have k24 := frame_keep hord hL hesz hpk hoe (Or.inl hoet) (j := 24) (by unfold Obj.HasSlot; omega)
      (by rw [hoet]; exact hF.evProt 24 (by simp [evProtSlots])) fun _ => by simp
    rw [hoeb'] at k8 k24
    simp only [show (8 * 8 : Nat) = 64 from rfl, show (8 * 24 : Nat) = 192 from rfl] at k8 k24
    have hfp : p2.fp = p1.fp := hfq p1 p2 hc.1 hc.2.1
    refine ⟨hne, Γ', hc.2.2.2.2.2.1, fun v _ => pa_sum Hy (by simp) Hy.gwsrE Hy.jsr
      ⟨hfl, hJ, Γa, hG, hch, hΦ, hck, hx⟩ hG hch hΦ hck hx hc hac hfp (by rw [k8, k24]; exact le_refl _) _ hfl⟩
  refine hoareG_callD (sumSpecA_rel Hy.sr) ?_ ?_
  · intro s _ hpa vs hvs callee v st hR _
    obtain ⟨-, Γ', -, hpa'⟩ := key s hpa vs hvs callee _ st hR (by simp [Good]) (not_abortive_ret v)
    exact Or.inl ⟨rfl, hpa' v rfl⟩
  · intro s _ hpa vs hvs callee r st hR _ habn
    refine Or.inr ⟨by simp, fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'
    subst hr'
    obtain ⟨hne, Γ', hG', -⟩ := key s hpa vs hvs callee r st hR (good_of_abn habn) hna
    exact ⟨hne, not_returned_of_abn habn, Γ', (G_locFree hH st _ _).mpr hG'⟩

end steps

end InitECandidate.Solver.MemSafe.Frames
