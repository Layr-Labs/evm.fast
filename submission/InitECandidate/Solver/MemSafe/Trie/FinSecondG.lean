import InitECandidate.Solver.MemSafe.Trie.FinArm

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# The second pass of `_node_rlp_finish`, exception-inclusive: tail and header
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

/-- `st node + 8, buf; st node + 16, off; return 0`. -/
theorem fin_tailG {s0 : State σ} {p p1 : Ptrs} {Nd : BitVec 64 → Prop}
    {FR ND PL CB CL ks kp BUF HL : BitVec 64} (hX : FinCtx s0 p p1 Nd ND ks kp BUF)
    (hTOT : BUF.toNat + (MemSafe.Helpers.hdrLen PL.toNat + PL.toNat) ≤ p1.hp)
    (hPL : PL.toNat < 2 ^ 62) (hHL : HL = hdrLen PL) :
    HoareG σ X (fun t => ∃ off, S2 s0 p1 p.hp FR ND (rd s0.memory ND) PL CB CL
        HL BUF (WB s0.memory ND ks kp) off 0 t ∧ BitVec.ofNat 64 off = HL + PL) finTail
      (fun r t => FEx s0 p ND t) := by
  refine hoareG_exists fun off => ?_
  unfold finTail
  refine hoareG_seq (R := fun r t => r = none ∧ ∃ t0 : State σ,
      (S2 s0 p1 p.hp FR ND (rd s0.memory ND) PL CB CL HL BUF (WB s0.memory ND ks kp) off 0 t0 ∧
        BitVec.ofNat 64 off = HL + PL) ∧ t.locals = t0.locals ∧ t.globals = t0.globals ∧
        ∀ a, t.memory a ≠ t0.memory a → a = ND + BitVec.ofNat 64 8) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_store fun t _ hP w v mem hw hv hmem => ?_
    rw [ev_add_cw hP.1.fl.node 8] at hw
    cases hw
    rw [ev_lw hP.1.bufv] at hv
    cases hv
    obtain ⟨-, rfl⟩ := Spec.Inv.store_word_dom hmem
    refine ⟨rfl, t, hP, rfl, rfl, fun a ha => ?_⟩
    by_contra hne
    exact ha (Spec.Inv.upd_ne hne)
  refine hoareG_seq (R := fun r t => r = none ∧ ∃ t0 : State σ,
      (S2 s0 p1 p.hp FR ND (rd s0.memory ND) PL CB CL HL BUF (WB s0.memory ND ks kp) off 0 t0 ∧
        BitVec.ofNat 64 off = HL + PL) ∧ t.locals = t0.locals ∧ t.globals = t0.globals ∧
        ∀ a, t.memory a ≠ t0.memory a → a = ND + BitVec.ofNat 64 8 ∨ a = ND + BitVec.ofNat 64 16) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_store fun t _ ⟨_, t0, h0, hl, hg, hm⟩ w v mem hw hv hmem => ?_
    rw [ev_add_cw (by rw [hl]; exact h0.1.fl.node) 16] at hw
    cases hw
    rw [ev_lw (by rw [hl]; exact h0.1.offv)] at hv
    cases hv
    obtain ⟨-, rfl⟩ := Spec.Inv.store_word_dom hmem
    refine ⟨rfl, t0, h0, hl, hg, fun a ha => ?_⟩
    by_cases e : a = ND + BitVec.ofNat 64 16
    · exact Or.inr e
    · rw [show ({ t with memory := Spec.Inv.upd t.memory (ND + BitVec.ofNat 64 16) _ } : State σ).memory a
        = t.memory a from Spec.Inv.upd_ne e] at ha
      exact Or.inl (hm a ha)
  refine hoareG_return fun t _ ⟨_, t0, ⟨h, hoff⟩, hl, hg, hm⟩ v _ => ?_
  have hb := h.bnd
  have hoffE : off = (HL + PL).toNat := by
    rw [← hoff, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  have hHLn : HL.toNat = MemSafe.Helpers.hdrLen PL.toNat := by
    rw [hHL, hdrLen_eq, BitVec.toNat_ofNat, Nat.mod_eq_of_lt]
    have := (MemSafe.Helpers.hdrLen_le PL.isLt).2; omega
  have hoffN : off ≤ MemSafe.Helpers.hdrLen PL.toNat + PL.toNat := by
    have hlt : HL.toNat + PL.toNat < 2 ^ 64 := by
      have := (MemSafe.Helpers.hdrLen_le PL.isLt).2; omega
    rw [hoffE, BitVec.toNat_add, Nat.mod_eq_of_lt hlt, hHLn]
  have hex := ex_of_s2 h (by omega) hTOT hX.le1 (wb_ok hX.kok)
  -- the state `t` differs from `t0` in the two cache cells
  obtain ⟨hgl, p', hp', ho', hle', hw⟩ := hex
  have hpt : ptrsOf (emptyLocalsHOLFinite t) = some p' := by
    show ptrsOf t = _
    unfold ptrsOf gword at hp' ⊢; rw [hg]; exact hp'
  refine ⟨fun g hgn => by show t.globals.lookup g = _; rw [hg]; exact hgl g hgn, p', hpt, ho', hle', ?_⟩
  intro a ha
  by_cases e8 : a = ND + BitVec.ofNat 64 8
  · exact Or.inr (Or.inl (Or.inl e8))
  by_cases e16 : a = ND + BitVec.ofNat 64 16
  · exact Or.inr (Or.inl (Or.inr (Or.inl e16)))
  have ht0 : t.memory a = t0.memory a := by
    by_contra hne
    rcases hm a hne with h1 | h1
    · exact e8 h1
    · exact e16 h1
  exact hw a (by rw [← ht0]; exact ha)

/-- The finish context of the second pass, after the allocation of `buf`. -/
theorem afr_widen {s0 : State σ} {p p1 : Ptrs} {ND : BitVec 64} {t : State σ} {W : Nat → BitVec 64 → Prop}
    (h : AFr p1 s0 W t) (hp : p.hp ≤ p1.hp) : AFr p s0 W t := by
  obtain ⟨hg, p', hp', ho, hle, hw⟩ := h
  exact ⟨hg, p', hp', ho, le_trans hp hle, hw⟩

/-- **The second pass**, from the first-pass state: the header, the dispatch and the tail. -/
theorem fin_secondG (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hNS : MemSafe.NullSafe X) (hX0 : DomBounded X) {s0 : State σ} {p : Ptrs} {Nd : BitVec 64 → Prop}
    {FR ND PL0 CB CL ks kp : BitVec 64}
    (hp : ptrsOf s0 = some p) (hord : p.Ordered) (htrie : TrieOK s0 Nd p.hp) (hNd : Nd ND)
    (hrk : RecKind (rd s0.memory ND)) (hK : KOK s0 ks kp)
    (hRC3 : rd s0.memory ND = 3 → PL0 = 0)
    (hRC2 : rd s0.memory ND = 2 → PL0 = encLen (ld8W s0 CB) CL)
    (hRC1 : rd s0.memory ND = 1 → PL0 = encLen (ld8W s0 CB) CL +
      valLen (ld8W s0 (rd s0.memory (ND + 48))) (rd s0.memory (ND + 56)))
    (hCB : rd s0.memory ND ≠ 3 → (panByteAlignHOL CB).toNat < p.hp)
    (hPL : (pl1 s0 ND PL0).toNat < 2 ^ 62)
    (hs1 : rd s0.memory ND = 1 → (pl1 s0 ND PL0).toNat =
      encLenN (ld8W s0 CB) CL + encLenN (ld8W s0 (rd s0.memory (ND + 48))) (rd s0.memory (ND + 56)))
    (hs2 : rd s0.memory ND = 2 → (pl1 s0 ND PL0).toNat =
      encLenN (ld8W s0 CB) CL + (RL s0.memory (rd s0.memory (ND + 48))).toNat)
    (hs3 : rd s0.memory ND = 3 → (pl1 s0 ND PL0).toNat = brSumN s0.memory ND 16 +
      encLenN (ld8W s0 (rd s0.memory (ND + 160))) (rd s0.memory (ND + 168))) :
    HoareG σ X (fun t => FP1 s0 FR ND (rd s0.memory ND) (pl1 s0 ND PL0) CB CL t) finSecond
      (fun r t => FEx s0 p ND t) := by
  have hef : ∀ f, SourceCost.Shards.finalState.2.1.contains f = true → CalleeEscFree σ X f :=
    fun f h => Rec.ef_of_table hC hX0 h
  set K := rd s0.memory ND with hK'
  set PL := pl1 s0 ND PL0 with hPL'
  set hlN := MemSafe.Helpers.hdrLen PL.toNat with hhlN
  have hHL' : hdrLen PL = BitVec.ofNat 64 hlN := hdrLen_eq PL
  have hhl9 := (MemSafe.Helpers.hdrLen_le PL.isLt).2
  unfold finSecond
  -- `var hl = rlp_list_header_len(payload)`
  refine hoareG_decCallS ((ret_rlp_list_header_len hC).and (Spec.Inv.funSpec_be _))
    (hef _ (by decide_cbv)) fun t _ hP vs hvs callee v st ⟨hR, hbe⟩ _ _ => ?_
  obtain ⟨u, rfl, hu⟩ := evs_one_inv hvs
  rw [ev_lw hP.1.payload] at hu
  cases hu
  obtain ⟨hg1, hm1, rfl⟩ := hR v rfl PL rfl
  set t1 := setVarHOLFinite (nm "hl") (.val (.word (hdrLen PL))) { st with locals := t.locals }
    with ht1
  have h1m : t1.memory = s0.memory := hm1.trans hP.2.1
  have h1g : t1.globals = s0.globals := hg1.trans hP.2.2.1
  have h1b : t1.be = s0.be := hbe.trans hP.2.2.2
  have h1L : FL FR ND K PL CB CL t1.locals := fL_upd hP.1 fLN_hl _
  have h1hl : t1.locals.lookup (nm "hl") = some (.val (.word (hdrLen PL))) := lk_set_self _ _ _
  -- `var buf = alloc(hl + payload)`
  refine hoareG_decCall (((MemSafe.allocSpec_alloc hC).and (alloc_ret_hp hC)).and
    (Spec.Inv.funSpec_be _)) ?_ ?_
  · intro t2 _ ht2 vs2 hvs2 callee2 v2 st2 ⟨⟨hR2, hR2'⟩, hbe2⟩ _ _
    subst ht2
    obtain ⟨u2, rfl, hu2⟩ := evs_one_inv hvs2
    rw [ev_add2 (ev_lw h1hl) (ev_lw h1L.payload)] at hu2
    cases hu2
    have hpt1 : ptrsOf (callEntryStateHOLFinite t1 callee2) = some p := by
      show ptrsOf t1 = _; rw [ptrsOf_frame h1g]; exact hp
    obtain ⟨hm2, hg2, p1, hp1, ho1, hmono, hq⟩ := hR2 (by simp [Good]) _ p rfl hpt1 hord
    obtain ⟨q, rfl, hq8, ⟨hq1, hq2⟩, -⟩ := hq _ rfl
    obtain ⟨q', hq', hqp⟩ := hR2' _ rfl p hpt1
    cases hq'
    have hX : FinCtx s0 p p1 Nd ND ks kp q := ⟨hp, hord, htrie, hNd, hK, hqp, hmono.1⟩
    have hsum : (hdrLen PL + PL).toNat = hlN + PL.toNat := by
      rw [BitVec.toNat_add, hHL', BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := hlN) (by omega)]
      exact Nat.mod_eq_of_lt (by omega)
    have hTOT : q.toNat + (hlN + PL.toNat) ≤ p1.hp := by rw [hsum] at hq2; exact hq2
    set t3 := setVarHOLFinite (nm "buf") (.val (.word q)) { st2 with locals := t1.locals } with ht3
    have h3m : t3.memory = s0.memory := hm2.trans h1m
    have h3g : ∀ g, g ≠ gHeap → t3.globals.lookup g = s0.globals.lookup g := fun g hgn => by
      show st2.globals.lookup g = _; rw [hg2 g hgn]; show t1.globals.lookup g = _; rw [h1g]
    have h3p : ptrsOf t3 = some p1 := hp1
    have h3b : t3.be = s0.be := hbe2.trans h1b
    have h3L : FL FR ND K PL CB CL t3.locals := fL_upd h1L fLN_buf _
    have h3hl : t3.locals.lookup (nm "hl") = some (.val (.word (hdrLen PL))) := by
      rw [lk_set_ne _ _ (by decide)]; exact h1hl
    have h3buf : t3.locals.lookup (nm "buf") = some (.val (.word q)) := lk_set_self _ _ _
    refine hoareG_pre (P := fun t => t = t3) ?_ (fun t _ ht => ht)
    refine hoareG_seq (R := fun r u => r = none ∧ u.locals = t3.locals ∧ u.globals = t3.globals ∧
        u.be = s0.be ∧ q.toNat + hlN < 2 ^ 63 ∧
        ∀ a, u.memory a ≠ s0.memory a → Overlap q.toNat hlN a) ?_
      (fun r t _ hr _ h => absurd h.1 hr) ?_
    · refine hoareG_callD (((ret_rlp_encode_list_header hC hT).and
          (Rec.noAbn_of_ef (hef (nm "rlp_encode_list_header") (by decide_cbv)))).and
          (Spec.Inv.funSpec_be _)) ?_ (fun u _ hu vs3 hvs3 callee3 r st3 ⟨⟨_, hna⟩, _⟩ _ habn =>
            absurd habn hna)
      rintro u _ hu vs3 hvs3 callee3 v3 st3 ⟨⟨hR3, -⟩, hbe3⟩ _
      subst hu
      rw [evs_cons (ev_lw h3buf) (evs_cons (ev_lw h3L.payload) evs_nil)] at hvs3
      cases hvs3
      obtain ⟨hg3, hm3, -, hb3⟩ := hR3 v3 rfl q PL rfl
      refine ⟨rfl, rfl, hg3, hbe3.trans h3b, hb3, fun a ha => ?_⟩
      by_contra hn
      exact ha ((hm3 a hn).trans (congrFun h3m a))
    refine hoareG_dec fun u _ ⟨_, hul, hug, hube, hub, hum⟩ v hv _ => ?_
    rw [ev_lw (by rw [hul]; exact h3hl)] at hv
    cases hv
    have hS2 : S2 s0 p1 p.hp FR ND K PL CB CL (hdrLen PL) q (fun _ => False) hlN 0
        (setVarHOLFinite (nm "off") (.val (.word (hdrLen PL))) u) := by
      refine ⟨fL_upd (by rw [hul]; exact h3L) fLN_off _, ?_, ?_, ?_, by omega, ?_, hube⟩
      · rw [lk_set_ne _ _ (by decide), hul]; exact h3hl
      · rw [lk_set_ne _ _ (by decide), hul]; exact h3buf
      · rw [lk_set_self, hHL']
      · refine ⟨fun g hgn => ?_, p1, ?_, ho1, le_rfl, fun a ha => ?_⟩
        · show u.globals.lookup g = _; rw [hug]; exact h3g g hgn
        · show ptrsOf u = _; rw [ptrsOf_frame hug]; exact h3p
        · have := ovl_ge hX.hp8 (by rw [hX.buf]) (hum a ha)
          rw [hX.buf] at this
          exact Or.inl ⟨this.1, Or.inr (by omega)⟩
    refine hoareG_pre (P := fun u' => S2 s0 p1 p.hp FR ND K PL CB CL (hdrLen PL) q (fun _ => False)
      hlN 0 u') ?_ fun u' _ hu' => by subst hu'; exact hS2
    refine hoareG_seq (R := ArmQ s0 p p1 FR ND K PL CB CL (hdrLen PL) q ks kp) ?_
      (fun r u _ hr _ h => by
        cases r with
        | none => exact absurd rfl hr
        | some r' => exact (h.2 r' rfl).2) ?_
    · refine hoareG_ite ?_ ?_
      · refine hoareG_pre (P := fun u => S2 s0 p1 p.hp FR ND K PL CB CL (hdrLen PL) q (fun _ => False)
          hlN 0 u ∧ K ≠ 3) ?_ fun u _ ⟨h, w, hw, hw0⟩ =>
            ⟨h, notEqual_true (cmp_val_true hw hw0 (ev_lw h.fl.k) (ev_cw _ 3))⟩
        exact hoareG_pure fun hK3 => fin_non3G hC hA hT hNS hX0 (hef _ (by decide_cbv)) hX hK3 hrk
          hRC2 hRC1 (hCB hK3) hTOT hs1 hs2
      · refine hoareG_pre (P := fun u => S2 s0 p1 p.hp FR ND K PL CB CL (hdrLen PL) q (fun _ => False)
          hlN 0 u ∧ K = 3) ?_ fun u _ ⟨h, hc⟩ =>
            ⟨h, notEqual_false (cmp_val_false hc (ev_lw h.fl.k) (ev_cw _ 3))⟩
        exact hoareG_pure fun hK3 => fin_brG hC hA hT hNS hX0 (hef _ (by decide_cbv)) hX hK3
          (hRC3 hK3) hTOT (hs3 hK3)
    · exact hoareG_pre (fin_tailG hX hTOT hPL rfl) (fun u _ h => h.1 rfl)
  · intro t2 _ ht2 vs2 hvs2 callee2 r st2 ⟨⟨hR2, hR2'⟩, hbe2⟩ _ habn
    subst ht2
    have hpt1 : ptrsOf (callEntryStateHOLFinite t1 callee2) = some p := by
      show ptrsOf t1 = _; rw [ptrsOf_frame h1g]; exact hp
    obtain ⟨u2, rfl, hu2⟩ := evs_one_inv hvs2
    rw [ev_add2 (ev_lw h1hl) (ev_lw h1L.payload)] at hu2
    cases hu2
    obtain ⟨hm2, hg2, p1, hp1, ho1, hmono, -⟩ := hR2 (abn_good habn) _ p rfl hpt1 hord
    refine ⟨fun g hgn => ?_, p1, hp1, ho1, hmono.1, fun a ha => ?_⟩
    · show st2.globals.lookup g = _
      rw [hg2 g hgn]; show t1.globals.lookup g = _; rw [h1g]
    · exact absurd (by show st2.memory a = s0.memory a; rw [hm2]; exact congrFun h1m a) ha

end InitECandidate.Solver.MemSafe.Trie
