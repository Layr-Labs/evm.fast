import InitECandidate.Solver.MemSafe.Bn.FromBe
import InitECandidate.Solver.MemSafe.Wire.Guest

set_option autoImplicit false

/-!
# `nibble_list_to_compact`: the footprint and the summary

```
fun 1 nibble_list_to_compact(1 nibs, 1 n, 1 is_leaf, 1 dst) {
  var flag = is_leaf * 2; var i = 0;
  if (n & 1) == 0 { st8 dst, 16 * flag; } else { st8 dst, 16 * (flag + 1) + (ld8 nibs); i = 1; }
  var o = 1;
  while i <+ n { st8 dst + o, ((ld8 (nibs + i)) << 4) | (ld8 (nibs + i + 1)); i = i + 2; o = o + 1; }
  return o; }
```

* **`foot_nibble_list_to_compact`** (the exact footprint): memory changes only in the cells
  overlapping `[dst, dst + n / 2 + 1)` (`n / 2 + 1` bytes: the first byte plus `⌊n / 2⌋` pairs),
  globals unchanged. Precondition `dst + (n / 2 + 1) ≤ scratchEnd`.
* The loop invariant: `2 o + (n mod 2) = i + 2`, `i ≡ n (mod 2)`, `i ≤ n`; so a store at `dst + o`
  happens only for `o ≤ n / 2`.
* **`sumSpec_nibble_list_to_compact`**: the signature `nlcSig = ⟨[any, any, any, bufArg 1 1 1],
  [], [], false⟩` (`n + 1` writable bytes at `dst`; an upper bound of `n / 2 + 1`). The caller
  `_node_rlp_begin` allocates `(n >>> 1) + 2` bytes, which is **not** `≥ n + 1`: closing that needs
  a buffer parameter type of the form `(word arg i >>> k) + d` bytes (`PT.bufArgShr`), see the
  notes. With it the same footprint proves `⟨[any, any, any, bufArgShr 1 1 2], …⟩`.
-/

set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.MptH
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

abbrev LocalsN := HolFiniteMapExact MlS (ValueHOL 64)

/-! ## Code -/

def lNibs : MlS := nm "nibs"
def lN : MlS := nm "n"
def lLeaf : MlS := nm "is_leaf"
def lDst : MlS := nm "dst"
def lFlag : MlS := nm "flag"
def lI : MlS := nm "i"
def lO : MlS := nm "o"

/-- `(n & 1) == 0` -/
def nlcCond : ExpHOL 64 := .cmp .equal (.op .and [lv lN, cw 1]) (cw 0)

def nlcLoopBody : ProgHOL 64 :=
  .seq (.storeByte (.op .add [lv lDst, lv lO])
      (.op .or [.shift .lsl (.loadByte (.op .add [lv lNibs, lv lI])) (cw 4),
        .loadByte (.op .add [lv lNibs, lv lI, cw 1])]))
    (.seq (.assign .local lI (.op .add [lv lI, cw 2])) (.assign .local lO (.op .add [lv lO, cw 1])))

def nlcIte : ProgHOL 64 :=
  .ite nlcCond (.storeByte (lv lDst) (.panop .mul [cw 16, lv lFlag]))
    (.seq (.storeByte (lv lDst) (.op .add [.panop .mul [cw 16, .op .add [lv lFlag, cw 1]],
        .loadByte (lv lNibs)]))
      (.assign .local lI (cw 1)))

def nlcBody : ProgHOL 64 :=
  .dec lFlag .one (.panop .mul [lv lLeaf, cw 2])
    (.dec lI .one (cw 0)
      (.seq nlcIte
        (.dec lO .one (cw 1)
          (.seq (.while (.cmp .lower (lv lI) (lv lN)) nlcLoopBody) (.return (lv lO))))))

def nlcPs : List (MlS × ShapeHOL) := [(lNibs, .one), (lN, .one), (lLeaf, .one), (lDst, .one)]

theorem entry_nibble_list_to_compact : fnEntry Guest.Software.guestFn_nibble_list_to_compact =
    (nm "nibble_list_to_compact", nlcPs, nlcBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_nibble_list_to_compact : guestCode (nm "nibble_list_to_compact") =
    some (nlcPs, nlcBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 250) (by decide)) ⟨_, rfl⟩
    entry_nibble_list_to_compact

/-! ## Arithmetic and evaluation -/

theorem overlap_mono2 {b m b' n : Nat} {x : BitVec 64} (h : Overlap b m x) (h1 : b' ≤ b)
    (h2 : b + m ≤ b' + n) : Overlap b' n x := by
  obtain ⟨h8, h3, h4⟩ := h
  exact ⟨h8, by omega, by omega⟩

theorem ev_and2 {s : State σ} {a b : ExpHOL 64} {x y : BitVec 64}
    (ha : ev s a = some (.val (.word x))) (hb : ev s b = some (.val (.word y))) :
    ev s (.op .and [a, b]) = some (.val (.word (x &&& y))) := by
  rw [ev_op2 ha hb]
  have : wordOpHOL .and [x, y] = some (x &&& y) := by
    show wordOp .and [x, y] = _
    simp only [wordOp, List.foldr, AndOp.and, Complement.complement]
    congr 1
    have : y &&& 18446744073709551615#64 = y := by
      apply BitVec.eq_of_toNat_eq
      rw [BitVec.toNat_and]
      show y.toNat &&& (2 ^ 64 - 1) = y.toNat
      exact Nat.and_two_pow_sub_one_of_lt_two_pow y.isLt
    simp [this]
  rw [this]; rfl

theorem and1_toNat (N : BitVec 64) : (N &&& BitVec.ofNat 64 1).toNat = N.toNat % 2 := by
  rw [BitVec.toNat_and, BitVec.toNat_ofNat]
  show N.toNat &&& (1 % 2 ^ 64) = _
  simp [Nat.and_one_is_mod]

theorem toNat_add_small {I : BitVec 64} {c : Nat} (hc : c < 2 ^ 64) (h : I.toNat + c < 2 ^ 64) :
    (I + BitVec.ofNat 64 c).toNat = I.toNat + c := by
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt hc, Nat.mod_eq_of_lt h]

/-- The condition of the first `if` decides the parity of `n`. -/
theorem cond_true_par {s : State σ} {N : BitVec 64} {w : BitVec 64}
    (hn : s.locals.lookup lN = some (.val (.word N))) (hc : ev s nlcCond = some (.val (.word w)))
    (hw : w ≠ 0) : N.toNat % 2 = 0 := by
  have := cmp_val_true hc hw (ev_and2 (ev_lw hn) (ev_cw _ 1)) (ev_cw _ 0)
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, beq_iff_eq] at this
  have h2 := congrArg BitVec.toNat this
  rw [and1_toNat] at h2
  simpa using h2

theorem cond_false_par {s : State σ} {N : BitVec 64}
    (hn : s.locals.lookup lN = some (.val (.word N))) (hc : ev s nlcCond = some (.val (.word 0))) :
    N.toNat % 2 = 1 := by
  have := cmp_val_false hc (ev_and2 (ev_lw hn) (ev_cw _ 1)) (ev_cw _ 0)
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, beq_eq_false_iff_ne, ne_eq] at this
  have h2 : (N &&& BitVec.ofNat 64 1).toNat ≠ 0 := fun h => this (BitVec.eq_of_toNat_eq (by simpa using h))
  rw [and1_toNat] at h2
  omega

/-! ## The state -/

/-- Locals `dst`, `n` fixed, globals kept, memory changed only in `[D, D + N / 2 + 1)`. -/
def NF (D N : BitVec 64) (s0 t : State σ) : Prop :=
  t.locals.lookup lDst = some (.val (.word D)) ∧ t.locals.lookup lN = some (.val (.word N)) ∧
    t.globals = s0.globals ∧ ModifiesOnly (Overlap D.toNat (N.toNat / 2 + 1)) s0.memory t.memory

/-- With `i` and `o`. -/
def LS (D N I O : BitVec 64) (s0 t : State σ) : Prop :=
  NF D N s0 t ∧ t.locals.lookup lI = some (.val (.word I)) ∧
    t.locals.lookup lO = some (.val (.word O))

theorem nf_set {D N : BitVec 64} {s0 t : State σ} {x : MlS} (h1 : x ≠ lDst) (h2 : x ≠ lN)
    (v : ValueHOL 64) (h : NF D N s0 t) : NF D N s0 (setVarHOLFinite x v t) :=
  ⟨by rw [lk_set_ne _ _ h1]; exact h.1, by rw [lk_set_ne _ _ h2]; exact h.2.1, h.2.2.1, h.2.2.2⟩

/-- The loop relation. -/
def REL (N I O : BitVec 64) : Prop :=
  2 * O.toNat + N.toNat % 2 = I.toNat + 2 ∧ I.toNat % 2 = N.toNat % 2 ∧ I.toNat ≤ N.toNat

def LI (D N : BitVec 64) (s0 : State σ) (t : State σ) : Prop :=
  ∃ I O : BitVec 64, LS D N I O s0 t ∧ REL N I O

/-! ## Stores -/

theorem hoareG_nlcStore0 {D N : BitVec 64} {s0 : State σ} {e : ExpHOL 64} {Lp : LocalsN → Prop} :
    HoareG σ X (fun t => NF D N s0 t ∧ Lp t.locals) (.storeByte (lv lDst) e)
      (fun r t => r = none ∧ NF D N s0 t ∧ Lp t.locals) := by
  refine hoareG_storeByte fun t hs ⟨⟨hd, hn, hg, hmem⟩, hL⟩ w x mem hw hx hst => ?_
  rw [show ev t (lv lDst) = t.locals.lookup lDst from rfl, hd] at hw
  cases hw
  have hm := storeByte_mod hst
  have hov := overlap_byte (b := D.toNat) (n := N.toNat / 2 + 1) (w := D) (le_refl _) (by omega)
  exact ⟨rfl, ⟨hd, hn, hg, hmem.trans (hm.mono fun a ha' => ha' ▸ hov)⟩, hL⟩

theorem hoareG_nlcStoreO {D N I O : BitVec 64} {s0 : State σ} {e : ExpHOL 64}
    (hO : O.toNat ≤ N.toNat / 2) (hDN : D.toNat + (N.toNat / 2 + 1) < 2 ^ 63) :
    HoareG σ X (LS D N I O s0) (.storeByte (.op .add [lv lDst, lv lO]) e)
      (fun r t => r = none ∧ LS D N I O s0 t) := by
  refine hoareG_storeByte fun t hs ⟨⟨hd, hn, hg, hmem⟩, hi, ho⟩ w x mem hw hx hst => ?_
  rw [ev_add2 (ev_lw hd) (ev_lw ho)] at hw
  cases hw
  have hm := storeByte_mod hst
  have e : (D + O).toNat = D.toNat + O.toNat := by
    rw [BitVec.toNat_add, Nat.mod_eq_of_lt (by omega)]
  have hov := overlap_byte (b := D.toNat) (n := N.toNat / 2 + 1) (w := D + O)
    (by omega) (by omega)
  exact ⟨rfl, ⟨hd, hn, hg, hmem.trans (hm.mono fun a ha' => ha' ▸ hov)⟩, hi, ho⟩

/-! ## The loop -/

theorem hoareG_nlcBody {D N I O : BitVec 64} {s0 : State σ} (hDN : D.toNat + (N.toNat / 2 + 1) < 2 ^ 63)
    (hR : REL N I O) (hlt : I.toNat < N.toNat) :
    HoareG σ X (LS D N I O s0) nlcLoopBody
      (fun r t => r = none ∧ LS D N (I + BitVec.ofNat 64 2) (O + BitVec.ofNat 64 1) s0 t) := by
  obtain ⟨h1, h2, h3⟩ := hR
  have := N.isLt
  have := I.isLt
  have hOle : O.toNat ≤ N.toNat / 2 := by omega
  unfold nlcLoopBody
  refine hoareG_seq (R := fun r t => r = none ∧ LS D N I O s0 t) (hoareG_nlcStoreO hOle hDN)
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine hoareG_seq (R := fun r t => r = none ∧ LS D N (I + BitVec.ofNat 64 2) O s0 t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_pre (hoareG_assign fun t _ ⟨⟨hd, hn, hg, hm⟩, hi, ho⟩ v hv _ => ?_) fun t _ h => h.2
    rw [ev_add2 (ev_lw hi) (ev_cw _ 2)] at hv
    cases hv
    exact ⟨rfl, ⟨by rw [lk_set_ne _ _ (by decide)]; exact hd,
      by rw [lk_set_ne _ _ (by decide)]; exact hn, hg, hm⟩, lk_set_self _ _ _,
      by rw [lk_set_ne _ _ (by decide)]; exact ho⟩
  · refine hoareG_pre (hoareG_assign fun t _ ⟨⟨hd, hn, hg, hm⟩, hi, ho⟩ v hv _ => ?_) fun t _ h => h.2
    rw [ev_add2 (ev_lw ho) (ev_cw _ 1)] at hv
    cases hv
    exact ⟨rfl, ⟨by rw [lk_set_ne _ _ (by decide)]; exact hd,
      by rw [lk_set_ne _ _ (by decide)]; exact hn, hg, hm⟩,
      by rw [lk_set_ne _ _ (by decide)]; exact hi, lk_set_self _ _ _⟩

theorem hoareG_nlcLoop {D N : BitVec 64} {s0 : State σ}
    (hDN : D.toNat + (N.toNat / 2 + 1) < 2 ^ 63) :
    HoareG σ X (LI D N s0) (.while (.cmp .lower (lv lI) (lv lN)) nlcLoopBody)
      (fun r t => r = none ∧ LI D N s0 t) := by
  refine hoareG_while (fun t h => h) ?_ (fun t _ h _ => ⟨rfl, h⟩)
  intro t hs ⟨⟨I, O, hLS, hR⟩, hc⟩ hgood
  have hlt : I.toNat < N.toNat := Bn.guard_lt2 hLS.2.1 hLS.1.2.1 hc
  obtain ⟨hr, hLS'⟩ := hoareG_nlcBody hDN hR hlt t hs hLS hgood
  rw [hr]
  refine ⟨fun _ => ⟨I + BitVec.ofNat 64 2, O + BitVec.ofNat 64 1, hLS', ?_⟩, (fun h => nomatch h),
    (fun h => nomatch h), (fun r' h => nomatch h)⟩
  obtain ⟨h1, h2, h3⟩ := hR
  have := N.isLt
  have e1 : (I + BitVec.ofNat 64 2).toNat = I.toNat + 2 := toNat_add_small (by decide) (by omega)
  have e2 : (O + BitVec.ofNat 64 1).toNat = O.toNat + 1 := toNat_add_small (by decide) (by omega)
  unfold REL
  rw [e1, e2]
  refine ⟨by omega, by omega, by omega⟩

/-! ## The prefix: the first byte -/

/-- After the `if`: `i ∈ {0, 1}` with the parity of `n`. -/
def NI (D N : BitVec 64) (s0 : State σ) (t : State σ) : Prop :=
  NF D N s0 t ∧ ∃ I : BitVec 64, t.locals.lookup lI = some (.val (.word I)) ∧
    I.toNat % 2 = N.toNat % 2 ∧ I.toNat ≤ 1

theorem hoareG_nlcIte {D N : BitVec 64} {s0 : State σ} :
    HoareG σ X (fun t => NF D N s0 t ∧ t.locals.lookup lI = some (.val (.word 0))) nlcIte
      (fun r t => r = none ∧ NI D N s0 t) := by
  unfold nlcIte
  refine hoareG_ite ?_ ?_
  · refine hoareG_conseq (hoareG_nlcStore0 (Lp := fun m => m.lookup lI = some (.val (.word 0)) ∧
        N.toNat % 2 = 0)) (fun t _ ⟨⟨hNF, hi⟩, w, hc, hw⟩ => ⟨hNF, hi, cond_true_par hNF.2.1 hc hw⟩)
      (fun r t _ _ ⟨hr, hNF, hi, hp⟩ => ⟨hr, hNF, 0, hi, by simpa using hp.symm, by simp⟩)
  · refine hoareG_seq (R := fun r t => r = none ∧ NF D N s0 t ∧
        (t.locals.lookup lI = some (.val (.word 0)) ∧ N.toNat % 2 = 1))
      (hoareG_conseq (hoareG_nlcStore0 (Lp := fun m => m.lookup lI = some (.val (.word 0)) ∧
        N.toNat % 2 = 1))
        (fun t _ ⟨⟨hNF, hi⟩, hc⟩ => ⟨hNF, hi, cond_false_par hNF.2.1 hc⟩) (fun r t _ _ h => h))
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    refine hoareG_assign fun t _ ⟨_, hNF, hi, hp⟩ v hv _ => ?_
    rw [ev_cw] at hv
    cases hv
    exact ⟨rfl, nf_set (by decide) (by decide) _ hNF, BitVec.ofNat 64 1, lk_set_self _ _ _,
      by simpa using hp.symm, by simp⟩

/-! ## The footprint -/

/-- `dst + (n / 2 + 1)` ends below `scratchEnd`. -/
def NlcPre (vs : List (ValueHOL 64)) : Prop :=
  ∃ D N : BitVec 64, argW vs 3 = some D ∧ argW vs 1 = some N ∧
    D.toNat + (N.toNat / 2 + 1) ≤ scratchEnd

/-- The cells of `dst[0 .. n / 2 + 1)`. -/
def NlcR (vs : List (ValueHOL 64)) (a : BitVec 64) : Prop :=
  ∃ D N : BitVec 64, argW vs 3 = some D ∧ argW vs 1 = some N ∧
    Overlap D.toNat (N.toNat / 2 + 1) a

theorem foot_nibble_list_to_compact (hC : X.code.lookup = guestCode) :
    FootSpec σ X (nm "nibble_list_to_compact") NlcPre NlcR := by
  refine footSpec_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, Av, Bv, Cv, Dv, rfl, hA', hB', hC', hD', hla, hlb, hlc, hld⟩ :=
    Bn.lookupCode_four code_nibble_list_to_compact (by decide) hl
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hD'
  obtain ⟨D', N', hD, hN, hb⟩ := hP
  cases hD
  cases hN
  have hs63 : scratchEnd < 2 ^ 63 := by decide
  have hDN : D.toNat + (N.toNat / 2 + 1) < 2 ^ 63 := by omega
  have hd : s0.locals.lookup lDst = some (.val (.word D)) := hloc ▸ hld
  have hn : s0.locals.lookup lN = some (.val (.word N)) := hloc ▸ hlb
  have hR : ∀ a, Overlap D.toNat (N.toNat / 2 + 1) a →
      NlcR [Av, .val (.word N), Cv, .val (.word D)] a := fun a h => ⟨D, N, rfl, rfl, h⟩
  have hNF0 : NF D N s0 s0 := ⟨hd, hn, rfl, fun _ _ => rfl⟩
  refine hoareG_conseq (P := fun t => t = s0)
    (Q := fun _ t => BWPost (Overlap D.toNat (N.toNat / 2 + 1)) s0 t) ?_ (fun _ _ h => h)
    (fun r t _ _ h => ⟨h.1, h.2.mono hR⟩)
  unfold nlcBody
  refine Bn.hoareG_decK (P' := fun t => NF D N s0 t) (fun s _ h v _ => ?_)
    (fun r t old h => h) ?_
  · rw [h]; exact nf_set (by decide) (by decide) v hNF0
  refine Bn.hoareG_decK (P' := fun t => NF D N s0 t ∧ t.locals.lookup lI = some (.val (.word 0)))
    (fun s _ h v hv => ?_) (fun r t old h => h) ?_
  · rw [ev_cw] at hv
    cases hv
    exact ⟨nf_set (by decide) (by decide) _ h, lk_set_self _ _ _⟩
  refine hoareG_seq (R := fun r t => r = none ∧ NI D N s0 t) hoareG_nlcIte
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  refine Bn.hoareG_decK (P' := LI D N s0) (fun s _ ⟨_, hNI⟩ v hv => ?_) (fun r t old h => h) ?_
  · rw [ev_cw] at hv
    cases hv
    obtain ⟨hNF, I, hi, hpar, hI1⟩ := hNI
    refine ⟨I, BitVec.ofNat 64 1, ⟨nf_set (by decide) (by decide) _ hNF,
      by rw [lk_set_ne _ _ (by decide)]; exact hi, lk_set_self _ _ _⟩, ?_⟩
    have h1 : (BitVec.ofNat 64 1).toNat = 1 := rfl
    unfold REL
    rw [h1]
    refine ⟨by omega, by omega, by omega⟩
  refine hoareG_seq (R := fun r t => r = none ∧ LI D N s0 t) (hoareG_nlcLoop hDN)
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  exact hoareG_return fun t _ ⟨_, I, O, hLS, _⟩ v _ => ⟨hLS.1.2.2.1, hLS.1.2.2.2⟩

/-! ## The summary -/

/-- `n + 1` writable bytes at `dst` (an upper bound of `n / 2 + 1`). -/
def nlcSig : Sig := ⟨[.any, .any, .any, .bufArg 1 1 1], [], [], false⟩

theorem summ_nibble_list_to_compact {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H)
    (hT : TagSlots C) (hC : X.code.lookup = guestCode) :
    Summ σ X C H (nm "nibble_list_to_compact") nlcSig :=
  summ_of_foot hH hT rfl (foot_nibble_list_to_compact hC)
    (fun Γ p vs hord hL hA => by
      have hlen : 3 < vs.length := by
        have := hA.1
        simp [nlcSig] at this
        omega
      obtain ⟨v, hv⟩ : ∃ v, vs[3]? = some v := ⟨_, List.getElem?_eq_getElem hlen⟩
      obtain ⟨w, x, hw, hx, hb⟩ := hA.2 3 (.bufArg 1 1 1) v rfl hv
      refine ⟨w, x, by rw [argW, hv]; exact hw, hx, ?_⟩
      have hs := Helpers.bufOK_bound hord hL w.isLt hb
      rcases hs with h | h <;> omega)
    (fun vs a ⟨D, N, hD, hN, _⟩ ⟨D', N', hD', hN', hov⟩ => by
      rw [hD] at hD'; rw [hN] at hN'
      cases hD'; cases hN'
      exact ⟨3, D, hD, Or.inr ⟨1, 1, 1, N, by simp [nlcSig], hN,
        by simpa using overlap_mono2 hov le_rfl (by omega)⟩⟩)

theorem sumSpec_nibble_list_to_compact {H : Hooks σ} (hF : FoldOK σ X Types.guestC H) :
    SumSpecA σ X Types.guestC H (nm "nibble_list_to_compact") nlcSig (fun _ _ _ => True)
      (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  summA_of_summ (summ_nibble_list_to_compact hF.hH Helpers.tagSlots_guestC hF.hX)

theorem sumSpec_nibble_list_to_compact_guestJL {σ : Type} :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "nibble_list_to_compact")
      nlcSig (fun _ _ _ => True) (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  sumSpec_nibble_list_to_compact Wire.foldOK_guestJL

end InitECandidate.Solver.MemSafe.MptH

#print axioms InitECandidate.Solver.MemSafe.MptH.foot_nibble_list_to_compact
#print axioms InitECandidate.Solver.MemSafe.MptH.sumSpec_nibble_list_to_compact
#print axioms InitECandidate.Solver.MemSafe.MptH.sumSpec_nibble_list_to_compact_guestJL
