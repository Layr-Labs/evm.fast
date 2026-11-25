import InitECandidate.Solver.Improvements.TrieReference
import InitECandidate.Solver.AuthorizationWork.InitializedSignedCounter
import InitECandidate.Solver.Spec.Mpt.Leaves.FinCode
import InitECandidate.Solver.MemSafe.Wire.Guest

/-! Price both initialized 16-child loops in the installed RLP node finisher. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1000000
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace TrieFinish
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Leaves
open InitECandidate.Solver.MemSafe.Wire (calleeCost_guest)

variable {σ : Type}
private abbrev refLen := 1
private abbrev refWrite := TrieReference.writePrice
private abbrev encBytes := 110680464442257309706
private abbrev valueLen := 18446744073709551620
private abbrev headerLen := 18446744073709551619
private abbrev encHeader := 36893488147419103237

private theorem initializedSeq {i : MlS} {body tail : ProgHOL 64} {b c : Nat}
    (hb : Cost σ guestCtx body b) (hs : Steps σ i (· + 1) body) (ht : Cost σ guestCtx tail c) :
    Cost σ guestCtx (.dec i .one (cw 0) (.seq (.while (.cmp .less (lv i) (cw 16)) body) tail))
      (16 * (b + 1) + c) := by
  apply Inv.cost_of_costP_true
  refine Inv.costP_dec ?_
  intro s _ _ v hv _
  rw [ev_cw] at hv
  cases hv
  apply (Inv.costP_seq (R := fun _ => True)
    (InitializedSignedCounter.loop_cost (i := i) (limit := 16) (by decide) hb hs)
    (fun _ _ _ _ _ => trivial) (Inv.costP_of_cost ht)).pre
  rintro u _ rfl
  exact ⟨0, lk_set_self _ _ _, Nat.zero_le _⟩

private theorem firstIteration : Cost σ guestCtx finL1 (1 + refLen + (0+0)) :=
  cost_decCall (calleeCost_guest (f := nm "node_ref_len") (B := refLen) (by decide_cbv))
    (cost_seq (cost_assign _ _ _) (cost_assign _ _ _))

private theorem secondIteration : Cost σ guestCtx finL2 (1 + refWrite + (0+0)) :=
  cost_decCall TrieReference.writeCost
    (cost_seq (cost_assign _ _ _) (cost_assign _ _ _))

private abbrev k2Cost := max (1+refLen+0) 0
private abbrev k3Cost := max (16 * (1+refLen+(0+0)+1) + (1+valueLen+0)) 0
private abbrev threeCost := 16 * (1+refWrite+(0+0)+1) + (1+encBytes+0)
private abbrev nonThreeCost := 1+encBytes + (0 + max (1+encBytes+0) (1+refWrite+0))

private theorem firstLoop : Cost σ guestCtx finK3 k3Cost :=
  cost_ite (initializedSeq firstIteration (stepsB_sound (nm "i") true _ (by decide_cbv))
    (cost_decCall (calleeCost_guest (f := nm "rlp_value_encoded_len") (B := valueLen) (by decide_cbv))
      (cost_assign _ _ _))) cost_skip

private theorem secondLoop : Cost σ guestCtx fin3 threeCost :=
  initializedSeq secondIteration (stepsB_sound (nm "j") true _ (by decide_cbv))
    (cost_decCall (calleeCost_guest (f := nm "rlp_encode_bytes") (B := encBytes) (by decide_cbv))
      (cost_assign _ _ _))

private theorem nonThree : Cost σ guestCtx finNon3 nonThreeCost :=
  cost_decCall (calleeCost_guest (f := nm "rlp_encode_bytes") (B := encBytes) (by decide_cbv))
    (cost_seq (cost_assign _ _ _)
      (cost_ite (cost_decCall (calleeCost_guest (f := nm "rlp_encode_bytes") (B := encBytes) (by decide_cbv))
          (cost_assign _ _ _))
        (cost_decCall TrieReference.writeCost
          (cost_assign _ _ _))))

private abbrev secondCost :=
  1 + headerLen + (1 + 2 + ((1 + encHeader + 0) + (max nonThreeCost threeCost + (0+(0+0)))))

private theorem second : Cost σ guestCtx finSecond secondCost :=
  cost_decCall (calleeCost_guest (f := nm "rlp_list_header_len") (B := headerLen) (by decide_cbv))
    (cost_decCall (calleeCost_guest (f := nm "alloc") (B := 2) (by decide_cbv))
      (cost_seq (cost_call (Bh := 0)
          (calleeCost_guest (f := nm "rlp_encode_list_header") (B := encHeader) (by decide_cbv))
          (by intro _ _ _ _ h; cases h))
        (cost_dec (cost_seq (cost_ite nonThree secondLoop)
          (cost_seq (cost_store _ _) (cost_seq (cost_store _ _) (cost_return _)))))))

abbrev price := k2Cost + (k3Cost + secondCost)
theorem price_exact : price = 54196534092956709165919 := by decide +kernel

private theorem body : Cost σ guestCtx finBody price :=
  cost_dec (cost_dec (cost_dec (cost_dec (cost_seq
    (cost_ite (cost_decCall (calleeCost_guest (f := nm "node_ref_len") (B := refLen) (by decide_cbv))
      (cost_assign _ _ _)) cost_skip) (cost_seq firstLoop second)))))

theorem callee : CalleeCost σ guestCtx (nm "_node_rlp_finish") price := by
  intro vs actual callee rs hl
  obtain ⟨_, hCode⟩ := lookupCode_some hl
  rw [guestCtx_code, code_node_rlp_finish] at hCode
  have hBody : actual = finBody :=
    (congrArg (fun row => row.2.1) (Option.some.inj hCode)).symm
  rw [hBody]
  exact body

#print axioms price_exact
#print axioms callee
end TrieFinish
