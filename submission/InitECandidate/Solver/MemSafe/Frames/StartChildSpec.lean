import InitECandidate.Solver.MemSafe.Frames.StartChildTail

/-!
# `start_child`'s summary: the proof
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 1600000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- The locals after the kind-2 part: parameters unchanged, `csnap` a word. -/
def LFs (s0 u : State σ) : Prop :=
  (∀ x ∈ scNames, u.locals.lookup x = s0.locals.lookup x) ∧
  (∃ v, u.locals.lookup (nm "csnap") = some v ∧ ∃ w, v = .val (.word w))

/-- `SPost` for non-abortive results only (`SumSpecA`). -/
def SPostA (C : Cfg) (H : Hooks σ) (tEV tCK : Nat) (gwA : List MlS) (Γ : Gam) (s0 : State σ)
    (p : Ptrs) (vs : List (ValueHOL 64)) (ro : Option (PanSemResultExact 64)) (t : State σ) :
    Prop :=
  ∀ r, ro = some r → ¬ Abortive r → ∃ Γ' p', Run C H (nmEv :: nmCC :: gwA) Γ s0 Γ' t p p' ∧
    QSC C tEV tCK vs s0 Γ r t Γ'

theorem spostA_of {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {gwA : List MlS} {Γ : Gam}
    {s0 : State σ} {p : Ptrs} {vs : List (ValueHOL 64)} {ro : Option (PanSemResultExact 64)}
    {t : State σ} (h : SPost C H tEV tCK gwA Γ s0 p vs ro t) : SPostA C H tEV tCK gwA Γ s0 p vs ro t :=
  fun r hr _ => h r hr

theorem spostA_locals {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {tEV tCK : Nat}
    {gwA : List MlS} {Γ : Gam} {s0 : State σ} {p : Ptrs} {vs : List (ValueHOL 64)}
    {ro : Option (PanSemResultExact 64)} {t : State σ} (h : SPostA C H tEV tCK gwA Γ s0 p vs ro t)
    (l : Locs) : SPostA C H tEV tCK gwA Γ s0 p vs ro { t with locals := l } := by
  intro r hr hna
  have h1 : SPost C H tEV tCK gwA Γ s0 p vs (some r) t := fun r' hr' => by
    simp only [Option.some.injEq] at hr'
    subst hr'
    exact h r hr hna
  exact spost_locals hH h1 l r rfl

/-- **`start_child`'s summary.** -/
theorem sc_sumSpec {C : Cfg} {H : Hooks σ} {tEV tCK M : Nat} (hC : X.code.lookup = guestCode)
    (hD : DrvCfg C H tEV tCK) {gwK gwN gwS : List MlS} (hgwK : nmEv ∉ gwK ∧ nmCC ∉ gwK)
    {NewPre : List (ValueHOL 64) → State σ → Gam → Prop}
    (hNP : ∀ vs (s : State σ) Γ (l : Locs) (c : Nat),
      NewPre vs { s with locals := l, clock := c } Γ ↔ NewPre vs s Γ)
    (hNPr : ∀ vs Γ (s : State σ) Γ' t, NewPre vs s Γ → ProtKeep C Γ s t → Ext Γ Γ' →
      NewPre vs t Γ')
    (hds : SummFp σ X C H (nm "destroy_storage") (sg1 gwK))
    (hmac : SummFp σ X C H (nm "mark_account_created") (sg1 gwK))
    (hinc : SummFp σ X C H (nm "increment_nonce") (sg1 gwK))
    (hfo : SumSpecA σ X C H (nm "frame_open") (sgFO gwN) (PreFO NewPre) (fun _ _ _ _ => False)
      (FOQ tEV tCK))
    (hfoE : NoEvm σ X (nm "frame_open"))
    (hfst : SumSpec σ X C H (nm "frame_start") (sg0 gwS) (PreInv C tEV tCK M)
      (fun _ _ _ _ => True) (QLe C tEV tCK))
    (hfsE : NoEvm σ X (nm "frame_start")) :
    SumSpecA σ X C H (nm "start_child") (sgSC (gwK ++ gwN ++ gwS)) (PreSC C tEV tCK M NewPre)
      (fun _ _ _ _ => True) (QSC C tEV tCK) := by
  intro vs body callee rs hl s0 hs0 hloc r hr hg hna Γ hG _
    ⟨cm, kind, cmark, cmm, nac, os, osz, ca, hvs, hkd, fs, e0, c0, rest, hch, hfs, hsp, hmm,
      hout, hΦM, hnp, hcm40, hmk0, hfa0, hrel0⟩
  subst hvs
  rw [hC] at hl
  obtain ⟨ps, hps8, hlk⟩ := lookupCode_k hl
  rw [code_sc] at hps8
  simp only [Option.some.injEq, Prod.mk.injEq] at hps8
  obtain ⟨rfl, rfl, -⟩ := hps8
  have L : ∀ k x v, scParams[k]? = some (x, ShapeHOL.one) →
      (scArgs cm kind cmark cmm nac os osz ca)[k]? = some v → s0.locals.lookup x = some v :=
    fun k x v h1 h2 => by rw [hloc]; exact hlk k _ v h1 h2
  have lcm := L 0 (nm "cm") _ rfl rfl
  have lkind := L 1 (nm "kind") _ rfl rfl
  have lcmark := L 2 (nm "child_mark") _ rfl rfl
  have lcmm := L 3 (nm "child_mem_mark") _ rfl rfl
  have lnac := L 4 (nm "new_account_charged") _ rfl rfl
  have los := L 5 (nm "out_start") _ rfl rfl
  have losz := L 6 (nm "out_size") _ rfl rfl
  have lca := L 7 (nm "contract_address") _ rfl rfl
  have ⟨p, hps, hord, hL, _⟩ := hG
  have hF := hD.fc
  have hH := hF.hooks
  let gwA := gwK ++ gwN ++ gwS
  let args := scArgs cm kind cmark cmm nac os osz ca
  let SP := SPostA C H tEV tCK gwA Γ s0 p args
  let SKs := SK C H gwK Γ s0 p
  let RR : Option (PanSemResultExact 64) → State σ → Prop := fun r u =>
    (r = none ∧ SKs u) ∨ (r ≠ none ∧ SP r u)
  have hsubK : ∀ g, g ∈ gwK → g ∈ gwA := fun g h => by simp [gwA, h]
  have he0 : gword s0 nmEv = some e0 ∧ gword s0 nmCC = some c0 := by
    obtain ⟨e', c', rest', hfs', he', hc', -⟩ := hch.chain
    rw [hfs] at hfs'
    simp only [List.cons.injEq, Prod.mk.injEq] at hfs'
    obtain ⟨⟨rfl, rfl⟩, rfl⟩ := hfs'
    exact ⟨he', hc'⟩
  have hcm40k : ∀ (u : State σ), ProtKeep C Γ s0 u →
      fld u.memory cm 40 = fld s0.memory cm 40 := by
    intro u hpk
    unfold fld rd
    rw [hpk _ hcm40]
  have hRR : ∀ r t, InCtx t X → r ≠ none → Good r → RR r t → SP r t :=
    fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)
  have hRR' : ∀ (P' : State σ → Prop) r t, InCtx t X → r ≠ none → Good r →
      ((r = none ∧ P' t) ∨ (r ≠ none ∧ SP r t)) → SP r t :=
    fun _ r t _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)
  have hsk' : ∀ {f : MlS}, SummFp σ X C H f (sg1 gwK) →
      HoareG σ X SKs (callD f [lv (nm "target")]) RR := fun hf =>
    hoareG_conseq (sk_callD_hoare (vs0 := args) hF hsubK hgwK hG hch hf) (fun _ _ h => h)
      (fun r t _ _ h => h.imp id (fun h => ⟨h.1, spostA_of h.2⟩))
  have H0 : HoareG σ X (fun u => u = s0) scBody SP := by
    refine hoareG_dec fun s _ hs v1 hv1 _ => ?_
    have hs' := hs.symm; subst hs'
    rw [ev_cw] at hv1; cases hv1
    refine hoareG_conseq (Q := SP) ?_ (fun _ _ h => h) (fun r t _ _ h => spostA_locals hH h _)
    have hsk1 : SKs (setVarHOLFinite (nm "csnap") (.val (.word (BitVec.ofNat 64 0))) s0) :=
      ⟨fun x hx => lk_set_ne _ _ (csnap_not_name hx).symm, ⟨_, lk_set_self _ _ _, _, rfl⟩, Γ, p,
        run_locals hH (run_refl hG hps) _, rfl, fun _ _ => rfl⟩
    -- the kind-2 part
    refine hoareG_seq (R := RR) ?_ hRR ?_
    · refine hoareG_ite ?_ (hoareG_skip fun u _ ⟨hu, _⟩ => Or.inl ⟨rfl, hu ▸ hsk1⟩)
      refine hoareG_pre (P := SKs) ?_ (fun u _ ⟨hu, _⟩ => hu ▸ hsk1)
      refine hoareG_seq (R := RR) ?_ (fun _ _ _ _ _ h => h) ?_
      · refine hoareG_callA (FunSpec.and (snapshot_spec hC) (funSpec_dom _)) ?_ ?_
        · intro s _ hsk vs _ callee v st ⟨hR, hd, hbe⟩ _ hval
          obtain ⟨-, -, hm, hgl⟩ := hR (by simp [Good])
          obtain ⟨hlf, ⟨cv, hcv, w, rfl⟩, Γ1, p1, hrun, hfp, hpk⟩ := hsk
          obtain ⟨w', rfl⟩ := word_of_valid hcv hval
          refine Or.inl ⟨rfl, fun y hy => ?_, ⟨_, lk_set_self _ _ _, _, rfl⟩, Γ1, p1,
            run_same hH hrun hm hgl hd hbe, hfp, fun a ha => ?_⟩
          · show (setVarHOLFinite _ _ _).locals.lookup y = _
            rw [lk_set_ne _ _ (csnap_not_name hy).symm]; exact hlf y hy
          · show st.memory a = _
            rw [hm]; exact hpk a ha
        · rintro s - - vs - callee r st ⟨hR, -, -⟩ - habn
          obtain ⟨-, ⟨v', hv', -⟩, -⟩ := hR (good_of_abn habn)
          subst hv'
          rcases habn with ⟨_, _, h⟩ | ⟨_, h⟩ <;> cases h
      · refine hoareG_pre (P := SKs) ?_ (fun u _ h => h.elim (fun h => h.2)
          (fun h => absurd rfl h.1))
        refine hoareG_dec fun s _ hsk vt _ _ => ?_
        refine hoareG_conseq (Q := RR) ?_ (fun _ _ h => h) ?_
        · refine hoareG_pre (P := SKs) ?_ (fun u _ hu => by
            subst hu
            exact sk_loc hH hsk _ (fun x hx => lk_set_ne _ _ (target_not_name hx).symm)
              (lk_set_ne _ _ (by decide)))
          refine hoareG_seq (R := RR) (hsk' hds) (fun _ _ _ _ _ h => h) ?_
          refine hoareG_pre (P := SKs) ?_ (fun u _ h => h.elim (fun h => h.2)
            (fun h => absurd rfl h.1))
          refine hoareG_seq (R := RR) (hsk' hmac) (fun _ _ _ _ _ h => h) ?_
          refine hoareG_pre (P := SKs) (hsk' hinc)
            (fun u _ h => h.elim (fun h => h.2) (fun h => absurd rfl h.1))
        · intro r t _ _ h
          rcases h with ⟨h1, h2⟩ | ⟨h1, h2⟩
          · exact Or.inl ⟨h1, sk_loc hH h2 _ (fun x hx => lookup_resVarEq_ne _ _
              (target_not_name hx).symm) (lookup_resVarEq_ne _ _ (by decide))⟩
          · exact Or.inr ⟨h1, spostA_locals hH h2 _⟩
    -- the depth check and the rest
    refine hoareG_pre (P := SKs) ?_ (fun u _ h => h.elim (fun h => h.2) (fun h => absurd rfl h.1))
    refine hoareG_seq (R := RR) ?_ hRR ?_
    · refine hoareG_ite ?_ (hoareG_skip fun u _ ⟨hsk, _⟩ => Or.inl ⟨rfl, hsk⟩)
      refine hoareG_raise fun u _ ⟨hsk, _⟩ v _ => Or.inr ⟨by simp, ?_⟩
      obtain ⟨-, -, Γ1, p1, hrun, hfp, hpk⟩ := hsk
      exact spostA_of (spost_pre hF hsubK hgwK hG hch (run_emptyLocals hH hrun) hfp hpk
        (fun v h => by cases h))
    refine hoareG_pre (P := SKs) ?_ (fun u _ h => h.elim (fun h => h.2) (fun h => absurd rfl h.1))
    refine hoareG_seq (R := fun r u => r = none ∧ SKs u) (hoareG_skip fun u _ h => ⟨rfl, h⟩)
      (fun r t _ hr _ h => absurd h.1 hr) ?_
    refine hoareG_pre (P := SKs) ?_ (fun u _ h => h.2)
    let gwF := nmEv :: nmCC :: gwA
    let SFs := SF C H tEV tCK gwF Γ s0 p cm e0 c0 kind
    have hpsO : ∀ pt ∈ (sgFO gwN).params, pt = .any := by
      intro pt h; simp only [List.mem_cons, List.mem_nil_iff, or_false] at h
      rcases h with rfl | rfl <;> rfl
    have hsubN : ∀ g, g ∈ (sgFO gwN).gw → g ∈ gwF := by
      intro g h
      simp only [List.mem_cons] at h
      rcases h with h | h | h
      · exact h ▸ List.mem_cons_self ..
      · exact h ▸ List.mem_cons_of_mem _ (List.mem_cons_self ..)
      · exact List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (by simp [gwA, h]))
    have hsubKF : ∀ g, g ∈ gwK → g ∈ gwF := fun g h =>
      List.mem_cons_of_mem _ (List.mem_cons_of_mem _ (hsubK g h))
    -- frame_open
    refine hoareG_seq (R := fun r u => (r = none ∧ SFs u ∧ LFs s0 u) ∨ (r ≠ none ∧ SP r u)) ?_
      (hRR' (fun u => SFs u ∧ LFs s0 u)) ?_
    · refine hoareG_callD (FunSpec.and hfo hfoE) ?_ ?_
      · intro s _ hsk vs' hvs' callee' v' st ⟨hR, _⟩ _
        obtain ⟨hlf, hcs, Γ1, p1, hrun, hfp, hpk⟩ := hsk
        have hev' : evs s [lv (nm "cm"), lv (nm "kind")] =
            some [.val (.word cm), .val (.word kind)] :=
          evs_cons (lv_of rfl ((hlf _ (by decide)).trans lcm))
            (evs_cons (lv_of rfl ((hlf _ (by decide)).trans lkind)) evs_nil)
        rw [hev'] at hvs'; cases hvs'
        have hGe : G C H Γ1 (callEntryStateHOLFinite s callee') :=
          (G_locFree hH s _ _).mpr hrun.2.2.2.2.2.1
        have hpe : ptrsOf (callEntryStateHOLFinite s callee') = some p1 :=
          (ptrsOf_congr rfl).trans hrun.2.1
        have hevs : gword s nmEv = some e0 := by
          rw [← he0.1]; unfold gword; rw [hrun.2.2.2.2.2.2.2 _ hF.pgEv hgwK.1]
        have hccs : gword s nmCC = some c0 := by
          rw [← he0.2]; unfold gword; rw [hrun.2.2.2.2.2.2.2 _ hF.pgCC hgwK.2]
        obtain ⟨Γ2, q1, p2, hc, hq⟩ := hR (by simp [Good]) (not_abortive_ret _) Γ1 hGe
          ⟨p1, hpe, argsOK_any hpsO rfl⟩
          ⟨cm, kind, rfl, (hNP _ s Γ1 callee' _).mpr (hNPr _ Γ s0 Γ1 s hnp hpk hrun.2.2.2.1),
            ⟨e0, hevs⟩, ⟨c0, hccs⟩⟩
        have hq1 : q1 = p1 := Option.some.inj (hc.1.symm.trans hpe)
        subst q1
        obtain ⟨cm', kind', e, q, hvs2, -, hge, hgc, hrec, hblk, hcf, hpar, hparc, hknd, -⟩ :=
          hq v' rfl
        simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true]
          at hvs2
        obtain ⟨rfl, rfl⟩ := hvs2
        obtain ⟨⟨o, ho, hob, hot, hfr⟩, f64, f192, -, -, -, -, f40, hfp2, f216, hmy, -⟩ := hcf
        have hrun2 : Run C H gwF Γ s0 Γ2 st p p2 :=
          run_trans hG (run_gw hsubKF hrun) (run_entry callee' (run_of_sumCore hpsO hsubN hc))
        have hpk2 : ProtKeep C Γ s0 st := protKeep_trans hrun.2.2.2.1 hpk
          (protKeep_of_sumCore (s := callEntryStateHOLFinite s callee') hpsO hGe hc)
        obtain ⟨hmem, hfp12⟩ := hfp2 p1 p2 hpe hc.2.1
        have h40 : (fld st.memory e 40).toNat = 1024 := by rw [f40]; rfl
        refine Or.inl ⟨rfl, ⟨Γ2, p2, e, q, run_locals hH hrun2 _, hpk2, hge, hgc, hrec,
          fun a h1 h2 ha => hblk p1 hpe a h1 h2 (allocated_mono hrun.2.2.1 ha),
          ⟨o, ho, hob, hot, fun a ha hal => hfr p1 hpe a ha (allocated_mono hrun.2.2.1 hal)⟩,
          f64.trans (hcm40k s hpk), f192, ?_, hpar e0 hevs, hparc c0 hccs, hknd, f216,
          by obtain ⟨y, hy, hyl⟩ := hmy p1 hpe; exact ⟨y, hy, hyl.trans hfp⟩, by omega⟩,
          hlf, hcs⟩
        show (fld st.memory e 24).toNat + (fld st.memory e 40).toNat = p2.fp
        omega
      · intro s _ hsk vs' hvs' callee' r' st ⟨hR, hnoE⟩ _ habn
        obtain ⟨hlf, hcs, Γ1, p1, hrun, hfp, hpk⟩ := hsk
        have hev' : evs s [lv (nm "cm"), lv (nm "kind")] =
            some [.val (.word cm), .val (.word kind)] :=
          evs_cons (lv_of rfl ((hlf _ (by decide)).trans lcm))
            (evs_cons (lv_of rfl ((hlf _ (by decide)).trans lkind)) evs_nil)
        rw [hev'] at hvs'; cases hvs'
        have hGe : G C H Γ1 (callEntryStateHOLFinite s callee') :=
          (G_locFree hH s _ _).mpr hrun.2.2.2.2.2.1
        have hpe : ptrsOf (callEntryStateHOLFinite s callee') = some p1 :=
          (ptrsOf_congr rfl).trans hrun.2.1
        have hevs : gword s nmEv = some e0 := by
          rw [← he0.1]; unfold gword; rw [hrun.2.2.2.2.2.2.2 _ hF.pgEv hgwK.1]
        have hccs : gword s nmCC = some c0 := by
          rw [← he0.2]; unfold gword; rw [hrun.2.2.2.2.2.2.2 _ hF.pgCC hgwK.2]
        refine Or.inr ⟨by simp, fun r'' hr'' hna'' => ?_⟩
        cases hr''
        obtain ⟨Γ2, q1, p2, hc, -⟩ := hR (good_of_abn habn) hna'' Γ1 hGe
          ⟨p1, hpe, argsOK_any hpsO rfl⟩
          ⟨cm, kind, rfl, (hNP _ s Γ1 callee' _).mpr (hNPr _ Γ s0 Γ1 s hnp hpk hrun.2.2.2.1),
            ⟨e0, hevs⟩, ⟨c0, hccs⟩⟩
        have hq1 : q1 = p1 := Option.some.inj (hc.1.symm.trans hpe)
        subst q1
        have hrun2 : Run C H gwF Γ s0 Γ2 st p p2 :=
          run_trans hG (run_gw hsubKF hrun) (run_entry callee' (run_of_sumCore hpsO hsubN hc))
        exact ⟨Γ2, p2, run_emptyLocals hH hrun2, fun _ _ => ⟨fun v hv => absurd hv
          (not_returned_of_abn habn v), fun v hv => absurd hv (hnoE v)⟩⟩
    refine hoareG_pre (P := fun u => SFs u ∧ LFs s0 u) ?_
      (fun u _ h => h.elim (fun h => h.2) (fun h => absurd rfl h.1))
    refine hoareG_seq (R := fun r u => r = none ∧ SFs u ∧ LFs s0 u) (hoareG_skip fun u _ h =>
      ⟨rfl, h⟩) (fun r t _ hr _ h => absurd h.1 hr) ?_
    refine hoareG_pre (P := fun u => SFs u ∧ LFs s0 u) ?_ (fun u _ h => h.2)
    refine hoareG_seq (R := fun r u => r = none ∧ SFs u ∧ LFs s0 u) (hoareG_skip fun u _ h =>
      ⟨rfl, h⟩) (fun r t _ hr _ h => absurd h.1 hr) ?_
    refine hoareG_pre (P := fun u => SFs u ∧ LFs s0 u) ?_ (fun u _ h => h.2)
    -- the journal snapshot
    refine hoareG_decCall (FunSpec.and (snapshot_spec hC) (funSpec_dom _)) ?_ ?_
    rotate_left
    · rintro s - - vs' - callee' r' st ⟨hR, -, -⟩ - habn
      obtain ⟨-, ⟨v', hv', -⟩, -⟩ := hR (good_of_abn habn)
      subst hv'
      rcases habn with ⟨_, _, h⟩ | ⟨_, h⟩ <;> cases h
    intro s _ ⟨hsf, hlf, hcs⟩ vs' _ callee' v' st ⟨hR, hd, hbe⟩ _ hsh
    obtain ⟨-, -, hm, hgl⟩ := hR (by simp [Good])
    obtain ⟨wsn, rfl⟩ := val_of_shapeEq_one' hsh
    refine hoareG_conseq (Q := SP) ?_ (fun _ _ h => h) (fun r t _ _ h => spostA_locals hH h _)
    have hsf0 : SFs (setVarHOLFinite (nm "snapshot") (.val (.word wsn))
        { st with locals := s.locals }) := sf_same hH hsf hm hgl hd hbe
    obtain ⟨-, -, -, q, -, -, -, hgc0, -⟩ := id hsf0
    obtain ⟨cv, hcv, wcs, rfl⟩ := hcs
    let lw : List (MlS × BitVec 64) := [(nm "snapshot", wsn), (nm "csnap", wcs),
      (nm "child_mark", cmark), (nm "child_mem_mark", cmm), (nm "new_account_charged", nac),
      (nm "out_start", os), (nm "out_size", osz), (nm "contract_address", ca)]
    have hlw : ∀ xw ∈ lw, (setVarHOLFinite (nm "snapshot") (.val (.word wsn))
        { st with locals := s.locals }).locals.lookup xw.1 = some (.val (.word xw.2)) := by
      intro xw hxw
      simp only [lw, List.mem_cons, List.mem_nil_iff, or_false] at hxw
      rcases hxw with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> dsimp only
      · exact lk_set_self _ _ _
      · rw [lk_set_ne _ _ (by decide)]; exact hcv
      · rw [lk_set_ne _ _ (by decide)]; exact (hlf _ (by decide)).trans lcmark
      · rw [lk_set_ne _ _ (by decide)]; exact (hlf _ (by decide)).trans lcmm
      · rw [lk_set_ne _ _ (by decide)]; exact (hlf _ (by decide)).trans lnac
      · rw [lk_set_ne _ _ (by decide)]; exact (hlf _ (by decide)).trans los
      · rw [lk_set_ne _ _ (by decide)]; exact (hlf _ (by decide)).trans losz
      · rw [lk_set_ne _ _ (by decide)]; exact (hlf _ (by decide)).trans lca
    have hST0 : STs C H tEV tCK gwF Γ s0 p cm e0 c0 kind q lw []
        (setVarHOLFinite (nm "snapshot") (.val (.word wsn)) { st with locals := s.locals }) :=
      ⟨hsf0, hgc0, hlw, fun _ h => by simp at h⟩
    refine hoareG_pre (P := STs C H tEV tCK gwF Γ s0 p cm e0 c0 kind q lw []) ?_
      (fun u _ hu => by subst hu; exact hST0)
    unfold scStores stCC
    refine sts_store hF hord hL (j := 3) (by decide) (by decide) (by decide) (x := nm "snapshot")
      (w := wsn) (by simp [lw]) (by simp) ?_
    refine sts_store hF hord hL (j := 12) (by decide) (by decide) (by decide) (x := nm "csnap")
      (w := wcs) (by simp [lw]) (by simp) ?_
    refine sts_store hF hord hL (j := 6) (by decide) (by decide) (by decide)
      (x := nm "child_mark") (w := cmark) (by simp [lw]) (by simp) ?_
    refine sts_store hF hord hL (j := 7) (by decide) (by decide) (by decide)
      (x := nm "child_mem_mark") (w := cmm) (by simp [lw]) (by simp) ?_
    refine sts_store hF hord hL (j := 8) (by decide) (by decide) (by decide)
      (x := nm "new_account_charged") (w := nac) (by simp [lw]) (by simp) ?_
    refine sts_store hF hord hL (j := 9) (by decide) (by decide) (by decide)
      (x := nm "out_start") (w := os) (by simp [lw]) (by simp) ?_
    refine sts_store hF hord hL (j := 10) (by decide) (by decide) (by decide)
      (x := nm "out_size") (w := osz) (by simp [lw]) (by simp) ?_
    refine sts_store hF hord hL (j := 11) (by decide) (by decide) (by decide)
      (x := nm "contract_address") (w := ca) (by simp [lw]) (by simp) ?_
    exact hoareG_conseq (sc_tail hF (fun g h => by simp [gwA, h]) hG hch hfs hsp
      (by rcases hkd with rfl | rfl <;> decide) hmm hout hΦM rfl hfst hfsE hmk0 hfa0 hrel0
      (by simp) (by simp) (by simp) (by simp)) (fun _ _ h => h) (fun _ _ _ _ h => spostA_of h)
  obtain hP := H0 s0 hs0 rfl (by rw [hr]; exact hg) r hr hna
  obtain ⟨Γ', p', hrun, hq⟩ := hP
  exact ⟨Γ', p, p', sumCore_of_run rfl rfl hrun, hq⟩

end InitECandidate.Solver.MemSafe.Frames
