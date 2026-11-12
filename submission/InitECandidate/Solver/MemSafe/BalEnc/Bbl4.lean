import InitECandidate.Solver.MemSafe.BalEnc.Bbl3

set_option autoImplicit false

/-!
# `build_block_access_list_rlp`, phase 2: the whole body
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option synthInstance.maxSize 100000
set_option synthInstance.maxHeartbeats 1000000

namespace InitECandidate.Solver.MemSafe.BalEnc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Helpers InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type}

set_option maxHeartbeats 8000000 in
theorem hoareG_phase2 {a : AwE σ} (hK : AwOK a) (hc : CsE a) (hgw : a.gw = [])
    (hBA : Bal.BalNN a.s0 a.Γ0) :
    HoareG σ guestCtx (APre a (Hs [])) phase2 (AQ a (Hs []) (BblRet a)) := by
  have hC := hX_code
  have hA := alignedDom_guestCtx
  have hT := domBelow_guestCtx
  have hB0v : B0 = 2 ^ 40 + 128 := by unfold B0 domTop; rfl
  have hdt : domTop = 2 ^ 40 := rfl
  have hle := hK.hle
  have hse : heapEnd < 2 ^ 32 := by decide
  unfold phase2
  -- tmp = alloc(64)
  refine hoareG_decCallH hK (asp_alloc hK hC) (rn := cTmp) (sh := .one) (fx := [wd cTmp]) (fo := [])
    (fb := []) (fun f hf => absurd hf (by simp)) (fun f hf => absurd hf (by simp))
    (fun s hs hP' vs hvs callee => ?_) (fun s vs v st hL hvs hRet hsh => ?_) ?_
    (fun f hf => absurd hf (by simp))
  · rw [evs_cons (ev_cw _ 64) evs_nil] at hvs
    cases hvs
    exact ⟨_, rfl⟩
  · obtain ⟨n, q, p'', rfl, rfl, -⟩ := hRet
    exact hs_cons (bd_wd _ _ _) (hs_nil _)
  -- addrs = htab_keys(bal_accounts)
  refine hoareG_decCallH hK (asp_htab_keysM hK hc (th := tHTd20) (M := 24) (by decide) (by decide) (by decide) (by decide))
    (rn := cAddrs) (sh := .comb [.one, .one]) (fx := [Fct.str2 cAddrs (rkM24 a.p0.hp)]) (fo := [])
    (fb := []) (by avb) (fun f hf => absurd hf (by simp))
    (fun s hs hP' vs hvs callee => ?_) (fun s vs v st hL hvs hRet hsh => ?_) ?_
    (fun f hf => absurd hf (by simp))
  · obtain ⟨v1, rfl, e1⟩ := Mpt.Leaves.evs_one_inv hvs
    obtain ⟨T, rfl, hT'⟩ := ba_fits hc hBA hP'.1 hgw e1
    exact ⟨T, rfl, hT', hs.2.1⟩
  · obtain ⟨O, N, rfl, h1, h2, h3⟩ := hRet
    exact hs_cons ⟨O, N, lookup_update_self _ _ _, h1, h2, h3⟩ (hs_nil _)
  -- sort_elems(addrs.0, addrs.1, 24, 1, tmp)
  refine hoareG_seqA (L2 := Hs (f2Facts a.p0.hp))
    (hoareG_callH hK (asp_sort_fresh hK hc (E := 24) (M := 24) le_rfl (by decide) (by decide)) ?_) ?_
  · intro s hs hP' vs hvs callee
    obtain ⟨v1, v2, v3, v4, v5, rfl, f1, f2, f3, f4, f5⟩ := evs_five hvs
    obtain ⟨O, N, hrk, hg⟩ := hP'.2 (Fct.str2 cAddrs (rkM24 a.p0.hp)) (by simp [f2Facts])
    obtain ⟨Tm, hTm, -, -⟩ := hP'.2 (wd cTmp) (by simp [f2Facts])
    rw [ev_rfield (Struct.ev_lw' hrk) 0] at f1
    rw [ev_rfield (Struct.ev_lw' hrk) 1] at f2
    simp only [List.getElem?_cons_succ, List.getElem?_cons_zero] at f1 f2
    rw [ev_cw] at f3 f4
    rw [ev_lw hTm] at f5
    cases f1
    cases f2
    cases f3
    cases f4
    cases f5
    obtain ⟨hg1, hg2, hg3⟩ := hg
    exact ⟨O, N, BitVec.ofNat 64 1, Tm, rfl, by omega, hg3⟩
  -- total = 1024
  have hf2 : ∀ f ∈ f2Facts a.p0.hp, ∀ x ∈ [cTotal, cI, cM, cAd, cSc, cScap, cJ, cE, cCl, cCn, cCp], x ∉ f.vars := by
    intro f hf x hx
    simp only [f2Facts, List.mem_cons, List.not_mem_nil, or_false] at hf
    rcases hf with rfl | rfl <;> (simp only [Fct.vars, wd, List.mem_singleton]; rintro rfl; revert hx; decide)
  refine hoareG_decHI hK (x := cTotal) (fx := []) (fo := []) (fb := []) (by avb)
    (fun f hf => absurd hf (by simp)) (fun s hs hP' v hv hsh => hs_nil _) ?_
    (fun f hf => absurd hf (by simp))
  refine hoareG_seqA (L2 := Hs (f2Facts a.p0.hp)) (hoareG_asgU hK (by avb)) ?_
  refine hoareG_seqA (L2 := Hs (f2Facts a.p0.hp)) ?_ ?_
  · refine hoareG_whileA hK (J := Hs (f2Facts a.p0.hp)) (J' := Hs (f2Facts a.p0.hp)) ?_ (fun s _ h _ => h)
    refine hoareG_pre (P := APre a (Hs (f2Facts a.p0.hp))) ?_ (fun s _ h => h.1)
    exact hoareG_sizeBody hK hc hgw hBA hf2
  -- the encoding part
  have hfC : ∀ f ∈ f2Facts a.p0.hp, ∀ x ∈ [cBuf, cP, cM2, cW, cPayload, cHl, cStart, cI], x ∉ f.vars := by
    intro f hf x hx
    simp only [f2Facts, List.mem_cons, List.not_mem_nil, or_false] at hf
    rcases hf with rfl | rfl <;> (simp only [Fct.vars, wd, List.mem_singleton]; rintro rfl; revert hx; decide)
  unfold phase2c
  -- buf = alloc(total + 64)
  refine hoareG_decCallH hK (asp_alloc hK hC) (rn := cBuf) (sh := .one)
    (fx := [Fct.bd cBuf a.h0 heapEnd]) (fo := []) (fb := []) (by avc2) (fun f hf => absurd hf (by simp))
    (fun s hs hP' vs hvs callee => ?_) (fun s vs v st hL hvs hRet hsh => ?_) ?_
    (fun f hf => absurd hf (by simp))
  · obtain ⟨v, rfl, e⟩ := Mpt.Leaves.evs_one_inv hvs
    obtain ⟨n, rfl⟩ := Spec.ev_op_word e
    exact ⟨n, rfl⟩
  · obtain ⟨n, q, p'', rfl, rfl, hq1, hq2, hp'', hq3, hq4⟩ := hRet
    exact hs_cons ⟨q, lookup_update_self _ _ _, hq1, by omega⟩ (hs_nil _)
  -- p = buf + 9
  refine hoareG_decHI hK (x := cP) (fx := [Fct.bd cP a.h0 B0, Fct.rel cBuf cP]) (fo := []) (fb := [])
    (by avc2) (fun f hf => absurd hf (by simp)) (fun s hs hP' v hv hsh => ?_) ?_
    (fun f hf => absurd hf (by simp))
  · obtain ⟨Q, hQ, h1, h2⟩ := hP'.2 (Fct.bd cBuf a.h0 heapEnd) (by simp)
    rw [ev_add2 (ev_lw hQ) (ev_cw _ 9)] at hv
    cases hv
    have e : (Q + BitVec.ofNat 64 9).toNat = Q.toNat + 9 := toNat_addc (by omega)
    exact hs_cons ⟨Q + BitVec.ofNat 64 9, lookup_update_self _ _ _, by omega, by omega⟩
      (hs_cons ⟨Q, Q + BitVec.ofNat 64 9, by rw [lookup_update_ne _ _ (by decide)]; exact hQ,
        lookup_update_self _ _ _, by omega⟩ (hs_nil _))
  -- i = 0
  refine hoareG_seqA (L2 := Hs (fC a.p0.hp a.h0)) (hoareG_asgU hK (by avc2)) ?_
  refine hoareG_seqA (L2 := Hs (fC a.p0.hp a.h0)) ?_ ?_
  · -- the encoding loop
    unfold encLoop
    refine hoareG_whileA hK (J := Hs (fC a.p0.hp a.h0)) (J' := Hs (fC a.p0.hp a.h0)) ?_ (fun s _ h _ => h)
    refine hoareG_pre (P := APre a (Hs (fC a.p0.hp a.h0))) ?_ (fun s _ h => h.1)
    refine hoareG_decCallH hK (asp_htab_getT hK hc (th := tHTd20) (by decide)) (rn := cM2)
      (sh := .comb [.one, .one]) (fx := [mFact a.Γ0]) (fo := (fC a.p0.hp a.h0)) (fb := (fC a.p0.hp a.h0)) (by avc2) (by avc2)
      (fun s hs hP' vs hvs callee => ?_) (fun s vs v st hL hvs hRet hsh => ?_) ?_ (fun f hf => hf)
    · obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
      obtain ⟨T, rfl, hT'⟩ := ba_fits hc hBA hP'.1 hgw e1
      obtain ⟨K, rfl⟩ := Spec.ev_op_word e2
      exact ⟨T, K, rfl, hT'⟩
    · obtain ⟨A, B, rfl⟩ := rstruct_of_shape' hsh
      have hv : valK tHTd20 = FK.ptr tAD := by decide
      exact hs_cons ⟨A, B, lookup_update_self _ _ _, fun hA => by
        have := (hRet A B rfl).1 hA
        rwa [hv] at this, (hRet A B rfl).2⟩ (hs_nil _)
    · -- w = bal_encode_account(p, key, m2.1, tmp)
      refine hoareG_decCallH hK (asp_bal_encode hK hc) (rn := cW) (sh := .one)
        (fx := [Fct.rel2 cP cW Rw]) (fo := (fC a.p0.hp a.h0)) (fb := (fC a.p0.hp a.h0)) (by avc2) (by avc2)
        (fun s hs hP' vs hvs callee => ?_) (fun s vs v st hL hvs hRet hsh => ?_) ?_ (fun f hf => hf)
      · obtain ⟨v1, v2, v3, v4, rfl, e1, e2, e3, e4⟩ := evs_four hvs
        obtain ⟨P0, hP0, h1, h2⟩ := hP'.2 (Fct.bd cP a.h0 B0) (by simp [fC])
        obtain ⟨A, B, hm2, hA⟩ := hP'.2 (mFact a.Γ0) (by simp)
        obtain ⟨Tm, hTm, -, -⟩ := hP'.2 (wd cTmp) (by simp [fC, fB, f2Facts])
        rw [ev_lw hP0] at e1
        obtain ⟨K, rfl⟩ := Spec.ev_op_word e2
        rw [ev_rfield (Struct.ev_lw' hm2) 1] at e3
        simp only [List.getElem?_cons_succ, List.getElem?_cons_zero] at e3
        rw [ev_lw hTm] at e4
        cases e1
        cases e3
        cases e4
        refine ⟨P0, K, B, Tm, rfl, ?_, h1, by omega⟩
        by_cases hA0 : A = 0
        · exact Or.inl (by rw [hA.2 hA0]; simp [nullMax])
        · obtain ⟨o, ho, hb, ht⟩ := hA.1 hA0
          exact Or.inr ⟨o, ho, hb, ht⟩
      · obtain ⟨v1, v2, v3, v4, rfl, e1, e2, e3, e4⟩ := evs_four hvs
        obtain ⟨P0, hP0, h1, h2⟩ := hL (Fct.bd cP a.h0 B0) (by simp [fC])
        rw [ev_lw hP0] at e1
        cases e1
        obtain ⟨hInD, k, hk, hk1, hk2⟩ := hRet P0 rfl
        subst hk
        unfold InD at hInD
        exact hs_cons ⟨P0, BitVec.ofNat 64 k, by rw [lookup_update_ne _ _ (by decide)]; exact hP0,
          lookup_update_self _ _ _, k, rfl, hk1, hk2, hInD⟩ (hs_nil _)
      · refine hoareG_seqA (L2 := Hs (fC a.p0.hp a.h0)) (hoareG_assignA hK (fun s hs hL v hv => ?_))
          (hoareG_asgU hK (by avc2))
        obtain ⟨P0, W, hP0, hW, k, hWk, hk1, hk2, hk3⟩ := hL (Fct.rel2 cP cW Rw) (by simp)
        obtain ⟨Q, P1, hQ, hP1, hrel⟩ := hL (Fct.rel cBuf cP) (by simp [fC])
        obtain ⟨P2, hP2, h1, h2⟩ := hL (Fct.bd cP a.h0 B0) (by simp [fC])
        rw [hP0] at hP1 hP2
        cases hP1
        cases hP2
        rw [ev_add2 (ev_lw hP0) (ev_lw hW)] at hv
        cases hv
        subst hWk
        have hk64 : k < 2 ^ 64 := by omega
        have e : (P0 + BitVec.ofNat 64 k).toNat = P0.toNat + k := toNat_addc (by omega)
        refine hs_cons ⟨P0 + BitVec.ofNat 64 k, lookup_update_self _ _ _, by omega, by omega⟩
          (hs_cons ⟨Q, P0 + BitVec.ofNat 64 k, by rw [lookup_update_ne _ _ (by decide)]; exact hQ,
            lookup_update_self _ _ _, by omega⟩ (hs_upd (by avc2) ?_))
        exact hs_mono hL (fun f hf => by
          simp only [fC, List.mem_cons, List.mem_append, List.not_mem_nil, or_false] at hf ⊢
          tauto)
  -- payload = p - (buf + 9)
  refine hoareG_decHI hK (x := cPayload) (fx := [Fct.rel3 cBuf cP cPayload Rpay, wd cPayload]) (fo := [])
    (fb := []) (by avc2) (fun f hf => absurd hf (by simp)) (fun s hs hP' v hv hsh => ?_) ?_
    (fun f hf => absurd hf (by simp))
  · obtain ⟨P0, hP0, h1, h2⟩ := hP'.2 (Fct.bd cP a.h0 B0) (by simp [fC])
    obtain ⟨Q, P1, hQ, hP1, hrel⟩ := hP'.2 (Fct.rel cBuf cP) (by simp [fC])
    obtain ⟨Q2, hQ2, h3, h4⟩ := hP'.2 (Fct.bd cBuf a.h0 heapEnd) (by simp [fC, fB])
    rw [hP0] at hP1
    cases hP1
    rw [hQ] at hQ2
    cases hQ2
    rw [ev_sub2 (ev_lw hP0) (ev_add2 (ev_lw hQ) (ev_cw _ 9))] at hv
    cases hv
    refine hs_cons ⟨Q, P0, _, by rw [lookup_update_ne _ _ (by decide)]; exact hQ,
      by rw [lookup_update_ne _ _ (by decide)]; exact hP0, lookup_update_self _ _ _, ?_⟩
      (hs_cons (bd_wd _ _ _) (hs_nil _))
    show (P0 - (Q + BitVec.ofNat 64 9)).toNat + Q.toNat + 9 = P0.toNat
    bv_omega
  -- hl = rlp_list_header_len(payload)
  refine hoareG_decCallH hK (asp_of_footRet hK (footRet_list_header_len hC) (fun vs x hx => hx.elim))
    (rn := cHl) (sh := .one) (fx := [Fct.bd cHl 1 9]) (fo := []) (fb := []) (by avc2)
    (fun f hf => absurd hf (by simp)) (fun _ _ _ _ _ _ => trivial)
    (fun s vs v st hL hvs hRet hsh => ?_) ?_ (fun f hf => absurd hf (by simp))
  · obtain ⟨Y, hY, -⟩ := hL (Fct.bd cPayload 0 Aw.WW) (by simp [wd, fG1])
    obtain ⟨v0, vs', rfl, hv0, -⟩ := evs_cons_inv hvs
    rw [ev_lw hY] at hv0
    cases hv0
    have hv := hRet Y rfl
    subst hv
    have hH := hdrLen_le (n := Y.toNat) (BitVec.isLt _)
    have hHH : (BitVec.ofNat 64 (hdrLen Y.toNat)).toNat = hdrLen Y.toNat := by
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
    exact hs_cons (bd_new _ _ _ (by omega) (by omega)) (hs_nil _)
  -- start = (buf + 9) - hl
  refine hoareG_decHI hK (x := cStart) (fx := [Fct.rel3 cHl cBuf cStart Rst, Fct.bd cStart a.h0 B0])
    (fo := []) (fb := []) (by avc2) (fun f hf => absurd hf (by simp))
    (fun s hs hP' v hv hsh => ?_) ?_ (fun f hf => absurd hf (by simp))
  · obtain ⟨Q, hQ, h3, h4⟩ := hP'.2 (Fct.bd cBuf a.h0 heapEnd) (by simp [fG1, fC, fB])
    obtain ⟨HL, hHL, g1, g2⟩ := hP'.2 (Fct.bd cHl 1 9) (by simp)
    rw [ev_sub2 (ev_add2 (ev_lw hQ) (ev_cw _ 9)) (ev_lw hHL)] at hv
    cases hv
    have hsub : (Q + BitVec.ofNat 64 9 - HL).toNat = Q.toNat + 9 - HL.toNat := by bv_omega
    refine hs_cons ⟨HL, Q, _, by rw [lookup_update_ne _ _ (by decide)]; exact hHL,
      by rw [lookup_update_ne _ _ (by decide)]; exact hQ, lookup_update_self _ _ _, ?_⟩
      (hs_cons ⟨_, lookup_update_self _ _ _, by omega, by omega⟩ (hs_nil _))
    show (Q + BitVec.ofNat 64 9 - HL).toNat + HL.toNat = Q.toNat + 9
    omega
  -- rlp_encode_list_header(start, payload)
  refine hoareG_seqA (L2 := Hs (fG3 a.p0.hp a.h0))
    (hoareG_callAs hK (asp_writer hK (footRet_encode_list_headerA hC hA hT)) ?_ (fun _ _ _ _ hL _ _ => hL)) ?_
  · intro s hs hP' vs hvs callee
    obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
    obtain ⟨S, hS, h1, h2⟩ := hP'.2 (Fct.bd cStart a.h0 B0) (by simp [fG3])
    rw [ev_lw hS] at e1
    cases e1
    exact ⟨S, rfl, h1, by omega⟩
  -- return <start, hl + payload>
  refine hoareG_returnA hK (fun s hs hL v hv => ?_)
  obtain ⟨S, hS, h1, h2⟩ := hL (Fct.bd cStart a.h0 B0) (by simp [fG3])
  obtain ⟨HL, hHL, g1, g2⟩ := hL (Fct.bd cHl 1 9) (by simp [fG3, fG2])
  obtain ⟨Y, hY, -⟩ := hL (Fct.bd cPayload 0 Aw.WW) (by simp [wd, fG3, fG2, fG1])
  obtain ⟨HL', B', S', hHL', hB', hS', hRst⟩ := hL (Fct.rel3 cHl cBuf cStart Rst) (by simp [fG3])
  obtain ⟨B2, P2, Y2, hB2, hP2, hY2, hRpay⟩ := hL (Fct.rel3 cBuf cP cPayload Rpay)
    (by simp [fG3, fG2, fG1])
  obtain ⟨P3, hP3, h5, h6⟩ := hL (Fct.bd cP a.h0 B0) (by simp [fG3, fG2, fG1, fC])
  rw [hHL] at hHL'
  cases hHL'
  rw [hS] at hS'
  cases hS'
  rw [hP3] at hP2
  cases hP2
  rw [hY] at hY2
  cases hY2
  rw [hB'] at hB2
  cases hB2
  obtain ⟨vs, rfl, hvs⟩ := Spec.ev_rstruct_inv hv
  obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
  rw [ev_lw hS] at e1
  cases e1
  rw [ev_add2 (ev_lw hHL) (ev_lw hY)] at e2
  cases e2
  have hdt : domTop = 2 ^ 40 := rfl
  have hsum : (HL + Y).toNat = HL.toNat + Y.toNat := by
    rw [BitVec.toNat_add]
    apply Nat.mod_eq_of_lt
    unfold Rpay at hRpay
    unfold Rst at hRst
    omega
  refine ⟨S, HL + Y, rfl, h1, ?_, ?_⟩
  · rw [hsum]
    unfold Rpay at hRpay
    unfold Rst at hRst
    omega
  · rw [hsum]; omega

end InitECandidate.Solver.MemSafe.BalEnc
