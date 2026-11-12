import InitECandidate.Solver.Spec.Mpt.Leaves.RlpFoot

/-!
# `rlp_item` and `rlp_decode_fully`: payload inside the input, fresh footprint

`freshFoot_rlp_item'`: a return `<k, b, c, d>` of `rlp_item(P, L)` has `c ≤ L`, and when
`P + L` does not wrap, the payload `[b, b + c)` lies inside `[P, P + L)` (`RiL`); the only writes
are the validator's released scratch records (via `rlp_list_count`, `RlpFoot.lean`).

* `freshFoot_rlp_item : FreshFoot … (fun _ _ => True) RiQ` (the decode hypothesis);
* `freshFoot_rlp_decode_fully : FreshFoot … True RdfQ` (payload inside `[p, p + len)`), and the located
  `freshFoot_rlp_decode_fully'` (`RiL`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Mpt.Leaves
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec

variable {σ : Type} {X : Ctx 64}

open MemSafe (ptrsOf Ptrs heapEnd heapBase scratchEnd)

/-! ## The code -/

/-- `(len - 1) <+ e` (`lenLt` of `CodeRlp`). -/
abbrev lenM1Lt (e : ExpHOL 64) : ExpHOL 64 := .cmp .lower (.op .sub [lv (nm "len"), cw 1]) e

def riShort : ProgHOL 64 :=
  .dec (nm "n") .one (.op .sub [lv (nm "b"), cw 128])
    (.seq (failIf (lenM1Lt (lv (nm "n"))) 3)
      (.seq (.ite (.cmp .equal (lv (nm "n")) (cw 1))
          (failIf (.cmp .lower (.loadByte (.op .add [lv (nm "p"), cw 1])) (cw 128)) 4) .skip)
        (.return (.rstruct [cw 0, .op .add [lv (nm "p"), cw 1], lv (nm "n"),
          .op .add [cw 1, lv (nm "n")]]))))

/-- The long forms: `ll` length bytes after the header byte; `k` is the kind word. -/
def riLongTail (tail : ProgHOL 64) : ProgHOL 64 :=
  .seq (failIf (lenM1Lt (lv (nm "ll"))) 3)
    (.decCall (nm "n") .one (nm "rlp_read_length") [.op .add [lv (nm "p"), cw 1], lv (nm "ll")]
      (.seq (failIf (.cmp .notLower (cw 55) (lv (nm "n"))) 5)
        (.seq (failIf (.cmp .lower (.op .sub [.op .sub [lv (nm "len"), cw 1], lv (nm "ll")])
            (lv (nm "n"))) 3) tail)))

def riLongStrRet : ProgHOL 64 :=
  .return (.rstruct [cw 0, .op .add [lv (nm "p"), cw 1, lv (nm "ll")], lv (nm "n"),
    .op .add [cw 1, lv (nm "ll"), lv (nm "n")]])

def riLongListRet : ProgHOL 64 :=
  .seq (callD (nm "rlp_list_count") [.op .add [lv (nm "p"), cw 1, lv (nm "ll")], lv (nm "n")])
    (.return (.rstruct [cw 1, .op .add [lv (nm "p"), cw 1, lv (nm "ll")], lv (nm "n"),
      .op .add [cw 1, lv (nm "ll"), lv (nm "n")]]))

def riShortList : ProgHOL 64 :=
  .dec (nm "n") .one (.op .sub [lv (nm "b"), cw 192])
    (.seq (failIf (lenM1Lt (lv (nm "n"))) 3)
      (.seq (callD (nm "rlp_list_count") [.op .add [lv (nm "p"), cw 1], lv (nm "n")])
        (.return (.rstruct [cw 1, .op .add [lv (nm "p"), cw 1], lv (nm "n"),
          .op .add [cw 1, lv (nm "n")]]))))

def riBody : ProgHOL 64 :=
  .seq (failIf (.cmp .equal (lv (nm "len")) (cw 0)) 1)
    (.dec (nm "b") .one (.loadByte (lv (nm "p")))
      (.seq (.ite (.cmp .lower (lv (nm "b")) (cw 128))
          (.return (.rstruct [cw 0, lv (nm "p"), cw 1, cw 1])) .skip)
        (.seq (.ite (.cmp .notLower (cw 183) (lv (nm "b"))) riShort .skip)
          (.seq (.ite (.cmp .notLower (cw 191) (lv (nm "b")))
              (.dec (nm "ll") .one (.op .sub [lv (nm "b"), cw 183]) (riLongTail riLongStrRet)) .skip)
            (.seq (.ite (.cmp .notLower (cw 247) (lv (nm "b"))) riShortList .skip)
              (.dec (nm "ll") .one (.op .sub [lv (nm "b"), cw 247]) (riLongTail riLongListRet)))))))

def sh4' : ShapeHOL := .comb [.one, .one, .one, .one]

theorem entry_rlp_item : fnEntry Guest.Software.guestFn_rlp_item =
    (nm "rlp_item", params_pl, riBody, sh4') := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_rlp_item : guestCode (nm "rlp_item") = some (params_pl, riBody, sh4') :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 107) (by decide)) ⟨_, rfl⟩
    entry_rlp_item

def rdfBody : ProgHOL 64 :=
  .decCall (nm "it") sh4' (nm "rlp_item") [lv (nm "p"), lv (nm "len")]
    (.seq (failIf (.cmp .notEqual (.rfield 3 (lv (nm "it"))) (lv (nm "len"))) 6)
      (.return (lv (nm "it"))))

theorem entry_rlp_decode_fully : fnEntry Guest.Software.guestFn_rlp_decode_fully =
    (nm "rlp_decode_fully", params_pl, rdfBody, sh4') := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_rlp_decode_fully : guestCode (nm "rlp_decode_fully") = some (params_pl, rdfBody, sh4') :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 108) (by decide)) ⟨_, rfl⟩
    entry_rlp_decode_fully

/-! ## The return fact -/

/-- A return `<a, b, c, d>` of `rlp_item(P, L)`: `c ≤ L`, and `[b, b + c) ⊆ [P, P + L)` when
`P + L` does not wrap. -/
def RiL (P L : BitVec 64) (v : ValueHOL 64) : Prop :=
  ∀ a b c d : BitVec 64, v = .rStruct [.val (.word a), .val (.word b), .val (.word c), .val (.word d)] →
    c.toNat ≤ L.toNat ∧
      (P.toNat + L.toNat < 2 ^ 64 → P.toNat ≤ b.toNat ∧ b.toNat + c.toNat ≤ P.toNat + L.toNat)

/-- The located `rlp_item` / `rlp_decode_fully` post. -/
def RiQL (vs : List (ValueHOL 64)) (_ _ : Ptrs) (_ : MemSafe.Mem) (v : ValueHOL 64) : Prop :=
  ∃ P L : BitVec 64, vs = [.val (.word P), .val (.word L)] ∧ RiL P L v

theorem riL_of {P L a B C d : BitVec 64} {k : Nat} (hB : B = P + BitVec.ofNat 64 k)
    (hCL : C.toNat + k ≤ L.toNat) :
    RiL P L (.rStruct [.val (.word a), .val (.word B), .val (.word C), .val (.word d)]) := by
  intro a' b c d' h
  simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq,
    and_true] at h
  obtain ⟨-, rfl, rfl, -⟩ := h
  refine ⟨by omega, fun hPL => ?_⟩
  subst hB
  have hL := L.isLt
  have e : (P + BitVec.ofNat 64 k).toNat = P.toNat + k := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : k < 2 ^ 64),
      Nat.mod_eq_of_lt (by omega)]
  rw [e]
  exact ⟨by omega, by omega⟩

/-- The post of the branches: a return, with the `FPost` fact. -/
def RP' (p : Ptrs) (M0 : MemSafe.Mem) (Q : Ptrs → MemSafe.Mem → ValueHOL 64 → Prop)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  r ≠ none ∧ FPost p M0 Q r t

/-- `if c { br } k`, where `br` never completes normally. -/
theorem hoare_brSeq {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {c : ExpHOL 64} {br k : ProgHOL 64}
    (hbr : Hoare σ X (fun s => P s ∧ ∃ w, ev s c = some (.val (.word w)) ∧ w ≠ 0) br
      (fun r t => r ≠ none ∧ Q r t))
    (hk : Hoare σ X (fun s => P s ∧ ev s c = some (.val (.word 0))) k Q) :
    Hoare σ X P (.seq (.ite c br .skip) k) Q :=
  hoare_seq (R := fun r t => (r = none ∧ P t ∧ ev t c = some (.val (.word 0))) ∨ (r ≠ none ∧ Q r t))
    (hoare_ite (hoare_conseq hbr (fun _ _ h => h) fun _ _ _ _ h => Or.inr h)
      (hoare_skip fun t _ ⟨hp, hc⟩ => Or.inl ⟨rfl, hp, hc⟩))
    (fun _ _ _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2))
    (hoare_pre hk fun _ _ h => h.elim (fun h => ⟨h.2.1, h.2.2⟩) (fun h => absurd rfl h.1))

/-- The locals `p`, `len` and the frame. -/
structure RS (P L : BitVec 64) (p0 : Ptrs) (M0 : MemSafe.Mem) (t : State σ) : Prop where
  p : t.locals.lookup (nm "p") = some (.val (.word P))
  len : t.locals.lookup (nm "len") = some (.val (.word L))
  ff : FF p0 M0 t

theorem rs_set {P L : BitVec 64} {p0 : Ptrs} {M0 : MemSafe.Mem} {t : State σ} (h : RS P L p0 M0 t)
    {x : MlS} (h1 : x ≠ nm "p") (h2 : x ≠ nm "len") (v : ValueHOL 64) :
    RS P L p0 M0 (setVarHOLFinite x v t) :=
  ⟨by rw [lk_set_ne _ _ h1]; exact h.p, by rw [lk_set_ne _ _ h2]; exact h.len, h.ff⟩

theorem rs_call {P L : BitVec 64} {p0 : Ptrs} {M0 : MemSafe.Mem} {s st : State σ}
    (h : RS P L p0 M0 s) (hff : FF p0 M0 st) : RS P L p0 M0 { st with locals := s.locals } :=
  ⟨h.p, h.len, hff⟩

theorem ofNat_one_add {LL : BitVec 64} (h : LL.toNat + 1 < 2 ^ 64) :
    BitVec.ofNat 64 1 + LL = BitVec.ofNat 64 (1 + LL.toNat) := by
  apply BitVec.eq_of_toNat_eq
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, BitVec.toNat_ofNat]
  try omega

/-! ## The branches -/

theorem ri_short (hC : X.code.lookup = guestCode) {P L B : BitVec 64} {p0 : Ptrs}
    {M0 : MemSafe.Mem} (hL : L.toNat ≠ 0) (hB : 128 ≤ B.toNat) :
    Hoare σ X (fun t => RS P L p0 M0 t ∧ t.locals.lookup (nm "b") = some (.val (.word B))) riShort
      (RP' p0 M0 (fun _ _ v => RiL P L v)) := by
  unfold riShort
  refine hoare_decL (fun _ _ _ h => h) fun s _ ⟨hrs, hb⟩ v hv _ => ?_
  rw [ev_sub2 (ev_lv' hb) (ev_cw _ 128)] at hv
  cases hv
  refine hoare_pre (P := fun t => RS P L p0 M0 t ∧
      t.locals.lookup (nm "n") = some (.val (.word (B - BitVec.ofNat 64 128)))) ?_
    fun t _ ht => by subst ht; exact ⟨rs_set hrs (by decide) (by decide) _, lk_set_self _ _ _⟩
  refine hoare_guard_seq (funRet_rlp_fail hC) ?_
  refine hoare_pre (P := fun t => (RS P L p0 M0 t ∧
      t.locals.lookup (nm "n") = some (.val (.word (B - BitVec.ofNat 64 128)))) ∧
      (B - BitVec.ofNat 64 128).toNat + 1 ≤ L.toNat) ?_ fun t _ ⟨⟨hrs, hn⟩, hc⟩ => ⟨⟨hrs, hn⟩, by
        have h2 := lower_false (cmp_val_false hc (ev_sub2 (ev_lv' hrs.len) (ev_cw _ 1)) (ev_lv' hn))
        have : (L - BitVec.ofNat 64 1).toNat = L.toNat - 1 := by bv_omega
        omega⟩
  refine hoare_seqN (R := fun t => (RS P L p0 M0 t ∧
      t.locals.lookup (nm "n") = some (.val (.word (B - BitVec.ofNat 64 128)))) ∧
      (B - BitVec.ofNat 64 128).toNat + 1 ≤ L.toNat) ?_ ?_
  · refine hoare_ite ?_ (hoare_skip fun t _ ⟨h, _⟩ => ⟨rfl, h⟩)
    exact hoare_conseq (hoare_guard (P := fun t => (RS P L p0 M0 t ∧
      t.locals.lookup (nm "n") = some (.val (.word (B - BitVec.ofNat 64 128)))) ∧
      (B - BitVec.ofNat 64 128).toNat + 1 ≤ L.toNat) (funRet_rlp_fail hC)) (fun t _ h => h.1)
      fun r t _ _ h => ⟨h.1, h.2.1⟩
  · refine hoare_return fun t _ ⟨⟨hrs, hn⟩, hNL⟩ v hv => ⟨by simp, ?_⟩
    rw [ev_rstruct (evs_cons (ev_cw _ 0) (evs_cons (ev_add2 (ev_lv' hrs.p) (ev_cw _ 1))
      (evs_cons (ev_lv' hn) (evs_cons (ev_add2 (ev_cw _ 1) (ev_lv' hn)) evs_nil))))] at hv
    cases hv
    exact fpost_of_ff (ff_empty hrs.ff) fun _ _ => riL_of (k := 1) rfl hNL

theorem ri_long (hC : X.code.lookup = guestCode) {tail : ProgHOL 64} {P L LL : BitVec 64}
    {p0 : Ptrs} {M0 : MemSafe.Mem} (hL : L.toNat ≠ 0)
    (htail : ∀ N : BitVec 64, N.toNat + (1 + LL.toNat) ≤ L.toNat →
      Hoare σ X (fun t => (RS P L p0 M0 t ∧ t.locals.lookup (nm "ll") = some (.val (.word LL))) ∧
        t.locals.lookup (nm "n") = some (.val (.word N))) tail (RP' p0 M0 (fun _ _ v => RiL P L v))) :
    Hoare σ X (fun t => RS P L p0 M0 t ∧ t.locals.lookup (nm "ll") = some (.val (.word LL)))
      (riLongTail tail) (RP' p0 M0 (fun _ _ v => RiL P L v)) := by
  unfold riLongTail
  refine hoare_guard_seq (funRet_rlp_fail hC) ?_
  refine hoare_pre (P := fun t => (RS P L p0 M0 t ∧
      t.locals.lookup (nm "ll") = some (.val (.word LL))) ∧ LL.toNat + 1 ≤ L.toNat) ?_
    fun t _ ⟨⟨hrs, hll⟩, hc⟩ => ⟨⟨hrs, hll⟩, by
      have h2 := lower_false (cmp_val_false hc (ev_sub2 (ev_lv' hrs.len) (ev_cw _ 1)) (ev_lv' hll))
      have : (L - BitVec.ofNat 64 1).toNat = L.toNat - 1 := by bv_omega
      omega⟩
  refine hoare_decCallL (hdr_keep hC rlp_read_length_mem) (fun _ _ _ h => h)
    fun s _ ⟨⟨hrs, hll⟩, hLL⟩ _ _ callee v st ⟨hm, hpt⟩ _ hsh => ?_
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one' hsh
  refine hoare_pre (P := fun t => ((RS P L p0 M0 t ∧
      t.locals.lookup (nm "ll") = some (.val (.word LL))) ∧
      t.locals.lookup (nm "n") = some (.val (.word N))) ∧ LL.toNat + 1 ≤ L.toNat) ?_
    fun t _ ht => by
      subst ht
      exact ⟨⟨⟨rs_set (rs_call hrs (ff_keep hrs.ff hm hpt)) (by decide) (by decide) _,
        by rw [lk_set_ne _ _ (by decide)]; exact hll⟩, lk_set_self _ _ _⟩, hLL⟩
  refine hoare_guard_seq (funRet_rlp_fail hC) ?_
  refine hoare_guard_seq (funRet_rlp_fail hC) ?_
  intro t ht ⟨⟨⟨⟨⟨hrs, hll⟩, hn⟩, hLL⟩, _⟩, hc⟩
  have h2 := lower_false (cmp_val_false hc (ev_sub2 (ev_sub2 (ev_lv' hrs.len) (ev_cw _ 1))
    (ev_lv' hll)) (ev_lv' hn))
  have : (L - BitVec.ofNat 64 1 - LL).toNat = L.toNat - 1 - LL.toNat := by bv_omega
  exact htail N (by omega) t ht ⟨⟨hrs, hll⟩, hn⟩

theorem ri_strRet {P L LL N : BitVec 64} {p0 : Ptrs} {M0 : MemSafe.Mem}
    (hNL : N.toNat + (1 + LL.toNat) ≤ L.toNat) :
    Hoare σ X (fun t => (RS P L p0 M0 t ∧ t.locals.lookup (nm "ll") = some (.val (.word LL))) ∧
      t.locals.lookup (nm "n") = some (.val (.word N))) riLongStrRet
      (RP' p0 M0 (fun _ _ v => RiL P L v)) := by
  refine hoare_return fun t _ ⟨⟨hrs, hll⟩, hn⟩ v hv => ⟨by simp, ?_⟩
  rw [ev_rstruct (evs_cons (ev_cw _ 0) (evs_cons (ev_add3 (ev_lv' hrs.p) (ev_cw _ 1) (ev_lv' hll))
    (evs_cons (ev_lv' hn) (evs_cons (ev_add3 (ev_cw _ 1) (ev_lv' hll) (ev_lv' hn)) evs_nil))))] at hv
  cases hv
  have hL := L.isLt
  exact fpost_of_ff (ff_empty hrs.ff) fun _ _ =>
    riL_of (k := 1 + LL.toNat) (by rw [ofNat_one_add (by omega)]) hNL

theorem ri_listRet (hC : X.code.lookup = guestCode) {P L LL N : BitVec 64} {p0 : Ptrs}
    {M0 : MemSafe.Mem} (hNL : N.toNat + (1 + LL.toNat) ≤ L.toNat) :
    Hoare σ X (fun t => (RS P L p0 M0 t ∧ t.locals.lookup (nm "ll") = some (.val (.word LL))) ∧
      t.locals.lookup (nm "n") = some (.val (.word N))) riLongListRet
      (RP' p0 M0 (fun _ _ v => RiL P L v)) := by
  unfold riLongListRet
  refine hoare_seqN (R := fun t => (RS P L p0 M0 t ∧ t.locals.lookup (nm "ll") = some (.val (.word LL))) ∧
      t.locals.lookup (nm "n") = some (.val (.word N))) (hoare_callD (freshFoot_rlp_list_count hC)
    fun u _ ⟨⟨hrs, hll⟩, hn⟩ vs'' _ callee'' w st'' hR _ => ⟨rfl, ⟨⟨rs_call hrs
      (ff_call (Pre := fun _ _ => True) (Q := fun _ _ _ _ _ => True) (vs := vs'') (st := st'')
        hrs.ff hR trivial).1, hll⟩, hn⟩⟩) ?_
  refine hoare_return fun t _ ⟨⟨hrs, hll⟩, hn⟩ v hv => ⟨by simp, ?_⟩
  rw [ev_rstruct (evs_cons (ev_cw _ 1) (evs_cons (ev_add3 (ev_lv' hrs.p) (ev_cw _ 1) (ev_lv' hll))
    (evs_cons (ev_lv' hn) (evs_cons (ev_add3 (ev_cw _ 1) (ev_lv' hll) (ev_lv' hn)) evs_nil))))] at hv
  cases hv
  have hL := L.isLt
  exact fpost_of_ff (ff_empty hrs.ff) fun _ _ =>
    riL_of (k := 1 + LL.toNat) (by rw [ofNat_one_add (by omega)]) hNL

theorem ri_shortList (hC : X.code.lookup = guestCode) {P L B : BitVec 64} {p0 : Ptrs}
    {M0 : MemSafe.Mem} (hL : L.toNat ≠ 0) (hB : 192 ≤ B.toNat) :
    Hoare σ X (fun t => RS P L p0 M0 t ∧ t.locals.lookup (nm "b") = some (.val (.word B)))
      riShortList (RP' p0 M0 (fun _ _ v => RiL P L v)) := by
  unfold riShortList
  refine hoare_decL (fun _ _ _ h => h) fun s _ ⟨hrs, hb⟩ v hv _ => ?_
  rw [ev_sub2 (ev_lv' hb) (ev_cw _ 192)] at hv
  cases hv
  refine hoare_pre (P := fun t => RS P L p0 M0 t ∧
      t.locals.lookup (nm "n") = some (.val (.word (B - BitVec.ofNat 64 192)))) ?_
    fun t _ ht => by subst ht; exact ⟨rs_set hrs (by decide) (by decide) _, lk_set_self _ _ _⟩
  refine hoare_guard_seq (funRet_rlp_fail hC) ?_
  refine hoare_pre (P := fun t => (RS P L p0 M0 t ∧
      t.locals.lookup (nm "n") = some (.val (.word (B - BitVec.ofNat 64 192)))) ∧
      (B - BitVec.ofNat 64 192).toNat + 1 ≤ L.toNat) ?_ fun t _ ⟨⟨hrs, hn⟩, hc⟩ => ⟨⟨hrs, hn⟩, by
        have h2 := lower_false (cmp_val_false hc (ev_sub2 (ev_lv' hrs.len) (ev_cw _ 1)) (ev_lv' hn))
        have : (L - BitVec.ofNat 64 1).toNat = L.toNat - 1 := by bv_omega
        omega⟩
  refine hoare_seqN (R := fun t => (RS P L p0 M0 t ∧
      t.locals.lookup (nm "n") = some (.val (.word (B - BitVec.ofNat 64 192)))) ∧
      (B - BitVec.ofNat 64 192).toNat + 1 ≤ L.toNat) (hoare_callD (freshFoot_rlp_list_count hC)
    fun u _ ⟨⟨hrs, hn⟩, hNL⟩ vs'' _ callee'' w st'' hR _ => ⟨rfl, ⟨rs_call hrs
      (ff_call (Pre := fun _ _ => True) (Q := fun _ _ _ _ _ => True) (vs := vs'') (st := st'')
        hrs.ff hR trivial).1, hn⟩, hNL⟩) ?_
  refine hoare_return fun t _ ⟨⟨hrs, hn⟩, hNL⟩ v hv => ⟨by simp, ?_⟩
  rw [ev_rstruct (evs_cons (ev_cw _ 1) (evs_cons (ev_add2 (ev_lv' hrs.p) (ev_cw _ 1))
    (evs_cons (ev_lv' hn) (evs_cons (ev_add2 (ev_cw _ 1) (ev_lv' hn)) evs_nil))))] at hv
  cases hv
  exact fpost_of_ff (ff_empty hrs.ff) fun _ _ => riL_of (k := 1) rfl hNL

/-! ## `rlp_item` -/

theorem notLower_true' {x y : BitVec 64} (h : wordCmpHOL .notLower x y = true) : y.toNat ≤ x.toNat := by
  simp only [wordCmpHOL, Bool.not_eq_true', decide_eq_false_iff_not, BitVec.lt_def] at h
  omega

theorem notLower_false' {x y : BitVec 64} (h : wordCmpHOL .notLower x y = false) :
    x.toNat < y.toNat := by
  simp only [wordCmpHOL, Bool.not_eq_false', decide_eq_true_eq, BitVec.lt_def] at h
  exact h

theorem riL_one {P L a d : BitVec 64} (hL : L.toNat ≠ 0) :
    RiL P L (.rStruct [.val (.word a), .val (.word P), .val (.word 1), .val (.word d)]) :=
  riL_of (k := 0) (by simp) (by simp; omega)

/-- **`rlp_item`**: located payload, fresh footprint. -/
theorem freshFoot_rlp_item' (hC : X.code.lookup = guestCode) :
    FreshFoot σ X (nm "rlp_item") (fun _ _ => True) RiQL := by
  refine freshFoot_of fun vs body callee rs hl s0 _ hloc p hp hord _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hsA, hsB, hA, hB⟩ := lookupCode_two code_rlp_item (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨L, rfl⟩ := val_of_shapeEq_one hsB
  have hrs0 : RS P L p s0.memory s0 :=
    ⟨by rw [hloc]; exact hA, by rw [hloc]; exact hB, ff_refl hp hord⟩
  refine hoare_conseq (Q := RP' p s0.memory (fun _ _ v => RiL P L v)) ?_ (fun t _ ht => by
    subst ht; exact hrs0) fun r t _ _ ⟨_, h⟩ => fun v hv => by
      obtain ⟨p', a, b, c, d, e⟩ := h v hv
      exact ⟨p', a, b, c, d, P, L, rfl, e⟩
  unfold riBody
  refine hoare_guard_seq (funRet_rlp_fail hC) ?_
  refine hoare_pre (P := fun t => RS P L p s0.memory t ∧ L.toNat ≠ 0) ?_ fun t _ ⟨hrs, hc⟩ => ⟨hrs, by
    have h1 := Spec.equal_false (cmp_val_false hc (ev_lv' hrs.len) (ev_cw _ 0))
    intro h0; exact h1 (by apply BitVec.eq_of_toNat_eq; simpa using h0)⟩
  refine hoare_decL (fun _ _ _ h => h) fun s _ ⟨hrs, hL⟩ v hv _ => ?_
  obtain ⟨B, rfl, hB256⟩ := ev_loadByte_word hv
  refine hoare_pre (P := fun t => (RS P L p s0.memory t ∧
      t.locals.lookup (nm "b") = some (.val (.word B)))) ?_ fun t _ ht => by
    subst ht; exact ⟨rs_set hrs (by decide) (by decide) _, lk_set_self _ _ _⟩
  -- `b < 128`
  refine hoare_retGuard (fun t _ ⟨hrs, _⟩ v hv => ⟨by simp, ?_⟩) ?_
  · rw [ev_rstruct (evs_cons (ev_cw _ 0) (evs_cons (ev_lv' hrs.p) (evs_cons (ev_cw _ 1)
      (evs_cons (ev_cw _ 1) evs_nil))))] at hv
    cases hv
    exact fpost_of_ff (ff_empty hrs.ff) fun _ _ => riL_one hL
  refine hoare_pre (P := fun t => (RS P L p s0.memory t ∧
      t.locals.lookup (nm "b") = some (.val (.word B))) ∧ 128 ≤ B.toNat) ?_
    fun t _ ⟨⟨hrs, hb⟩, hc⟩ => ⟨⟨hrs, hb⟩, lower_false (cmp_val_false hc (ev_lv' hb) (ev_cw _ 128))⟩
  refine hoare_pure fun hB128 => ?_
  have toBr : ∀ {br : ProgHOL 64} {c : ExpHOL 64} {P' : State σ → Prop},
      Hoare σ X P' br (RP' p s0.memory (fun _ _ v => RiL P L v)) →
      Hoare σ X (fun s => P' s ∧ ∃ w, ev s c = some (.val (.word w)) ∧ w ≠ 0) br
        (fun r t => r ≠ none ∧ RP' p s0.memory (fun _ _ v => RiL P L v) r t) :=
    fun h => hoare_conseq h (fun _ _ h => h.1) fun _ _ _ _ h => ⟨h.1, h⟩
  -- `b <= 183`: short string
  refine hoare_brSeq (toBr (ri_short hC hL hB128)) ?_
  refine hoare_pre (P := fun t => (RS P L p s0.memory t ∧
      t.locals.lookup (nm "b") = some (.val (.word B))) ∧ 184 ≤ B.toNat) ?_
    fun t _ ⟨⟨hrs, hb⟩, hc⟩ => ⟨⟨hrs, hb⟩, notLower_false' (cmp_val_false hc (ev_cw _ 183) (ev_lv' hb))⟩
  refine hoare_pure fun hB184 => ?_
  -- `b <= 191`: long string
  refine hoare_brSeq (toBr (hoare_decL (fun _ _ _ h => h) fun s _ ⟨hrs, hb⟩ v hv _ => ?_)) ?_
  · rw [ev_sub2 (ev_lv' hb) (ev_cw _ 183)] at hv
    cases hv
    exact hoare_pre (ri_long hC hL fun N hN => ri_strRet hN) fun t _ ht => by
      subst ht; exact ⟨rs_set hrs (by decide) (by decide) _, lk_set_self _ _ _⟩
  refine hoare_pre (P := fun t => (RS P L p s0.memory t ∧
      t.locals.lookup (nm "b") = some (.val (.word B))) ∧ 192 ≤ B.toNat) ?_
    fun t _ ⟨⟨hrs, hb⟩, hc⟩ => ⟨⟨hrs, hb⟩, notLower_false' (cmp_val_false hc (ev_cw _ 191) (ev_lv' hb))⟩
  refine hoare_pure fun hB192 => ?_
  -- `b <= 247`: short list
  refine hoare_brSeq (toBr (ri_shortList hC hL hB192)) ?_
  -- long list
  refine hoare_decL (fun _ _ _ h => h) fun s _ ⟨⟨hrs, hb⟩, _⟩ v hv _ => ?_
  rw [ev_sub2 (ev_lv' hb) (ev_cw _ 247)] at hv
  cases hv
  exact hoare_pre (ri_long hC hL fun N hN => ri_listRet hC hN) fun t _ ht => by
    subst ht; exact ⟨rs_set hrs (by decide) (by decide) _, lk_set_self _ _ _⟩

/-- **`rlp_item`** (the decode hypothesis): payload `≤` length. -/
theorem freshFoot_rlp_item (hC : X.code.lookup = guestCode) :
    FreshFoot σ X (nm "rlp_item") (fun _ _ => True) RiQ :=
  freshFoot_weaken (freshFoot_rlp_item' hC) fun vs _ _ _ v ⟨P, L, hvs, h⟩ x len a b c d hvs' hv => by
    rw [hvs] at hvs'
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs'
    obtain ⟨-, rfl⟩ := hvs'
    exact (h a b c d hv).1

/-! ## `rlp_decode_fully` -/

/-- **`rlp_decode_fully`**: located payload, fresh footprint. -/
theorem freshFoot_rlp_decode_fully' (hC : X.code.lookup = guestCode) :
    FreshFoot σ X (nm "rlp_decode_fully") (fun _ _ => True) RiQL := by
  refine freshFoot_of fun vs body callee rs hl s0 _ hloc p hp hord _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hsA, hsB, hA, hB⟩ := lookupCode_two code_rlp_decode_fully (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨L, rfl⟩ := val_of_shapeEq_one hsB
  have hlp : s0.locals.lookup (nm "p") = some (.val (.word P)) := by rw [hloc]; exact hA
  have hll : s0.locals.lookup (nm "len") = some (.val (.word L)) := by rw [hloc]; exact hB
  unfold rdfBody
  refine hoare_decCallL (freshFoot_rlp_item' hC) fpost_locals
    fun s _ hs0 vs' hvs callee' v st hR _ hsh => ?_
  subst s
  rw [evs_cons (ev_lv' hlp) (evs_cons (ev_lv' hll) evs_nil)] at hvs
  simp only [Option.some.injEq] at hvs
  subst hvs
  have hcall := ff_call (Pre := fun _ _ => True) (Q := RiQL)
    (vs := [.val (.word P), .val (.word L)]) (s := s0) (callee := callee') (v := v) (st := st)
    (ff_refl hp hord) hR trivial
  obtain ⟨hff, _, _, _, _, _, hQ⟩ := hcall
  obtain ⟨P', L', hvs', hRi⟩ := hQ
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs'
  obtain ⟨rfl, rfl⟩ := hvs'
  refine hoare_pre (P := fun t => t.locals.lookup (nm "it") = some v ∧ FF p s0.memory t) ?_
    fun t _ ht => by subst ht; exact ⟨lk_set_self _ _ _, ff_locals _ (ff_locals _ hff)⟩
  refine hoare_guard_seq (funRet_rlp_fail hC) ?_
  refine hoare_return fun t _ ⟨⟨hit, hf⟩, _⟩ w hw => ?_
  rw [ev_lv, hit] at hw
  cases hw
  exact fpost_of_ff (ff_empty hf) fun _ _ => ⟨P, L, rfl, hRi⟩

/-- **`rlp_decode_fully`** (the decode hypothesis): the payload lies in `[p, p + len)` when that
does not wrap. -/
theorem freshFoot_rlp_decode_fully (hC : X.code.lookup = guestCode) :
    FreshFoot σ X (nm "rlp_decode_fully") (fun _ _ => True) RdfQ :=
  freshFoot_weaken (freshFoot_rlp_decode_fully' hC)
    fun vs _ _ _ v ⟨P, L, hvs, h⟩ P' L' a b c d hvs' hv hPL => by
      rw [hvs] at hvs'
      simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs'
      obtain ⟨rfl, rfl⟩ := hvs'
      exact (h a b c d hv).2 hPL

end InitECandidate.Solver.Spec.Mpt.Leaves
