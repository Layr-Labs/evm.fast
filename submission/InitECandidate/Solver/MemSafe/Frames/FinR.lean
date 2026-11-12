import InitECandidate.Solver.MemSafe.Frames.FinBranch

/-!
# `finish_child`: the releases and the parent's `pc_add`

```
scratch_release(child_mark); frame_mem_release(child_mem_mark); pc_add(1); return 0;
```

* `relRet_spec`: the releases return `0`, set their allocator global, keep everything else.
* **`finR_hoare`**: from the end of the parent's part, the chain of the parent holds for the
  surviving objects, and `Φ` is below its value before the switch.
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- A release returns `0`. -/
theorem relRet_spec {fn G : MlS}
    (hcode : X.code.lookup fn = some ([(nm "m", .one)], AllocImpl.releaseBody G, .one)) :
    FunSpec σ X fn (fun vs s r t => Good (some r) → ∀ w, vs = [.val (.word w)] →
      r = .returned (.val (.word 0)) ∧ t.memory = s.memory ∧
      t.globals.lookup G = some (.val (.word w)) ∧
      ∀ g', g' ≠ G → t.globals.lookup g' = s.globals.lookup g') := by
  intro vs body callee rs hl s0 hs hloc r hr hg w hvs
  obtain ⟨rfl, -, A, rfl, -, hla⟩ := lookupCode_one hcode hl
  simp only [List.cons.injEq, and_true] at hvs
  subst hvs
  have hm0 : s0.locals.lookup (nm "m") = some (.val (.word w)) := by rw [hloc]; exact hla
  have H : HoareG σ X (fun t => t = s0) (AllocImpl.releaseBody G) (fun r t => ∀ r', r = some r' →
      r' = .returned (.val (.word 0)) ∧ t.memory = s0.memory ∧
      t.globals.lookup G = some (.val (.word w)) ∧
        ∀ g', g' ≠ G → t.globals.lookup g' = s0.globals.lookup g') := by
    refine hoareG_seq (R := fun r t => r = none ∧
      t = setKvarHOLFinite .global G (.val (.word w)) s0) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoareG_assignK fun t _ ht x hx _ => ?_
      subst ht
      rw [ev_lw hm0] at hx
      cases hx
      exact ⟨rfl, rfl⟩
    · refine hoareG_return fun t _ ⟨_, ht⟩ v hv r' hr' => ?_
      subst ht
      rw [ev_cw] at hv; cases hv
      cases hr'
      exact ⟨rfl, rfl, lookup_update_self _ _ _, fun g hg => lookup_update_ne _ _ (Ne.symm hg)⟩
  have := H s0 hs rfl (by rw [hr]; exact hg)
  rw [hr] at this
  exact this r rfl

theorem wsum_two (m : Mem) (f g : Frame) (fs : List Frame) :
    wsum m (f :: g :: fs) = wt m f + (wt m g + wsum m fs) := by simp [wsum]

section steps
variable {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} {Ic : Gam → Mem → Nat → BitVec 64 → BitVec 64 → Prop} {W : FinGw} (Hy : FinHyps σ X C H tEV tCK P R Ic W)
  {sw : State σ} {e c e' c' : BitVec 64} {rest : List Frame} {L : Locs}

include Hy

/-- The parent's weight after the parent's part. -/
theorem wt_parent {Γb : Gam} {ub : State σ} (hB : FinB C H tEV tCK P R sw e c e' c' rest Γb ub)
    (hgas : GasB sw e e' ub) {m : Mem} (hm : m = ub.memory) :
    wt m (e', c') < wt sw.memory (e, c) + wt sw.memory (e', c') := by
  subst hm
  have h32 := hB.ck (e', c') (by simp) 4 (by omega)
  have h104 := hB.evp 13 (by simp [parKeep])
  simp only [show (8 * 4 : Nat) = 32 from rfl, show (8 * 13 : Nat) = 104 from rfl] at h32 h104
  unfold GasB at hgas
  rw [wt_eq, wt_eq, wt_eq, h32, h104]
  split_ifs <;> omega

/-- **The releases and `pc_add`.** -/
theorem finR_hoare {Ref : Gam → State σ → Obj → BitVec 64 → Prop} (hR : RelCfg C H tEV Ref)
    {Γa : Gam} (hch : ChainL C tEV tCK Γa sw ((e, c) :: (e', c') :: rest))
    (hLm : L.lookup (nm "child_mark") = some (.val (.word (fld sw.memory c 48))))
    (hLmm : L.lookup (nm "child_mem_mark") = some (.val (.word (fld sw.memory c 56)))) :
    HoareG σ X (BS C H tEV tCK P R sw e c e' c' rest L (GasB sw e e') false) finR
      (fun ro t => ∀ r, ro = some r → ¬ Abortive r → ∃ Γ', G C H Γ' t ∧
        (∀ v, r = .returned v → ChainX C tEV tCK P R Γ' t ∧ Phi t < Phi sw ∧ JrNZ t ∧ RootK sw t) ∧
          NoE r) := by
  have hF := fin_hF Hy
  have hH := hF.hooks
  have hD := Hy.drv
  let BF : State σ → Gam → Prop := fun ub Γb => FinB C H tEV tCK P R sw e c e' c' rest Γb ub ∧
    RetOK C Γb ub.memory e' ∧ GasB sw e e' ub
  -- `scratch_release`
  refine hoareG_seq (R := fun ro u => ro = none ∧ ∃ ub Γb, BF ub Γb ∧ u.memory = ub.memory ∧
      u.memaddrs = ub.memaddrs ∧ u.be = ub.be ∧
      u.globals.lookup gScratch = some (.val (.word (fld sw.memory c 48))) ∧
      (∀ g, g ≠ gScratch → u.globals.lookup g = ub.globals.lookup g) ∧
      u.locals.lookup (nm "child_mem_mark") = some (.val (.word (fld sw.memory c 56)))) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_callD (FunSpec.and (relRet_spec (by rw [Hy.code]; exact AllocImpl.code_scratch_release))
      (funSpec_dom _)) ?_ ?_
    · intro u _ ⟨hfl, Γb, hB, hrd, _, hgs⟩ vs hvs callee v st ⟨hRl, hd, hbe⟩ _
      have hv : vs = [.val (.word (fld sw.memory c 48))] := by
        obtain ⟨v1, r1, rfl, h1, h2⟩ := evs_cons_inv hvs
        rw [evs_nil] at h2; cases h2
        rw [ev_lv, hfl _ (by simp [finNames]), hLm] at h1; cases h1; rfl
      obtain ⟨-, hm, hg1, hg2⟩ := hRl (by simp [Good]) _ hv
      exact ⟨rfl, u, Γb, ⟨hB, hrd, hgs⟩, hm, hd, hbe, hg1, hg2,
        by show u.locals.lookup _ = _; rw [hfl _ (by simp [finNames]), hLmm]⟩
    · intro u _ ⟨hfl, _⟩ vs hvs callee r st ⟨hRl, _, _⟩ _ habn
      have hv : vs = [.val (.word (fld sw.memory c 48))] := by
        obtain ⟨v1, r1, rfl, h1, h2⟩ := evs_cons_inv hvs
        rw [evs_nil] at h2; cases h2
        rw [ev_lv, hfl _ (by simp [finNames]), hLm] at h1; cases h1; rfl
      obtain ⟨rfl, -⟩ := hRl (good_of_abn habn) _ hv
      exact absurd rfl (not_returned_of_abn habn _)
  refine hoareG_seq (R := fun ro u => ro = none ∧ ∃ ub Γb, BF ub Γb ∧ u.memory = ub.memory ∧
      u.memaddrs = ub.memaddrs ∧ u.be = ub.be ∧
      u.globals.lookup gScratch = some (.val (.word (fld sw.memory c 48))) ∧
      u.globals.lookup gFrame = some (.val (.word (fld sw.memory c 56))) ∧
      (∀ g, g ≠ gScratch → g ≠ gFrame → u.globals.lookup g = ub.globals.lookup g)) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · have hcfm : X.code.lookup (nm "frame_mem_release") =
        some ([(nm "m", .one)], AllocImpl.releaseBody (nm "frame_mem_ptr"), .one) := by
      rw [Hy.code]; exact AllocImpl.code_frame_mem_release
    refine hoareG_callD (FunSpec.and (relRet_spec hcfm) (funSpec_dom _)) ?_ ?_
    · intro u _ ⟨_, ub, Γb, hbf, hm, hd0, hbe0, hgs, hgo, hlmm⟩ vs hvs callee v st ⟨hRl, hd, hbe⟩ _
      have hv : vs = [.val (.word (fld sw.memory c 56))] := by
        obtain ⟨v1, r1, rfl, h1, h2⟩ := evs_cons_inv hvs
        rw [evs_nil] at h2; cases h2
        rw [ev_lv, hlmm] at h1; cases h1; rfl
      obtain ⟨-, hm2, hg1, hg2⟩ := hRl (by simp [Good]) _ hv
      refine ⟨rfl, ub, Γb, hbf, hm2.trans hm, hd.trans hd0, hbe.trans hbe0, ?_, hg1,
        fun g h1 h2 => (hg2 g h2).trans (hgo g h1)⟩
      show st.globals.lookup gScratch = _
      rw [hg2 gScratch (by decide)]; exact hgs
    · intro u _ ⟨_, ub, Γb, hbf, hm, hd0, hbe0, hgs, hgo, hlmm⟩ vs hvs callee r st ⟨hRl, _, _⟩ _ habn
      have hv : vs = [.val (.word (fld sw.memory c 56))] := by
        obtain ⟨v1, r1, rfl, h1, h2⟩ := evs_cons_inv hvs
        rw [evs_nil] at h2; cases h2
        rw [ev_lv, hlmm] at h1; cases h1; rfl
      obtain ⟨rfl, -⟩ := hRl (good_of_abn habn) _ hv
      exact absurd rfl (not_returned_of_abn habn _)
  -- `pc_add(1); return 0`
  refine hoareG_pre (P := fun u => ∃ ub Γb, BF ub Γb ∧ u.memory = ub.memory ∧
      u.memaddrs = ub.memaddrs ∧ u.be = ub.be ∧
      u.globals.lookup gScratch = some (.val (.word (fld sw.memory c 48))) ∧
      u.globals.lookup gFrame = some (.val (.word (fld sw.memory c 56))) ∧
      (∀ g, g ≠ gScratch → g ≠ gFrame → u.globals.lookup g = ub.globals.lookup g)) ?_
    (fun u _ h => h.2)
  have hsz : 8 ≤ (C.ty tEV).minSz := le_trans (by decide) hF.evSz
  refine hoareG_seq (R := fun ro u => ro = none ∧ ∃ Γ', G C H Γ' u ∧ ChainX C tEV tCK P R Γ' u ∧
      Phi u < Phi sw ∧ JrNZ u ∧ RootK sw u) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_callD (sumSpec_rel (pcAdd_evSpec Hy.code hH Hy.pc0 Hy.tag hsz)) ?_ ?_
    · intro u _ ⟨ub, Γb, ⟨hB, hrd, hgas⟩, hm, hd, hbe, hgs, hgf, hgo⟩ vs hvs callee v st hRp _
      obtain ⟨hGu, hcl, hws⟩ := fin_release hR hD hch hB hrd hm hd hbe hgs hgf hgo
      have hxu := fin_releaseX Hy.xcfg hch hB hm hgs hgf hgo
      have hGe : G C H (relKeep C (mkOf sw.memory c) (mmOf sw.memory c) Γb)
          (callEntryStateHOLFinite u callee) := (G_locFree hH u _ _).mpr hGu
      have hevu : gword u nmEv = some e' := by
        unfold gword; rw [hgo nmEv (by decide) (by decide)]; exact hB.ev
      obtain ⟨o, ho, hob, hot⟩ := (hcl.objs (e', c') (by simp)).1
      obtain ⟨p, hp, -⟩ := hGu
      obtain ⟨Γ', p1, p2, hc, hq⟩ := hRp (by simp [Good]) _ hGe
        ⟨p, (ptrsOf_congr rfl).trans hp, argsOK_any (by simp [sg1n]) (by simp [sg1n, evs_one_len hvs])⟩
        ⟨o, ho, hot, by rw [hob]; exact hevu⟩
      obtain ⟨rfl, hpp, -⟩ := hq
      have hfp : p2.fp = p1.fp := by
        have h1 := hc.1; have h2 := hc.2.1; rw [hpp] at h2; rw [h1] at h2
        cases h2; rfl
      obtain ⟨hcl2, hΦ2⟩ := chain_of_sumCore hF (sg := sg1n) (by simp [sg1n]) (by simp [sg1n]) hGe hc
        hfp (chainL_congr (s := u) (s' := callEntryStateHOLFinite u callee) rfl rfl hcl)
      have hju : JrNZ u := jrNZ_of_lookup (fun g hg => by
        rcases jrGs_cases hg with rfl | rfl <;> exact hgo _ (by decide) (by decide)) hB.jr
      have hxst := chainE_sumCoreM hF Hy.xcfg Hy.evX (ks := []) (by simp) (by simp) hGe hc
        (fun a ha => absurd ha (argCells_any (by simp [sg1n])))
        (fun a _ h => absurd h id) hevu ⟨o, ho, hob, hot⟩ hcl.objs
        (chainE_congr (s := u) (s' := callEntryStateHOLFinite u callee) rfl rfl hxu)
      refine ⟨rfl, _, (G_locFree hH st _ _).mpr hc.2.2.2.2.2.1,
        ⟨_, chainL_congr (s := st) (s' := { st with locals := u.locals }) rfl rfl hcl2,
          chainE_congr (s := st) (s' := { st with locals := u.locals }) rfl rfl hxst⟩,
        ⟨?_, jrNZ_locals (jrNZ_sumCore Hy.pgJ (by simp [sg1n]) hc (jrNZ_congr rfl hju)) _,
          rootK_pop hch.chain (List.cons_ne_nil _ _)
            (chainOf_congr (s := st) (s' := { st with locals := u.locals }) rfl rfl hcl2.chain)⟩⟩
      show Phi { st with locals := u.locals } < Phi sw
      have hpe : Phi (callEntryStateHOLFinite u callee) = Phi u := phi_locFree u _ _
      rw [phi_locFree st, hΦ2, hpe, phi_eq hcl.chain, phi_eq hch.chain, wsum_cons, hws,
        wsum_two]
      have := wt_parent Hy hB hgas hm
      omega
    · intro u _ ⟨ub, Γb, ⟨hB, hrd, hgas⟩, hm, hd, hbe, hgs, hgf, hgo⟩ vs hvs callee r st hRp _ habn
      obtain ⟨hGu, hcl, hws⟩ := fin_release hR hD hch hB hrd hm hd hbe hgs hgf hgo
      have hGe : G C H (relKeep C (mkOf sw.memory c) (mmOf sw.memory c) Γb)
          (callEntryStateHOLFinite u callee) := (G_locFree hH u _ _).mpr hGu
      have hevu : gword u nmEv = some e' := by
        unfold gword; rw [hgo nmEv (by decide) (by decide)]; exact hB.ev
      obtain ⟨o, ho, hob, hot⟩ := (hcl.objs (e', c') (by simp)).1
      obtain ⟨p, hp, -⟩ := hGu
      obtain ⟨Γ', p1, p2, hc, hq⟩ := hRp (good_of_abn habn) _ hGe
        ⟨p, (ptrsOf_congr rfl).trans hp, argsOK_any (by simp [sg1n]) (by simp [sg1n, evs_one_len hvs])⟩
        ⟨o, ho, hot, by rw [hob]; exact hevu⟩
      obtain ⟨-, -, -, e1, n1, -, -, hr, -⟩ := hq
      exact absurd hr (not_returned_of_abn habn _)
  · refine hoareG_return fun u _ ⟨_, Γ', hG', hc', hΦ', hJ', hK'⟩ v _ r hr hna => ?_
    simp only [Option.some.injEq] at hr
    subst hr
    have hpe : Phi (emptyLocalsHOLFinite u) = Phi u := phi_locFree u _ _
    refine ⟨Γ', (G_locFree hH u _ _).mpr hG', fun v' _ => ⟨(chainX_locFree u _ _).mpr hc', ?_,
      jrNZ_congr rfl hJ', rootK_congr rfl rfl rfl rfl hK'⟩, (fun w h => by cases h)⟩
    rw [hpe]; exact hΦ'

end steps

end InitECandidate.Solver.MemSafe.Frames
