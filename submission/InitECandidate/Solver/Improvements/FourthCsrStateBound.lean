import InitECandidate.Solver.Improvements.FourthCsrAccountBound

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option cbv.warning false

namespace FourthCsrState
open InitECandidate.Solver.Band7
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Trie

variable {σ : Type}

set_option maxHeartbeats 0 in
/-- The second loop, the third loop and the root. -/
theorem cstage_state_bounded {a : Act σ} (ha : ActOK a guestCtx) (haC : a.C = Types.guestC)
    (hCb : a.Cb = Types.guestC) (haH : a.H = Hooks.guestHooksR (σ := σ)) (hgr : a.sg.grows = true)
    (hcI : capSub insCaps a.caps = true)
    (hcC : capSub (HtabEntries.capsHT Types.tHTb20) a.caps = true)
    {B : List (MlS × ValueHOL 64)} {C NR SW AW ND OUT CP : BitVec 64}
    (hcap : (nm "cap", .val (.word CP)) ∈ B) (hCP : CP.toNat ≤ capMax)
    (hnd : (nm "nodedb", ValueHOL.val (.word ND)) ∈ B) (hsw : (nm "sw", ValueHOL.val (.word SW)) ∈ B)
    (hcache : (nm "cache", ValueHOL.val (.word C)) ∈ B) (haw : (nm "aw", ValueHOL.val (.word AW)) ∈ B)
    (hout : (nm "out", ValueHOL.val (.word OUT)) ∈ B)
    (hfr : ∀ p ∈ B, ∀ w ∈ nm "state_mpt" :: (nm "acap" :: nm "i" :: (Trie.nsB ++ nsC)), p.1 ≠ w)
    (hOutB : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), Heap a Γ q s → BufOK a.Cb Γ q OUT.toNat 32)
    (hOutF : ∀ x : BitVec 64, Overlap OUT.toNat 32 x → a.Foot x)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hRv : ∀ Γ q mm, Rv Γ q mm (.val (.word (BitVec.ofNat 64 0)))) :
    CH σ (GI a (fun m => ∃ I0 : BitVec 64, LV ((nm "i", ValueHOL.val (.word I0)) :: B) m)
        (IB a (fun _ => True) C NR SW AW ND)) csr_state_mpt_1
      (GP a (fun _ => False) (fun _ _ _ => True) Rv) stateBound := by
  have hKt : ∀ Γ Γ' : Gam, Ext Γ Γ' → GamOK Γ' → True → True := fun _ _ _ _ h => h
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  unfold csr_state_mpt_1
  refine ch_exL fun I0 => ?_
  let kvi : List (MlS × ValueHOL 64) := (nm "i", ValueHOL.val (.word I0)) :: B
  refine gc_decCallM ha (cs := []) (capSub_nil _) (sa_mfw hCb haH) (funSpec_true _) (by simp [mfwSig])
    (fun _ => hgr)
    (L1 := fun v m => ∃ M : BitVec 64, v = .val (.word M) ∧ LV ((nm "state_mpt", v) :: kvi) m)
    (E1 := fun v Γ q mm => ∀ M : BitVec 64, v = .val (.word M) →
      IM a (fun _ => True) C NR SW AW ND M Γ q mm)
    (L2 := fun _ => False) (E2 := fun _ _ _ => True) ?_ ?_ ?_ ?_ (fun _ _ _ h => h.elim) cc_mfw mfw_map
  · intro s Γ q hs hL hh hE vs hvs
    obtain ⟨v0, v1, v2, rfl, h0, h1, h2⟩ := evs3_mid hvs
    rw [lv_ev hL (List.mem_cons_of_mem _ hnd)] at h0
    cases h0
    rw [ev_cw] at h2
    cases h2
    obtain ⟨o', ho', hot', rfl⟩ := glob_slot haC haH hh hs Types.gt_ws (k := 8) (by norm_num) h1
    refine ⟨(anyArgsG (by simp [mfwSig]) rfl (evs_cons (lv_ev hL (List.mem_cons_of_mem _ hnd))
      (evs_cons h1 (evs_cons (ev_cw s 1) evs_nil)))).1,
      fun x hx => (argCells_nb (by decide) hx).elim, fun callee => ?_⟩
    have hGc : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ (callEntryStateHOLFinite s callee) := by
      have := Struct.G_congr (s := s) ha.hH rfl rfl rfl rfl hh.1
      rw [haC, haH] at this
      exact this
    obtain ⟨ow, how, hty, hndv⟩ := hE.2.1
    have hdw := dwTPre_of_obj hGc how hty (.val (.word (rd s.memory (o'.base + BitVec.ofNat 64 8))))
    have e : rd (callEntryStateHOLFinite s callee).memory ow.base = ND := hndv.symm
    rw [e] at hdw
    exact ⟨ND, _, BitVec.ofNat 64 1, rfl, hdw⟩
  · intro s st vs callee r Γ Γ' q q' hs hL hvs he hE hLc hQ hh hext hh' hmo hnf hnfp hmd hret
    refine ⟨hQ.1, fun v hv hsh M hM => ?_⟩
    have hq0 : ptrsOf (callEntryStateHOLFinite s callee) = some q :=
      (InitECandidate.Solver.Band.ptrsOf_glob (t := callEntryStateHOLFinite s callee) (s := s) rfl).trans hh.2.1
    obtain ⟨M', hM', hHR⟩ := hQ.2 v hv q q' hq0 hh'.2.1
    rw [hM] at hM'
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hM'
    subst hM'
    exact im_of_ib (ib_nb haC hCb hKt (by decide) (by intro c hc; simp at hc) hmd hext hh hh' hE)
      ⟨hHR.1, fun c hc => Struct.notAlloc_mono hh.2.2.1 (hHR.2 c hc)⟩
  · intro s st v hL hsh
    obtain ⟨M, rfl⟩ := val_of_shapeEq_one' hsh
    exact ⟨M, rfl, lv_cons (lv_set hL (fun p hp => by
      rcases List.mem_cons.mp hp with rfl | hp
      · dsimp only; decide
      · exact hfr p hp _ (by simp)) _) (by simp [setVarHOLFinite, FUPDATE])⟩
  · intro v
    by_cases hw : ∃ M : BitVec 64, v = .val (.word M)
    swap
    · exact ch_false fun s _ h => hw (by obtain ⟨M, hM, -⟩ := h.1; exact ⟨M, hM⟩)
    obtain ⟨M, rfl⟩ := hw
    let B' : List (MlS × ValueHOL 64) := (nm "state_mpt", ValueHOL.val (.word M)) :: B
    refine ch_pre (P := GI a (fun m => ∃ I0 : BitVec 64, LV ((nm "i", ValueHOL.val (.word I0)) :: B') m)
      (IM a (fun _ => True) C NR SW AW ND M)) ?_
      (fun s _ ⟨⟨M', hM', hL⟩, Γ, q, he, hh, hsc, hE⟩ => by
        simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hM'
        subst hM'
        exact ⟨⟨I0, lv_perm hL (fun p hp => by simp only [kvi, B', List.mem_cons] at hp ⊢; tauto)⟩, Γ, q, he, hh, hsc,
          hE M rfl⟩)
    have hfrB' : ∀ p ∈ B', ∀ w ∈ nm "acap" :: nm "i" :: (Trie.nsB ++ nsC), p.1 ≠ w := fresh_cons
      (fun p hp w hw => hfr p hp w (List.mem_cons_of_mem _ hw)) (by decide)
    rw [← Nat.zero_add (loopBBound + acapBound)]
    refine gc_seq (Bc := 0) (Bk := loopBBound + acapBound) (L := LV ((nm "i", .val (.word (0 : BitVec 64))) :: B'))
      (E := IM a (fun _ => True) C NR SW AW ND M) ?_ ?_
    · refine gc_assign ha.hH ?_
      intro s hs ⟨I1, hL⟩ v hv
      rw [ev_cw] at hv
      cases hv
      have hB : LV B' s.locals := lv_mono hL (fun p hp => List.mem_cons_of_mem _ hp)
      exact lv_cons (lv_set hB (fun p hp => hfrB' p hp (nm "i") (by simp)) _)
        (v := .val (.word (BitVec.ofNat 64 0))) (by simp [setVarHOLFinite, FUPDATE])
    · refine gc_seq (Bc := loopBBound) (Bk := acapBound) (L := fun m => ∃ I : BitVec 64, LV ((nm "i", ValueHOL.val (.word I)) :: B') m)
        (E := IM a (fun _ => True) C NR SW AW ND M) ?_ ?_
      · refine ch_pre (FourthCsrExactCH.gc_while_bounded_exact ha.hH
          (i := nm "i") (E0 := lv (nm "cap")) (M := capMax) (by decide)
          (ch_pre (cstage_s2 ha haC hCb haH hgr hcI hcC
            (List.mem_cons_of_mem _ hsw) (List.mem_cons_of_mem _ hcache) (List.mem_cons_self ..)
            (fun p hp w hw => hfrB' p hp w
              (by simp only [List.mem_cons, List.mem_append] at hw ⊢; tauto)))
            (fun s _ h => h.1))
          (fun s _ h _ => h) (noContB_sound _ (by decide_cbv))
          (stepsB_sound (nm "i") true _ (by decide_cbv))
          (fun st hs ⟨⟨I, hl⟩, rest⟩ =>
            ⟨CP, lv_ev hl (List.mem_cons_of_mem _ (List.mem_cons_of_mem _ hcap)), hCP⟩)) ?_
        intro st hs ⟨hl, Γ, q, he, hh, hsc, hE⟩
        exact ⟨⟨⟨0, hl⟩, Γ, q, he, hh, hsc, hE⟩,
          0, hl _ (List.mem_cons_self ..), by decide⟩
      · exact cstage_acap_bounded ha haC hCb haH hgr hcI (List.mem_cons_of_mem _ haw) (List.mem_cons_self ..)
          (List.mem_cons_of_mem _ hout)
          (fun p hp w hw => hfrB' p hp w (by simp only [List.mem_cons, List.mem_append] at hw ⊢; tauto))
          hOutB hOutF hRv


#print axioms cstage_state_bounded
end FourthCsrState
