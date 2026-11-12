import InitECandidate.Solver.Spec.Mpt.Leaves.BelowCommon
import InitECandidate.Solver.Spec.Mpt.Leaves.RlpItem
import InitECandidate.Solver.Spec.Mpt.Fill.Main
import InitECandidate.Solver.MemSafe.Helpers.Rlp
import InitECandidate.Solver.Spec.Inv.HtabFind

/-!
# The RLP length functions mirror `encLen` / `valLen` / `hdrLen`

Return specifications (every good result writes nothing and keeps the globals):

* `footRet_rlp_header_len`: `rlp_header_len(n)` returns `hdrLen n`;
* `footRet_rlp_bytes_encoded_len`: `rlp_bytes_encoded_len(fb, n)` returns `encLen fb n`;
* `funSpec_rlp_value_encoded_len`: `rlp_value_encoded_len(p, n)` returns `valLen (ld8W s p) n`
  in its entry state `s` (the first byte is read only when `n ≠ 0`).

`hdrLen`, `encLen`, `valLen`, `beLen`, `ld8W` are the mirrors of `Spec/Mpt/Fill/Pre.lean`;
`beLenN_eq` relates `Fill`'s `beLen` to the helpers' `MemSafe.Helpers.beLen`
(`footRet_rlp_be_len`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Mpt.Leaves
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec (State)
open InitECandidate.Solver.MemSafe.Helpers (FootRet LPre LQ NoFoot footRet_of_hoareG
  hoareG_decCallFoot hoareG_returnQ hoareG_skipL hoareG_seqL lpre_init BeLenRet footRet_rlp_be_len)

variable {σ : Type} {X : Ctx 64}

open MemSafe (ptrsOf Ptrs heapEnd heapBase scratchEnd)

/-! ## `beLen` -/

theorem beLenN_eq : ∀ (f v : Nat), v < 256 ^ f → beLenN f v = MemSafe.Helpers.beLen v
  | 0, v, h => by
      have : v = 0 := by simpa using h
      subst this
      simp [beLenN, MemSafe.Helpers.beLen_zero]
  | f + 1, v, h => by
      by_cases hv : v = 0
      · subst hv; simp [beLenN, MemSafe.Helpers.beLen_zero]
      · rw [beLenN, if_neg hv, MemSafe.Helpers.beLen_pos hv, beLenN_eq f (v / 256) (by
          rw [Nat.pow_succ] at h; omega)]
        omega

theorem beLen_eq (v : BitVec 64) : beLen v = BitVec.ofNat 64 (MemSafe.Helpers.beLen v.toNat) := by
  unfold beLen
  rw [beLenN_eq 8 v.toNat (by have := v.isLt; omega)]

/-! ## The code -/

def hlBody : ProgHOL 64 :=
  .seq (.ite (.cmp .notLower (cw 55) (lv (nm "n"))) (.return (cw 1)) .skip)
    (.decCall (nm "ll") .one (nm "rlp_be_len") [lv (nm "n")]
      (.return (.op .add [cw 1, lv (nm "ll")])))

theorem entry_rlp_header_len : fnEntry Guest.Software.guestFn_rlp_header_len =
    (nm "rlp_header_len", [(nm "n", .one)], hlBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_rlp_header_len : guestCode (nm "rlp_header_len") = some ([(nm "n", .one)], hlBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 121) (by decide)) ⟨_, rfl⟩
    entry_rlp_header_len

/-- `(n == 1) && (fb <+ 128)` as the guest writes it. -/
def bel1 : ExpHOL 64 :=
  .op .and [.cmp .notEqual (cw 0) (.cmp .equal (lv (nm "n")) (cw 1)),
    .cmp .notEqual (cw 0) (.cmp .lower (lv (nm "first_byte")) (cw 128))]

def belBody : ProgHOL 64 :=
  .seq (.ite bel1 (.return (cw 1)) .skip)
    (.decCall (nm "h") .one (nm "rlp_header_len") [lv (nm "n")]
      (.return (.op .add [lv (nm "h"), lv (nm "n")])))

theorem entry_rlp_bytes_encoded_len : fnEntry Guest.Software.guestFn_rlp_bytes_encoded_len =
    (nm "rlp_bytes_encoded_len", [(nm "first_byte", .one), (nm "n", .one)], belBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_rlp_bytes_encoded_len : guestCode (nm "rlp_bytes_encoded_len") =
    some ([(nm "first_byte", .one), (nm "n", .one)], belBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 125) (by decide)) ⟨_, rfl⟩
    entry_rlp_bytes_encoded_len

def velBody : ProgHOL 64 :=
  .dec (nm "fb") .one (cw 0)
    (.seq (.ite (.cmp .lower (cw 0) (lv (nm "n"))) (.assign .local (nm "fb") (.loadByte (lv (nm "p"))))
        .skip)
      (.call none (nm "rlp_bytes_encoded_len") [lv (nm "fb"), lv (nm "n")]))

theorem entry_rlp_value_encoded_len : fnEntry Guest.Software.guestFn_rlp_value_encoded_len =
    (nm "rlp_value_encoded_len", [(nm "p", .one), (nm "n", .one)], velBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_rlp_value_encoded_len : guestCode (nm "rlp_value_encoded_len") =
    some ([(nm "p", .one), (nm "n", .one)], velBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 286) (by decide)) ⟨_, rfl⟩
    entry_rlp_value_encoded_len

/-! ## `rlp_header_len` -/

def HLRet (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∀ N : BitVec 64, MemSafe.argW vs 0 = some N → v = .val (.word (hdrLen N))

theorem footRet_rlp_header_len (hC : X.code.lookup = guestCode) :
    FootRet σ X (nm "rlp_header_len") (fun _ => True) NoFoot HLRet := by
  refine footRet_of_hoareG fun vs body callee rs hl s0 _ hloc _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hsA, hA⟩ := lookupCode_one code_rlp_header_len hl
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hsA
  have hn0 : s0.locals.lookup (nm "n") = some (.val (.word N)) := by rw [hloc]; exact hA
  refine hoareG_conseq (P := LPre (NoFoot [.val (.word N)]) s0
      (fun m => m.lookup (nm "n") = some (.val (.word N))))
    (Q := LQ (NoFoot [.val (.word N)]) s0 (fun _ => True) (fun v => v = .val (.word (hdrLen N))))
    ?_ (fun t _ ht => by subst ht; exact lpre_init hn0)
    fun r t _ _ h => ⟨h.1, fun v hv N' hN' => by
      simp only [MemSafe.argW, MemSafe.wordOf, List.getElem?_cons_zero, Option.some.injEq] at hN'
      subst hN'; exact h.2.2 v hv⟩
  unfold hlBody
  refine hoareG_seqL (L2 := fun m => m.lookup (nm "n") = some (.val (.word N)) ∧ 55 < N.toNat)
    (hoareG_ite ?_ ?_) ?_
  · refine hoareG_pre (hoareG_returnQ (L := fun m => m.lookup (nm "n") = some (.val (.word N)) ∧
      N.toNat ≤ 55) fun s _ hL v hv => ?_) fun t _ ⟨hp, w, hw, hw0⟩ =>
        ⟨⟨hp.1, notLower_true' (cmp_val_true hw hw0 (ev_cw _ 55) (ev_lv' hp.1))⟩, hp.2⟩
    rw [ev_cw] at hv
    cases hv
    rw [hdrLen, if_pos hL.2]
    rfl
  · exact hoareG_pre (hoareG_skipL fun _ h => h) fun t _ ⟨hp, hc⟩ =>
      ⟨⟨hp.1, notLower_false' (cmp_val_false hc (ev_cw _ 55) (ev_lv' hp.1))⟩, hp.2⟩
  · refine hoareG_decCallFoot (footRet_rlp_be_len hC) (L' := fun _ _ => True)
      (fun _ _ _ _ _ => ⟨trivial, fun _ h => h.elim⟩) (fun s vs v _ hL hvs hret _ => ?_)
      fun _ _ _ _ => trivial
    rw [evs_cons (ev_lv' hL.1) evs_nil] at hvs
    simp only [Option.some.injEq] at hvs
    subst hvs
    have hv := hret N rfl
    subst hv
    refine hoareG_returnQ fun s' _ hm' w hw => ?_
    rw [ev_add2 (ev_cw _ 1) (ev_lv' (by rw [hm']; exact lookup_update_self _ _ _))] at hw
    cases hw
    rw [hdrLen, if_neg (by omega), beLen_eq]
    rfl

/-! ## `rlp_bytes_encoded_len` -/

theorem bel1_val (N F : BitVec 64) : (Flapjack.wordOpHOL (width := 64) .and
    [if wordCmpHOL (width := 64) .notEqual 0 (if wordCmpHOL (width := 64) .equal N 1 then 1 else 0)
      then 1 else 0,
     if wordCmpHOL (width := 64) .notEqual 0 (if wordCmpHOL (width := 64) .lower F 128 then 1 else 0)
      then 1 else 0]) =
    some (if N = 1 ∧ F.toNat < 128 then 1 else 0) := by
  by_cases h1 : N = 1 <;> by_cases h2 : F.toNat < 128
  · subst h1; simp [wordCmpHOL, h2, BitVec.lt_def, Flapjack.wordOpHOL]; decide
  · subst h1; simp [wordCmpHOL, h2, BitVec.lt_def, Flapjack.wordOpHOL]; decide
  all_goals
    simp [wordCmpHOL, h2, BitVec.lt_def, Flapjack.wordOpHOL]
    split
    · next h => exact absurd h h1
    · decide

theorem ev_bel1 {t : State σ} {F N : BitVec 64}
    (hf : t.locals.lookup (nm "first_byte") = some (.val (.word F)))
    (hn : t.locals.lookup (nm "n") = some (.val (.word N))) :
    ev t bel1 = some (.val (.word (if N = 1 ∧ F.toNat < 128 then 1 else 0))) := by
  unfold bel1
  have e1 := ev_cmp (o := .equal) (ev_lv' hn) (ev_cw t 1)
  have e2 := ev_cmp (o := .lower) (ev_lv' hf) (ev_cw t 128)
  have e3 := ev_cmp (o := .notEqual) (ev_cw t 0) e1
  have e4 := ev_cmp (o := .notEqual) (ev_cw t 0) e2
  rw [ev_op2 e3 e4]
  have := bel1_val N F
  simp only [BitVec.ofNat_eq_ofNat] at this ⊢
  rw [this]
  rfl

def ELRet (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∀ F N : BitVec 64, MemSafe.argW vs 0 = some F → MemSafe.argW vs 1 = some N →
    v = .val (.word (encLen F N))

theorem footRet_rlp_bytes_encoded_len (hC : X.code.lookup = guestCode) :
    FootRet σ X (nm "rlp_bytes_encoded_len") (fun _ => True) NoFoot ELRet := by
  refine footRet_of_hoareG fun vs body callee rs hl s0 _ hloc _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hsA, hsB, hA, hB⟩ := lookupCode_two code_rlp_bytes_encoded_len (by decide) hl
  obtain ⟨F, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hsB
  have hf0 : s0.locals.lookup (nm "first_byte") = some (.val (.word F)) := by rw [hloc]; exact hA
  have hn0 : s0.locals.lookup (nm "n") = some (.val (.word N)) := by rw [hloc]; exact hB
  let L0 : HolFiniteMapExact MlS (ValueHOL 64) → Prop := fun m => m.lookup (nm "first_byte") = some (.val (.word F)) ∧
    m.lookup (nm "n") = some (.val (.word N))
  refine hoareG_conseq (P := LPre (NoFoot [.val (.word F), .val (.word N)]) s0 L0)
    (Q := LQ (NoFoot [.val (.word F), .val (.word N)]) s0 (fun _ => True)
      (fun v => v = .val (.word (encLen F N))))
    ?_ (fun t _ ht => by subst ht; exact lpre_init ⟨hf0, hn0⟩)
    fun r t _ _ h => ⟨h.1, fun v hv F' N' hF hN => by
      simp only [MemSafe.argW, MemSafe.wordOf, List.getElem?_cons_zero, List.getElem?_cons_succ,
        Option.some.injEq] at hF hN
      subst hF hN; exact h.2.2 v hv⟩
  unfold belBody
  refine hoareG_seqL (L2 := fun m => L0 m ∧ ¬ (N = 1 ∧ F.toNat < 128)) (hoareG_ite ?_ ?_) ?_
  · refine hoareG_pre (hoareG_returnQ (L := fun m => L0 m ∧ (N = 1 ∧ F.toNat < 128))
      fun s _ hL v hv => ?_) fun t _ ⟨hp, w, hw, hw0⟩ => ⟨⟨hp.1, ?_⟩, hp.2⟩
    · rw [ev_cw] at hv
      cases hv
      rw [encLen, if_pos hL.2]
      rfl
    · rw [ev_bel1 hp.1.1 hp.1.2] at hw
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
      subst hw
      by_contra hc
      rw [if_neg hc] at hw0
      exact hw0 rfl
  · exact hoareG_pre (hoareG_skipL fun _ h => h) fun t _ ⟨hp, hc⟩ => ⟨⟨hp.1, by
      rw [ev_bel1 hp.1.1 hp.1.2] at hc
      simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hc
      intro h
      rw [if_pos h] at hc
      exact absurd hc (by decide)⟩, hp.2⟩
  · refine hoareG_decCallFoot (footRet_rlp_header_len hC) (L' := fun _ _ => True)
      (fun _ _ _ _ _ => ⟨trivial, fun _ h => h.elim⟩) (fun s vs v _ hL hvs hret _ => ?_)
      fun _ _ _ _ => trivial
    rw [evs_cons (ev_lv' hL.1.2) evs_nil] at hvs
    simp only [Option.some.injEq] at hvs
    subst hvs
    have hv := hret N rfl
    subst hv
    refine hoareG_returnQ fun s' _ hm' w hw => ?_
    rw [ev_add2 (ev_lv' (by rw [hm']; exact lookup_update_self _ _ _))
      (ev_lv' (by rw [hm', lookup_update_ne _ _ (by decide)]; exact hL.1.2))] at hw
    cases hw
    rw [encLen, if_neg hL.2]

/-! ## `rlp_value_encoded_len` -/

/-- A byte load in state `t` reads `ld8W t`. -/
theorem ev_loadByte_ld8W {t : State σ} {a : ExpHOL 64} {w : BitVec 64} {v : ValueHOL 64}
    (ha : ev t a = some (.val (.word w))) (h : ev t (.loadByte a) = some v) :
    v = .val (.word (ld8W t w)) := by
  obtain ⟨w', hw', byte, hb, rfl⟩ := Spec.Inv.ev_loadByte_inv h
  rw [ha] at hw'
  cases hw'
  rw [Spec.Inv.kbyte_eq] at hb
  split at hb
  · cases hb; rfl
  · cases hb

theorem funSpec_rlp_value_encoded_len (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "rlp_value_encoded_len") (fun vs s r t => Good (some r) →
      t.globals = s.globals ∧ t.memory = s.memory ∧ ∀ v, r = .returned v →
        ∀ P N : BitVec 64, vs = [.val (.word P), .val (.word N)] →
          v = .val (.word (valLen (ld8W s P) N))) := by
  intro vs body callee rs hl s0 hs hloc r hr hg
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hsA, hsB, hA, hB⟩ := lookupCode_two code_rlp_value_encoded_len (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hsB
  have hp0 : s0.locals.lookup (nm "p") = some (.val (.word P)) := by rw [hloc]; exact hA
  have hn0 : s0.locals.lookup (nm "n") = some (.val (.word N)) := by rw [hloc]; exact hB
  let FB : BitVec 64 := if N = 0 then 0 else ld8W s0 P
  have H : HoareG σ X (fun t => t = s0) velBody (fun r t => t.globals = s0.globals ∧
      t.memory = s0.memory ∧ ∀ v, r = some (.returned v) → v = .val (.word (valLen (ld8W s0 P) N))) := by
    refine hoareG_dec fun s _ hs v hv _ => ?_
    subst s
    rw [ev_cw] at hv
    cases hv
    refine hoareG_seq (R := fun r t => r = none ∧ t.globals = s0.globals ∧ t.memory = s0.memory ∧
        t.locals.lookup (nm "fb") = some (.val (.word FB)) ∧
        t.locals.lookup (nm "n") = some (.val (.word N))) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoareG_ite ?_ ?_
      · refine hoareG_assign fun t _ ⟨ht, w, hw, hw0⟩ v hv _ => ?_
        subst ht
        have hlp : (setVarHOLFinite (nm "fb") (.val (.word (BitVec.ofNat 64 0))) s0).locals.lookup
            (nm "p") = some (.val (.word P)) := by rw [lk_set_ne _ _ (by decide)]; exact hp0
        have hln : (setVarHOLFinite (nm "fb") (.val (.word (BitVec.ofNat 64 0))) s0).locals.lookup
            (nm "n") = some (.val (.word N)) := by rw [lk_set_ne _ _ (by decide)]; exact hn0
        rw [ev_loadByte_ld8W (ev_lv' hlp) hv]
        have hN : N ≠ 0 := by
          have := lower_true (cmp_val_true hw hw0 (ev_cw _ 0) (ev_lv' hln))
          intro h; subst h; simp at this
        refine ⟨rfl, rfl, rfl, ?_, ?_⟩
        · rw [lk_set_self]
          show _ = some (ValueHOL.val (.word (if N = 0 then 0 else ld8W s0 P)))
          rw [if_neg hN]
          rfl
        · rw [lk_set_ne _ _ (by decide)]; exact hln
      · refine hoareG_skip fun t _ ⟨ht, hc⟩ => ?_
        subst ht
        have hln : (setVarHOLFinite (nm "fb") (.val (.word (BitVec.ofNat 64 0))) s0).locals.lookup
            (nm "n") = some (.val (.word N)) := by rw [lk_set_ne _ _ (by decide)]; exact hn0
        have hN : N = 0 := by
          have := lower_false (cmp_val_false hc (ev_cw _ 0) (ev_lv' hln))
          apply BitVec.eq_of_toNat_eq; simp at this ⊢; omega
        refine ⟨rfl, rfl, rfl, ?_, hln⟩
        rw [lk_set_self]
        show _ = some (ValueHOL.val (.word (if N = 0 then 0 else ld8W s0 P)))
        rw [if_pos hN]
        rfl
    · refine MemSafe.hoareG_tailCall (footRet_rlp_bytes_encoded_len hC)
        (fun t _ ⟨_, hg1, hm1, hfb, hn⟩ vs hvs callee v st hR _ => ?_)
        fun t _ ⟨_, hg1, hm1, hfb, hn⟩ vs hvs callee r st hR _ habn => ?_
      · rw [evs_cons (ev_lv' hfb) (evs_cons (ev_lv' hn) evs_nil)] at hvs
        simp only [Option.some.injEq] at hvs
        subst hvs
        obtain ⟨hg2, hm2, hret⟩ := hR (by simp [Good]) trivial
        refine ⟨hg2.trans hg1, ?_, fun w hw => ?_⟩
        · show st.memory = s0.memory
          funext a; rw [hm2 a (fun h => h.elim)]; exact congrFun hm1 a
        · simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
          subst hw
          rw [hret v rfl FB N rfl rfl]
          rfl
      · rw [evs_cons (ev_lv' hfb) (evs_cons (ev_lv' hn) evs_nil)] at hvs
        simp only [Option.some.injEq] at hvs
        subst hvs
        obtain ⟨hg2, hm2, -⟩ := hR (MemSafe.Helpers.abn_good habn) trivial
        refine ⟨hg2.trans hg1, ?_, fun w hw => ?_⟩
        · show st.memory = s0.memory
          funext a; rw [hm2 a (fun h => h.elim)]; exact congrFun hm1 a
        · exact absurd (Option.some.inj hw) (MemSafe.Helpers.abn_ne_returned habn w)
  have := H s0 hs rfl (by rw [hr]; exact hg)
  rw [hr] at this
  obtain ⟨h1, h2, h3⟩ := this
  refine ⟨h1, h2, fun v hv P' N' hvs => ?_⟩
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  exact h3 v (by rw [hv])

end InitECandidate.Solver.Spec.Mpt.Leaves
