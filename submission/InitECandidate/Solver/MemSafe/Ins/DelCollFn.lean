import InitECandidate.Solver.MemSafe.Ins.DelCollOne

set_option autoImplicit false

/-!
# `_collapse_branch`: the summary
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

theorem colBody_G {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) colSig [] vs s0 Γ0 p0) guestCtx)
    {N : BitVec 64} :
    HoareG σ guestCtx (GI (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) colSig [] vs s0 Γ0 p0)
        (LKV [(nm "node", N)]) (fun Γ _ _ => CbE N Γ))
      colBody
      (GP (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) colSig [] vs s0 Γ0 p0)
        (fun _ => True) (fun _ _ _ => True)
        (fun Γ' p' _ v => RetOK Γ' p0 p' vs [.fits Types.nodeU] v ∧
          ∃ w, v = .val (.word w) ∧ Rt Γ' w)) := by
  have hX0 := (Rec.foldOK_guestR (σ := σ)).hX
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) colSig [] vs s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  unfold colBody
  refine gp_decC ha.hH (c := 0) (x := nm "count") (by intro p hp; simp only [List.mem_cons, List.not_mem_nil, or_false] at hp; rcases hp with rfl; dsimp only; decide) ?_
  refine gp_decC ha.hH (c := 0) (x := nm "idx") ?_ ?_
  · intro p hp
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl <;> (dsimp only; decide)
  refine gp_decC ha.hH (c := 0) (x := nm "i") ?_ ?_
  · intro p hp
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl <;> (dsimp only; decide)
  have hrest : ∀ C X' : BitVec 64, X'.toNat < 16 →
      HoareG σ guestCtx (GI a (LKV (kvCB N C X' 16)) (fun Γ _ _ => CbE N Γ))
        (.dec (nm "vl") .one (ldK "node" 168)
        (.seq (.ite (.cmp .equal (lv (nm "count")) (cw 0))
            (.seq (.ite (.cmp .equal (lv (nm "vl")) (cw 0))
                (.call (some (none, none)) (nm "mpt_fail") [cw 12]) .skip)
              (.call none (nm "node_new_leaf")
                [lv (nm "node"), cw 0, ldK "node" 160, lv (nm "vl")])) .skip)
          (.seq (.ite cbCondAnd cbOne .skip) (.return (lv (nm "node"))))))
        (GP a (fun _ => True) (fun _ _ _ => True)
          (fun Γ' p' _ v => RetOK Γ' p0 p' vs [.fits Types.nodeU] v ∧
            ∃ w, v = .val (.word w) ∧ Rt Γ' w)) := by
    intro C X' hX'
    have hnode : (nm "node", N) ∈ kvCB N C X' 16 := by simp [kvCB]
    have hfvl : ∀ p ∈ kvCB N C X' 16, p.1 ≠ nm "vl" := by
      intro p hp
      simp only [kvCB, List.mem_cons, List.not_mem_nil, or_false] at hp
      rcases hp with rfl | rfl | rfl | rfl <;> (dsimp only; decide)
    refine gp_decV ha.hH
      (L1 := fun v m => LKV (kvCB N C X' 16) m ∧ m.lookup (nm "vl") = some v ∧
        ∃ VL : BitVec 64, v = .val (.word VL))
      (E1 := fun v Γ _ M => CbE N Γ ∧ ∀ VL : BitVec 64, v = .val (.word VL) →
        VL = rd M (N + BitVec.ofNat 64 168))
      (L2 := fun _ => True) (E2 := fun _ _ _ => True)
      (fun s hs hL v hv => ?_) (fun s Γ q hs hL hh' hE v hv => ⟨hE, fun VL hVL => ?_⟩) ?_
      (fun _ _ _ _ => trivial)
    · have := Spec.Mpt.Dec.ev_ld (hL _ hnode) 168 v hv
      exact ⟨lkv_set (s := s) hL hfvl v, by simp [setVarHOLFinite, FUPDATE], _, this⟩
    · have hv' := Spec.Mpt.Dec.ev_ld (hL _ hnode) 168 v hv
      rw [hv'] at hVL
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hVL
      exact hVL.symm
    intro v
    by_cases hw : ∃ VL : BitVec 64, v = .val (.word VL)
    swap
    · exact hoareG_false fun s _ h => hw h.1.2.2
    obtain ⟨VL, rfl⟩ := hw
    refine hoareG_pre (P := GI a (LKV (kvCV N C X' VL)) (fun Γ _ M => CbE N Γ ∧
        VL = rd M (N + BitVec.ofNat 64 168))) ?_
      (fun s _ ⟨⟨hL, hk, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨lkv_cons hL hk, Γ, q, he, hh, hsc, hE.1,
        hE.2 VL rfl⟩)
    have hcnt : (nm "count", C) ∈ kvCV N C X' VL := by simp [kvCV, kvCB]
    have hvl : (nm "vl", VL) ∈ kvCV N C X' VL := by simp [kvCV, kvCB]
    have hnodeV : (nm "node", N) ∈ kvCV N C X' VL := by simp [kvCV, kvCB]
    refine gp_seq (L := LKV (kvCV N C X' VL)) (E := fun Γ _ M => CbE N Γ ∧
        VL = rd M (N + BitVec.ofNat 64 168)) ?_ ?_
    · refine ite_val hcnt (fun s h => h.1) (fun hc => ?_) (fun hc => gp_skip fun s h => h)
      refine gp_seq (L := LKV (kvCV N C X' VL)) (E := fun Γ _ M => CbE N Γ ∧
          VL = rd M (N + BitVec.ofNat 64 168)) ?_ ?_
      · refine ite_val hvl (fun s h => h.1) (fun hc => ?_) (fun hc => gp_skip fun s h => h)
        refine gp_call ha (sumA_of_csumm mptFail_R) (funSpec_of_funRet (funRet_mpt_fail hX0))
          (by simp) (by simp)
          (fun s Γ q _ _ _ _ vs1 hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
            fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
          (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co =>
            ⟨scrOld_nf0_co haC co rfl, fun ⟨v, hv⟩ => (hLc v hv).elim⟩)
      · refine gp_tail ha node_new_leafT_guestR (ctor_sp hX0 ctor_leaf_sp) (by simp [Node.nlSig])
          (fun _ => rfl) ?_ ?_
        · intro s Γ q _ hL hh hE vs1 hvs
          obtain ⟨v1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
          obtain ⟨v2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
          obtain ⟨v3, r3, rfl, h3, hr3⟩ := evs_cons_inv hr2
          obtain ⟨v4, r4, rfl, h4, hr4⟩ := evs_cons_inv hr3
          rw [evs_nil] at hr4
          cases hr4
          have e1 : v1 = .val (.word N) := Option.some.inj (h1.symm.trans (ev_lw (hL _ hnodeV)))
          have e2 : v2 = .val (.word (BitVec.ofNat 64 0)) := Option.some.inj (h2.symm.trans (ev_cw s 0))
          have e3 := Spec.Mpt.Dec.ev_ld (hL _ hnodeV) 160 v3 h3
          have e4 : v4 = .val (.word VL) := Option.some.inj (h4.symm.trans (ev_lw (hL _ hvl)))
          subst e1 e2 e3 e4
          obtain ⟨o, ho, hb, ht⟩ := hE.1
          have hvo := Hooks.vIn_of_branch hh.1 ho ht
          rw [hb] at hvo
          have hE2 : VL = rd s.memory (N + 168) := hE.2
          have hvo' : Hooks.VInR Types.tVAL Γ (rd s.memory (N + BitVec.ofNat 64 160)) VL := by
            rw [hE2]; exact hvo
          exact ⟨(anyArgsG (by simp [Node.nlSig]) rfl hvs).1,
            fun x hx => argCells_any (by simp [Node.nlSig]) hx,
            fun _ => ⟨N, BitVec.ofNat 64 0, _, _, rfl, Or.inl rfl, hvo'⟩⟩
        · intro s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co
          refine ⟨scrOld_sp_co haC co hLc, fun v hv => ?_⟩
          obtain ⟨o, ho, rfl, hot⟩ := hQ v hv
          exact rv_rt (rt_of_obj (t := Types.tNLEAF) (by simp [Node.nodeTys]) ⟨o, ho, rfl, hot⟩)
    · refine gp_seq (L := LKV (kvCV N C X' VL)) (E := fun Γ _ M => CbE N Γ ∧
          VL = rd M (N + BitVec.ofNat 64 168)) ?_ ?_
      · refine ite_and hcnt hvl (fun s h => h.1) (fun h1 h2 => ?_) (fun h => gp_skip fun s h => h)
        exact hoareG_pre (gp_post (colOne_G ha hX') (fun m h => h.elim) (fun Γ q M h => h.elim))
          (fun s _ ⟨hL, Γ, q, he, hh, hsc, hE⟩ => ⟨hL, Γ, q, he, hh, hsc, hE.1⟩)
      · refine gp_ret ha.hH (fun s Γ q _ hL _ _ hE v hv => ?_)
        rw [ev_lw (hL _ hnodeV)] at hv
        cases hv
        obtain ⟨o, ho, hb, ht⟩ := hE.1
        exact rv_rt (rt_of_obj (t := Types.tNBRANCH) (by simp [Node.nodeTys]) ⟨o, ho, hb, ht⟩)
  refine gp_seq (L := CbLx N) (E := fun Γ _ _ => CbE N Γ)
    (hoareG_pre (cbLoop_G ha) (fun s _ ⟨hL, rest⟩ => ⟨lkv_mono hL ?_, rest⟩)) ?_
  · intro p hp
    simp only [kvCB, List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl | rfl <;> simp
  intro s hs ⟨⟨C, X', hL, hX'⟩, rest⟩ hg
  exact hrest C X' hX' s hs ⟨hL, rest⟩ hg

/-- **`_collapse_branch`'s summary** at `guestHooksR`. -/
theorem sumSpecA_collapse_branch_G :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "_collapse_branch") colSig
      (fun vs s Γ => ColPre vs s Γ) (fun _ _ _ _ => False)
      (fun vs s Γ r t Γ' => ScrOld Γ Γ' ∧ ∀ v, r = .returned v → ∀ p0 p', ptrsOf s = some p0 →
        ptrsOf t = some p' → ∃ w, v = .val (.word w) ∧ Rt Γ' w) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hX := hF.hX
  refine sumSpecA_of_gp (Rx := fun vs _ Γ' _ _ v => ∃ w, v = .val (.word w) ∧ Rt Γ' w)
    hF.hH hF.hC hF.hal hF.hAC hF.hNS ?_
  intro vs body callee rs hl s0 _ hloc Γ0 p0 hpre ha hh
  rw [hX] at hl
  obtain ⟨rfl, -, -, hbind⟩ := MemSafe.lookupCode_gen code_col hl
  obtain ⟨N, rfl, hn⟩ := hpre
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) colSig [] _ s0 Γ0 p0 with hadef
  let kv0 : List (MlS × BitVec 64) := [(nm "node", N)]
  have hkv0 : LKV kv0 s0.locals := by
    intro p hp
    simp only [kv0, List.mem_cons, List.not_mem_nil, or_false] at hp
    rw [hloc]
    rcases hp with rfl
    exact (hbind 0 (by decide) (by simp)).1
  refine hoareG_conseq (P := GI a (LKV kv0) (fun Γ _ _ => CbE N Γ))
    (Q := GP a (fun _ => True) (fun _ _ _ => True)
      (fun Γ' p' _ v => RetOK Γ' a.p0 p' a.vs a.sg.ret v ∧ ∃ w, v = .val (.word w) ∧ Rt Γ' w)) ?_ ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    exact ⟨hkv0, Γ0, p0, ext_refl _, hh, scrOld_refl _, hn⟩
  · intro r t _ _ h
    exact gp_final h
  exact colBody_G ha

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.colBody_G
#print axioms InitECandidate.Solver.MemSafe.Ins.sumSpecA_collapse_branch_G
