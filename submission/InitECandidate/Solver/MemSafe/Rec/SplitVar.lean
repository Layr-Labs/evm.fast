import InitECandidate.Solver.MemSafe.WaveHelpers.Slices
import InitECandidate.Solver.MemSafe.WaveHelpers.HSeq
import InitECandidate.Solver.Spec.Memeq

set_option autoImplicit false

/-!
# `ssz_split_var_list`: the capability summary

```
fun {1,1} ssz_split_var_list(1 p, 1 len, 1 lim) {
  if len == 0 { return <0, 0>; }
  if len <+ 4 { ssz_fail(20); }
  var first = LD_LE32(p);
  if (first == 0) || ((first & 3) != 0) || (len <+ first) { ssz_fail(21); }
  var count = first >>> 2;
  if count >+ lim { ssz_fail(22); }
  var 1 arr = alloc(count * 16);
  var i = 0; var prev = first;
  while i < count {
    var o = LD_LE32(p + i * 4);
    if (o <+ first) || (len <+ o) || (o <+ prev) { ssz_fail(23); }
    if i > 0 { st arr + (i - 1) * 16 + 8, o - prev; }
    st arr + i * 16, p + o; prev = o; i = i + 1; }
  st arr + (count - 1) * 16 + 8, len - prev;
  return <arr, count>; }
```

`first < 2^32` (an `LD_LE32`), so `count < 2^30`, `count * 16` does not wrap and `alloc` returns
a fresh block `[arr, arr + 16 count)`. `ssz_fail` never returns (it raises `SszErr`), so after the
second check `first ≠ 0` and `first & 3 = 0`, i.e. `count ≥ 1`: every store of the loop
(`i < count`) and the final store (`count - 1`) hit the block. The pattern is
`WaveHelpers/Slices.lean` (`rlp_list_to_slices`).

* `funRet_ssz_fail`: `ssz_fail` never returns.
* **`csumm_ssz_split_var_list`**: `CSumm` for `⟨[.any, .any, .any], [], [], g⟩` (`svSig g`; `g`
  may be `false` when `ssz_fail`'s summary is non-growing, as in the fold), given `ssz_fail`'s
  summary at `[.any]`.
-/

set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64}

/-! ## Code -/

/-- `LD_LE32(e)`, with byte addresses `e`, `e + 1`, `e + 2`, `e + 3` given explicitly. -/
def le32 (a0 a1 a2 a3 : ExpHOL 64) : ExpHOL 64 :=
  .op .or [.loadByte a0, .shift .lsl (.loadByte a1) (cw 8), .shift .lsl (.loadByte a2) (cw 16),
    .shift .lsl (.loadByte a3) (cw 24)]

def svFirst : ExpHOL 64 :=
  le32 (lv (nm "p")) (.op .add [lv (nm "p"), cw 1]) (.op .add [lv (nm "p"), cw 2])
    (.op .add [lv (nm "p"), cw 3])

def svI4 : ExpHOL 64 := .panop .mul [lv (nm "i"), cw 4]

def svO : ExpHOL 64 :=
  le32 (.op .add [lv (nm "p"), svI4]) (.op .add [lv (nm "p"), svI4, cw 1])
    (.op .add [lv (nm "p"), svI4, cw 2]) (.op .add [lv (nm "p"), svI4, cw 3])

/-- `if c { ssz_fail(k); }` -/
def sFail (c : ExpHOL 64) (k : Nat) : ProgHOL 64 := .ite c (callD (nm "ssz_fail") [cw k]) .skip

def svC1 : ExpHOL 64 :=
  .cmp .notEqual (cw 0) (.op .or [.cmp .equal (lv (nm "first")) (cw 0),
    .cmp .notEqual (.op .and [lv (nm "first"), cw 3]) (cw 0),
    .cmp .lower (lv (nm "len")) (lv (nm "first"))])

def svC2 : ExpHOL 64 :=
  .cmp .notEqual (cw 0) (.op .or [.cmp .lower (lv (nm "o")) (lv (nm "first")),
    .cmp .lower (lv (nm "len")) (lv (nm "o")), .cmp .lower (lv (nm "o")) (lv (nm "prev"))])

def svSt1 : ProgHOL 64 :=
  .store (.op .add [lv (nm "arr"), .panop .mul [.op .sub [lv (nm "i"), cw 1], cw 16], cw 8])
    (.op .sub [lv (nm "o"), lv (nm "prev")])

def svSt2 : ProgHOL 64 :=
  .store (.op .add [lv (nm "arr"), .panop .mul [lv (nm "i"), cw 16]])
    (.op .add [lv (nm "p"), lv (nm "o")])

def svRest : ProgHOL 64 :=
  .seq svSt2 (.seq (.assign .local (nm "prev") (lv (nm "o")))
    (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])))

def svLoopBody : ProgHOL 64 :=
  .dec (nm "o") .one svO
    (.seq (sFail svC2 23) (.seq (.ite (.cmp .less (cw 0) (lv (nm "i"))) svSt1 .skip) svRest))

def svCond : ExpHOL 64 := .cmp .less (lv (nm "i")) (lv (nm "count"))

def svTail : ProgHOL 64 :=
  .seq (.store (.op .add [lv (nm "arr"), .panop .mul [.op .sub [lv (nm "count"), cw 1], cw 16], cw 8])
      (.op .sub [lv (nm "len"), lv (nm "prev")]))
    (.return (.rstruct [lv (nm "arr"), lv (nm "count")]))

def svAlloc : ProgHOL 64 :=
  .decCall (nm "arr") .one (nm "alloc") [.panop .mul [lv (nm "count"), cw 16]]
    (.dec (nm "i") .one (cw 0) (.dec (nm "prev") .one (lv (nm "first"))
      (.seq (.while svCond svLoopBody) svTail)))

def svCount : ProgHOL 64 :=
  .dec (nm "count") .one (.shift .lsr (lv (nm "first")) (cw 2))
    (.seq (sFail (.cmp .lower (lv (nm "lim")) (lv (nm "count"))) 22) svAlloc)

def svBody : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "len")) (cw 0)) (.return (.rstruct [cw 0, cw 0])) .skip)
    (.seq (sFail (.cmp .lower (lv (nm "len")) (cw 4)) 20)
      (.dec (nm "first") .one svFirst (.seq (sFail svC1 21) svCount)))

def svPs : List (MlS × ShapeHOL) := [(nm "p", .one), (nm "len", .one), (nm "lim", .one)]

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_ssz_split_var_list : fnEntry Guest.Software.guestFn_ssz_split_var_list =
    (nm "ssz_split_var_list", svPs, svBody, .comb [.one, .one]) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_ssz_split_var_list :
    guestCode (nm "ssz_split_var_list") = some (svPs, svBody, .comb [.one, .one]) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 202) (by decide)) ⟨_, rfl⟩
    entry_ssz_split_var_list

def sfBody : ProgHOL 64 :=
  .seq (.raise (nm "SszErr") (lv (nm "code"))) (.return (cw 0))

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem entry_ssz_fail : fnEntry Guest.Software.guestFn_ssz_fail =
    (nm "ssz_fail", [(nm "code", .one)], sfBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_ssz_fail : guestCode (nm "ssz_fail") = some ([(nm "code", .one)], sfBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 196) (by decide)) ⟨_, rfl⟩
    entry_ssz_fail


/-! ## `ssz_fail` never returns -/

theorem funRet_ssz_fail (hC : X.code.lookup = guestCode) :
    FunRet σ X (nm "ssz_fail") (fun _ _ => False) := by
  apply funRet_never_of
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_one code_ssz_fail hl
  exact hoare_seq (R := fun _ _ => False) hoare_raise (fun _ _ _ _ _ h => h.elim)
    (fun _ _ h => h.elim)

/-- **`if c { ssz_fail(k); }`**: a normal end is the `skip` branch (`c` is `0`, the state is
unchanged); an abnormal end is an `Abn` result keeping the activation invariant. -/
theorem hoareG_sFail {a : Act σ} (ha : ActOK a X) {sgf : Sig}
    (hfail : CSumm σ X a.Cb a.H (nm "ssz_fail") sgf [])
    (hfr : FunRet σ X (nm "ssz_fail") (fun _ _ => False)) (hpf : sgf.params = [.any])
    (hgf : sgf.gw = []) (hgr : sgf.grows = true → a.sg.grows = true) {P : State σ → Prop}
    (hP : ∀ t, P t → HHa a t) {c : ExpHOL 64} {k : Nat} :
    HoareG σ X P (sFail c k)
      (fun r t => (r = none → P t ∧ ev t c = some (.val (.word 0))) ∧
        ∀ r', r = some r' → Abn r' ∧ (¬ Abortive r' → HHa a t)) := by
  have hps : ∀ pt ∈ sgf.params, pt = .any := by rw [hpf]; simp
  refine hoareG_ite ?_ (hoareG_skip fun s _ ⟨hp, hc⟩ => ⟨fun _ => ⟨hp, hc⟩, fun r' h => by cases h⟩)
  refine hoareG_callD ((summ_funSpec hfail).and (funSpec_of_funRet hfr)) ?_ ?_
  · intro s _ _ vs _ callee v st ⟨_, hR'⟩ _
    exact (hR' v rfl).elim
  · intro s _ ⟨hp, _⟩ vs hvs callee r st ⟨hR, _⟩ _ habn
    refine ⟨fun h => absurd h (by simp), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨habn, fun hna => ?_⟩
    obtain ⟨Γ, p, he, hh⟩ := hP s hp
    rw [evs_cons (ev_cw _ k) evs_nil] at hvs
    cases hvs
    have hlen : sgf.params.length = [ValueHOL.val (.word (BitVec.ofNat 64 k))].length := by
      rw [hpf]; rfl
    obtain ⟨Γ', q', he', hh', -⟩ := heap_call ha hh hR (abn_good' habn) hna (argsOK_any hps hlen)
      (fun x hx => absurd hx (argCells_any hps)) (by rw [hgf]; simp) hgr
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

/-! ## Values -/

theorem ev_shl_byte {s : State σ} {a : ExpHOL 64} {k : Nat} (hk : k ≤ 24) {v : ValueHOL 64}
    (h : ev s (.shift .lsl (.loadByte a) (cw k)) = some v) :
    ∃ w : BitVec 64, v = .val (.word w) ∧ w.toNat < 2 ^ 32 := by
  simp only [ev, evalHOLExact] at h
  split at h
  · rename_i x y hx hy
    obtain ⟨b, hbe, hb⟩ := ev_loadByte_word (s := s) (a := a) hx
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hbe
    subst hbe
    have hy' : y = BitVec.ofNat 64 k := by
      have : ev s (cw k) = some (.val (.word y)) := hy
      rw [ev_cw] at this
      cases this
      rfl
    subst hy'
    have hk' : (BitVec.ofNat 64 k).toNat = k := by
      rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
    simp only [Flapjack.wordShiftHOL, hk'] at h
    rw [if_neg (by omega)] at h
    simp only [Option.map_some, Option.some.injEq] at h
    refine ⟨_, h.symm, ?_⟩
    rw [BitVec.toNat_shiftLeft, Nat.shiftLeft_eq]
    have h1 : x.toNat * 2 ^ k < 2 ^ 32 := by
      have : 2 ^ k ≤ 2 ^ 24 := Nat.pow_le_pow_right (by omega) hk
      have : (2 : Nat) ^ 32 = 256 * 2 ^ 24 := by norm_num
      calc x.toNat * 2 ^ k < 256 * 2 ^ k := Nat.mul_lt_mul_of_pos_right hb (Nat.two_pow_pos k)
        _ ≤ 256 * 2 ^ 24 := Nat.mul_le_mul_left _ ‹_›
        _ = 2 ^ 32 := by omega
    exact Nat.lt_of_le_of_lt (Nat.mod_le _ _) h1
  · simp at h

/-- An `LD_LE32` is a word below `2^32`. -/
theorem ev_le32 {s : State σ} {a0 a1 a2 a3 : ExpHOL 64} {v : ValueHOL 64}
    (h : ev s (le32 a0 a1 a2 a3) = some v) : ∃ w : BitVec 64, v = .val (.word w) ∧ w.toNat < 2 ^ 32 := by
  obtain ⟨w, rfl⟩ := ev_wordy (e := le32 a0 a1 a2 a3) rfl h
  obtain ⟨ws, hws, hop⟩ := Spec.Mpt.ev_op_inv (s := s) h
  obtain ⟨v0, vs1, e1, h0, hs1⟩ := evs_cons_inv hws
  obtain ⟨v1, vs2, e2, h1, hs2⟩ := evs_cons_inv hs1
  obtain ⟨v2, vs3, e3, h2, hs3⟩ := evs_cons_inv hs2
  obtain ⟨v3, vs4, e4, h3, hs4⟩ := evs_cons_inv hs3
  have e5 : vs4 = [] := by simpa [evs, evalListHOLExact] using hs4.symm
  subst e5
  obtain ⟨x0, rfl, hx0⟩ := ev_loadByte_word h0
  obtain ⟨x1, rfl, hx1⟩ := ev_shl_byte (by omega) h1
  obtain ⟨x2, rfl, hx2⟩ := ev_shl_byte (by omega) h2
  obtain ⟨x3, rfl, hx3⟩ := ev_shl_byte (by omega) h3
  have hws' : ws = [x0, x1, x2, x3] := by
    rw [e2, e3, e4] at e1
    have := e1
    cases ws with
    | nil => simp at this
    | cons y0 ws =>
      cases ws with
      | nil => simp at this
      | cons y1 ws =>
        cases ws with
        | nil => simp at this
        | cons y2 ws =>
          cases ws with
          | nil => simp at this
          | cons y3 ws =>
            cases ws with
            | nil => simp at this; obtain ⟨rfl, rfl, rfl, rfl⟩ := this; rfl
            | cons _ _ => simp at this
  subst hws'
  have hw : w = x0 ||| (x1 ||| (x2 ||| (x3 ||| 0))) := by
    simp only [Flapjack.wordOpHOL, Flapjack.wordOp, List.foldr, Option.some.injEq] at hop
    exact hop.symm
  refine ⟨w, rfl, ?_⟩
  rw [hw]
  simp only [BitVec.toNat_or]
  have h0' : x0.toNat < 2 ^ 32 := by omega
  exact Nat.or_lt_two_pow h0' (Nat.or_lt_two_pow hx1 (Nat.or_lt_two_pow hx2
    (Nat.or_lt_two_pow hx3 (by simp))))


/-! ## Conditions -/

theorem ev_and_cw {s : State σ} {x : BitVec 64} {e : ExpHOL 64} (he : ev s e = some (.val (.word x)))
    (k : Nat) : ev s (.op .and [e, cw k]) = some (.val (.word (x &&& BitVec.ofNat 64 k))) := by
  rw [ev_op (xs := [x, BitVec.ofNat 64 k]) (evs_cons he (evs_cons (ev_cw s k) evs_nil))]
  simp only [Flapjack.wordOpHOL, Flapjack.wordOp, List.foldr, Option.map_some]
  have e : (AndOp.and (BitVec.ofNat 64 k) (Complement.complement (0 : BitVec 64)) : BitVec 64) =
      BitVec.ofNat 64 k := by
    show BitVec.ofNat 64 k &&& ~~~(0 : BitVec 64) = _
    have : (~~~(0 : BitVec 64)) = BitVec.allOnes 64 := by decide
    rw [this, BitVec.and_allOnes]
  rw [e]
  rfl

/-- After the second check: `first ≥ 4` (`first ≠ 0`, `first & 3 = 0`). -/
theorem svC1_false {s : State σ} {F N : BitVec 64}
    (hF : s.locals.lookup (nm "first") = some (.val (.word F)))
    (hN : s.locals.lookup (nm "len") = some (.val (.word N)))
    (h : ev s svC1 = some (.val (.word 0))) : 4 ≤ F.toNat := by
  have e1 := ev_cmp (o := .equal) (ev_lw hF) (ev_cw s 0)
  have e2 := ev_cmp (o := .notEqual) (ev_and_cw (ev_lw hF) 3) (ev_cw s 0)
  have e3 := ev_cmp (o := .lower) (ev_lw hN) (ev_lw hF)
  have eor := ev_op (o := .or) (xs := [_, _, _]) (evs_cons e1 (evs_cons e2 (evs_cons e3 evs_nil)))
  simp only [Flapjack.wordOpHOL, Flapjack.wordOp, List.foldr, Option.map_some] at eor
  unfold svC1 at h
  rw [ev_cmp (ev_cw s 0) eor] at h
  generalize hc1 : wordCmpHOL Cmp.equal F (BitVec.ofNat 64 0) = c1 at h
  generalize hc2 : wordCmpHOL Cmp.notEqual (F &&& BitVec.ofNat 64 3) (BitVec.ofNat 64 0) = c2 at h
  generalize hc3 : wordCmpHOL Cmp.lower N F = c3 at h
  cases c1 <;> cases c2 <;> cases c3 <;> simp [wordCmpHOL] at h <;>
    (try exact absurd h (by decide))
  all_goals
    simp only [wordCmpHOL, beq_eq_false_iff_ne, Bool.not_eq_false', beq_iff_eq, ne_eq] at hc1 hc2
    have h3 : (F &&& BitVec.ofNat 64 3).toNat = F.toNat % 4 := by
      rw [BitVec.toNat_and, BitVec.toNat_ofNat]
      exact Nat.and_two_pow_sub_one_eq_mod F.toNat 2
    have h0 : F.toNat ≠ 0 := fun h0 => hc1 (BitVec.eq_of_toNat_eq (by simpa using h0))
    have h4 : F.toNat % 4 = 0 := by rw [← h3, hc2]; rfl
    omega

theorem signed_lt {x y : BitVec 64} (hx : x.toNat < 2 ^ 63) (hy : y.toNat < 2 ^ 63)
    (h : wordCmpHOL .less x y = true) : x.toNat < y.toNat := by
  simp only [wordCmpHOL, Flapjack.Compiler.Encoders.Asm.holAsmSignedLess] at h
  rw [if_pos (by simpa using hx), if_pos (by simpa using hy)] at h
  simpa using h

theorem cmp_true {s : State σ} {o : Cmp} {a b : ExpHOL 64} {x y : BitVec 64}
    (ha : ev s a = some (.val (.word x))) (hb : ev s b = some (.val (.word y)))
    (h : CondTrue s (.cmp o a b)) : wordCmpHOL o x y = true := by
  obtain ⟨w, hw, hw0⟩ := condTrue_iff.mp h
  exact cmp_val_true hw hw0 ha hb

theorem cmp_true' {s : State σ} {o : Cmp} {a b : ExpHOL 64} {x y : BitVec 64}
    (ha : ev s a = some (.val (.word x))) (hb : ev s b = some (.val (.word y)))
    (h : ∃ w, ev s (.cmp o a b) = some (.val (.word w)) ∧ w ≠ 0) : wordCmpHOL o x y = true := by
  obtain ⟨w, hw, hw0⟩ := h
  exact cmp_val_true hw hw0 ha hb


/-! ## Stores into the block -/

/-- `hoareG_st_blk` with a locals predicate instead of fixed locals. -/
theorem hoareG_st_blkP {a : Act σ} (ha : ActOK a X) {Γ0 : Gam} {Ar C : BitVec 64}
    {Lp : LocalsH → Prop} {ea ev' : ExpHOL 64}
    (hfr : ∀ x : BitVec 64, Overlap Ar.toNat (16 * C.toNat) x → ¬ a.p0.Allocated x.toNat)
    (haddr : ∀ u : State σ, Lp u.locals → ∃ w : BitVec 64, ev u ea = some (.val (.word w)) ∧
      (w.toNat % 8 = 0 → Overlap Ar.toNat (16 * C.toNat) w))
    (hval : ∀ u : State σ, Lp u.locals → ∀ v, ev u ev' = some v → ∃ x, flattenHOL v = [x]) :
    HoareG σ X (fun u => Lp u.locals ∧ LH a Γ0 Ar C u) (.store ea ev')
      (fun r u => r = none ∧ Lp u.locals ∧ LH a Γ0 Ar C u) := by
  refine hoareG_store fun u hs ⟨hL, Γ, q, he, hh, hblk⟩ w v mem hw hv hst => ?_
  obtain ⟨x, hx⟩ := hval u hL v hv
  rw [hx] at hst
  obtain ⟨hm, hdom⟩ := Helpers.store1_mod hst
  have h8 : w.toNat % 8 = 0 := ha.hal w (hs.2.1 ▸ hdom)
  obtain ⟨w', hw', hov⟩ := haddr u hL
  rw [hw'] at hw
  cases hw
  have hov := hov h8
  exact ⟨rfl, hL, Γ, q, he, heap_store_out ha hh hm (hblk _ hov).1 (hfr _ hov), hblk⟩

theorem ev_word_flat {s : State σ} {e : ExpHOL 64} {v : ValueHOL 64} {w : BitVec 64}
    (he : ev s e = some (.val (.word w))) (hv : ev s e = some v) : ∃ x, flattenHOL v = [x] := by
  rw [he] at hv
  cases hv
  exact ⟨_, by rw [flattenHOL]⟩

/-! ## The loop -/

def svSig (g : Bool) : Sig := ⟨[.any, .any, .any], [], [], g⟩

/-- The loop locals. -/
def SL (P N Cn Ar : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "p") = some (.val (.word P)) ∧ m.lookup (nm "len") = some (.val (.word N)) ∧
    m.lookup (nm "count") = some (.val (.word Cn)) ∧ m.lookup (nm "arr") = some (.val (.word Ar)) ∧
    ∃ I Pr : BitVec 64, m.lookup (nm "i") = some (.val (.word I)) ∧
      m.lookup (nm "prev") = some (.val (.word Pr)) ∧ I.toNat ≤ Cn.toNat

/-- The locals inside one iteration (`i = I < count`, `o` a word). -/
def SB (P N Cn Ar I : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "p") = some (.val (.word P)) ∧ m.lookup (nm "len") = some (.val (.word N)) ∧
    m.lookup (nm "count") = some (.val (.word Cn)) ∧ m.lookup (nm "arr") = some (.val (.word Ar)) ∧
    m.lookup (nm "i") = some (.val (.word I)) ∧ I.toNat < Cn.toNat ∧
    (∃ Pr : BitVec 64, m.lookup (nm "prev") = some (.val (.word Pr))) ∧
    ∃ O : BitVec 64, m.lookup (nm "o") = some (.val (.word O))

/-- The loop body post. -/
def SPost (a : Act σ) (Γ0 : Gam) (P N Cn Ar : BitVec 64) (r : Option (PanSemResultExact 64))
    (t : State σ) : Prop :=
  (r = none → SL P N Cn Ar t.locals ∧ LH a Γ0 Ar Cn t) ∧
    ∀ r', r = some r' → (r' ≠ .break ∧ r' ≠ .continue) ∧ HQa a r t

theorem lh_hha {a : Act σ} {Γ0 : Gam} {Ar C : BitVec 64} {t : State σ} (hΓ : a.Γ0 = Γ0)
    (h : LH a Γ0 Ar C t) : HHa a t := by
  obtain ⟨Γ, q, he, hh, -⟩ := h
  exact ⟨Γ, q, hΓ ▸ he, hh⟩

theorem sl_res {P N Cn Ar : BitVec 64} {m : LocalsH} (old : Option (ValueHOL 64))
    (h : SL P N Cn Ar m) : SL P N Cn Ar (m.resVarEq (nm "o", old)) := by
  obtain ⟨h1, h2, h3, h4, I, Pr, h5, h6, h7⟩ := h
  exact ⟨by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h1,
    by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h2,
    by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h3,
    by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h4, I, Pr,
    by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h5,
    by rw [lookup_resVarEq_ne _ _ (by decide)]; exact h6, h7⟩

theorem sv_body {a : Act σ} (ha : ActOK a X) {sgf : Sig}
    (hfail : CSumm σ X a.Cb a.H (nm "ssz_fail") sgf [])
    (hfr : FunRet σ X (nm "ssz_fail") (fun _ _ => False)) (hpf : sgf.params = [.any])
    (hgf : sgf.gw = []) (hgr : sgf.grows = true → a.sg.grows = true) {Γ0 : Gam}
    (hΓ : a.Γ0 = Γ0) {P N Cn Ar : BitVec 64} (hC30 : Cn.toNat < 2 ^ 30)
    (hAC : Ar.toNat + 16 * Cn.toNat < 2 ^ 64)
    (hfr' : ∀ x : BitVec 64, Overlap Ar.toNat (16 * Cn.toNat) x → ¬ a.p0.Allocated x.toNat) :
    HoareG σ X (fun t => (SL P N Cn Ar t.locals ∧ LH a Γ0 Ar Cn t) ∧ CondTrue t svCond) svLoopBody
      (SPost a Γ0 P N Cn Ar) := by
  intro s0 hs0 ⟨⟨⟨hp, hn, hc, har, I, Pr, hi, hpr, hIC⟩, hlh⟩, hcond⟩
  have hIlt : I.toNat < Cn.toNat := by
    have := cmp_true (ev_lw hi) (ev_lw hc) hcond
    exact signed_lt (by omega) (by omega) this
  refine (?_ : HoareG σ X (fun t => t = s0) svLoopBody (SPost a Γ0 P N Cn Ar)) s0 hs0 rfl
  unfold svLoopBody
  refine hoareG_dec fun s _ hs v hv _ => ?_
  subst hs
  obtain ⟨O, rfl, -⟩ := ev_le32 hv
  -- the iteration with `o = O`
  have hSB : SB P N Cn Ar I (setVarHOLFinite (nm "o") (.val (.word O)) s).locals := by
    refine ⟨?_, ?_, ?_, ?_, ?_, hIlt, ⟨Pr, ?_⟩, O, lk_set_self _ _ _⟩ <;>
      rw [lk_set_ne _ _ (by decide)] <;> assumption
  refine hoareG_conseq (P := fun t => SB P N Cn Ar I t.locals ∧ LH a Γ0 Ar Cn t)
    (Q := fun r t => (r = none → SL P N Cn Ar t.locals ∧ LH a Γ0 Ar Cn t) ∧
      ∀ r', r = some r' → (r' ≠ .break ∧ r' ≠ .continue) ∧ HQa a r t) ?_
    (fun t _ ht => by subst ht; exact ⟨hSB, lh_congr (s := s) ha.hH rfl rfl rfl rfl hlh⟩) ?_
  rotate_left
  · intro r t _ _ ⟨h1, h2⟩
    refine ⟨fun hr => ?_, fun r' hr' => ?_⟩
    · obtain ⟨hsl, hl⟩ := h1 hr
      exact ⟨sl_res _ hsl, lh_congr (s := t) ha.hH rfl rfl rfl rfl hl⟩
    · obtain ⟨hbc, hq⟩ := h2 r' hr'
      exact ⟨hbc, hqa_locals ha.hH _ hq⟩
  -- `if (o <+ first) || … { ssz_fail(23); }`
  refine hoareG_seq (hoareG_sFail ha hfail hfr hpf hgf hgr
    (P := fun t => SB P N Cn Ar I t.locals ∧ LH a Γ0 Ar Cn t) (fun t h => lh_hha hΓ h.2)
    (c := svC2) (k := 23)) ?_ ?_
  · intro r t _ hr _ ⟨_, h2⟩
    refine ⟨fun h => absurd h hr, fun r' hr' => ?_⟩
    obtain ⟨habn, hq⟩ := h2 r' hr'
    exact ⟨abn_nbc habn, fun r'' hr'' hna => by rw [hr'] at hr''; cases hr''; exact hq hna⟩
  refine hoareG_pre (P := fun t => SB P N Cn Ar I t.locals ∧ LH a Γ0 Ar Cn t) ?_
    (fun t _ h => (h.1 rfl).1)
  -- `if i > 0 { st arr + (i - 1) * 16 + 8, o - prev; }`
  refine hoareG_seq (R := fun r t => r = none ∧ SB P N Cn Ar I t.locals ∧ LH a Γ0 Ar Cn t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_ite ?_ (hoareG_skip fun t _ ⟨h, _⟩ => ⟨rfl, h⟩)
    refine hoareG_pre (P := fun u => (SB P N Cn Ar I u.locals ∧ 1 ≤ I.toNat) ∧ LH a Γ0 Ar Cn u)
      (hoareG_conseq (hoareG_st_blkP (Lp := fun m => SB P N Cn Ar I m ∧ 1 ≤ I.toNat) ha hfr' ?_ ?_)
        (fun _ _ h => h)
        (fun r t _ _ ⟨h1, h2, h3⟩ => ⟨h1, h2.1, h3⟩)) ?_
    · rintro u ⟨⟨hp', hn', hc', har', hi', -, -, -⟩, hI1⟩
      have hI' : (I - BitVec.ofNat 64 1).toNat = I.toNat - 1 := by
        rw [BitVec.toNat_sub, BitVec.toNat_ofNat]; omega
      refine ⟨Ar + ((I - BitVec.ofNat 64 1) * BitVec.ofNat 64 16 + BitVec.ofNat 64 8),
        ev_add3 (ev_lw har') (ev_mul2 (ev_sub2 (ev_lw hi') (ev_cw _ 1)) (ev_cw _ 16)) (ev_cw _ 8),
        fun h8 => ?_⟩
      have e := blk_cell (c := 8) (I := I - BitVec.ofNat 64 1) (by decide) (by omega) hAC
      rw [Overlap, e]
      rw [e] at h8
      omega
    · rintro u ⟨⟨-, -, -, -, -, -, ⟨Pr', hpr'⟩, O', ho'⟩, -⟩ v hv
      exact ev_word_flat (ev_sub2 (ev_lw ho') (ev_lw hpr')) hv
    · rintro u - ⟨⟨hsb, hl⟩, hct⟩
      refine ⟨⟨hsb, ?_⟩, hl⟩
      have := cmp_true' (ev_cw u 0) (ev_lw hsb.2.2.2.2.1) hct
      have h0 := signed_lt (x := BitVec.ofNat 64 0) (by decide) (by omega) this
      have : (BitVec.ofNat 64 0).toNat = 0 := rfl
      omega
  -- `st arr + i * 16, p + o; prev = o; i = i + 1`
  unfold svRest
  refine hoareG_seq (R := fun r t => r = none ∧ SB P N Cn Ar I t.locals ∧ LH a Γ0 Ar Cn t)
    (hoareG_pre (hoareG_st_blkP ha hfr' ?_ ?_) fun u _ h => ⟨h.2.1, h.2.2⟩)
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · rintro u ⟨-, -, -, har', hi', -, -, -⟩
    refine ⟨Ar + I * BitVec.ofNat 64 16, ev_add2 (ev_lw har') (ev_mul2 (ev_lw hi') (ev_cw _ 16)),
      fun h8 => ?_⟩
    rw [Overlap, blk_cell0 hIlt hAC]
    rw [blk_cell0 hIlt hAC] at h8
    omega
  · rintro u ⟨hp', -, -, -, -, -, -, O', ho'⟩ v hv
    exact ev_word_flat (ev_add2 (ev_lw hp') (ev_lw ho')) hv
  refine hoareG_seq (R := fun r t => r = none ∧
      (t.locals.lookup (nm "p") = some (.val (.word P)) ∧ t.locals.lookup (nm "len") = some (.val (.word N)) ∧
        t.locals.lookup (nm "count") = some (.val (.word Cn)) ∧
        t.locals.lookup (nm "arr") = some (.val (.word Ar)) ∧
        t.locals.lookup (nm "i") = some (.val (.word I)) ∧
        ∃ Pr : BitVec 64, t.locals.lookup (nm "prev") = some (.val (.word Pr))) ∧ LH a Γ0 Ar Cn t)
    ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_assign fun u _ ⟨_, ⟨hp', hn', hc', har', hi', _, _, O', ho'⟩, hl⟩ v hv _ => ?_
    rw [ev_lw ho'] at hv
    cases hv
    refine ⟨rfl, ⟨?_, ?_, ?_, ?_, ?_, O', lk_set_self _ _ _⟩, lh_congr (s := u) ha.hH rfl rfl rfl rfl hl⟩ <;>
      rw [lk_set_ne _ _ (by decide)] <;> assumption
  · refine hoareG_assign fun u _ ⟨_, ⟨hp', hn', hc', har', hi', Pr', hpr'⟩, hl⟩ v hv _ => ?_
    rw [ev_add2 (ev_lw hi') (ev_cw _ 1)] at hv
    cases hv
    have hI1 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := by
      rw [BitVec.toNat_add, BitVec.toNat_ofNat]; omega
    refine ⟨fun _ => ⟨⟨?_, ?_, ?_, ?_, I + BitVec.ofNat 64 1, Pr', lk_set_self _ _ _, ?_, by omega⟩,
      lh_congr (s := u) ha.hH rfl rfl rfl rfl hl⟩, fun r' h => by cases h⟩ <;>
      rw [lk_set_ne _ _ (by decide)] <;> assumption


/-! ## After the allocation: the loop and the tail -/

theorem sv_loop {a : Act σ} (ha : ActOK a X) {sgf : Sig}
    (hfail : CSumm σ X a.Cb a.H (nm "ssz_fail") sgf [])
    (hfr : FunRet σ X (nm "ssz_fail") (fun _ _ => False)) (hpf : sgf.params = [.any])
    (hgf : sgf.gw = []) (hgr : sgf.grows = true → a.sg.grows = true) {Γ0 : Gam}
    (hΓ : a.Γ0 = Γ0) {P N Cn Ar : BitVec 64} (hC1 : 1 ≤ Cn.toNat) (hC30 : Cn.toNat < 2 ^ 30)
    (hAC : Ar.toNat + 16 * Cn.toNat < 2 ^ 64)
    (hfr' : ∀ x : BitVec 64, Overlap Ar.toNat (16 * Cn.toNat) x → ¬ a.p0.Allocated x.toNat) :
    HoareG σ X (fun t => SL P N Cn Ar t.locals ∧ LH a Γ0 Ar Cn t)
      (.seq (.while svCond svLoopBody) svTail) (HQa a) := by
  refine hoareG_seq (R := fun r t => (r = none → SL P N Cn Ar t.locals ∧ LH a Γ0 Ar Cn t) ∧
    (r ≠ none → HQa a r t)) ?_ (fun r t _ hr _ h => h.2 hr) ?_
  · refine hoareG_while (fun t h => ⟨h.1, lh_congr (s := t) ha.hH rfl rfl rfl rfl h.2⟩) ?_ ?_
    · refine hoareG_conseq (sv_body ha hfail hfr hpf hgf hgr hΓ hC30 hAC hfr') (fun _ _ h => h) ?_
      intro r t _ _ ⟨h1, h2⟩
      refine ⟨h1, fun hc => ?_, fun hb => ?_, fun r' hr' _ _ => ⟨fun h => ?_, fun _ => (h2 r' hr').2⟩⟩
      · exact absurd rfl (h2 _ hc).1.2
      · exact absurd rfl (h2 _ hb).1.1
      · rw [hr'] at h; cases h
    · intro t _ h _
      exact ⟨fun _ => h, fun h' => absurd rfl h'⟩
  refine hoareG_seq (R := fun r t => r = none ∧ SL P N Cn Ar t.locals ∧ LH a Γ0 Ar Cn t)
    (hoareG_pre (hoareG_st_blkP ha hfr' ?_ ?_) fun u _ h => h.1 rfl)
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · rintro u ⟨-, -, hc, har, -⟩
    have hC' : (Cn - BitVec.ofNat 64 1).toNat = Cn.toNat - 1 := by
      rw [BitVec.toNat_sub, BitVec.toNat_ofNat]; omega
    refine ⟨Ar + ((Cn - BitVec.ofNat 64 1) * BitVec.ofNat 64 16 + BitVec.ofNat 64 8),
      ev_add3 (ev_lw har) (ev_mul2 (ev_sub2 (ev_lw hc) (ev_cw _ 1)) (ev_cw _ 16)) (ev_cw _ 8),
      fun h8 => ?_⟩
    have e := blk_cell (c := 8) (I := Cn - BitVec.ofNat 64 1) (by decide) (by omega) hAC
    rw [Overlap, e]
    rw [e] at h8
    omega
  · rintro u ⟨-, hn, -, -, I, Pr, -, hpr, -⟩ v hv
    exact ev_word_flat (ev_sub2 (ev_lw hn) (ev_lw hpr)) hv
  · refine hoareG_return fun t _ ⟨_, _, hl⟩ v _ => ?_
    exact hqa_of_hha (t := emptyLocalsHOLFinite t) (hha_congr (s := t) ha.hH rfl rfl rfl rfl (lh_hha hΓ hl)) _

/-! ## The function -/

/-- The entry locals. -/
def L0 (P N Lm : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "p") = some (.val (.word P)) ∧ m.lookup (nm "len") = some (.val (.word N)) ∧
    m.lookup (nm "lim") = some (.val (.word Lm))

/-- After `var first`. -/
def L1 (P N Lm F : BitVec 64) (m : LocalsH) : Prop :=
  L0 P N Lm m ∧ m.lookup (nm "first") = some (.val (.word F))

/-- After `var count`. -/
def L2 (P N Lm F : BitVec 64) (m : LocalsH) : Prop :=
  L1 P N Lm F m ∧ m.lookup (nm "count") = some (.val (.word (F >>> (2 : Nat))))

theorem lsr2_toNat (F : BitVec 64) : (F >>> (2 : Nat)).toNat = F.toNat / 4 := by
  rw [BitVec.toNat_ushiftRight, Nat.shiftRight_eq_div_pow]

theorem sv_count {a : Act σ} (ha : ActOK a X) {sgf : Sig}
    (hfail : CSumm σ X a.Cb a.H (nm "ssz_fail") sgf [])
    (hfr : FunRet σ X (nm "ssz_fail") (fun _ _ => False)) (hpf : sgf.params = [.any])
    (hgf : sgf.gw = []) (hgr : sgf.grows = true → a.sg.grows = true)
    (halloc : CSumm σ X a.Cb a.H (nm "alloc") allocSig []) {P N Lm F : BitVec 64}
    (hF4 : 4 ≤ F.toNat) (hF32 : F.toNat < 2 ^ 32) :
    HoareG σ X (PreH a (L1 P N Lm F)) svCount (HQa a) := by
  have hpsa : ∀ pt ∈ allocSig.params, pt = .any := by simp [allocSig]
  set Cn := F >>> (2 : Nat) with hCn
  have hCnN : Cn.toNat = F.toNat / 4 := lsr2_toNat F
  have hC1 : 1 ≤ Cn.toNat := by omega
  have hC30 : Cn.toNat < 2 ^ 30 := by omega
  unfold svCount
  refine hoareG_decH ha.hH (L' := L2 P N Lm F) (fun s _ hL v hv => ?_) ?_
  · rw [ev_shift (ev_lw hL.2) (ev_cw _ 2)] at hv
    have h2 : (BitVec.ofNat 64 2).toNat = 2 := rfl
    rw [h2] at hv
    simp only [Flapjack.wordShiftHOL] at hv
    rw [if_neg (by omega)] at hv
    cases hv
    obtain ⟨⟨h1, h2', h3⟩, h4⟩ := hL
    refine ⟨⟨⟨?_, ?_, ?_⟩, ?_⟩, lk_set_self _ _ _⟩ <;> rw [lk_set_ne _ _ (by decide)] <;> assumption
  refine hoareG_seq (hoareG_sFail ha hfail hfr hpf hgf hgr (P := PreH a (L2 P N Lm F))
    (fun t h => h.2) (c := .cmp .lower (lv (nm "lim")) (lv (nm "count"))) (k := 22))
    (fun r t _ hr _ h => hqa_of_spa (L := fun _ => True) h.2) ?_
  refine hoareG_pre (P := PreH a (L2 P N Lm F)) ?_ (fun t _ h => (h.1 rfl).1)
  intro s1 hs1 ⟨hL, Γ1, q1, he1, hh1⟩ hg
  refine (?_ : HoareG σ X (fun t => t = s1) svAlloc (HQa a)) s1 hs1 rfl hg
  have hcl1 : s1.locals.lookup (nm "count") = some (.val (.word Cn)) := hL.2
  have h16 : (Cn * BitVec.ofNat 64 16).toNat = 16 * Cn.toNat := by
    rw [BitVec.toNat_mul, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 16) (by decide),
      Nat.mod_eq_of_lt (by omega)]
    omega
  unfold svAlloc
  refine hoareG_decCall (summ_funSpec halloc) ?_ ?_
  rotate_left
  · intro s _ hs vs hvs callee r st2 hR _ habn r' hr' hna
    subst s
    cases hr'
    rw [evs_cons (ev_mul2 (ev_lw hcl1) (ev_cw _ 16)) evs_nil] at hvs
    cases hvs
    obtain ⟨Γ2, q2, he2, hh2, -⟩ := heap_call ha hh1 hR (abn_good' habn) hna (argsOK_any hpsa rfl)
      (fun x hx => absurd hx (argCells_any hpsa)) (by simp [allocSig]) (by simp [allocSig])
    exact ⟨Γ2, q2, ext_trans he1 he2, heap_congr (s := st2) ha.hH rfl rfl rfl rfl hh2⟩
  intro s _ hs vs hvs callee v st2 hR _ hsh
  subst s
  rw [evs_cons (ev_mul2 (ev_lw hcl1) (ev_cw _ 16)) evs_nil] at hvs
  cases hvs
  obtain ⟨Γ2, q2, he2, hh2, hm2, -, hret⟩ := heap_call ha hh1 hR (by simp [Good])
    (by simp [Abortive]) (argsOK_any hpsa rfl) (fun x hx => absurd hx (argCells_any hpsa))
    (by simp [allocSig]) (by simp [allocSig])
  obtain ⟨Ar, rfl⟩ := val_of_shapeEq_one' hsh
  obtain ⟨x, hx, hfb⟩ := hret _ rfl 0 (.freshArg 0 1 0) Ar rfl (by rw [flattenHOL]; rfl)
  have hxe : x = Cn * BitVec.ofNat 64 16 := by
    simp only [argW, wordOf, List.getElem?_cons_zero, Option.some.injEq] at hx
    exact hx.symm
  subst hxe
  rw [h16] at hfb
  have hfb1 : ∀ y : BitVec 64, Overlap Ar.toNat (16 * Cn.toNat) y →
      Fresh q1 q2 y ∧ ¬ InObj Γ2 y.toNat := fun y hy => hfb.2 y (by simpa using hy)
  have hord1 := heap_ord hh1
  have hord2 := heap_ord hh2
  have hAC' : Ar.toNat + 16 * Cn.toNat < 2 ^ 64 := by
    rcases freshBuf_bound hord1 hord2 hfb with h | h
    · omega
    · omega
  have hm1 : a.p0.Mono q1 := hh1.2.2.1
  have hfr' : ∀ y : BitVec 64, Overlap Ar.toNat (16 * Cn.toNat) y → ¬ a.p0.Allocated y.toNat :=
    fun y hy => fresh_not_alloc ha.hord0 hord2 (mono_trans hm1 hm2) (fresh_mono hm1 (hfb1 y hy).1)
  set s2 := setVarHOLFinite (nm "arr") (.val (.word Ar)) { st2 with locals := s1.locals } with hs2
  refine hoareG_conseq (P := fun t => t = s2) (Q := HQa a) ?_ (fun _ _ h => h)
    (fun r t _ _ h => hqa_locals ha.hH _ h)
  refine hoareG_dec fun s _ hs v hv _ => ?_
  subst s
  rw [ev_cw] at hv
  cases hv
  refine hoareG_conseq (Q := HQa a) ?_ (fun _ _ h => h) (fun r t _ _ h => hqa_locals ha.hH _ h)
  refine hoareG_dec fun s _ hs v hv _ => ?_
  subst s
  obtain ⟨⟨⟨hp, hn, hlm⟩, hfi⟩, -⟩ := hL
  rw [ev_lw (by rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hfi)] at hv
  cases hv
  refine hoareG_conseq (Q := HQa a) ?_ (fun _ _ h => h) (fun r t _ _ h => hqa_locals ha.hH _ h)
  refine hoareG_pre (sv_loop ha hfail hfr hpf hgf hgr (Γ0 := a.Γ0) rfl (P := P) (N := N) hC1 hC30
    hAC' hfr') fun t _ ht => ?_
  subst ht
  refine ⟨⟨?_, ?_, ?_, ?_, BitVec.ofNat 64 0, F, ?_, lk_set_self _ _ _, by simp⟩,
    Γ2, q2, ext_trans he1 he2, heap_congr (s := st2) ha.hH rfl rfl rfl rfl hh2, fun y hy =>
      ⟨(hfb1 y hy).2, fresh_alloc hord1 (hfb1 y hy).1⟩⟩
  · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hp
  · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hn
  · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
    exact hcl1
  · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
    exact lk_set_self _ _ _
  · rw [lk_set_ne _ _ (by decide)]
    exact lk_set_self _ _ _

/-- **`ssz_split_var_list` keeps `G`** (any hooks; `ssz_fail` at its fold signature). -/
theorem csumm_ssz_split_var_list {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hC : CfgOK C)
    (hal : ∀ x, X.memaddrs x → x.toNat % 8 = 0) (hAC : AllocCfg C) (hNS : NullSafe X)
    (hX : X.code.lookup = guestCode) {sgf : Sig}
    (hfail : CSumm σ X C H (nm "ssz_fail") sgf []) (hpf : sgf.params = [.any])
    (hgf : sgf.gw = []) {g : Bool} (hg : sgf.grows = true → g = true) :
    CSumm σ X C H (nm "ssz_split_var_list") (svSig g) [] := by
  have halloc : CSumm σ X C H (nm "alloc") allocSig [] :=
    csumm_of_summ (builtinTab_sound hX hH hAC _ _ (by simp [builtinTab]))
  have hfr := funRet_ssz_fail (σ := σ) hX
  refine csumm_of_heap hH hC hal hAC hNS fun vs body callee rs hl s0 _ hloc Γ0 p0 ha hh => ?_
  rw [hX] at hl
  obtain ⟨rfl, -, A0, B0, C0, rfl, hsA, hsB, hsC, hA, hB, hC'⟩ :=
    lookupCode_three code_ssz_split_var_list (by decide) (by decide) (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hsB
  obtain ⟨Lm, rfl⟩ := val_of_shapeEq_one hsC
  set a := actOf C H (svSig g) [] [.val (.word P), .val (.word N), .val (.word Lm)] s0 Γ0 p0
    with hadef
  have hgr : sgf.grows = true → a.sg.grows = true := hg
  refine hoareG_conseq (P := PreH a (L0 P N Lm)) (Q := HQa a) ?_
    (fun t _ ht => ⟨by subst ht; exact ⟨by rw [hloc]; exact hA, by rw [hloc]; exact hB,
      by rw [hloc]; exact hC'⟩, Γ0, p0, ext_refl Γ0, by subst ht; exact hh⟩) ?_
  rotate_left
  · intro r t _ _ h r' hr hna
    obtain ⟨Γ', p', he, hh'⟩ := h r' hr hna
    exact ⟨Γ', p', he, hh', fun v _ i rt w hrt => by simp [svSig] at hrt⟩
  unfold svBody
  refine hoareG_seq (R := fun r t => (r = none → PreH a (L0 P N Lm) t) ∧ (r ≠ none → HQa a r t)) ?_
    (fun r t _ hr _ h => h.2 hr) ?_
  · refine hoareG_ite ?_ (hoareG_skip fun t _ ⟨h, _⟩ => ⟨fun _ => h, fun h' => absurd rfl h'⟩)
    refine hoareG_return fun t _ ⟨⟨_, hH'⟩, _⟩ v _ => ⟨fun h => absurd h (by simp), fun _ => ?_⟩
    exact hqa_of_hha (t := emptyLocalsHOLFinite t) (hha_congr (s := t) ha.hH rfl rfl rfl rfl hH') _
  refine hoareG_pre (P := PreH a (L0 P N Lm)) ?_ (fun t _ h => h.1 rfl)
  refine hoareG_seq (hoareG_sFail ha hfail hfr hpf hgf hgr (P := PreH a (L0 P N Lm))
    (fun t h => h.2) (c := .cmp .lower (lv (nm "len")) (cw 4)) (k := 20))
    (fun r t _ hr _ h => hqa_of_spa (L := fun _ => True) h.2) ?_
  refine hoareG_pre (P := PreH a (L0 P N Lm)) ?_ (fun t _ h => (h.1 rfl).1)
  refine hoareG_dec fun s _ hs v hv _ => ?_
  obtain ⟨F, rfl, hF32⟩ := ev_le32 hv
  refine hoareG_conseq (P := PreH a (L1 P N Lm F)) (Q := HQa a) ?_ (fun t _ ht => ?_)
    (fun r t _ _ h => hqa_locals ha.hH _ h)
  · refine hoareG_seq (hoareG_sFail ha hfail hfr hpf hgf hgr (P := PreH a (L1 P N Lm F))
      (fun t h => h.2) (c := svC1) (k := 21)) (fun r t _ hr _ h => hqa_of_spa (L := fun _ => True) h.2) ?_
    intro s1 hs1 h hg
    obtain ⟨hpre, hc⟩ := h.1 rfl
    exact sv_count ha hfail hfr hpf hgf hgr halloc
      (svC1_false hpre.1.2 hpre.1.1.2.1 hc) hF32 s1 hs1 hpre hg
  · subst ht
    obtain ⟨⟨h1, h2, h3⟩, hH'⟩ := hs
    refine ⟨⟨⟨?_, ?_, ?_⟩, lk_set_self _ _ _⟩, hha_congr (s := s) ha.hH rfl rfl rfl rfl hH'⟩ <;>
      rw [lk_set_ne _ _ (by decide)] <;> assumption

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.csumm_ssz_split_var_list
