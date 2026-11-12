import InitECandidate.Solver.Spec.Mpt.Leaves.DecFinal
import InitECandidate.Solver.Spec.Mpt.Leaves.RlpFoot
import InitECandidate.Solver.Spec.Mpt.Leaves.RlpLen
import InitECandidate.Solver.Spec.Mpt.Fill.Needs
import InitECandidate.Solver.Spec.CostInv

/-!
# The RLP item total, as a function of memory

`rlp_list_to_slices` counts the items of a list with the validating `rlp_item_total(p, rem)` and
then re-parses them with `rlp_item_total_unchecked(p)`. Both compute the same function of the
bytes at `p`, `itot M be p` (the header byte, and for a long form its `ll ≤ 8` length bytes read
by `rlp_read_length`, `rlen`). Return specifications:

* `funSpec_rlp_read_length`: `rlp_read_length(a, n)` returns `rlen M be a n`;
* `funSpec_rlp_item_total_unchecked`: returns `itot M be p`;
* `funSpec_rlp_item_header_tot`: a returned header `<h0, h1, _>` has `h0 + h1 = itot M be p` and
  `1 + llOf b ≤ h0 + h1 ≤ len` (`b` the header byte, `llOf b` its length-byte count), so every
  byte the total reads lies in `[p, p + total)`;
* `funSpec_rlp_item_total_tot`: `rlp_item_total(p, len)` returns `itot M be p`, within the same
  bounds.

`itot_frame`: `itot` depends only on the bytes `[p, p + 1 + llOf b)`.
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
open InitECandidate.Solver.Spec.Mpt.Dec

variable {σ : Type} {X : Ctx 64}

open MemSafe (ptrsOf Ptrs heapEnd heapBase scratchEnd)

/-! ## The mirrors -/

/-- The byte at `a`, as the word `ld8 a` reads (memory `M`, byte order `be`). -/
def b8 (M : MemSafe.Mem) (be : Bool) (a : BitVec 64) : BitVec 64 := BitVec.ofNat 64 (byteOf M be a)

theorem ld8W_eq (s : State σ) (a : BitVec 64) : ld8W s a = b8 s.memory s.be a := rfl

theorem b8_lt (M : MemSafe.Mem) (be : Bool) (a : BitVec 64) : (b8 M be a).toNat < 256 := by
  unfold b8 byteOf
  rw [BitVec.toNat_ofNat]
  have := UInt8.toNat_lt (panGetByteHOL a (MemSafe.rd M (panByteAlignHOL a)) be)
  omega

/-- `rlp_read_length(a, n)`: the `n` bytes at `a`, big-endian. -/
def rlen (M : MemSafe.Mem) (be : Bool) (a : BitVec 64) : Nat → BitVec 64
  | 0 => 0
  | k + 1 => (rlen M be a k <<< 8) ||| b8 M be (a + BitVec.ofNat 64 k)

/-- The number of length bytes after a header byte `b`. -/
def llOf (b : Nat) : Nat := if 183 < b ∧ b ≤ 191 then b - 183 else if 247 < b then b - 247 else 0

/-- The total byte length of the RLP item at `q`, as `rlp_item_total_unchecked(q)` computes it. -/
def itot (M : MemSafe.Mem) (be : Bool) (q : BitVec 64) : BitVec 64 :=
  if (b8 M be q).toNat < 128 then BitVec.ofNat 64 1
  else if (b8 M be q).toNat ≤ 183 then BitVec.ofNat 64 1 + b8 M be q - BitVec.ofNat 64 128
  else if (b8 M be q).toNat ≤ 191 then
    BitVec.ofNat 64 1 + ((b8 M be q - BitVec.ofNat 64 183) +
      rlen M be (q + BitVec.ofNat 64 1) (b8 M be q - BitVec.ofNat 64 183).toNat)
  else if (b8 M be q).toNat ≤ 247 then BitVec.ofNat 64 1 + b8 M be q - BitVec.ofNat 64 192
  else BitVec.ofNat 64 1 + ((b8 M be q - BitVec.ofNat 64 247) +
    rlen M be (q + BitVec.ofNat 64 1) (b8 M be q - BitVec.ofNat 64 247).toNat)

theorem rlen_frame {M M' : MemSafe.Mem} {be : Bool} {a : BitVec 64} :
    ∀ n, (∀ k, k < n → b8 M' be (a + BitVec.ofNat 64 k) = b8 M be (a + BitVec.ofNat 64 k)) →
      rlen M' be a n = rlen M be a n
  | 0, _ => rfl
  | n + 1, h => by
      rw [rlen, rlen, rlen_frame n (fun k hk => h k (by omega)), h n (by omega)]

theorem add_one_add (q : BitVec 64) (k : Nat) :
    q + BitVec.ofNat 64 1 + BitVec.ofNat 64 k = q + BitVec.ofNat 64 (1 + k) := by
  rw [BitVec.add_assoc]
  congr 1
  apply BitVec.eq_of_toNat_eq
  simp only [BitVec.toNat_add, BitVec.toNat_ofNat]
  omega

theorem sub_toNat {b : BitVec 64} {k : Nat} (h : k ≤ b.toNat) (hk : k < 2 ^ 64) :
    (b - BitVec.ofNat 64 k).toNat = b.toNat - k := by
  rw [BitVec.toNat_sub, BitVec.toNat_ofNat, Nat.mod_eq_of_lt hk]
  omega

/-- **Frame.** `itot` reads only the header byte and its `llOf` length bytes. -/
theorem itot_frame {M M' : MemSafe.Mem} {be : Bool} {q : BitVec 64}
    (h : ∀ j, j < 1 + llOf (b8 M be q).toNat →
      b8 M' be (q + BitVec.ofNat 64 j) = b8 M be (q + BitVec.ofNat 64 j)) :
    itot M' be q = itot M be q := by
  have h0 : b8 M' be q = b8 M be q := by simpa using h 0 (by omega)
  have hlt := b8_lt M be q
  have hr : ∀ c : Nat, c < (b8 M be q).toNat → (b8 M be q).toNat - c ≤ llOf (b8 M be q).toNat →
      rlen M' be (q + BitVec.ofNat 64 1) (b8 M be q - BitVec.ofNat 64 c).toNat =
        rlen M be (q + BitVec.ofNat 64 1) (b8 M be q - BitVec.ofNat 64 c).toNat := by
    intro c hc hle
    refine rlen_frame _ fun k hk => ?_
    rw [sub_toNat (by omega) (by omega)] at hk
    rw [add_one_add]
    exact h (1 + k) (by omega)
  unfold itot
  rw [h0]
  by_cases h1 : (b8 M be q).toNat < 128
  · rw [if_pos h1, if_pos h1]
  rw [if_neg h1, if_neg h1]
  by_cases h2 : (b8 M be q).toNat ≤ 183
  · rw [if_pos h2, if_pos h2]
  rw [if_neg h2, if_neg h2]
  by_cases h3 : (b8 M be q).toNat ≤ 191
  · rw [if_pos h3, if_pos h3]
    rw [hr 183 (by omega) (by unfold llOf; rw [if_pos ⟨by omega, h3⟩])]
  rw [if_neg h3, if_neg h3]
  by_cases h4 : (b8 M be q).toNat ≤ 247
  · rw [if_pos h4, if_pos h4]
  rw [if_neg h4, if_neg h4]
  rw [hr 247 (by omega) (by unfold llOf; rw [if_neg (by omega), if_pos (by omega)])]

/-! ## Code -/

def rrlGuard : ExpHOL 64 :=
  .op .and [.cmp .notEqual (cw 0) (.cmp .lower (cw 1) (lv (nm "n"))),
    .cmp .notEqual (cw 0) (.cmp .equal (.loadByte (lv (nm "p"))) (cw 0))]

def rrlCond : ExpHOL 64 := .cmp .lower (lv (nm "i")) (lv (nm "n"))

def rrlLoopBody : ProgHOL 64 :=
  .seq (.assign .local (nm "v") (.op .or [.shift .lsl (lv (nm "v")) (cw 8),
      .loadByte (.op .add [lv (nm "p"), lv (nm "i")])]))
    (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1]))

def rrlBody : ProgHOL 64 :=
  .seq (.ite rrlGuard (callD (nm "rlp_fail") [cw 2]) .skip)
    (.dec (nm "v") .one (cw 0) (.dec (nm "i") .one (cw 0)
      (.seq (.while rrlCond rrlLoopBody) (.return (lv (nm "v"))))))

theorem entry_rlp_read_length : fnEntry Guest.Software.guestFn_rlp_read_length =
    (nm "rlp_read_length", [(nm "p", .one), (nm "n", .one)], rrlBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_rlp_read_length :
    guestCode (nm "rlp_read_length") = some ([(nm "p", .one), (nm "n", .one)], rrlBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 106) (by decide)) ⟨_, rfl⟩
    entry_rlp_read_length

/-- `return <1 + ll + n>` of a long form. -/
def ituLong (ll n : MlS) : ProgHOL 64 := .return (.op .add [cw 1, lv ll, lv n])

def ituBody : ProgHOL 64 :=
  .dec (nm "b") .one (.loadByte (lv (nm "p")))
    (.seq (.ite (.cmp .lower (lv (nm "b")) (cw 128)) (.return (cw 1)) .skip)
      (.seq (.ite (.cmp .notLower (cw 183) (lv (nm "b")))
          (.return (.op .sub [.op .add [cw 1, lv (nm "b")], cw 128])) .skip)
        (.seq (.ite (.cmp .notLower (cw 191) (lv (nm "b")))
            (.dec (nm "ll") .one (.op .sub [lv (nm "b"), cw 183])
              (.decCall (nm "n") .one (nm "rlp_read_length") [.op .add [lv (nm "p"), cw 1], lv (nm "ll")]
                (ituLong (nm "ll") (nm "n")))) .skip)
          (.seq (.ite (.cmp .notLower (cw 247) (lv (nm "b")))
              (.return (.op .sub [.op .add [cw 1, lv (nm "b")], cw 192])) .skip)
            (.dec (nm "ll2") .one (.op .sub [lv (nm "b"), cw 247])
              (.decCall (nm "n2") .one (nm "rlp_read_length") [.op .add [lv (nm "p"), cw 1], lv (nm "ll2")]
                (ituLong (nm "ll2") (nm "n2"))))))))

theorem entry_rlp_item_total_unchecked : fnEntry Guest.Software.guestFn_rlp_item_total_unchecked =
    (nm "rlp_item_total_unchecked", [(nm "p", .one)], ituBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_rlp_item_total_unchecked :
    guestCode (nm "rlp_item_total_unchecked") = some ([(nm "p", .one)], ituBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 114) (by decide)) ⟨_, rfl⟩
    entry_rlp_item_total_unchecked

/-! ## Evaluation helpers -/

theorem or_or0 (a b z : BitVec 64) (hz : z = 0) : OrOp.or a (OrOp.or b z) = a ||| b := by
  subst hz
  show a ||| (b ||| 0) = a ||| b
  simp

theorem ev_or2 {s : State σ} {a b : ExpHOL 64} {x y : BitVec 64}
    (ha : ev s a = some (.val (.word x))) (hb : ev s b = some (.val (.word y))) :
    ev s (.op .or [a, b]) = some (.val (.word (x ||| y))) := by
  rw [ev_op2 ha hb]
  simp only [wordOpHOL, wordOp, List.foldr, Option.map_some]
  rw [or_or0 x y 0 rfl]

theorem ev_shl8 {s : State σ} {a : ExpHOL 64} {x : BitVec 64} (ha : ev s a = some (.val (.word x))) :
    ev s (.shift .lsl a (cw 8)) = some (.val (.word (x <<< 8))) := by
  rw [ev_shift ha (ev_cw _ 8)]
  simp [wordShiftHOL]

/-- A byte load at a word address reads `b8`. -/
theorem ev_ld8_b8 {s : State σ} {a : ExpHOL 64} {w : BitVec 64} {v : ValueHOL 64}
    (ha : ev s a = some (.val (.word w))) (h : ev s (.loadByte a) = some v) :
    v = .val (.word (b8 s.memory s.be w)) := ev_loadByte_ld8W ha h

theorem ev_word_of_op {s : State σ} {o : BinOp} {es : List (ExpHOL 64)} {v : ValueHOL 64}
    (h : ev s (.op o es) = some v) : ∃ x : BitVec 64, v = .val (.word x) := wordE_op s o es v h

theorem cond_lt {s : State σ} {a b : ExpHOL 64} {x y : BitVec 64}
    (ha : ev s a = some (.val (.word x))) (hb : ev s b = some (.val (.word y)))
    (hc : CondTrue s (.cmp .lower a b)) : x.toNat < y.toNat := by
  obtain ⟨w, hw, hw0⟩ := hc
  exact lower_true (cmp_val_true hw hw0 ha hb)

theorem cond_ge {s : State σ} {a b : ExpHOL 64} {x y : BitVec 64}
    (ha : ev s a = some (.val (.word x))) (hb : ev s b = some (.val (.word y)))
    (hc : ev s (.cmp .lower a b) = some (.val (.word 0))) : y.toNat ≤ x.toNat :=
  lower_false (cmp_val_false hc ha hb)

/-! ## `rlp_read_length` -/

/-- The loop invariant of `rlp_read_length`. -/
def RLI (M : MemSafe.Mem) (be : Bool) (A N : BitVec 64) (t : State σ) : Prop :=
  t.memory = M ∧ t.be = be ∧ t.locals.lookup (nm "p") = some (.val (.word A)) ∧
    t.locals.lookup (nm "n") = some (.val (.word N)) ∧ ∃ I : BitVec 64,
      t.locals.lookup (nm "i") = some (.val (.word I)) ∧ I.toNat ≤ N.toNat ∧
      t.locals.lookup (nm "v") = some (.val (.word (rlen M be A I.toNat)))

theorem rrl_loop {M : MemSafe.Mem} {be : Bool} {A N : BitVec 64} :
    Hoare σ X (RLI M be A N) (.while rrlCond rrlLoopBody)
      (fun r t => r = none ∧ t.memory = M ∧
        t.locals.lookup (nm "v") = some (.val (.word (rlen M be A N.toNat)))) := by
  refine hoare_while (fun _ h => h) ?_ ?_
  · intro s hs ⟨⟨hm, hbe, hpA, hnN, I, hi, hIN, hv⟩, hc⟩
    have hIlt := cond_lt (ev_lw hi) (ev_lw hnN) hc
    refine (?_ : Hoare σ X (fun t => t = s) rrlLoopBody (fun r t =>
      (r = none → RLI M be A N t) ∧ (r = some .continue → RLI M be A N t) ∧
      (r = some .break → (none = none ∧ t.memory = M ∧
        t.locals.lookup (nm "v") = some (.val (.word (rlen M be A N.toNat))))) ∧
      (∀ v, r = some (.returned v) → (r = none ∧ t.memory = M ∧
        t.locals.lookup (nm "v") = some (.val (.word (rlen M be A N.toNat))))))) s hs rfl
    unfold rrlLoopBody
    refine hoare_seq (R := fun r t => r = none ∧ t = setVarHOLFinite (nm "v")
        (.val (.word (rlen M be A (I.toNat + 1)))) s) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_assign fun t _ ht v hv' _ => ⟨rfl, ?_⟩
      subst ht
      obtain ⟨x, rfl⟩ := ev_word_of_op hv'
      obtain ⟨y, z, hy, hz, hyz⟩ := ev_op2_inv hv'
      rw [ev_shl8 (ev_lw hv)] at hy
      cases hy
      have hz' := ev_ld8_b8 (ev_add2 (ev_lw hpA) (ev_lw hi)) hz
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hz'
      subst hz'
      simp [wordOpHOL, wordOp] at hyz
      subst hyz
      have e : BitVec.ofNat 64 I.toNat = I := by simp
      rw [hm, hbe]
      rw [or_or0 _ _ 0#64 rfl]
      simp only [rlen, e]
      rfl
    · refine hoare_pre (P := fun t => t = setVarHOLFinite (nm "v")
        (.val (.word (rlen M be A (I.toNat + 1)))) s) ?_ (fun t _ ⟨_, ht⟩ => ht)
      refine hoare_assign fun u _ hu w hw _ => ?_
      subst hu
      have hiv : (setVarHOLFinite (nm "v") (.val (.word (rlen M be A (I.toNat + 1)))) s).locals.lookup
          (nm "i") = some (.val (.word I)) := by rw [lk_set_ne _ _ (by decide)]; exact hi
      rw [ev_add2 (ev_lw hiv) (ev_cw _ 1)] at hw
      cases hw
      have hI1 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := by
        rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
      refine ⟨fun _ => ⟨hm, hbe, ?_, ?_, I + BitVec.ofNat 64 1, lk_set_self _ _ _, by omega, ?_⟩,
        fun h => absurd h (by simp), fun h => absurd h (by simp), fun v h => absurd h (by simp)⟩
      · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hpA
      · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hnN
      · rw [lk_set_ne _ _ (by decide), lk_set_self, hI1]
  · intro s _ ⟨hm, _, _, hnN, I, hi, hIN, hv⟩ hc
    have := cond_ge (ev_lw hi) (ev_lw hnN) hc
    have e : I.toNat = N.toNat := by omega
    rw [e] at hv
    exact ⟨rfl, hm, hv⟩

/-- **`rlp_read_length(a, n)` returns `rlen M be a n`.** -/
theorem funSpec_rlp_read_length (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "rlp_read_length") (fun vs s r _ => ∀ v, r = .returned v →
      ∀ A N : BitVec 64, vs = [.val (.word A), .val (.word N)] →
        v = .val (.word (rlen s.memory s.be A N.toNat))) := by
  refine FunSpec.mono (funSpec_of_hoare (R := fun vs s v _ => ∀ A N : BitVec 64,
      vs = [.val (.word A), .val (.word N)] → v = .val (.word (rlen s.memory s.be A N.toNat))) ?_)
    fun _ _ _ _ h => h
  intro vs body callee rs hl s0 _ hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A0, N0, rfl, hsA, hsN, hA, hN⟩ := lookupCode_two code_rlp_read_length (by decide) hl
  obtain ⟨A, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hsN
  have hpA : s0.locals.lookup (nm "p") = some (.val (.word A)) := by rw [hloc]; exact hA
  have hnN : s0.locals.lookup (nm "n") = some (.val (.word N)) := by rw [hloc]; exact hN
  refine hoare_conseq (P := fun t => t = s0) (Q := fun r _ => ∀ v, r = some (.returned v) →
      v = .val (.word (rlen s0.memory s0.be A N.toNat))) ?_ (fun _ _ h => h)
    fun r t _ _ h v hv A' N' hvs => by
      simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
      obtain ⟨rfl, rfl⟩ := hvs
      exact h v hv
  unfold rrlBody
  refine hoare_guard_seq (funRet_rlp_fail hC) ?_
  refine hoare_dec fun s1 _ ⟨hs1, _⟩ v1 hv1 _ => ?_
  subst s1
  rw [ev_cw] at hv1; cases hv1
  refine hoare_conseq (Q := fun r _ => ∀ v, r = some (.returned v) →
      v = .val (.word (rlen s0.memory s0.be A N.toNat))) ?_ (fun _ _ h => h) (fun _ _ _ _ h => h)
  refine hoare_dec fun s2 _ hs2 v2 hv2 _ => ?_
  subst hs2
  rw [ev_cw] at hv2; cases hv2
  refine hoare_conseq (Q := fun r _ => ∀ v, r = some (.returned v) →
      v = .val (.word (rlen s0.memory s0.be A N.toNat))) ?_ (fun _ _ h => h) (fun _ _ _ _ h => h)
  refine hoare_seq (R := fun r t => r = none ∧ t.memory = s0.memory ∧
      t.locals.lookup (nm "v") = some (.val (.word (rlen s0.memory s0.be A N.toNat)))) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_pre (rrl_loop (M := s0.memory) (be := s0.be)) fun t _ ht => ?_
    subst ht
    refine ⟨rfl, rfl, ?_, ?_, BitVec.ofNat 64 0, lk_set_self _ _ _, by simp, ?_⟩
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hpA
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hnN
    · rw [lk_set_ne _ _ (by decide), lk_set_self]; rfl
  · refine hoare_return fun t _ ⟨_, _, hv⟩ w hw => fun v hv' => ?_
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv'
    subst hv'
    rw [ev_lv, hv] at hw
    exact (Option.some.inj hw).symm

/-! ## Branch helpers -/

theorem c_lt_t {s : State σ} {a : ExpHOL 64} {x : BitVec 64} {k : Nat} (hk : k < 2 ^ 64)
    (ha : ev s a = some (.val (.word x))) (hc : ∃ w, ev s (.cmp .lower a (cw k)) =
      some (.val (.word w)) ∧ w ≠ 0) : x.toNat < k := by
  have := cond_lt ha (ev_cw _ k) hc
  rwa [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hk] at this

theorem c_lt_f {s : State σ} {a : ExpHOL 64} {x : BitVec 64} {k : Nat} (hk : k < 2 ^ 64)
    (ha : ev s a = some (.val (.word x))) (hc : ev s (.cmp .lower a (cw k)) = some (.val (.word 0))) :
    k ≤ x.toNat := by
  have := cond_ge ha (ev_cw _ k) hc
  rwa [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hk] at this

theorem c_nl_t {s : State σ} {a : ExpHOL 64} {x : BitVec 64} {k : Nat} (hk : k < 2 ^ 64)
    (ha : ev s a = some (.val (.word x))) (hc : ∃ w, ev s (.cmp .notLower (cw k) a) =
      some (.val (.word w)) ∧ w ≠ 0) : x.toNat ≤ k := by
  obtain ⟨w, hw, hw0⟩ := hc
  have := notLower_true' (cmp_val_true hw hw0 (ev_cw _ k) ha)
  rwa [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hk] at this

theorem c_nl_f {s : State σ} {a : ExpHOL 64} {x : BitVec 64} {k : Nat} (hk : k < 2 ^ 64)
    (ha : ev s a = some (.val (.word x)))
    (hc : ev s (.cmp .notLower (cw k) a) = some (.val (.word 0))) : k < x.toNat := by
  have := notLower_false' (cmp_val_false hc (ev_cw _ k) ha)
  rwa [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hk] at this

theorem llOf_zero {b : Nat} (h : b ≤ 183 ∨ (191 < b ∧ b ≤ 247)) : llOf b = 0 := by
  unfold llOf; rw [if_neg (by omega), if_neg (by omega)]

theorem llOf_lo {b : Nat} (h1 : 183 < b) (h2 : b ≤ 191) : llOf b = b - 183 := by
  unfold llOf; rw [if_pos ⟨h1, h2⟩]

theorem llOf_hi {b : Nat} (h : 247 < b) : llOf b = b - 247 := by
  unfold llOf; rw [if_neg (by omega), if_pos h]

/-- The post "returns the word `T`" (never completes normally). -/
def RetW (T : BitVec 64) (r : Option (PanSemResultExact 64)) (_ : State σ) : Prop :=
  r ≠ none ∧ ∀ v, r = some (.returned v) → v = .val (.word T)

theorem retW_ret {T : BitVec 64} {v : ValueHOL 64} (h : v = .val (.word T)) (t : State σ) :
    some (PanSemResultExact.returned v) ≠ none ∧ RetW (σ := σ) T (some (.returned v)) t :=
  ⟨by simp, by simp, fun w hw => by
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw; subst hw; exact h⟩

/-! ## `rlp_item_total_unchecked` -/

/-- The locals of the unchecked total after `var b = ld8 p`. -/
def UB (P B : BitVec 64) (M : MemSafe.Mem) (be : Bool) (t : State σ) : Prop :=
  t.locals.lookup (nm "p") = some (.val (.word P)) ∧ t.locals.lookup (nm "b") = some (.val (.word B)) ∧
    t.memory = M ∧ t.be = be

/-- A long form: `var ll = b - base; var n = rlp_read_length(p + 1, ll); return 1 + ll + n`. -/
theorem itu_long (hC : X.code.lookup = guestCode) {P B : BitVec 64} {M : MemSafe.Mem} {be : Bool}
    {T : BitVec 64} (base : Nat) (ll n : MlS) (hll : ll ≠ nm "p") (hn : n ≠ ll)
    (hT : T = BitVec.ofNat 64 1 + ((B - BitVec.ofNat 64 base) +
      rlen M be (P + BitVec.ofNat 64 1) (B - BitVec.ofNat 64 base).toNat)) {Pc : State σ → Prop} :
    Hoare σ X (fun t => UB P B M be t ∧ Pc t)
      (.dec ll .one (.op .sub [lv (nm "b"), cw base])
        (.decCall n .one (nm "rlp_read_length") [.op .add [lv (nm "p"), cw 1], lv ll] (ituLong ll n)))
      (fun r t => r ≠ none ∧ RetW T r t) := by
  refine hoare_dec fun s _ ⟨⟨hp, hb, hm, hbe⟩, _⟩ v hv _ => ?_
  rw [ev_sub2 (ev_lw hb) (ev_cw _ base)] at hv
  cases hv
  refine hoare_decCallS (funSpec_rlp_read_length hC) fun u _ hu vs hvs callee w st hR _ _ => ?_
  subst hu
  have hllv : (setVarHOLFinite ll (.val (.word (B - BitVec.ofNat 64 base))) s).locals.lookup ll =
      some (.val (.word (B - BitVec.ofNat 64 base))) := lk_set_self _ _ _
  have hpv : (setVarHOLFinite ll (.val (.word (B - BitVec.ofNat 64 base))) s).locals.lookup (nm "p") =
      some (.val (.word P)) := by rw [lk_set_ne _ _ hll]; exact hp
  rw [evs_cons (ev_add2 (ev_lw hpv) (ev_cw _ 1)) (evs_cons (ev_lw hllv) evs_nil)] at hvs
  simp only [Option.some.injEq] at hvs
  subst hvs
  have hw := hR w rfl _ _ rfl
  subst hw
  refine hoare_return fun t _ ht v hv => ?_
  subst ht
  rw [ev_add3 (ev_cw _ 1) (ev_lw (by rw [lk_set_ne _ _ hn]; exact hllv))
    (ev_lw (lk_set_self _ _ _))] at hv
  cases hv
  refine retW_ret ?_ _
  rw [hT, ← hm, ← hbe]
  rfl

/-- **`rlp_item_total_unchecked(p)` returns `itot M be p`.** -/
theorem funSpec_rlp_item_total_unchecked (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "rlp_item_total_unchecked") (fun vs s r _ => ∀ v, r = .returned v →
      ∀ P : BitVec 64, vs = [.val (.word P)] → v = .val (.word (itot s.memory s.be P))) := by
  refine FunSpec.mono (funSpec_of_hoare (R := fun vs s v _ => ∀ P : BitVec 64,
      vs = [.val (.word P)] → v = .val (.word (itot s.memory s.be P))) ?_) fun _ _ _ _ h => h
  intro vs body callee rs hl s0 _ hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A0, rfl, hsA, hA⟩ := lookupCode_one code_rlp_item_total_unchecked hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hsA
  have hpP : s0.locals.lookup (nm "p") = some (.val (.word P)) := by rw [hloc]; exact hA
  refine hoare_conseq (P := fun t => t = s0) (Q := RetW (itot s0.memory s0.be P)) ?_ (fun _ _ h => h)
    fun r t _ _ ⟨_, h⟩ w hw P' hvs => by
      simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
      subst hvs
      exact h w hw
  unfold ituBody
  refine hoare_dec fun s1 _ hs1 vb hvb _ => ?_
  subst s1
  have hB := ev_ld8_b8 (ev_lw hpP) hvb
  subst hB
  set B := b8 s0.memory s0.be P with hBd
  have hB256 : B.toNat < 256 := b8_lt _ _ _
  refine hoare_conseq (P := UB P B s0.memory s0.be) (Q := RetW (itot s0.memory s0.be P)) ?_
    (fun t _ ht => by
      subst ht
      exact ⟨by rw [lk_set_ne _ _ (by decide)]; exact hpP, lk_set_self _ _ _, rfl, rfl⟩)
    (fun _ _ _ _ h => h)
  have hit : ∀ T, T = itot s0.memory s0.be P → ∀ (t : State σ) v, v = .val (.word T) →
      some (PanSemResultExact.returned v) ≠ none ∧ RetW (σ := σ) (itot s0.memory s0.be P)
        (some (.returned v)) (emptyLocalsHOLFinite t) :=
    fun T hT t v hv => retW_ret (hT ▸ hv) _
  -- `b < 128`
  refine hoare_brSeq (hoare_return fun t hs ⟨hu, hc⟩ v hv => ?_) ?_
  · have h1 := c_lt_t (by decide) (ev_lw hu.2.1) hc
    rw [ev_cw] at hv; cases hv
    exact hit _ (by rw [itot, ← hBd, if_pos h1]) t _ rfl
  refine hoare_pre (P := fun t => UB P B s0.memory s0.be t ∧ 128 ≤ B.toNat) ?_
    fun t _ ⟨hu, hc⟩ => ⟨hu, c_lt_f (by decide) (ev_lw hu.2.1) hc⟩
  refine hoare_pure fun h128 => ?_
  -- `b <= 183`
  refine hoare_brSeq (hoare_return fun t hs ⟨hu, hc⟩ v hv => ?_) ?_
  · have h1 := c_nl_t (by decide) (ev_lw hu.2.1) hc
    rw [ev_sub2 (ev_add2 (ev_cw _ 1) (ev_lw hu.2.1)) (ev_cw _ 128)] at hv; cases hv
    exact hit _ (by rw [itot, ← hBd, if_neg (by omega), if_pos h1]) t _ rfl
  refine hoare_pre (P := fun t => UB P B s0.memory s0.be t ∧ 183 < B.toNat) ?_
    fun t _ ⟨hu, hc⟩ => ⟨hu, c_nl_f (by decide) (ev_lw hu.2.1) hc⟩
  refine hoare_pure fun h183 => ?_
  -- `b <= 191`: long string
  refine hoare_brSeq ?_ ?_
  · refine hoare_pre (P := fun t => UB P B s0.memory s0.be t ∧ B.toNat ≤ 191) ?_
      fun t _ ⟨hu, hc⟩ => ⟨hu, c_nl_t (by decide) (ev_lw hu.2.1) hc⟩
    refine hoare_pure fun h191 => ?_
    exact hoare_pre (itu_long hC 183 (nm "ll") (nm "n") (by decide) (by decide) (Pc := fun _ => True)
      (by rw [itot, ← hBd, if_neg (by omega), if_neg (by omega), if_pos h191]))
      fun t _ hu => ⟨hu, trivial⟩
  refine hoare_pre (P := fun t => UB P B s0.memory s0.be t ∧ 191 < B.toNat) ?_
    fun t _ ⟨hu, hc⟩ => ⟨hu, c_nl_f (by decide) (ev_lw hu.2.1) hc⟩
  refine hoare_pure fun h191 => ?_
  -- `b <= 247`: short list
  refine hoare_brSeq (hoare_return fun t hs ⟨hu, hc⟩ v hv => ?_) ?_
  · have h1 := c_nl_t (by decide) (ev_lw hu.2.1) hc
    rw [ev_sub2 (ev_add2 (ev_cw _ 1) (ev_lw hu.2.1)) (ev_cw _ 192)] at hv; cases hv
    exact hit _ (by rw [itot, ← hBd, if_neg (by omega), if_neg (by omega), if_neg (by omega), if_pos h1])
      t _ rfl
  refine hoare_pre (P := fun t => UB P B s0.memory s0.be t ∧ 247 < B.toNat) ?_
    fun t _ ⟨hu, hc⟩ => ⟨hu, c_nl_f (by decide) (ev_lw hu.2.1) hc⟩
  refine hoare_pure fun h247 => ?_
  -- long list
  refine hoare_conseq (itu_long hC 247 (nm "ll2") (nm "n2") (by decide) (by decide)
    (by rw [itot, ← hBd, if_neg (by omega), if_neg (by omega), if_neg (by omega), if_neg (by omega)]))
    (fun t _ hu => ⟨hu, trivial⟩) (fun _ _ _ _ h => h.2)

/-! ## `rlp_item_header`: the total as a function of memory -/

/-- A returned header `<a, b, kind>` of `rlp_item_header(P, L)`: `a + b = itot M be P`, and the
total covers the header and its length bytes and fits in `L`. -/
def HdrT (M : MemSafe.Mem) (be : Bool) (P L : BitVec 64) (v : ValueHOL 64) : Prop :=
  ∃ a b c : BitVec 64, v = .rStruct [.val (.word a), .val (.word b), .val (.word c)] ∧
    a + b = itot M be P ∧ 1 + llOf (b8 M be P).toNat ≤ a.toNat + b.toNat ∧ a.toNat + b.toNat ≤ L.toNat

def HQ (M : MemSafe.Mem) (be : Bool) (P L : BitVec 64) (r : Option (PanSemResultExact 64))
    (_ : State σ) : Prop :=
  r ≠ none ∧ ∀ v, r = some (.returned v) → HdrT M be P L v

theorem hq_ret {M : MemSafe.Mem} {be : Bool} {P L : BitVec 64} {v : ValueHOL 64}
    (h : HdrT M be P L v) (t : State σ) :
    some (PanSemResultExact.returned v) ≠ none ∧ HQ (σ := σ) M be P L (some (.returned v)) t :=
  ⟨by simp, by simp, fun w hw => by
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw; subst hw; exact h⟩

theorem hdrShortStr_tot (hC : X.code.lookup = guestCode) {M : MemSafe.Mem} {be : Bool}
    {P L B : BitVec 64} (hB : B = b8 M be P) (h128 : 128 ≤ B.toNat) (h183 : B.toNat ≤ 183) :
    Hoare σ X (HInvB P L B) hdrShortStr (fun r t => r ≠ none ∧ HQ M be P L r t) := by
  have hf := funRet_rlp_fail (σ := σ) hC
  refine hoare_dec fun s _ hs v hv _ => ?_
  rw [ev_sub_b hs 128 hv]
  refine hoare_pre (P := fun t => HInv P L t ∧
      t.locals.lookup (nm "n") = some (.val (.word (B - BitVec.ofNat 64 128)))) ?_ ?_
  · refine hoare_guard_seq hf ?_
    refine hoare_seq (R := fun r t => r = none ∧ HInv P L t ∧
        t.locals.lookup (nm "n") = some (.val (.word (B - BitVec.ofNat 64 128))) ∧
        (B - BitVec.ofNat 64 128).toNat + 1 ≤ L.toNat) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_ite ?_ ?_
      · refine hoare_post (hoare_guard hf) ?_
        intro r t _ _ ⟨h1, ⟨⟨⟨h2, h3⟩, h4⟩, _⟩, _⟩
        exact ⟨h1, h2, h3, lenLt_false h2 h3 h4⟩
      · exact hoare_skip fun t _ ⟨⟨⟨h2, h3⟩, h4⟩, _⟩ => ⟨rfl, h2, h3, lenLt_false h2 h3 h4⟩
    · refine hoare_return fun t _ ⟨_, _, hn, hle⟩ w hw => hq_ret ?_ _
      rw [ev_rstruct (evs_cons (ev_cw _ 1) (evs_cons (ev_lw hn) (evs_cons (ev_cw _ 0) evs_nil)))] at hw
      cases hw
      have hs128 := sub_toNat (b := B) (k := 128) h128 (by decide)
      refine ⟨_, _, _, rfl, ?_, ?_, ?_⟩
      · rw [itot, ← hB, if_neg (by omega), if_pos h183]
        bv_omega
      · rw [← hB, llOf_zero (by omega), hs128]; simp
      · rw [hs128] at hle ⊢; simp; omega
  · intro t _ ht
    subst ht
    exact ⟨hInv_set _ (by decide) (by decide) hs.1, lk_set_self _ _ _⟩

theorem hdrShortList_tot (hC : X.code.lookup = guestCode) {M : MemSafe.Mem} {be : Bool}
    {P L B : BitVec 64} (hB : B = b8 M be P) (h191 : 191 < B.toNat) (h247 : B.toNat ≤ 247) :
    Hoare σ X (HInvB P L B) hdrShortList (fun r t => r ≠ none ∧ HQ M be P L r t) := by
  have hf := funRet_rlp_fail (σ := σ) hC
  refine hoare_dec fun s _ hs v hv _ => ?_
  rw [ev_sub_b hs 192 hv]
  refine hoare_pre (P := fun t => HInv P L t ∧
      t.locals.lookup (nm "n") = some (.val (.word (B - BitVec.ofNat 64 192)))) ?_ ?_
  · refine hoare_guard_seq hf ?_
    refine hoare_return fun t _ ⟨⟨h2, h3⟩, h4⟩ w hw => hq_ret ?_ _
    have hle := lenLt_false h2 h3 h4
    rw [ev_rstruct (evs_cons (ev_cw _ 1) (evs_cons (ev_lw h3) (evs_cons (ev_cw _ 1) evs_nil)))] at hw
    cases hw
    have hs192 := sub_toNat (b := B) (k := 192) (by omega) (by decide)
    refine ⟨_, _, _, rfl, ?_, ?_, ?_⟩
    · rw [itot, ← hB, if_neg (by omega), if_neg (by omega), if_neg (by omega), if_pos h247]
      bv_omega
    · rw [← hB, llOf_zero (by omega), hs192]; simp
    · rw [hs192] at hle ⊢; simp; omega
  · intro t _ ht
    subst ht
    exact ⟨hInv_set _ (by decide) (by decide) hs.1, lk_set_self _ _ _⟩

theorem hdrLong_tot (hC : X.code.lookup = guestCode) {M : MemSafe.Mem} {be : Bool}
    {P L B : BitVec 64} (hB : B = b8 M be P) (base kind : Nat) (hbase : base < B.toNat)
    (hT : itot M be P = BitVec.ofNat 64 1 + ((B - BitVec.ofNat 64 base) +
      rlen M be (P + BitVec.ofNat 64 1) (B - BitVec.ofNat 64 base).toNat))
    (hll : llOf B.toNat = B.toNat - base) :
    Hoare σ X (fun t => HInvB P L B t ∧ t.memory = M ∧ t.be = be) (hdrLong base kind)
      (fun r t => r ≠ none ∧ HQ M be P L r t) := by
  have hf := funRet_rlp_fail (σ := σ) hC
  have hbs := sub_toNat (b := B) (k := base) (by omega) (by have := B.isLt; omega)
  refine hoare_dec fun s _ ⟨hs, hm, hbe⟩ v hv _ => ?_
  rw [ev_sub_b hs base hv]
  set LL := B - BitVec.ofNat 64 base with hLL
  refine hoare_pre (P := fun t => (HInv P L t ∧
      t.locals.lookup (nm "ll") = some (.val (.word LL))) ∧ t.memory = M ∧ t.be = be) ?_ ?_
  · refine hoare_guard_seq hf ?_
    refine hoare_decCallS (funSpec_rlp_read_length hC) ?_
    intro t _ ⟨⟨⟨hI, hll'⟩, hmt, hbet⟩, hc⟩ vs hvs callee w st hR _ _
    have hLLle := lenLt_false hI hll' hc
    rw [evs_cons (ev_add2 (ev_lw hI.1) (ev_cw _ 1)) (evs_cons (ev_lw hll') evs_nil)] at hvs
    simp only [Option.some.injEq] at hvs
    subst hvs
    have hw := hR w rfl _ _ rfl
    subst hw
    set N := rlen (callEntryStateHOLFinite t callee).memory (callEntryStateHOLFinite t callee).be
      (P + BitVec.ofNat 64 1) LL.toNat with hN
    have hNe : N = rlen M be (P + BitVec.ofNat 64 1) LL.toNat := by
      rw [hN, ← hmt, ← hbet]; rfl
    refine hoare_pre (P := fun u => HInv P L u ∧
        u.locals.lookup (nm "ll") = some (.val (.word LL)) ∧
        u.locals.lookup (nm "n") = some (.val (.word N))) ?_ ?_
    · refine hoare_guard_seq hf ?_
      refine hoare_guard_seq hf ?_
      refine hoare_return fun u _ ⟨⟨⟨hI', hll2, hn'⟩, _⟩, hc2⟩ x hx => hq_ret ?_ _
      have h2 := lower_false (cmp_val_false hc2 (ev_sub2 (ev_lenm1 hI') (ev_lw hll2)) (ev_lw hn'))
      have hL := hI'.2.2
      have hv' : ev u (.rstruct [.op .add [cw 1, lv (nm "ll")], lv (nm "n"), cw kind]) =
          some (.rStruct [.val (.word (BitVec.ofNat 64 1 + LL)), .val (.word N),
            .val (.word (BitVec.ofNat 64 kind))]) :=
        ev_rstruct (evs_cons (ev_add2 (ev_cw _ 1) (ev_lw hll2))
          (evs_cons (ev_lw hn') (evs_cons (ev_cw _ kind) evs_nil)))
      rw [hv'] at hx
      cases hx
      refine ⟨_, _, _, rfl, ?_, ?_, ?_⟩
      · rw [hT, ← hNe, BitVec.add_assoc]
      · rw [← hB, hll]; bv_omega
      · bv_omega
    · intro u _ hu
      subst hu
      refine ⟨hInv_set _ (by decide) (by decide) hI, ?_, lk_set_self _ _ _⟩
      rw [lk_set_ne _ _ (by decide)]
      exact hll'
  · intro t _ ht
    subst ht
    exact ⟨⟨hInv_set _ (by decide) (by decide) hs.1, lk_set_self _ _ _⟩, hm, hbe⟩

theorem hdrDispatch_tot (hC : X.code.lookup = guestCode) {M : MemSafe.Mem} {be : Bool}
    {P L B : BitVec 64} (hB : B = b8 M be P) :
    Hoare σ X (fun t => HInvB P L B t ∧ t.memory = M ∧ t.be = be) hdrDispatch (HQ M be P L) := by
  have hB256 : B.toNat < 256 := by rw [hB]; exact b8_lt _ _ _
  unfold hdrDispatch
  refine hoare_brSeq (hoare_return fun t _ ⟨⟨hI, _⟩, hc⟩ v hv => hq_ret ?_ _) ?_
  · have h1 := c_lt_t (by decide) (ev_lw hI.2) hc
    have h0 : ev t (.rstruct [cw 0, cw 1, cw 0]) =
        some (.rStruct [.val (.word (BitVec.ofNat 64 0)), .val (.word (BitVec.ofNat 64 1)),
          .val (.word (BitVec.ofNat 64 0))]) := rfl
    rw [h0] at hv
    cases hv
    have := hI.1.2.2
    refine ⟨_, _, _, rfl, ?_, ?_, ?_⟩
    · rw [itot, ← hB, if_pos h1]; rfl
    · rw [← hB, llOf_zero (by omega)]; simp
    · simp; omega
  refine hoare_pre (P := fun t => (HInvB P L B t ∧ t.memory = M ∧ t.be = be) ∧ 128 ≤ B.toNat) ?_
    fun t _ ⟨hu, hc⟩ => ⟨hu, c_lt_f (by decide) (ev_lw hu.1.2) hc⟩
  refine hoare_pure fun h128 => ?_
  refine hoare_brSeq (hoare_pre (P := fun t => HInvB P L B t ∧ B.toNat ≤ 183) ?_
    fun t _ ⟨hu, hc⟩ => ⟨hu.1, c_nl_t (by decide) (ev_lw hu.1.2) hc⟩) ?_
  · exact hoare_pure fun h183 => hdrShortStr_tot hC hB h128 h183
  refine hoare_pre (P := fun t => (HInvB P L B t ∧ t.memory = M ∧ t.be = be) ∧ 183 < B.toNat) ?_
    fun t _ ⟨hu, hc⟩ => ⟨hu, c_nl_f (by decide) (ev_lw hu.1.2) hc⟩
  refine hoare_pure fun h183 => ?_
  refine hoare_brSeq (hoare_pre (P := fun t => (HInvB P L B t ∧ t.memory = M ∧ t.be = be) ∧
      B.toNat ≤ 191) ?_ fun t _ ⟨hu, hc⟩ => ⟨hu, c_nl_t (by decide) (ev_lw hu.1.2) hc⟩) ?_
  · exact hoare_pure fun h191 => hdrLong_tot hC hB 183 0 h183
      (by rw [itot, ← hB, if_neg (by omega), if_neg (by omega), if_pos h191])
      (llOf_lo h183 h191)
  refine hoare_pre (P := fun t => (HInvB P L B t ∧ t.memory = M ∧ t.be = be) ∧ 191 < B.toNat) ?_
    fun t _ ⟨hu, hc⟩ => ⟨hu, c_nl_f (by decide) (ev_lw hu.1.2) hc⟩
  refine hoare_pure fun h191 => ?_
  refine hoare_brSeq (hoare_pre (P := fun t => HInvB P L B t ∧ B.toNat ≤ 247) ?_
    fun t _ ⟨hu, hc⟩ => ⟨hu.1, c_nl_t (by decide) (ev_lw hu.1.2) hc⟩) ?_
  · exact hoare_pure fun h247 => hdrShortList_tot hC hB h191 h247
  refine hoare_pre (P := fun t => (HInvB P L B t ∧ t.memory = M ∧ t.be = be) ∧ 247 < B.toNat) ?_
    fun t _ ⟨hu, hc⟩ => ⟨hu, c_nl_f (by decide) (ev_lw hu.1.2) hc⟩
  refine hoare_pure fun h247 => ?_
  exact hoare_post (hdrLong_tot hC hB 247 1 h247
    (by rw [itot, ← hB, if_neg (by omega), if_neg (by omega), if_neg (by omega), if_neg (by omega)])
    (llOf_hi h247)) fun _ _ _ _ h => h.2

/-- **`rlp_item_header(p, len)`**: a returned `<a, b, _>` has `a + b = itot M be p` and
`1 + llOf b ≤ a + b ≤ len`. -/
theorem funSpec_rlp_item_header_tot (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "rlp_item_header") (fun vs s r _ => ∀ v, r = .returned v →
      ∀ P L : BitVec 64, vs = [.val (.word P), .val (.word L)] → HdrT s.memory s.be P L v) := by
  refine FunSpec.mono (funSpec_of_hoare (R := fun vs s v _ => ∀ P L : BitVec 64,
      vs = [.val (.word P), .val (.word L)] → HdrT s.memory s.be P L v) ?_) fun _ _ _ _ h => h
  intro vs body callee rs hl s0 _ hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A0, B0, rfl, hsA, hsB, hA, hB⟩ := lookupCode_two code_rlp_item_header (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨L, rfl⟩ := val_of_shapeEq_one hsB
  have hpP : s0.locals.lookup (nm "p") = some (.val (.word P)) := by rw [hloc]; exact hA
  have hlL : s0.locals.lookup (nm "len") = some (.val (.word L)) := by rw [hloc]; exact hB
  refine hoare_conseq (P := fun t => t = s0) (Q := HQ s0.memory s0.be P L) ?_ (fun _ _ h => h)
    fun r t _ _ ⟨_, h⟩ w hw P' L' hvs => by
      simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
      obtain ⟨rfl, rfl⟩ := hvs
      exact h w hw
  unfold hdrBody
  refine hoare_guard_seq (funRet_rlp_fail hC) ?_
  refine hoare_dec fun s _ ⟨hs, hc⟩ v hv _ => ?_
  subst s
  have hL : L.toNat ≠ 0 := by
    have := Spec.equal_false (cmp_val_false hc (ev_lw hlL) (ev_cw _ 0))
    intro h0
    exact this (BitVec.eq_of_toNat_eq (by simpa using h0))
  have hv' := ev_ld8_b8 (ev_lw hpP) hv
  subst hv'
  refine hoare_conseq (hdrDispatch_tot hC rfl) ?_ (fun _ _ _ _ h => h)
  intro t _ ht
  subst ht
  exact ⟨⟨hInv_set _ (by decide) (by decide) ⟨hpP, hlL, hL⟩, lk_set_self _ _ _⟩, rfl, rfl⟩

/-! ## `rlp_item_total` -/

/-- A returned total `T` of `rlp_item_total(P, L)`. -/
def TotT (M : MemSafe.Mem) (be : Bool) (P L : BitVec 64) (v : ValueHOL 64) : Prop :=
  ∃ T : BitVec 64, v = .val (.word T) ∧ T = itot M be P ∧
    1 + llOf (b8 M be P).toNat ≤ T.toNat ∧ T.toNat ≤ L.toNat

/-- **`rlp_item_total(p, len)` returns `itot M be p`, with `1 + llOf b ≤ total ≤ len`.** -/
theorem funSpec_rlp_item_total_tot (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "rlp_item_total") (fun vs s r _ => ∀ v, r = .returned v →
      ∀ P L : BitVec 64, vs = [.val (.word P), .val (.word L)] → TotT s.memory s.be P L v) := by
  refine FunSpec.mono (funSpec_of_hoare (R := fun vs s v _ => ∀ P L : BitVec 64,
      vs = [.val (.word P), .val (.word L)] → TotT s.memory s.be P L v) ?_) fun _ _ _ _ h => h
  intro vs body callee rs hl s0 _ hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A0, B0, rfl, hsA, hsB, hA, hB⟩ := lookupCode_two code_rlp_item_total (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨L, rfl⟩ := val_of_shapeEq_one hsB
  have hpP : s0.locals.lookup (nm "p") = some (.val (.word P)) := by rw [hloc]; exact hA
  have hlL : s0.locals.lookup (nm "len") = some (.val (.word L)) := by rw [hloc]; exact hB
  refine hoare_conseq (P := fun t => t = s0) (Q := fun r _ => ∀ v, r = some (.returned v) →
      TotT s0.memory s0.be P L v) ?_ (fun _ _ h => h)
    fun r t _ _ h w hw P' L' hvs => by
      simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
      obtain ⟨rfl, rfl⟩ := hvs
      exact h w hw
  unfold totalBody
  refine hoare_decCallS (funSpec_rlp_item_header_tot hC) fun s _ hs vs hvs callee v st hR _ hsh => ?_
  subst s
  rw [evs_cons (ev_lw hpP) (evs_cons (ev_lw hlL) evs_nil)] at hvs
  simp only [Option.some.injEq] at hvs
  subst hvs
  obtain ⟨a, b, c, rfl, he, h1, h2⟩ := hR v rfl P L rfl
  refine hoare_pre (P := fun u => u.locals.lookup (nm "h") =
      some (.rStruct [.val (.word a), .val (.word b), .val (.word c)])) ?_
    fun u _ hu => by subst hu; exact lk_set_self _ _ _
  refine hoare_seq (R := fun r u => r = none ∧ u.locals.lookup (nm "h") =
      some (.rStruct [.val (.word a), .val (.word b), .val (.word c)])) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_ite ?_ ?_
    · exact hoare_callD (funSpec_true _) fun u _ ⟨hu, _⟩ _ _ _ _ _ _ _ => ⟨rfl, hu⟩
    · exact hoare_skip fun u _ ⟨hu, _⟩ => ⟨rfl, hu⟩
  · refine hoare_return fun u _ ⟨_, hu⟩ w hw => fun w' hw' => ?_
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw'
    subst hw'
    have hfa : ev u (.rfield 0 (lv (nm "h"))) = some (.val (.word a)) := ev_rfield_w hu rfl
    have hfb : ev u (.rfield 1 (lv (nm "h"))) = some (.val (.word b)) := ev_rfield_w hu rfl
    rw [ev_add2 hfa hfb] at hw
    cases hw
    have hab : (a + b).toNat = a.toNat + b.toNat := by
      rw [BitVec.toNat_add, Nat.mod_eq_of_lt (by have := L.isLt; omega)]
    exact ⟨a + b, rfl, he, by rw [hab]; exact h1, by rw [hab]; exact h2⟩

end InitECandidate.Solver.Spec.Mpt.Leaves
