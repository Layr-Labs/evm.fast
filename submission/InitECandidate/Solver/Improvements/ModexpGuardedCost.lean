import InitECandidate.Solver.Improvements.ModexpLocalRules
import InitECandidate.Solver.Improvements.BoundedCountdown
import InitECandidate.Solver.Improvements.CompactCostReplay
import InitECandidate.Solver.Improvements.AcceptedBitLengthReturn
import InitECandidate.Solver.MemSafe.Entry

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
namespace ModexpGuardedCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Mod
open ModexpLocalRules AcceptedCostOverrideRules
variable {σ : Type}

abbrev allowance : Nat := 2^132
abbrev iterationsPrice : Nat := 8247 * (allowance + 1)
abbrev modPrice : Nat := iterationsPrice + 32*(allowance+1)
abbrev prePrice : Nat := modPrice + 32*(allowance+1)

def rows : TblState := ([(nm "charge_gas", 0), (nm "modexp_gas", 6), (nm "min", 0), (nm "u256_from_be", 18446744073709551621), (nm "sat_word", 0), (nm "buffer_read", 147573952589676412938), (nm "heap_release", 0), (nm "max", 0), (nm "digits_len", 18446744073709551617), (nm "memcpy", 73786976294838206468), (nm "memzero", 73786976294838206468), (nm "alloc", 2), (nm "heap_mark", 0), (nm "bn_to_be", 18446744073709551617), (nm "be_top_bit", 36893488147419103234), (nm "bn_from_be", 36893488147419103234), (nm "bn_mod", 1701411834604692317814935127148998950939), (nm "bn_mul", 340282366920938463537161583726606417923)], [], [])

theorem rows_sound {σ : Type} : StateSound σ guestCtx rows := by
  unfold rows

  exact (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound stateSound_empty (CompactCostReplay.accepted (f := nm "bn_mul") (B := 340282366920938463537161583726606417923) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "bn_mod") (B := 1701411834604692317814935127148998950939) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "bn_from_be") (B := 36893488147419103234) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "be_top_bit") (B := 36893488147419103234) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "bn_to_be") (B := 18446744073709551617) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "heap_mark") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "alloc") (B := 2) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "memzero") (B := 73786976294838206468) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "memcpy") (B := 73786976294838206468) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "digits_len") (B := 18446744073709551617) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "max") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "heap_release") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "buffer_read") (B := 147573952589676412938) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "sat_word") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "u256_from_be") (B := 18446744073709551621) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "min") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "modexp_gas") (B := 6) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "charge_gas") (B := 0) (by decide_cbv)))

theorem capped {p : ProgHOL 64} (h : (CompactCostReplay.price rows p).any (· ≤ allowance) = true) :
    Cost σ guestCtx p allowance := by
  cases he : CompactCostReplay.price rows p with
  | none => simp [he] at h
  | some b =>
    exact Cost.mono (CompactCostReplay.program_cost rows_sound he) (by simpa [he] using h)

theorem named {f : MlS} (h : (rows.1.lookup f).any (· ≤ allowance) = true) :
    CalleeCost σ guestCtx f allowance := by
  cases he : rows.1.lookup f with
  | none => simp [he] at h
  | some b =>
    have hc := calleeCost_of_tbl (rows_sound (σ := σ)).1 he
    intro vs body callee sh hl
    exact Cost.mono (hc vs body callee sh hl) (by simpa [he] using h)

abbrev Len (s : PanSemStateFiniteExact 64 σ) := Local (nm "elen") (smallNat 1024) s
abbrev Idx (s : PanSemStateFiniteExact 64 σ) := Local (nm "t") smallIndex s

theorem mx_case : Inv.CostP σ guestCtx Idx mxCase (max allowance (allowance+iterationsPrice)) := by
  unfold mxCase
  apply Inv.costP_ite
  · exact Inv.costP_of_cost (capped (by decide_cbv))
  · have hl : Inv.CostP σ guestCtx (Local (nm "t") (smallNat 8247)) mxLoop iterationsPrice := by
      apply Inv.CostP.pre (BoundedCountdown.loop_cost (cap := 8247) (nonzero_less_zero _)
        (stepsB_sound _ false mxIter (by decide_cbv)) (capped (p := mxIter) (by decide_cbv)))
      rintro s _ ⟨v,hv,hbound⟩
      simpa [wordOf,hv] using hbound
    refine Inv.CostP.pre (seq_keep (capped (by decide_cbv)) (by decide_cbv) hl) ?_
    rintro s _ ⟨⟨v,hv,hsmall⟩,hfalse⟩
    refine ⟨v,hv,?_⟩
    rcases hsmall with rfl | h
    · have hc := AcceptedBitLengthReturn.cmp_val_false hfalse (AcceptedBitLengthReturn.ev_lw hv) (ev_cw _ 0)
      exact False.elim ((by decide : Flapjack.Compiler.Encoders.Asm.wordCmpHOL .less (-1 : BitVec 64) 0 ≠ false) hc)
    · exact h

theorem mx_tail : Inv.CostP σ guestCtx Idx mxT (max allowance (allowance+iterationsPrice)+allowance) :=
  Inv.costP_seq (R := fun _ => True) mx_case (fun _ _ _ _ _ => trivial) (Inv.costP_of_cost (capped (by decide_cbv)))

def bitReturn (vs : List (ValueHOL 64)) (_ : PanSemStateFiniteExact 64 σ)
    (r : PanSemResultExact 64) (_ : PanSemStateFiniteExact 64 σ) : Prop :=
  ∀ (p : ValueHOL 64) (n : BitVec 64), vs = [p,.val (.word n)] → n.toNat ≤ 1024 → ∀ v, r = .returned v → smallIndex (some v)

/-- Cost of successive named calls before a continuation. -/
abbrev callChain (count tail : Nat) : Nat :=
  Nat.rec tail (fun _ rest => 1 + allowance + rest) count

abbrev buffersPrice := allowance + (allowance + (1+allowance+(max allowance (allowance+iterationsPrice)+allowance)))

theorem mx_buffers (hbit : FunSpec σ guestCtx (nm "be_top_bit") bitReturn) :
    Inv.CostP σ guestCtx Len mxW buffersPrice := by
  unfold mxW
  refine seq_keep (capped (by decide_cbv)) (by decide_cbv) ?_
  refine seq_keep (capped (by decide_cbv)) (by decide_cbv) ?_
  refine FourthConditionalCallCost.costP_decCall (Pre := fun _ _ => True)
    (Inv.calleeCostP_of_calleeCost (named (by decide_cbv))) (fun _ _ _ _ _ _ => trivial) hbit ?_
  rintro s _ ⟨n,hn,hbound⟩ vs hvs cl v st hret hst hsh
  obtain ⟨p,rest,rfl,_,hRest⟩ := evs_cons_inv hvs
  rw [evs_cons (AcceptedBitLengthReturn.ev_lw hn) evs_nil] at hRest
  cases hRest
  have hp := hret p n rfl hbound v rfl
  apply Inv.CostP.pre mx_tail
  rintro t _ rfl
  simpa [Idx,Local,setVarHOLFinite,HolFiniteMapExact.lookup_update,FUPDATE] using hp

theorem mx_body (hbit : FunSpec σ guestCtx (nm "be_top_bit") bitReturn) :
    Inv.CostP σ guestCtx Len mxBody modPrice := by
  unfold mxBody mxN mxAllocs
  apply Inv.CostP.mono (B := callChain 2 (allowance + callChain 1 (allowance + callChain 8 buffersPrice)))
  · refine decCall_keep (by decide) (named (by decide_cbv)) ?_
    refine dec_keep (by decide) ?_
    refine decCall_keep (by decide) (named (by decide_cbv)) ?_
    refine seq_keep (capped (by decide_cbv)) (by decide_cbv) ?_
    refine decCall_keep (by decide) (named (by decide_cbv)) ?_
    refine seq_keep (capped (by decide_cbv)) (by decide_cbv) ?_
    refine dec_keep (by decide) ?_
    iterate 8 refine decCall_keep (by decide) (named (by decide_cbv)) ?_
    exact mx_buffers hbit
  · decide

def exponentArg (vs : List (ValueHOL 64)) (_ : PanSemStateFiniteExact 64 σ) : Prop := smallNat 1024 vs[3]?

theorem callee (hbit : FunSpec σ guestCtx (nm "be_top_bit") bitReturn) :
    Inv.CalleeCostP σ guestCtx (nm "modexp") exponentArg modPrice := by
  intro vs body callee shape hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl,-,hlen,hall⟩ := InitECandidate.Solver.MemSafe.lookupCode_gen code_modexp hl
  apply Inv.CostP.pre (mx_body hbit)
  rintro s _ ⟨hloc,n,hn,hcap⟩
  have hlen' : 3 < vs.length := by simp [mxPs] at hlen; omega
  have hlocal := (hall 3 (by decide) hlen').1
  refine ⟨n,?_,hcap⟩
  rw [hloc]
  change callee.lookup (nm "elen") = _ at hlocal
  rw [hlocal]
  simpa only [List.getElem?_eq_getElem hlen'] using hn

#print axioms mx_case
#print axioms callee
end ModexpGuardedCost
