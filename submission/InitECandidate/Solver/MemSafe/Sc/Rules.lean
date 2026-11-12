import InitECandidate.Solver.MemSafe.Sc.Env

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

/-!
# Structural rules with an extra ghost fact in the precondition

* `dcx`: `dc_sound_ex` where the extra fact `Ex` is also assumed in the precondition (it is
  threaded to the continuation by `hex`).
* `seqx`: `seq_sound` where an extra fact `F` on the locals survives the first statement.
* `callx`: `f(args);` keeping `F` on the locals.
-/

namespace InitECandidate.Solver.MemSafe.Sc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}


theorem seqx {a : Act σ} {rt : List RT} {p q : ProgHOL 64} {A A' : AEnv} {op oq : AOut}
    (F : LocalsH → Prop) (hn : op.nrm = some A')
    (ihp : ∀ Γ Θ, HoareG σ X (fun t => IG a A Γ Θ t ∧ F t.locals) p
      (fun r t => SPost a rt op Γ Θ r t ∧ (r = none → F t.locals)))
    (ihq : ∀ Γ Θ, HoareG σ X (fun t => IG a A' Γ Θ t ∧ F t.locals) q (SPost a rt oq Γ Θ))
    (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ X (fun t => IG a A Γ Θ t ∧ F t.locals) (.seq p q)
      (SPost a rt ⟨oq.nrm, joinO op.brk oq.brk, joinO op.cnt oq.cnt⟩ Γ Θ) := by
  refine hoareG_seq (ihp Γ Θ) ?_ ?_
  · intro r t _ hr _ hR
    have hR := hR.1
    rcases r with _ | (_ | _ | _ | _ | _ | _ | _)
    · exact absurd rfl hr
    all_goals first
      | (obtain ⟨B, Γ', Θ', hB, hl, hig⟩ := hR
         obtain ⟨B', Θ'', hj, hpre, hig'⟩ := joinO_left (o' := _) hB hig
         exact ⟨B', Γ', Θ'', hj, ⟨hl.1, hl.2.trans hpre⟩, hig'⟩)
      | exact hR
  · intro t ht hR hg
    obtain ⟨B, Γ', Θ', hB, hl, hig⟩ := hR.1
    rw [hn] at hB; cases hB
    have H := ihq Γ' Θ' t ht ⟨hig, hR.2 rfl⟩ hg
    generalize (evaluateHOLFiniteState t q).1 = r at H ⊢
    generalize (evaluateHOLFiniteState t q).2 = u at H ⊢
    rcases r with _ | (_ | _ | _ | _ | _ | _ | _)
    all_goals first
      | (obtain ⟨B2, Γ'', Θ'', hB2, hl2, hig2⟩ := H
         exact ⟨B2, Γ'', Θ'', hB2, later_trans hl hl2, hig2⟩)
      | (obtain ⟨B2, Γ'', Θ'', hB2, hl2, hig2⟩ := H
         obtain ⟨B', Θ3, hj, hpre, hig'⟩ := joinO_right (o := _) hB2 hig2
         exact ⟨B', Γ'', Θ3, hj, later_trans hl ⟨hl2.1, hl2.2.trans hpre⟩, hig'⟩)
      | (obtain ⟨Γ'', p'', he, hh', hr'⟩ := H
         exact ⟨Γ'', p'', ext_trans hl.1 he, hh', hr'⟩)
      | exact abn_ext (fun he => ext_trans hl.1 he) H

/-- `f(args);` keeping a fact `F` on the locals. -/
theorem callx {a : Act σ} (ha : ActOK a X) {E : CEnv} (hE : E.C = a.C)
    (hT : CTabSound σ X a.Cb a.H E.tab) (hsg : E.sg = a.sg) (hcE : E.caps = a.caps) {A : AEnv}
    {f : MlS} {args : List (ExpHOL 64)} {sg : Sig}
    (hfs : findSig E A f (args.map (aev E.C A chkFuel)) = some sg) (rt : List RT)
    (F : LocalsH → Prop) (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ X (fun t => IG a A Γ Θ t ∧ F t.locals) (.call (some (none, none)) f args)
      (fun r t => SPost a rt (.normal A) Γ Θ r t ∧ (r = none → F t.locals)) := by
  obtain ⟨cs, hmem, -, -, -, hcs⟩ := findSig_spec hfs
  have hf := summ_funSpec (hT f sg cs hmem)
  refine hoareG_callD hf ?_ ?_
  · intro s hs ⟨⟨p, hh, ht, hl⟩, hF⟩ vs hvs callee v st hR _
    obtain ⟨Γ', q', hext, hh', ht', -⟩ := call_core ha hE hsg hh ht hl hs hfs hvs hcs hcE hR
      (by simp [Good]) (by simp [Abortive])
    exact ⟨⟨A, Γ', Θ, rfl, ⟨hext, List.prefix_refl _⟩, ig_after ha.hH hl hext hh' ht'⟩,
      fun _ => hF⟩
  · intro s hs ⟨⟨p, hh, ht, hl⟩, _⟩ vs hvs callee r st hR _ habn
    have hg : Good (some r) := by
      rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> simp [Good]
    by_cases hab : Abortive r
    · rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩
      · exact ⟨Or.inl hab, fun h => absurd h (by simp)⟩
      · exact ⟨Or.inl hab, fun h => absurd h (by simp)⟩
    obtain ⟨Γ', q', hext, hh', -, -⟩ := call_core ha hE hsg hh ht hl hs hfs hvs hcs hcE hR hg hab
    have hH' := heap_congr (s := st) ha.hH (t := emptyLocalsHOLFinite st) rfl rfl rfl rfl hh'
    rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩
    · exact ⟨Or.inr ⟨Γ', q', hext, hH'⟩, fun h => absurd h (by simp)⟩
    · exact ⟨Or.inr ⟨Γ', q', hext, hH'⟩, fun h => absurd h (by simp)⟩

/-- `var x : sh = f(args); k` with a functional spec `Lc` of the callee and an extra ghost fact
`Ex` (derived from `Lc` and the arguments) the continuation may assume. -/
theorem dcx {a : Act σ} (ha : ActOK a X) {E : CEnv} (hE : E.C = a.C)
    (hT : CTabSound σ X a.Cb a.H E.tab) (hsg : E.sg = a.sg) (hcE : E.caps = a.caps)
    {x : MlS} {sh : ShapeHOL} {f : MlS} {args : List (ExpHOL 64)} {k : ProgHOL 64} {A : AEnv}
    {sg : Sig} (hfs : findSig E A f (args.map (aev E.C A chkFuel)) = some sg) {ok : AOut}
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ X f Lc) (Ex : Gam → State σ → Prop) (Γ : Gam) (Θ : List (BitVec 64 × Nat))
    (hex : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (v : ValueHOL 64) (Γ' : Gam),
      IG a A Γ Θ s → Ex Γ s → evs s args = some vs →
      Lc vs (callEntryStateHOLFinite s callee) (.returned v) st → Ext Γ Γ' →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      G a.Cb a.H Γ (callEntryStateHOLFinite s callee) →
      (∀ (i : Nat) av, (args.map (aev E.C A chkFuel))[i]? = some av →
        ∃ w, vs[i]? = some w ∧ VOk Γ Θ av w) →
      Ex Γ' (setVarHOLFinite x v { st with locals := s.locals }))
    (hk : ∀ Γ Θ, HoareG σ X (fun t =>
      IG a (bindRes A (args.map (aev E.C A chkFuel)) sg sh x) Γ Θ t ∧ Ex Γ t) k
        (SPost a E.sg.ret ok Γ Θ)) :
    HoareG σ X (fun s => IG a A Γ Θ s ∧ Ex Γ s) (.decCall x sh f args k)
      (SPost a E.sg.ret ⟨ok.nrm.map (fun B => ⟨restL x (A.L.lookup x) B.L, B.T⟩),
        ok.brk.map (fun B => ⟨restL x (A.L.lookup x) B.L, B.T⟩),
        ok.cnt.map (fun B => ⟨restL x (A.L.lookup x) B.L, B.T⟩)⟩ Γ Θ) := by
  obtain ⟨cs, hmem, -, -, -, hcs⟩ := findSig_spec hfs
  have hf := summ_funSpec (hT f sg cs hmem)
  refine hoareG_decCall (hf.and hLc) ?_ ?_
  · intro s hs ⟨⟨p, hh, ht, hl⟩, hExs⟩ vs hvs callee v st ⟨hR, hLc'⟩ hst hsh
    obtain ⟨Γ', q', hext, hh', ht', hm, hret⟩ :=
      call_core ha hE hsg hh ht hl hs hfs hvs hcs hcE hR (by simp [Good]) (by simp [Abortive])
    obtain ⟨hlen, hvok⟩ := evs_aev hh.1 hl (ns_of ha hs) _ vs hvs
    have hav := avs_vok (C := a.C) hlen hvok
    rw [← hE] at hav
    have hh2 := heap_congr (s := st) (t := { st with locals := s.locals }) ha.hH
      rfl rfl rfl rfl hh'
    obtain ⟨Θ1, hp1, hig1⟩ := bindRes_sound ha.hH hh2 ht' (locals_ext hext hl)
      (heap_ord hh) hh.2.2.1 hm (hret v rfl) hav hsh x
    have hGe : G a.Cb a.H Γ (callEntryStateHOLFinite s callee) := by
      have := G_congr (s := s) (t := callEntryStateHOLFinite s callee) ha.hH rfl rfl rfl rfl hh.1
      rw [ha.hupg] at this
      exact G_of_upg ha.hcaps this
    have hexv := hex s st vs callee v Γ' ⟨p, hh, ht, hl⟩ hExs hvs hLc' hext hsh hGe
      hav
    intro t htc hstt hgood
    subst hstt
    have H := hk Γ' Θ1 _ htc ⟨hig1, hexv⟩ hgood
    have hl0 : Later Γ Θ Γ' Θ1 := ⟨hext, hp1⟩
    generalize (evaluateHOLFiniteState
      (setVarHOLFinite x v { st with locals := s.locals }) k).1 = r at H ⊢
    generalize (evaluateHOLFiniteState
      (setVarHOLFinite x v { st with locals := s.locals }) k).2 = u at H ⊢
    rcases r with _ | (_ | _ | _ | _ | _ | _ | _)
    all_goals first
      | (obtain ⟨B, Γ'', Θ'', hB, hlat, ⟨p', hh2, ht2, hl2⟩⟩ := H
         refine ⟨⟨restL x (A.L.lookup x) B.L, B.T⟩, Γ'', Θ'', by rw [hB]; rfl,
           later_trans hl0 hlat, p', heap_of_locals ha.hH _ hh2, ht2, ?_⟩
         exact locals_restore (later_trans hl0 hlat) hl hl2 x)
      | (obtain ⟨Γ'', p', he, hh2, hr'⟩ := H
         exact ⟨Γ'', p', ext_trans hext he, heap_of_locals ha.hH _ hh2, hr'⟩)
      | (rcases H with hab | ⟨Γ'', p', he, hh2⟩
         · exact Or.inl hab
         · exact Or.inr ⟨Γ'', p', ext_trans hext he, heap_of_locals ha.hH _ hh2⟩)
  · intro s hs ⟨⟨p, hh, ht, hl⟩, _⟩ vs hvs callee r st ⟨hR, hLc'⟩ _ habn
    exact call_abn ha hE hsg hh ht hl hs hfs hvs hcs hcE hR habn _ _

end InitECandidate.Solver.MemSafe.Sc

#print axioms InitECandidate.Solver.MemSafe.Sc.dcx
#print axioms InitECandidate.Solver.MemSafe.Sc.seqx
#print axioms InitECandidate.Solver.MemSafe.Sc.callx
