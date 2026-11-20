import InitECandidate.Solver.Improvements.FourthEncoderCallerBody
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace FourthEncoderCallerHoare
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Helpers InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Aw InitECandidate.Solver.MemSafe.BalEnc
open InitECandidate.Solver.MemSafe.BalCost.Loop
variable {σ : Type}
/-! The accepted Bbl4 encoding-body proof is extracted verbatim so the new
conditional clock bound can use the same actual invariant. -/
theorem encBody_hoare {a : AwE σ} (hK : AwOK a) (hc : CsE a)
    (hgw : a.gw = []) (hBA : Bal.BalNN a.s0 a.Γ0) :
    HoareG σ guestCtx (APre a (Hs (fC a.p0.hp a.h0))) encBody
      (AQ a (Hs (fC a.p0.hp a.h0)) (fun _ => False)) := by
  have hB0v : B0 = 2 ^ 40 + 128 := by unfold B0 domTop; rfl
  have hdt : domTop = 2 ^ 40 := rfl
  unfold encBody encLoop
  refine hoareG_decCallH hK (asp_htab_getT hK hc (th := tHTd20) (by decide)) (rn := cM2)
    (sh := .comb [.one, .one]) (fx := [mFact a.Γ0]) (fo := (fC a.p0.hp a.h0)) (fb := (fC a.p0.hp a.h0)) (by avc2) (by avc2)
    (fun s hs hP' vs hvs callee => ?_) (fun s vs v st hL hvs hRet hsh => ?_) ?_ (fun f hf => hf)
  · obtain ⟨v1, v2, rfl, e1, e2⟩ := evs_two hvs
    obtain ⟨T, rfl, hT'⟩ := ba_fits hc hBA hP'.1 hgw e1
    obtain ⟨K, rfl⟩ := InitECandidate.Solver.Spec.ev_op_word e2
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
      obtain ⟨K, rfl⟩ := InitECandidate.Solver.Spec.ev_op_word e2
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

#print axioms encBody_hoare
end FourthEncoderCallerHoare
