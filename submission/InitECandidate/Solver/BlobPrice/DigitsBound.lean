import InitECandidate.Solver.BlobPrice.DigitsTail
import InitECandidate.Solver.BlobPrice.DigitLengthBound

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
namespace DigitsBound
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe (lookupCode_gen)
variable {σ : Type}
private abbrev relation (s : PanSemStateFiniteExact 64 σ) (u : BitVec 64) :=
  s.locals.lookup (nm "u") = some (.val (.word u)) ∧ s.locals.lookup (nm "m") = some (.val (.word 8))
private abbrev q := 2^64+1
private theorem len : CalleeCost σ guestCtx (nm "digits_len") q := CompactCostReplay.accepted (by decide_cbv)
private theorem toDigits : CalleeCost σ guestCtx (nm "u256_to_digits") 0 := CompactCostReplay.accepted (by decide_cbv)
private def fromLengths : ProgHOL 64 :=
  .decCall (nm "n") .one (nm "digits_len") [lv (nm "v"),cw 8]
    (.decCall (nm "mm") .one (nm "digits_len") [lv (nm "u"),lv (nm "m")]
      (.dec (nm "i") .one (cw 0) ddTail))
private abbrev measured := 1+q + (1+q+DigitsTail.tailPrice)

private theorem lengthsCost {u v : BitVec 64} :
    Inv.CostP σ guestCtx (fun s => relation s u ∧ s.locals.lookup (nm "v")=some (.val (.word v)))
      fromLengths measured := by
  unfold fromLengths
  apply Mpt.costP_decCall len DigitLengthBound.result
  rintro s _ ⟨⟨hu,hm⟩,hv⟩ vs hs callee val st hret _
  rw [evs_cons (ev_lw hv) (evs_cons (ev_cw _ 8) evs_nil)] at hs
  cases hs
  obtain ⟨n,rfl,_⟩ := hret (by simp [Good]) v 8 rfl (by decide) val rfl
  apply Mpt.costP_decCall len DigitLengthBound.result
  rintro s1 _ rfl vs1 h1 callee1 val1 st1 hret1 _
  have hu1 := (lk_set_ne ({ st with locals := s.locals }) (.val (.word n)) (show nm "n" ≠ nm "u" by decide)).trans hu
  have hm1 := (lk_set_ne ({ st with locals := s.locals }) (.val (.word n)) (show nm "n" ≠ nm "m" by decide)).trans hm
  rw [evs_cons (ev_lw hu1) (evs_cons (ev_lw hm1) evs_nil)] at h1
  cases h1
  obtain ⟨mm,rfl,h8⟩ := hret1 (by simp [Good]) u 8 rfl (by decide) val1 rfl
  apply Inv.costP_dec
  rintro s2 _ rfl i _ _
  apply (DigitsTail.tail (n := n) h8).pre
  rintro t _ rfl
  constructor
  · rw [lk_set_ne _ _ (by decide)]
    exact lk_set_self _ _ _
  · rw [lk_set_ne _ _ (by decide),lk_set_ne _ _ (by decide)]
    exact lk_set_self _ _ _

private theorem decRel {u : BitVec 64} {x : MlS} {e : ExpHOL 64} {k : ProgHOL 64} {b : Nat}
    (hu : x ≠ nm "u") (hm : x ≠ nm "m") (hk : Inv.CostP σ guestCtx (fun s => relation s u) k b) :
    Inv.CostP σ guestCtx (fun s => relation s u) (.dec x .one e k) b := by
  apply Inv.costP_dec
  rintro s _ ⟨a,b⟩ v _ _
  apply hk.pre
  rintro t _ rfl
  exact ⟨(lk_set_ne _ _ hu).trans a,(lk_set_ne _ _ hm).trans b⟩

private theorem body {u : BitVec 64} : Inv.CostP σ guestCtx (fun s => relation s u) ddBody ((1+0+0)+measured) := by
  unfold ddBody
  refine decRel (by decide) (by decide) (decRel (by decide) (by decide) ?_)
  apply Inv.costP_dec
  rintro s _ ⟨hu,hm⟩ v hv _
  obtain ⟨V,rfl⟩ := ev_op_word hv
  apply Inv.costP_seq (Inv.costP_of_cost (cost_call (Bh := 0) toDigits (by intro _ _ _ _ h; cases h)))
    _ (lengthsCost (u := u) (v := V))
  apply hoare_callD (P := fun t => t = _) (Q := fun r t => r=none →
    relation t u ∧ t.locals.lookup (nm "v")=some (.val (.word V))) (funSpec_true _)
  rintro t _ rfl vs _ callee val st _ _ _
  exact ⟨⟨(lk_set_ne _ _ (by decide)).trans hu,(lk_set_ne _ _ (by decide)).trans hm⟩,lk_set_self _ _ _⟩

abbrev input (vs : List (ValueHOL 64)) :=
  ∃ (u : BitVec 64) (d : ValueHOL 64), vs=[.val (.word u),.val (.word 8),d]
theorem callee : Inv.CalleeCostP σ guestCtx (nm "digits_divmod") (fun vs _ => input vs) 1272825341085959061886 := by
  intro vs actual store rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl,_,_,bind⟩ := lookupCode_gen code_digits_divmod hl
  rintro s hs ⟨hstore,u,d,rfl⟩ hg
  apply body (u := u) s hs _ hg
  unfold relation
  rw [hstore]
  exact ⟨(bind 0 (by decide) (by change 0 < 3; decide)).1,(bind 1 (by decide) (by change 1 < 3; decide)).1⟩
#print axioms callee
end DigitsBound
