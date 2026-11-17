import InitECandidate.Solver.Improvements.FourthEncoderCallerHoare
import InitECandidate.Solver.Improvements.FourthEncoderTypedLoop
import InitECandidate.Solver.Improvements.FourthEncoderCountRules
import InitECandidate.Solver.MemSafe.BalCost.Suffix

/-! Conditional suffix walk: captured key count and Bbl4's real typed facts are
retained together. Existing sort, size-body, allocator and final-tail bounds
are deliberately reused unchanged. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace FourthEncoderTypedSuffix
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS ProgHOL ExpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Helpers InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Aw InitECandidate.Solver.MemSafe.BalEnc
open InitECandidate.Solver.MemSafe.BalCost.Loop
open InitECandidate.Solver.MemSafe.BalCost.Suffix
open FourthEncoderCallerBody FourthEncoderCallerHoare
open FourthEncoderTypedLoop FourthEncoderCountRules
variable {σ : Type}

def cBound (encoderB M : Nat) : Nat :=
  1 + allocB + ((M + 1) * (encBodyBound encoderB + 1) + oldB encTail)
def afterKeysBound (encoderB M : Nat) : Nat :=
  oldB sortCall + ((M + 1) * (sizeB + 1) + cBound encoderB M)

theorem phase2c_cost {a : AwE σ} (hK : AwOK a) (hc : CsE a)
    (hgw : a.gw = []) (hBA : Bal.BalNN a.s0 a.Γ0) {encoderB M : Nat} {C : BitVec 64}
    (hM : M < 2 ^ 63) (hC : C.toNat < 2 ^ 63 → C.toNat ≤ M)
    (henc : Inv.CalleeCostP σ guestCtx (nm "bal_encode_account")
      (fun vs s => AwInv a s ∧ EncoderArgs a vs s) encoderB) :
    Inv.CostP σ guestCtx
      (fun s => APre a (Hs (f2Facts a.p0.hp)) s ∧ CountEq C s)
      phase2c (cBound encoderB M) := by
  have hB0v : B0 = 2 ^ 40 + 128 := by unfold B0 domTop; rfl
  have hdt : domTop = 2 ^ 40 := rfl
  have hse : heapEnd < 2 ^ 32 := by decide
  unfold phase2c cBound
  refine costP_decCallH_count (keys := cAddrs) hK (asp_alloc hK hX_code)
    (Inv.calleeCostP_of_calleeCost alloc_cost) (by decide) (fx := [Fct.bd cBuf a.h0 heapEnd])
    (by avc2) ?_ ?_ ?_
  · intro s hs hP vs hvs callee
    obtain ⟨v, rfl, e⟩ := Mpt.Leaves.evs_one_inv hvs
    obtain ⟨n, rfl⟩ := InitECandidate.Solver.Spec.ev_op_word e
    exact ⟨n, rfl⟩
  · intro s vs v st hL hvs hRet hsh
    obtain ⟨n, q, p'', rfl, rfl, hq1, hq2, hp'', hq3, hq4⟩ := hRet
    exact hs_cons ⟨q, lookup_update_self _ _ _, hq1, by omega⟩ (hs_nil _)
  · refine costP_decH_count (keys := cAddrs) hK (by decide)
      (fx := [Fct.bd cP a.h0 B0, Fct.rel cBuf cP]) (by avc2) ?_ ?_
    · intro s hs hL v hv hsh
      obtain ⟨Q, hQ, h1, h2⟩ := hL (Fct.bd cBuf a.h0 heapEnd) (by simp)
      rw [ev_add2 (ev_lw hQ) (ev_cw _ 9)] at hv
      cases hv
      have he : (Q + BitVec.ofNat 64 9).toNat = Q.toNat + 9 := toNat_addc (by omega)
      exact hs_cons ⟨Q + BitVec.ofNat 64 9, lookup_update_self _ _ _, by omega, by omega⟩
        (hs_cons ⟨Q, Q + BitVec.ofNat 64 9,
          by rw [lookup_update_ne _ _ (by decide)]; exact hQ,
          lookup_update_self _ _ _, by omega⟩ (hs_nil _))
    · change Inv.CostP σ guestCtx
        (fun s => APre a (Hs (fC a.p0.hp a.h0)) s ∧ CountEq C s)
        (.seq (.assign .local cI (.const 0))
          (.seq (.while (.cmp .less (.var .local cI) countE) encBody) encTail))
        ((M + 1) * (encBodyBound encoderB + 1) + oldB encTail)
      exact cost_init_loop_typed (i := cI) (keys := cAddrs) hK (by decide) (fun m hm => hs_upd (by avc2) hm)
        hM hC (encBody_cost hK hc hgw hBA henc) (encBody_hoare hK hc hgw hBA)
        enc_steps enc_keeps (noContB_sound _ (by decide)) (Inv.costP_of_cost tail_cost)

theorem afterKeys_cost {a : AwE σ} (hK : AwOK a) (hc : CsE a)
    (hgw : a.gw = []) (hBA : Bal.BalNN a.s0 a.Γ0) {encoderB M : Nat} {C : BitVec 64}
    (hM : M < 2 ^ 63) (hC : C.toNat < 2 ^ 63 → C.toNat ≤ M)
    (henc : Inv.CalleeCostP σ guestCtx (nm "bal_encode_account")
      (fun vs s => AwInv a s ∧ EncoderArgs a vs s) encoderB) :
    Inv.CostP σ guestCtx
      (fun s => APre a (Hs (f2Facts a.p0.hp)) s ∧ CountEq C s)
      afterKeys (afterKeysBound encoderB M) := by
  have hsortM : HoareG σ guestCtx (APre a (Hs (f2Facts a.p0.hp))) sortCall
      (AQ a (Hs (f2Facts a.p0.hp)) (fun _ => False)) := by
    refine hoareG_callH hK
      (asp_sort_fresh hK hc (E := 24) (M := 24) le_rfl (by decide) (by decide)) ?_
    intro s hs hP vs hvs callee
    obtain ⟨v1, v2, v3, v4, v5, rfl, f1, f2, f3, f4, f5⟩ := evs_five hvs
    obtain ⟨O, N, hrk, hg⟩ := hP.2 (Fct.str2 cAddrs (rkM24 a.p0.hp)) (by simp [f2Facts])
    obtain ⟨Tm, hTm, -, -⟩ := hP.2 (wd cTmp) (by simp [f2Facts])
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
    exact ⟨O, N, BitVec.ofNat 64 1, Tm, rfl, hK.hle.trans hg1, hg3⟩
  change Inv.CostP σ guestCtx _
    (.seq sortCall (.dec cTotal .one (.const 1024)
      (.seq (.assign .local cI (.const 0))
        (.seq (.while (.cmp .less (.var .local cI) countE) sizeBody) phase2c))))
    (oldB sortCall + ((M + 1) * (sizeB + 1) + cBound encoderB M))
  refine Inv.costP_seq (R := fun s => APre a (Hs (f2Facts a.p0.hp)) s ∧ CountEq C s)
    (Inv.costP_of_cost sort_cost) ?_ ?_
  · intro s hs hp ht hr
    exact ⟨(Frames.hoare_of_hoareG hsortM s hs hp.1 ht).2.1 hr,
      hoare_count_keep (keepsB_sound cAddrs sortCall (by decide)) s hs hp.2 ht hr⟩
  · refine costP_decH_count (keys := cAddrs) hK (by decide) (fx := []) (by avb)
      (fun s hs hL v hv hsh => hs_nil _) ?_
    have hf2 : ∀ f ∈ f2Facts a.p0.hp,
        ∀ x ∈ [cTotal, cI, cM, cAd, cSc, cScap, cJ, cE, cCl, cCn, cCp], x ∉ f.vars := by
      intro f hf x hx
      simp only [f2Facts, List.mem_cons, List.not_mem_nil, or_false] at hf
      rcases hf with rfl | rfl <;>
        (simp only [Fct.vars, wd, List.mem_singleton]; rintro rfl; revert hx; decide)
    exact cost_init_loop_typed (i := cI) (keys := cAddrs) hK (by decide) (fun m hm => hs_upd (by avb) hm) hM hC
      (Inv.costP_of_cost cost_size) (hoareG_sizeBody hK hc hgw hBA hf2)
      size_steps size_keeps (noContB_sound _ (by decide))
      (phase2c_cost hK hc hgw hBA hM hC henc)

#print axioms phase2c_cost
#print axioms afterKeys_cost
end FourthEncoderTypedSuffix
