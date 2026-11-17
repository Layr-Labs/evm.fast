import InitECandidate.Solver.Improvements.FourthRlpReadLengthCallee
import InitECandidate.Solver.Spec.CodeRlp
import InitECandidate.Solver.Improvements.AcceptedBitLengthReturn

/-! Tighter actual RLP header cost. Conditional read-length cost is closed by
byte-prefix guards: the two long-form lengths are in [1,8]. All malformed,
failed-load and exceptional executions remain in the cost statement. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace FourthRlpHeaderCore
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedLoopRules
variable {σ : Type} {X : Ctx 64}

abbrev FailCost (σ : Type) (X : Ctx 64) :=
  AcceptedIvvhCalleeCore.CalleeBound σ X (nm "rlp_fail") 0
abbrev ReadCost (σ : Type) (X : Ctx 64) :=
  FourthConditionalCallCost.CalleeCostP σ X (nm "rlp_read_length")
    FourthRlpReadLengthCallee.Pre 9

def ByteWord (B : BitVec 64) (s : PanSemStateFiniteExact 64 σ) : Prop :=
  s.locals.lookup (nm "b") = some (.val (.word B))
def LLBound (s : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ L : BitVec 64, s.locals.lookup (nm "ll") = some (.val (.word L)) ∧ L.toNat ≤ 8

theorem failIf_cost (hf : FailCost σ X) (c : ExpHOL 64) (k : Nat) :
    Cost σ X (failIf c k) 1 := by
  have hc : Cost σ X (callD (nm "rlp_fail") [cw k]) 1 :=
    cost_call (Bh := 0) hf (by intro _ _ _ _ h; cases h)
  simpa only [failIf, Nat.max_zero] using cost_ite hc (cost_skip (σ := σ) (X := X))

theorem failIf_keeps_ll (c : ExpHOL 64) (k : Nat) :
    Hoare σ X LLBound (failIf c k) (fun r t => r = none → LLBound t) := by
  intro s hs ⟨L, hL, h8⟩ tracked hr
  refine ⟨L, ?_, h8⟩
  exact (keepsB_sound (σ := σ) (nm "ll") (failIf c k) (by rfl) s (Or.inl hr)).trans hL

theorem noNormal_return {e : ExpHOL 64} :
    Hoare σ X (fun _ => True) (.return e) (fun r _ => r ≠ none) :=
  hoare_return (fun _ _ _ _ _ => by simp)

theorem noNormal_seq {a b : ProgHOL 64}
    (hb : Hoare σ X (fun _ => True) b (fun r _ => r ≠ none)) :
    Hoare σ X (fun _ => True) (.seq a b) (fun r _ => r ≠ none) :=
  hoare_seq (R := fun _ _ => True) (fun _ _ _ _ => trivial)
    (fun _ _ _ h _ _ => h) hb

theorem noNormal_dec {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {p : ProgHOL 64}
    (hp : Hoare σ X (fun _ => True) p (fun r _ => r ≠ none)) :
    Hoare σ X (fun _ => True) (.dec n sh e p) (fun r _ => r ≠ none) := by
  refine hoare_dec fun _ _ _ _ _ _ => ?_
  exact hoare_pre hp (fun _ _ _ => trivial)

theorem noNormal_decCall {n f : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {p : ProgHOL 64}
    (hp : Hoare σ X (fun _ => True) p (fun r _ => r ≠ none)) :
    Hoare σ X (fun _ => True) (.decCall n sh f args p) (fun r _ => r ≠ none) := by
  refine hoare_decCall (funRet_true _) fun _ _ _ _ _ _ _ _ => ?_
  exact hoare_pre hp (fun _ _ _ => trivial)

theorem shortStr_noNormal : Hoare σ X (fun _ => True) hdrShortStr (fun r _ => r ≠ none) :=
  noNormal_dec (noNormal_seq (noNormal_seq noNormal_return))
theorem shortList_noNormal : Hoare σ X (fun _ => True) hdrShortList (fun r _ => r ≠ none) :=
  noNormal_dec (noNormal_seq noNormal_return)
theorem long_noNormal (base kind : Nat) :
    Hoare σ X (fun _ => True) (hdrLong base kind) (fun r _ => r ≠ none) :=
  noNormal_dec (noNormal_seq (noNormal_decCall (noNormal_seq (noNormal_seq noNormal_return))))

/-- A returning branch followed by skip carries the actual false guard into
its continuation. No behavior of `rlp_fail` is assumed here. -/
theorem ifSkip_false {P : PanSemStateFiniteExact 64 σ → Prop} {c : ExpHOL 64} {p : ProgHOL 64}
    (hp : Hoare σ X (fun _ => True) p (fun r _ => r ≠ none)) :
    Hoare σ X P (.ite c p .skip)
      (fun r t => r = none → P t ∧ ev t c = some (.val (.word 0))) := by
  refine hoare_ite ?_ ?_
  · exact hoare_post (hoare_pre hp (fun _ _ _ => trivial))
      (fun _ _ _ _ h hr => False.elim (h hr))
  · exact hoare_skip (fun _ _ h _ => h)

theorem shortStr_cost (hf : FailCost σ X) : Cost σ X hdrShortStr 2 := by
  have hInner : Cost σ X
      (.ite (.cmp .equal (lv (nm "n")) (cw 1))
        (failIf (.cmp .lower (.loadByte (.op .add [lv (nm "p"), cw 1])) (cw 128)) 4) .skip) 1 := by
    simpa only [Nat.max_zero] using
      (cost_ite (failIf_cost hf _ _) (cost_skip (σ := σ) (X := X)))
  exact cost_dec (cost_seq (failIf_cost hf _ _) (cost_seq hInner (cost_return _)))

theorem shortList_cost (hf : FailCost σ X) : Cost σ X hdrShortList 1 :=
  cost_dec (cost_seq (failIf_cost hf _ _) (cost_return _))

theorem long_cost (hf : FailCost σ X) (hr : ReadCost σ X) (base kind : Nat)
    (hbase : base ≤ 247) :
    CostP σ X (fun s => ∃ B : BitVec 64, ByteWord B s ∧
      base ≤ B.toNat ∧ B.toNat ≤ base + 8) (hdrLong base kind) 13 := by
  refine costP_dec fun s hs ⟨B, hb, hlo, hhi⟩ value hv hshape => ?_
  rw [ev_sub2 (show ev s (lv (nm "b")) = some (.val (.word B)) from hb) (ev_cw _ base)] at hv
  cases hv
  have hbaseNat : (BitVec.ofNat 64 base).toNat = base := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  have h8 : (B - BitVec.ofNat 64 base).toNat ≤ 8 := by
    rw [BitVec.toNat_sub_of_le (by rw [BitVec.le_def, hbaseNat]; omega), hbaseNat]
    omega
  have tailCost : Cost σ X
      (.seq (failIf (.cmp .notLower (cw 55) (lv (nm "n"))) 5)
        (.seq (failIf (.cmp .lower (.op .sub [.op .sub [lv (nm "len"), cw 1], lv (nm "ll")])
          (lv (nm "n"))) 3)
          (.return (.rstruct [.op .add [cw 1, lv (nm "ll")], lv (nm "n"), cw kind])))) 2 :=
    cost_seq (failIf_cost hf _ _) (cost_seq (failIf_cost hf _ _) (cost_return _))
  have callCost : CostP σ X LLBound
      (.decCall (nm "n") .one (nm "rlp_read_length")
        [.op .add [lv (nm "p"), cw 1], lv (nm "ll")]
        (.seq (failIf (.cmp .notLower (cw 55) (lv (nm "n"))) 5)
          (.seq (failIf (.cmp .lower (.op .sub [.op .sub [lv (nm "len"), cw 1], lv (nm "ll")])
            (lv (nm "n"))) 3)
            (.return (.rstruct [.op .add [cw 1, lv (nm "ll")], lv (nm "n"), cw kind]))))) 12 := by
    refine FourthConditionalCallCost.costP_decCall (Bk := 2) hr ?_ (funSpec_true _) ?_
    · intro t ht ⟨L, hL, h8⟩ vs hvs callee
      obtain ⟨p, rest, rfl, hp, hrest⟩ := evs_cons_inv hvs
      rw [evs_cons (AcceptedBitLengthReturn.ev_lw hL) evs_nil] at hrest
      simp only [Option.some.injEq] at hrest
      subst rest
      exact ⟨p, L, rfl, h8⟩
    · intro t ht hp vs hvs callee value st hRet hctx hshape
      exact costP_of_cost tailCost
  have sequence : CostP σ X LLBound
      (.seq (failIf (lenLt (lv (nm "ll"))) 3)
        (.decCall (nm "n") .one (nm "rlp_read_length")
          [.op .add [lv (nm "p"), cw 1], lv (nm "ll")]
          (.seq (failIf (.cmp .notLower (cw 55) (lv (nm "n"))) 5)
            (.seq (failIf (.cmp .lower (.op .sub [.op .sub [lv (nm "len"), cw 1], lv (nm "ll")])
              (lv (nm "n"))) 3)
              (.return (.rstruct [.op .add [cw 1, lv (nm "ll")], lv (nm "n"), cw kind])))))) 13 :=
    costP_seq (costP_of_cost (failIf_cost hf _ _)) (failIf_keeps_ll _ _) callCost
  refine sequence.pre fun t ht heq => ?_
  subst t
  exact ⟨_, lk_set_self _ _ _, h8⟩

/-- Pure comparison inversion copied from accepted Spec/Rlp.lean. -/
theorem cmp_nonzero {s : PanSemStateFiniteExact 64 σ} {o : Cmp} {a b : ExpHOL 64}
    {x y w : BitVec 64} (h : ev s (.cmp o a b) = some (.val (.word w))) (hw : w ≠ 0)
    (ha : ev s a = some (.val (.word x))) (hb : ev s b = some (.val (.word y))) :
    wordCmpHOL o x y = true := by
  rw [ev_cmp ha hb] at h
  by_contra hc
  simp only [Bool.not_eq_true] at hc
  rw [hc] at h
  simp only [Bool.false_eq_true, if_false, Option.some.injEq, ValueHOL.val.injEq,
    HolWordLab.word.injEq] at h
  exact hw h.symm

theorem upper_true {s : PanSemStateFiniteExact 64 σ} {B : BitVec 64} {k : Nat}
    (hk : k < 256) (hb : ByteWord B s)
    (hc : CondTrue s (.cmp .notLower (cw k) (lv (nm "b")))) : B.toNat ≤ k := by
  obtain ⟨w, hw, hne⟩ := hc
  have cmp := cmp_nonzero hw hne (ev_cw _ k) (AcceptedBitLengthReturn.ev_lw hb)
  have hnot : ¬ BitVec.ofNat 64 k < B := by simpa [wordCmpHOL] using cmp
  have hK : (BitVec.ofNat 64 k).toNat = k := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  rw [BitVec.lt_def, hK] at hnot
  omega

theorem upper_false {s : PanSemStateFiniteExact 64 σ} {B : BitVec 64} {k : Nat}
    (hk : k < 256) (hb : ByteWord B s)
    (hc : ev s (.cmp .notLower (cw k) (lv (nm "b"))) = some (.val (.word 0))) : k < B.toNat := by
  have cmp := AcceptedBitLengthReturn.cmp_val_false hc (ev_cw _ k) (AcceptedBitLengthReturn.ev_lw hb)
  have hlt : BitVec.ofNat 64 k < B := by simpa [wordCmpHOL] using cmp
  have hK : (BitVec.ofNat 64 k).toNat = k := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  rwa [BitVec.lt_def, hK] at hlt

/-- Conditional sequence rule for an exiting true branch and a skip false branch. -/
theorem costP_ifSkip_seq {P : PanSemStateFiniteExact 64 σ → Prop} {c : ExpHOL 64}
    {a b : ProgHOL 64} {Ba Bb : Nat}
    (ha : CostP σ X (fun s => P s ∧ CondTrue s c) a Ba)
    (hexit : Hoare σ X (fun _ => True) a (fun r _ => r ≠ none))
    (hb : CostP σ X (fun s => P s ∧ ev s c = some (.val (.word 0))) b Bb) :
    CostP σ X P (.seq (.ite c a .skip) b) (Ba + Bb) := by
  refine costP_seq ?_ (ifSkip_false hexit) hb
  simpa only [Nat.max_zero] using costP_ite ha
    (costP_of_cost (cost_skip (σ := σ) (X := X)))

def afterLongStr : ProgHOL 64 :=
  .seq (.ite (.cmp .notLower (cw 247) (lv (nm "b"))) hdrShortList .skip) (hdrLong 247 1)
def afterShortStr : ProgHOL 64 :=
  .seq (.ite (.cmp .notLower (cw 191) (lv (nm "b"))) (hdrLong 183 0) .skip) afterLongStr
def afterSingle : ProgHOL 64 :=
  .seq (.ite (.cmp .notLower (cw 183) (lv (nm "b"))) hdrShortStr .skip) afterShortStr

theorem afterLongStr_cost (hf : FailCost σ X) (hr : ReadCost σ X)
    (B : BitVec 64) (hB : B.toNat < 256) :
    CostP σ X (ByteWord B) afterLongStr 14 := by
  unfold afterLongStr
  refine costP_ifSkip_seq (Ba := 1) (Bb := 13)
    (costP_of_cost (shortList_cost hf)) shortList_noNormal ?_
  refine (long_cost hf hr 247 1 (by decide)).pre fun s hs ⟨hb, hc⟩ => ?_
  have hlo := upper_false (by decide : 247 < 256) hb hc
  exact ⟨B, hb, by omega, by omega⟩

theorem afterShortStr_cost (hf : FailCost σ X) (hr : ReadCost σ X)
    (B : BitVec 64) (hB : B.toNat < 256) :
    CostP σ X (fun s => ByteWord B s ∧ 183 < B.toNat) afterShortStr 27 := by
  unfold afterShortStr
  refine costP_ifSkip_seq (Ba := 13) (Bb := 14) ?_ (long_noNormal 183 0) ?_
  · refine (long_cost hf hr 183 0 (by decide)).pre fun s hs ⟨⟨hb, hlo⟩, hc⟩ => ?_
    have hhi := upper_true (by decide : 191 < 256) hb hc
    exact ⟨B, hb, by omega, by omega⟩
  · exact (afterLongStr_cost hf hr B hB).pre (fun _ _ h => h.1.1)

theorem afterSingle_cost (hf : FailCost σ X) (hr : ReadCost σ X)
    (B : BitVec 64) (hB : B.toNat < 256) :
    CostP σ X (ByteWord B) afterSingle 29 := by
  unfold afterSingle
  refine costP_ifSkip_seq (Ba := 2) (Bb := 27)
    (costP_of_cost (shortStr_cost hf)) shortStr_noNormal ?_
  refine (afterShortStr_cost hf hr B hB).pre fun s hs ⟨hb, hc⟩ => ?_
  exact ⟨hb, upper_false (by decide : 183 < 256) hb hc⟩

theorem dispatch_cost (hf : FailCost σ X) (hr : ReadCost σ X)
    (B : BitVec 64) (hB : B.toNat < 256) :
    CostP σ X (ByteWord B) hdrDispatch 29 := by
  unfold hdrDispatch
  refine costP_ifSkip_seq (Ba := 0) (Bb := 29)
    (costP_of_cost (cost_return _)) noNormal_return ?_
  exact (afterSingle_cost hf hr B hB).pre (fun _ _ h => h.1)

theorem body_cost (hf : FailCost σ X) (hr : ReadCost σ X) : Cost σ X hdrBody 30 := by
  apply cost_of_costP_true
  unfold hdrBody
  refine costP_seq (Ba := 1) (Bb := 29) (R := fun _ => True) (costP_of_cost (failIf_cost hf _ _))
    (fun _ _ _ _ _ => trivial) ?_
  refine costP_dec fun s hs hp value hv hshape => ?_
  obtain ⟨B, rfl, hB⟩ := ev_loadByte_word hv
  refine (dispatch_cost hf hr B hB).pre fun t ht heq => ?_
  subst t
  exact lk_set_self _ _ _

#print axioms long_cost
#print axioms dispatch_cost
#print axioms body_cost
end FourthRlpHeaderCore
