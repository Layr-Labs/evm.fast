import InitECandidate.Solver.MemSafe.Frames.SCStepT

/-!
# `start_child` after the fix: the pushed chain, `frame_start`, `return 0`

`sc_tailT` is `sc_tail` over `RunT` and the weakened `ProtKeep`; `frame_start`'s summary is
footprint-free (`SumSpecT`) with precondition `PreInvJ` (decision 2: `JrNZ` in frame_start's
precondition).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- After the stores: the pushed chain, `frame_start`, `return 0`. -/
theorem sc_tailT {C : Cfg} {H : Hooks σ} {tEV tCK M : Nat} (hF : FrameCfg C H tEV tCK)
    {St : Nat → Bool} (hSt : St tEV = false ∧ St tCK = false) (hJ : JrPG C)
    {gwA gwS : List MlS} (hsubS : ∀ g, g ∈ gwS → g ∈ gwA) (hgJ : JrOut (gwA)) {Γ : Gam}
    {s0 : State σ} {p : Ptrs} (hG : G C H Γ s0) (hJ0 : JrNZ s0) {fs rest : List Frame}
    {e0 c0 : BitVec 64} (hch : ChainL C tEV tCK Γ s0 fs) (hfs : fs = (e0, c0) :: rest)
    (hsp : (fld s0.memory e0 evSp).toNat < (fld s0.memory e0 evStackCap).toNat)
    {cm kind cmm os osz q : BitVec 64} (hkd : kind ≠ 0)
    (hmm : cmm.toNat = (fld s0.memory e0 evMem).toNat + (fld s0.memory e0 evMemCap).toNat)
    (hout : osz = 0 ∨ os.toNat + osz.toNat ≤ (fld s0.memory e0 evMemLen).toNat)
    (hΦM : Phi s0 + (fld s0.memory cm 40).toNat + 2 ≤ M) {vs : List (ValueHOL 64)}
    (hvs : vs.head? = some (.val (.word cm)))
    {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop}
    {XP : Gam → State σ → List Frame → BitVec 64 → BitVec 64 → BitVec 64 → Prop}
    (hPush : PushEH σ C H St tEV tCK P R XP)
    (hfst : SumSpecT σ X C H (nm "frame_start") (sg0 gwS) (PreInvX C tEV tCK P R M)
      (QLeX C tEV tCK P R))
    (hfsE : NoEvm σ X (nm "frame_start")) {lw : List (MlS × BitVec 64)} {cmark : BitVec 64}
    (hxp : XP Γ s0 fs cm cmark cmm)
    (hmk0 : MarkOK C tEV Γ s0 cmark.toNat cmm.toNat)
    (hfa0 : ∀ f ∈ fs, FrameAbove C tEV tCK Γ cmark.toNat cmm.toNat f)
    (hrel0 : rest ≠ [] → cmark.toNat < mkOf s0.memory c0 ∧ mmOf s0.memory c0 < cmm.toNat)
    {L : List (Nat × BitVec 64)} (h48 : (6, cmark) ∈ L) (h56 : (7, cmm) ∈ L) (h72 : (9, os) ∈ L)
    (h80 : (10, osz) ∈ L) :
    HoareG σ X (STsT C H St tEV tCK (nmEv :: nmCC :: gwA) Γ s0 p cm e0 c0 kind q lw L)
      (.seq (callD (nm "frame_start") []) (.return (cw 0)))
      (SPostT C H tEV tCK P R gwA Γ s0 p vs) := by
  have hH := hF.hooks
  let gwF := nmEv :: nmCC :: gwA
  let B := Phi s0 + (fld s0.memory cm 40).toNat + 2
  have hsubF : ∀ g, g ∈ (sg0 gwS).gw → g ∈ gwF := fun g h =>
    List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (hsubS g h))
  have hgJF : JrOut gwF := by
    intro g hg
    simp only [gwF, List.mem_cons, not_or]
    rcases jrGs_cases hg with rfl | rfl
    · exact ⟨by decide, by decide, hgJ _ hg⟩
    · exact ⟨by decide, by decide, hgJ _ hg⟩
  -- the pushed chain
  have key : ∀ u, STsT C H St tEV tCK gwF Γ s0 p cm e0 c0 kind q lw L u →
      ∃ Γ2 p2, RunT C H gwF Γ s0 Γ2 u p p2 ∧ ChainX C tEV tCK P R Γ2 u ∧ Phi u ≤ B ∧
        RootK s0 u := by
    intro u ⟨hsf, hq, _, hLs⟩
    obtain ⟨Γ2, p2, e, q', hrun, hpk, he, hq', hrec, hblk, ⟨o, ho, hob, hot, hfr⟩, f64, f192,
      ftop, fpar, fparc, fknd, f216, ⟨y, hy, hyl⟩, hfplt, hnx, hq40⟩ := hsf
    rw [hq, Option.some.injEq] at hq'
    subst hq'
    have ⟨p0, hp0, hord, hL, _⟩ := hG
    obtain rfl : p0 = p := Option.some.inj (hp0.symm.trans hrun.1)
    have ⟨pp2, hpp2, hord2, hL2, _⟩ := hrun.2.2.2.2.2.1
    have hp2e : pp2 = p2 := Option.some.inj (hpp2.symm.trans hrun.2.1)
    rw [hp2e] at hord2 hL2
    have hfk := framesKept_of_protKeepS hF hSt hL hch hpk
    have hosz := ev_size hF hL2 ho hot
    have hm6 : fld u.memory q 48 = cmark := (hLs _ h48).2
    have hm7 : fld u.memory q 56 = cmm := (hLs _ h56).2
    have hm9 : fld u.memory q 72 = os := (hLs _ h72).2
    have hm10 : fld u.memory q 80 = osz := (hLs _ h80).2
    have hps0 := hrun.1
    have hpu := hrun.2.1
    have hmo := hrun.2.2.1
    have hext := hrun.2.2.2.1
    have hnf := hrun.2.2.2.2.1
    have hrun' := hrun
    have hcmm : cmm.toNat = p0.fp := by
      rw [hmm]; exact hch.topMem e0 c0 rest hfs p0 hps0
    have hfm : cmm.toNat < p0.fp ∨ ∃ y ∈ Γ2, y.lo = cmm.toNat := Or.inr ⟨y, hy, hyl.trans hcmm.symm⟩
    have hmf : cmm.toNat ≤ p0.fp := le_of_eq hcmm
    have hsp0 := (hmk0.ptrs p0 hps0).1
    have hnew : ∀ o' ∈ Γ2, o'.base = e → o'.ty = tEV → ∀ p', ptrsOf s0 = some p' → o'.hi ≤ p'.sp := by
      intro o' ho' hb' ht' p' hp'
      obtain rfl := ptrs_some hps0 hp'
      obtain rfl : o' = o := base_unique hL2 ho' ho (hb'.trans hob.symm)
      have hr : (C.ty o'.ty).region = .scratch := by rw [ht']; exact hmk0.rg.1
      have hv := (live_of hL2 ho').2.2 hr
      have hpos := (lay_obj hL2 ho').2.2.1
      have hs : scratchEnd < 2 ^ 64 := by decide
      have hlt : o'.hi - 1 < 2 ^ 64 := by unfold Obj.hi at *; omega
      have hin : InO o' (BitVec.ofNat 64 (o'.hi - 1)) := by
        unfold InO; rw [toNat_ofNat_lt hlt]; unfold Obj.hi Obj.lo at *; omega
      have hna := hfr _ hin
      rw [toNat_ofNat_lt hlt] at hna
      unfold Ptrs.Allocated at hna
      have hO := hord
      have hO2 := hord2
      unfold Ptrs.Ordered at hO hO2
      obtain ⟨m1, m2, m3⟩ := hmo
      unfold Obj.hi Obj.lo at *
      omega
    have hmk : ChildMarks C tEV tCK Γ2 u [] (e, q) (e0, c0) rest := by
      unfold ChildMarks mkOf mmOf
      dsimp only
      rw [show ckMark = 48 from rfl, show ckMemMark = 56 from rfl, hm6, hm7]
      refine ⟨markOK_step hps0 hpu hord hord2 hL hL2 hmo hext hnf hfm
        (fun e' he' het _ => ev13_of_protKeepS hF hSt.1 hL hpk he' het) hmk0, ?_, ?_, ?_, ?_⟩
      · intro f hf o' ho' hb' ht' hab
        simp only [List.nil_append, List.mem_singleton] at hf
        subst hf
        have := hnew o' ho' hb' ht' p0 hps0
        unfold Above at hab
        rw [ht', hmk0.rg.1] at hab
        simp only at hab
        have hpos := (lay_obj hL2 ho').2.2.1
        unfold Obj.hi Obj.lo at *
        omega
      · intro f hf
        rw [← hfs] at hf
        have hfo := hch.objs f hf
        exact frameAbove_step hord hord2 hL hL2 hmo hext hnf hmf hfm hfo.1 hfo.2 (hfa0 f hf)
      · intro l3 f l4 hf hne
        have hfm : f ∈ fs := by rw [hfs, hf]; simp
        have h1 := fk_ck hfk hfm (k := 48) (by simp)
        have h2 := fk_ck hfk hfm (k := 56) (by simp)
        rw [h1, h2]
        cases l3 with
        | nil =>
            simp only [List.nil_append, List.cons.injEq] at hf
            obtain ⟨rfl, rfl⟩ := hf
            obtain ⟨a1, a2⟩ := hrel0 hne
            simp only [mkOf, mmOf, ckMark, ckMemMark] at a1 a2
            exact ⟨a1, a2⟩
        | cons g l3' =>
            simp only [List.cons_append, List.cons.injEq] at hf
            obtain ⟨-, hf'⟩ := hf
            cases rest with
            | nil => simp at hf'
            | cons r0 r1 =>
                obtain ⟨a1, a2⟩ := hrel0 (by simp)
                have hcm := (hch.marks [] (e0, c0) r0 r1 (by rw [hfs]; rfl)).2.2.2.1 l3' f l4 hf' hne
                simp only [mkOf, mmOf, ckMark, ckMemMark] at a1 a2 hcm
                exact ⟨lt_trans a1 hcm.1, lt_trans hcm.2 a2⟩
      · intro p' hp'
        obtain rfl := ptrs_some hpu hp'
        omega
    have hcl : ChainL C tEV tCK Γ2 u ((e, q) :: fs) := by
      refine chainL_push hch hfs hext hfk he hq ⟨o, ho, hob, hot⟩ ⟨_, hrec, rfl, rfl⟩
        ?_ ?_ ?_ fpar fparc hsp ?_ ?_ ?_ (gStep_of_runT hF hSt.1 hG hrun' hpk e0) hnew hmk
        (Or.inl f216)
      · intro hm
        obtain ⟨f, hf, hfe⟩ := List.mem_map.mp hm
        obtain ⟨o1, ho1, hob1, hot1⟩ := ev_obj hch hf
        have hsz1 := ev_size hF hL ho1 hot1
        have h1 := congrArg BitVec.toNat (hob1.trans hfe)
        have h2 := congrArg BitVec.toNat hob
        refine hfr e ⟨Nat.le_of_eq h2, by unfold Obj.hi; omega⟩
          (Helpers.allocated_of_inObj hL ⟨o1, ho1, Nat.le_of_eq h1, by unfold Obj.hi; omega⟩)
      · intro hm
        obtain ⟨f, hf, hfe⟩ := List.mem_map.mp hm
        obtain ⟨o1, ho1, hob1, hot1⟩ := ck_obj hch hf
        have hsz1 := ck_size hF hL ho1 hot1
        have h1 := congrArg BitVec.toNat (hob1.trans hfe)
        exact hblk q (Nat.le_refl _) (by omega)
          (Helpers.allocated_of_inObj hL ⟨o1, ho1, Nat.le_of_eq h1, by unfold Obj.hi; omega⟩)
      · show fld u.memory q 16 ≠ 0
        rw [fknd]; exact hkd
      · show (fld u.memory q 56).toNat = _
        rw [hm7]; exact hmm
      · show fld u.memory q 80 = 0 ∨ (fld u.memory q 72).toNat + (fld u.memory q 80).toNat ≤ _
        rw [hm9, hm10]; exact hout
      · intro p' hp'
        rw [hrun.2.1, Option.some.injEq] at hp'
        subst hp'
        exact ftop
    refine ⟨Γ2, p2, hrun', ⟨_, hcl, hPush hG hch hfs hxp hrun' hpk ⟨o, ho, hob, hot, hfr⟩ hrec hnx
      hq40 hm6 hm7⟩, ?_,
      rootK_push hch.chain (by rw [hfs]; exact List.cons_ne_nil _ _) hcl.chain⟩
    have hw := wt_le u.memory e q
    have h64 : (fld u.memory e 64).toNat = (fld s0.memory cm 40).toNat := by rw [f64]
    have h192 : (fld u.memory e 192).toNat = 0 := by rw [f192]; rfl
    show Phi u ≤ Phi s0 + (fld s0.memory cm 40).toNat + 2
    rw [phi_eq hcl.chain, wsum_push hfk, phi_eq hch.chain]
    omega
  refine hoareG_seq (R := fun r u => (r = none ∧ ∃ Γ3 p3, RunT C H gwF Γ s0 Γ3 u p p3 ∧
      ChainX C tEV tCK P R Γ3 u ∧ Phi u ≤ B ∧ RootK s0 u) ∨
      (r ≠ none ∧ SPostT C H tEV tCK P R gwA Γ s0 p vs r u)) ?_
    (fun _ _ _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
  · refine hoareG_callD (FunSpec.and hfst hfsE) ?_ ?_
    · rintro u - hst vs' hvs' callee v st ⟨hR, _⟩ -
      rw [evs_nil] at hvs'
      cases hvs'
      obtain ⟨Γ2, p2, hrun, hchn, hΦ, hRk⟩ := key u hst
      have hph : Phi (callEntryStateHOLFinite u callee) = Phi u := phi_locFree u _ _
      have hJu : JrNZ (callEntryStateHOLFinite u callee) :=
        jrNZ_congr (s := u) rfl (jrNZ_runT hJ hgJF hrun hJ0)
      obtain ⟨Γ3, p3, hrun3, -, hq3⟩ := run_callT hH hsubF hrun hR (by simp [Good])
        (not_abortive_ret v) (argsOK_any (any_sg0 gwS) rfl)
        ⟨⟨(chainX_locFree u _ _).mpr hchn, by rw [hph]; omega⟩, hJu⟩ (fun _ h => h)
      obtain ⟨hc3, hΦ3, hR3⟩ := hq3 v rfl
      have hph' : Phi { st with locals := u.locals } = Phi st := phi_locFree st _ _
      exact Or.inl ⟨rfl, Γ3, p3, runT_locals hH hrun3 _, (chainX_locFree st _ _).mpr hc3,
        by rw [hph']; omega,
        rootK_congr (s := s0) (t := st) rfl rfl rfl rfl
          (rootK_trans (rootK_congr (s := s0) (t := u) rfl rfl rfl rfl hRk) hR3
            (chainOf_of_X ((chainX_locFree u _ _).mpr hchn)))⟩
    · rintro u - hst vs' hvs' callee r st ⟨hR, hnoE⟩ - habn
      rw [evs_nil] at hvs'
      cases hvs'
      obtain ⟨Γ2, p2, hrun, hchn, hΦ, hRk⟩ := key u hst
      have hph : Phi (callEntryStateHOLFinite u callee) = Phi u := phi_locFree u _ _
      have hJu : JrNZ (callEntryStateHOLFinite u callee) :=
        jrNZ_congr (s := u) rfl (jrNZ_runT hJ hgJF hrun hJ0)
      refine Or.inr ⟨by simp, fun r' hr' hna' => ?_⟩
      cases hr'
      obtain ⟨Γ3, p3, hrun3, -, -⟩ := run_callT hH hsubF hrun hR (good_of_abn habn) hna'
        (argsOK_any (any_sg0 gwS) rfl)
        ⟨⟨(chainX_locFree u _ _).mpr hchn, by rw [hph]; omega⟩, hJu⟩ (fun _ h => h)
      exact ⟨Γ3, p3, runT_emptyLocals hH hrun3, fun _ _ =>
        ⟨fun v hv => absurd hv (not_returned_of_abn habn v), fun v hv => absurd hv (hnoE v)⟩⟩
  · refine hoareG_return fun u _ h v _ => ?_
    rcases h with ⟨-, Γ3, p3, hrun3, hc3, hΦ3, hR3⟩ | ⟨h, -⟩
    · intro r hr _
      cases hr
      have hph : Phi (emptyLocalsHOLFinite u) = Phi u := phi_locFree u _ _
      refine ⟨Γ3, p3, runT_emptyLocals hH hrun3, fun cm' hcm' => ⟨fun _ _ => ?_, fun _ h => by
        cases h⟩⟩
      rw [hvs, Option.some.injEq] at hcm'
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hcm'
      subst hcm'
      exact ⟨(chainX_locFree u _ _).mpr hc3, by rw [hph]; exact hΦ3,
        rootK_congr (s := s0) (t := u) rfl rfl rfl rfl hR3⟩
    · exact absurd rfl h

end InitECandidate.Solver.MemSafe.Frames
