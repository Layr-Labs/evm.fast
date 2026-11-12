import InitECandidate.Solver.MemSafe.Sc.Final

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

/-!
# Structural rules that carry a result predicate `W` (EcoHyp)

`W` is a predicate on the result of the statement alone (`WR`: a returned `<x, y>` has `y ≤ 2^32`).
Normal ends satisfy it vacuously, abnormal ones (exceptions, final events) by `hWabn`.

* `dcW`: `dcx` with the extra post `W`.
* `seqW`: `seq_sound` with `W` and a ghost fact `Ex1` flowing from the first statement to the second.
* `callDW`, `callAE`: `f(args);` and `x = f(args)` (a local) with a value spec of the callee.
-/

namespace InitECandidate.Solver.MemSafe.Sc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

/-- The value fact on a result: a returned two-word value has a second word below `2^32`. -/
def ValP (rr : PanSemResultExact 64) : Prop :=
  ∀ v, rr = .returned v → ∀ x y : BitVec 64, v = wv [x, y] → y.toNat ≤ 2 ^ 32

def WR (r : Option (PanSemResultExact 64)) : Prop := ∀ rr, r = some rr → ValP rr

theorem wr_none : WR none := fun rr h => by cases h

theorem wr_abn {r : PanSemResultExact 64} (h : Abn r) : WR (some r) := by
  intro rr hrr
  cases hrr
  intro v hv
  exact absurd hv (Node.abn_ne_ret h v)

theorem hoareG_and' {P : State σ → Prop} {c : ProgHOL 64}
    {Q1 Q2 : Option (PanSemResultExact 64) → State σ → Prop}
    (h1 : HoareG σ X P c Q1) (h2 : HoareG σ X P c Q2) :
    HoareG σ X P c (fun r t => Q1 r t ∧ Q2 r t) :=
  fun s hs hp hg => ⟨h1 s hs hp hg, h2 s hs hp hg⟩

theorem dcW {a : Act σ} (ha : ActOK a X) {E : CEnv} (hE : E.C = a.C)
    (hT : CTabSound σ X a.Cb a.H E.tab) (hsg : E.sg = a.sg) (hcE : E.caps = a.caps)
    {x : MlS} {sh : ShapeHOL} {f : MlS} {args : List (ExpHOL 64)} {k : ProgHOL 64} {A : AEnv}
    {sg : Sig} (hfs : findSig E A f (args.map (aev E.C A chkFuel)) = some sg) {ok : AOut}
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ X f Lc) (W : Option (PanSemResultExact 64) → Prop)
    (hWabn : ∀ r, Abn r → W (some r)) (Ex0 Ex1 : Gam → State σ → Prop) (Γ : Gam)
    (Θ : List (BitVec 64 × Nat))
    (hex : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (v : ValueHOL 64) (Γ' : Gam),
      IG a A Γ Θ s → Ex0 Γ s → evs s args = some vs →
      Lc vs (callEntryStateHOLFinite s callee) (.returned v) st → Ext Γ Γ' →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      G a.Cb a.H Γ (callEntryStateHOLFinite s callee) →
      (∀ (i : Nat) av, (args.map (aev E.C A chkFuel))[i]? = some av →
        ∃ w, vs[i]? = some w ∧ VOk Γ Θ av w) →
      Ex1 Γ' (setVarHOLFinite x v { st with locals := s.locals }))
    (hk : ∀ Γ Θ, HoareG σ X (fun t =>
      IG a (bindRes A (args.map (aev E.C A chkFuel)) sg sh x) Γ Θ t ∧ Ex1 Γ t) k
        (fun r t => SPost a E.sg.ret ok Γ Θ r t ∧ W r)) :
    HoareG σ X (fun s => IG a A Γ Θ s ∧ Ex0 Γ s) (.decCall x sh f args k)
      (fun r t => SPost a E.sg.ret ⟨ok.nrm.map (fun B => ⟨restL x (A.L.lookup x) B.L, B.T⟩),
        ok.brk.map (fun B => ⟨restL x (A.L.lookup x) B.L, B.T⟩),
        ok.cnt.map (fun B => ⟨restL x (A.L.lookup x) B.L, B.T⟩)⟩ Γ Θ r t ∧ W r) := by
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
    obtain ⟨H, hW⟩ := H
    refine ⟨?_, hW⟩
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
    exact ⟨call_abn ha hE hsg hh ht hl hs hfs hvs hcs hcE hR habn _ _, hWabn r habn⟩

/-- `p; q` with `W`, and a ghost fact `Ex1` flowing from `p` to `q`. -/
theorem seqW {a : Act σ} {rt : List RT} {p q : ProgHOL 64} {A A' : AEnv} {op oq : AOut}
    (W : Option (PanSemResultExact 64) → Prop) (Ex0 Ex1 : Gam → State σ → Prop)
    (hn : op.nrm = some A')
    (ihp : ∀ Γ Θ, HoareG σ X (fun t => IG a A Γ Θ t ∧ Ex0 Γ t) p
      (fun r t => (SPost a rt op Γ Θ r t ∧ W r) ∧
        (r = none → ∃ B Γ' Θ', op.nrm = some B ∧ Later Γ Θ Γ' Θ' ∧ IG a B Γ' Θ' t ∧ Ex1 Γ' t)))
    (ihq : ∀ Γ Θ, HoareG σ X (fun t => IG a A' Γ Θ t ∧ Ex1 Γ t) q
      (fun r t => SPost a rt oq Γ Θ r t ∧ W r))
    (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ X (fun t => IG a A Γ Θ t ∧ Ex0 Γ t) (.seq p q)
      (fun r t => SPost a rt ⟨oq.nrm, joinO op.brk oq.brk, joinO op.cnt oq.cnt⟩ Γ Θ r t ∧ W r) := by
  refine hoareG_seq (ihp Γ Θ) ?_ ?_
  · intro r t _ hr _ hR
    have hW := hR.1.2
    have hR := hR.1.1
    refine ⟨?_, hW⟩
    rcases r with _ | (_ | _ | _ | _ | _ | _ | _)
    · exact absurd rfl hr
    all_goals first
      | (obtain ⟨B, Γ', Θ', hB, hl, hig⟩ := hR
         obtain ⟨B', Θ'', hj, hpre, hig'⟩ := joinO_left (o' := _) hB hig
         exact ⟨B', Γ', Θ'', hj, ⟨hl.1, hl.2.trans hpre⟩, hig'⟩)
      | exact hR
  · intro t ht hR hg
    obtain ⟨B, Γ', Θ', hB, hl, hig⟩ := hR.1.1
    rw [hn] at hB; cases hB
    obtain ⟨B1, Γ1, Θ1, hB1, hl1, hig1, hE1⟩ := hR.2 rfl
    rw [hn] at hB1; cases hB1
    have H := ihq Γ1 Θ1 t ht ⟨hig1, hE1⟩ hg
    have hl' : Later Γ Θ Γ1 Θ1 := hl1
    generalize (evaluateHOLFiniteState t q).1 = r at H ⊢
    generalize (evaluateHOLFiniteState t q).2 = u at H ⊢
    obtain ⟨H, hW⟩ := H
    refine ⟨?_, hW⟩
    rcases r with _ | (_ | _ | _ | _ | _ | _ | _)
    all_goals first
      | (obtain ⟨B2, Γ'', Θ'', hB2, hl2, hig2⟩ := H
         exact ⟨B2, Γ'', Θ'', hB2, later_trans hl' hl2, hig2⟩)
      | (obtain ⟨B2, Γ'', Θ'', hB2, hl2, hig2⟩ := H
         obtain ⟨B', Θ3, hj, hpre, hig'⟩ := joinO_right (o := _) hB2 hig2
         exact ⟨B', Γ'', Θ3, hj, later_trans hl' ⟨hl2.1, hl2.2.trans hpre⟩, hig'⟩)
      | (obtain ⟨Γ'', p'', he, hh', hr'⟩ := H
         exact ⟨Γ'', p'', ext_trans hl'.1 he, hh', hr'⟩)
      | exact abn_ext (fun he => ext_trans hl'.1 he) H

/-- `f(args);` with `W` and the callee's functional spec dropped. -/
theorem callDW {a : Act σ} (ha : ActOK a X) {E : CEnv} (hE : E.C = a.C)
    (hT : CTabSound σ X a.Cb a.H E.tab) (hsg : E.sg = a.sg) (hcE : E.caps = a.caps) {A : AEnv}
    {f : MlS} {args : List (ExpHOL 64)} {sg : Sig}
    (hfs : findSig E A f (args.map (aev E.C A chkFuel)) = some sg) (rt : List RT)
    (W : Option (PanSemResultExact 64) → Prop) (hW0 : W none)
    (hWabn : ∀ r, Abn r → W (some r)) (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ X (IG a A Γ Θ) (.call (some (none, none)) f args)
      (fun r t => SPost a rt (.normal A) Γ Θ r t ∧ W r) := by
  obtain ⟨cs, hmem, -, -, -, hcs⟩ := findSig_spec hfs
  have hf := summ_funSpec (hT f sg cs hmem)
  refine hoareG_callD hf ?_ ?_
  · intro s hs ⟨p, hh, ht, hl⟩ vs hvs callee v st hR _
    obtain ⟨Γ', q', hext, hh', ht', -⟩ := call_core ha hE hsg hh ht hl hs hfs hvs hcs hcE hR
      (by simp [Good]) (by simp [Abortive])
    exact ⟨⟨A, Γ', Θ, rfl, ⟨hext, List.prefix_refl _⟩, ig_after ha.hH hl hext hh' ht'⟩, hW0⟩
  · intro s hs ⟨p, hh, ht, hl⟩ vs hvs callee r st hR _ habn
    have hg : Good (some r) := by
      rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> simp [Good]
    have hWr := hWabn r habn
    by_cases hab : Abortive r
    · rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> exact ⟨Or.inl hab, hWr⟩
    obtain ⟨Γ', q', hext, hh', -, -⟩ := call_core ha hE hsg hh ht hl hs hfs hvs hcs hcE hR hg hab
    have hH' := heap_congr (s := st) ha.hH (t := emptyLocalsHOLFinite st) rfl rfl rfl rfl hh'
    rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> exact ⟨Or.inr ⟨Γ', q', hext, hH'⟩, hWr⟩

/-- `x = f(args);` (a local) with `W`, the callee's value spec `Lc`, and a ghost fact `Ex1`. -/
theorem callAE {a : Act σ} (ha : ActOK a X) {E : CEnv} (hE : E.C = a.C)
    (hT : CTabSound σ X a.Cb a.H E.tab) (hsg : E.sg = a.sg) (hcE : E.caps = a.caps) {A : AEnv}
    {x f : MlS} {args : List (ExpHOL 64)} {sg : Sig}
    (hfs : findSig E A f (args.map (aev E.C A chkFuel)) = some sg) (rt : List RT)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ X f Lc) (W : Option (PanSemResultExact 64) → Prop) (hW0 : W none)
    (hWabn : ∀ r, Abn r → W (some r)) (Ex0 Ex1 : Gam → State σ → Prop) (Γ : Gam)
    (Θ : List (BitVec 64 × Nat))
    (hex : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (v : ValueHOL 64) (Γ' : Gam),
      IG a A Γ Θ s → Ex0 Γ s → evs s args = some vs →
      Lc vs (callEntryStateHOLFinite s callee) (.returned v) st → Ext Γ Γ' →
      isValidValueHOLExact s.toExact .local x v = true →
      G a.Cb a.H Γ (callEntryStateHOLFinite s callee) →
      (∀ (i : Nat) av, (args.map (aev E.C A chkFuel))[i]? = some av →
        ∃ w, vs[i]? = some w ∧ VOk Γ Θ av w) →
      Ex1 Γ' (setVarHOLFinite x v { st with locals := s.locals })) :
    HoareG σ X (fun t => IG a A Γ Θ t ∧ Ex0 Γ t) (.call (some (some (.local, x), none)) f args)
      (fun r t => (SPost a rt (.normal (bindAsg A (args.map (aev E.C A chkFuel)) sg x)) Γ Θ r t ∧
          W r) ∧
        (r = none → ∃ B Γ' Θ', (AOut.normal (bindAsg A (args.map (aev E.C A chkFuel)) sg x)).nrm
          = some B ∧ Later Γ Θ Γ' Θ' ∧ IG a B Γ' Θ' t ∧ Ex1 Γ' t)) := by
  obtain ⟨cs, hmem, -, -, -, hcs⟩ := findSig_spec hfs
  have hf := summ_funSpec (hT f sg cs hmem)
  refine hoareG_callA (hf.and hLc) ?_ ?_
  · intro s hs ⟨⟨p, hh, ht, hl⟩, hExs⟩ vs hvs callee v st ⟨hR, hLc'⟩ _ hval
    obtain ⟨Γ', q', hext, hh', ht', hm, hret⟩ :=
      call_core ha hE hsg hh ht hl hs hfs hvs hcs hcE hR (by simp [Good]) (by simp [Abortive])
    obtain ⟨hlen, hvok⟩ := evs_aev hh.1 hl (ns_of ha hs) args vs hvs
    have hav := avs_vok (C := a.C) hlen hvok
    rw [← hE] at hav
    have hh2 := heap_congr (s := st) (t := { st with locals := s.locals }) ha.hH rfl rfl rfl rfl hh'
    obtain ⟨Θ', hp, hig⟩ := bindAsg_sound ha.hH hl hh2 ht' (locals_ext hext hl) (heap_ord hh)
      hh.2.2.1 hm (hret v rfl) hav hval
    have hGe : G a.Cb a.H Γ (callEntryStateHOLFinite s callee) := by
      have := G_congr (s := s) (t := callEntryStateHOLFinite s callee) ha.hH rfl rfl rfl rfl hh.1
      rw [ha.hupg] at this
      exact G_of_upg ha.hcaps this
    have hexv := hex s st vs callee v Γ' ⟨p, hh, ht, hl⟩ hExs hvs hLc' hext hval hGe hav
    exact ⟨⟨⟨_, Γ', Θ', rfl, ⟨hext, hp⟩, hig⟩, hW0⟩,
      fun _ => ⟨_, Γ', Θ', rfl, ⟨hext, hp⟩, hig, hexv⟩⟩
  · intro s hs ⟨⟨p, hh, ht, hl⟩, _⟩ vs hvs callee r st ⟨hR, _⟩ _ habn
    have hg : Good (some r) := by
      rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> simp [Good]
    have hWr := hWabn r habn
    by_cases hab : Abortive r
    · rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;>
        exact ⟨⟨Or.inl hab, hWr⟩, fun h => absurd h (by simp)⟩
    obtain ⟨Γ', q', hext, hh', -⟩ := call_core ha hE hsg hh ht hl hs hfs hvs hcs hcE hR hg hab
    have hH' := heap_congr (s := st) ha.hH (t := emptyLocalsHOLFinite st) rfl rfl rfl rfl hh'
    rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;>
      exact ⟨⟨Or.inr ⟨Γ', q', hext, hH'⟩, hWr⟩, fun h => absurd h (by simp)⟩

/-- `p; q` with `W`, no ghost fact from `p` to `q`. -/
theorem seqW0 {a : Act σ} {rt : List RT} {p q : ProgHOL 64} {A A' : AEnv} {op oq : AOut}
    (W : Option (PanSemResultExact 64) → Prop) (Ex0 : Gam → State σ → Prop)
    (hn : op.nrm = some A')
    (ihp : ∀ Γ Θ, HoareG σ X (fun t => IG a A Γ Θ t ∧ Ex0 Γ t) p
      (fun r t => SPost a rt op Γ Θ r t ∧ W r))
    (ihq : ∀ Γ Θ, HoareG σ X (fun t => IG a A' Γ Θ t ∧ True) q
      (fun r t => SPost a rt oq Γ Θ r t ∧ W r))
    (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ X (fun t => IG a A Γ Θ t ∧ Ex0 Γ t) (.seq p q)
      (fun r t => SPost a rt ⟨oq.nrm, joinO op.brk oq.brk, joinO op.cnt oq.cnt⟩ Γ Θ r t ∧ W r) :=
  seqW W Ex0 (fun _ _ => True) hn
    (fun Γ Θ => hoareG_conseq (ihp Γ Θ) (fun _ _ h => h) (fun r t _ _ H => ⟨H, fun hr => by
      subst hr
      obtain ⟨B, Γ', Θ', hB, hl, hig⟩ := H.1
      exact ⟨B, Γ', Θ', hB, hl, hig, trivial⟩⟩)) ihq Γ Θ

end InitECandidate.Solver.MemSafe.Sc

#print axioms InitECandidate.Solver.MemSafe.Sc.dcW
#print axioms InitECandidate.Solver.MemSafe.Sc.seqW
#print axioms InitECandidate.Solver.MemSafe.Sc.seqW0
#print axioms InitECandidate.Solver.MemSafe.Sc.callDW
#print axioms InitECandidate.Solver.MemSafe.Sc.callAE
