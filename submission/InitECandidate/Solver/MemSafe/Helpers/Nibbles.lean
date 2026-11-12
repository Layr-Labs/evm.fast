import InitECandidate.Solver.MemSafe.Helpers.Rlp

set_option autoImplicit false

/-!
# `key_to_nibbles`

`key_to_nibbles(key, n, out)` writes the `2 n` nibbles of `key[0, n)` to `out[0, 2 n)`: a loop by
fours, then a byte loop; each step reads `key[i + k]` into a fresh local and stores two bytes at
`out + 2 i + 2 k` and `out + 2 i + 2 k + 1`.

* `foot_key_to_nibbles`: every good result keeps the globals and changes memory only in the cells
  overlapping `[out, out + 2 n)`, when `n = 0` or `out + 2 n ≤ scratchEnd`.
* `summ_key_to_nibbles`: the `Summ` for `[.any, .any, .bufArg 1 2 0]` (`grows := false`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Helpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

def keyN : MlS := nm "key"

/-- `out + 2 * i (+ c)`. -/
def nibAddr : Nat → ExpHOL 64
  | 0 => .op .add [lv oN, .panop .mul [cw 2, lv iN]]
  | c + 1 => .op .add [lv oN, .panop .mul [cw 2, lv iN], cw (c + 1)]

/-- `var b = ld8 (key + i + k); st8 out + 2i + 2k, b >>> 4; st8 out + 2i + 2k + 1, b & 15; rest` -/
def nibPair (b : MlS) (k : Nat) (rest : ProgHOL 64) : ProgHOL 64 :=
  .dec b .one (.loadByte (offI keyN iN k))
    (.seq (.storeByte (nibAddr (2 * k)) (shr (lv b) 4))
      (.seq (.storeByte (nibAddr (2 * k + 1)) (.op .and [lv b, cw 15])) rest))

def k2nBody : ProgHOL 64 :=
  .dec iN .one (cw 0)
    (.seq (.while (geK nN iN 4)
        (nibPair (nm "b0") 0 (nibPair (nm "b1") 1 (nibPair (nm "b2") 2
          (nibPair (nm "b3") 3 (incI iN 4))))))
      (.seq (.while (ltN iN nN) (nibPair (nm "b") 0 (incI iN 1))) ret0))

def k2nParams : List (MlS × ShapeHOL) := [(keyN, .one), (nN, .one), (oN, .one)]

theorem entry_key_to_nibbles : fnEntry Guest.Software.guestFn_key_to_nibbles =
    (nm "key_to_nibbles", k2nParams, k2nBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_key_to_nibbles :
    guestCode (nm "key_to_nibbles") = some (k2nParams, k2nBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 248) (by decide)) ⟨_, rfl⟩
    entry_key_to_nibbles

theorem ev_nibAddr {t : State σ} {O I : BitVec 64}
    (ho : t.locals.lookup oN = some (.val (.word O)))
    (hi : t.locals.lookup iN = some (.val (.word I))) (c : Nat) :
    ev t (nibAddr c) =
      some (.val (.word (O + (BitVec.ofNat 64 2 * I + BitVec.ofNat 64 c)))) := by
  cases c with
  | zero =>
      rw [nibAddr, ev_add2 (ev_lw ho) (ev_mul2 (ev_cw _ 2) (ev_lw hi))]
      simp
  | succ c => exact ev_add3 (ev_lw ho) (ev_mul2 (ev_cw _ 2) (ev_lw hi)) (ev_cw _ _)

theorem toNat_nib {O I : BitVec 64} {c : Nat} (h : O.toNat + 2 * I.toNat + c < 2 ^ 64) :
    (O + (BitVec.ofNat 64 2 * I + BitVec.ofNat 64 c)).toNat = O.toNat + 2 * I.toNat + c := by
  have h2 : (BitVec.ofNat 64 2 * I).toNat = 2 * I.toNat := by
    rw [BitVec.toNat_mul, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 2) (by decide),
      Nat.mod_eq_of_lt (by omega)]
  rw [BitVec.toNat_add, BitVec.toNat_add, h2, BitVec.toNat_ofNat,
    Nat.mod_eq_of_lt (a := c) (by omega), Nat.mod_eq_of_lt (a := 2 * I.toNat + c) (by omega),
    Nat.mod_eq_of_lt (by omega)]
  omega

/-- Inside a loop step: `out = O`, `n = N`, `i = I`. -/
def NibJb (O N I : BitVec 64) (m : Locals) : Prop :=
  m.lookup oN = some (.val (.word O)) ∧ m.lookup nN = some (.val (.word N)) ∧
    m.lookup iN = some (.val (.word I))

/-- The loop state: `out = O`, `n = N`, `i ≤ N`. -/
def NibJ (O N : BitVec 64) (m : Locals) : Prop :=
  m.lookup oN = some (.val (.word O)) ∧ m.lookup nN = some (.val (.word N)) ∧
    ∃ I : BitVec 64, m.lookup iN = some (.val (.word I)) ∧ I.toNat ≤ N.toNat

theorem nibJ_resVarEq {O N : BitVec 64} (m : Locals) (x : MlS) (old : Option (ValueHOL 64))
    (hxo : x ≠ oN) (hxn : x ≠ nN) (hxi : x ≠ iN) (h : NibJ O N m) :
    NibJ O N (m.resVarEq (x, old)) := by
  obtain ⟨ho, hn, I, hi, hIN⟩ := h
  exact ⟨by rw [lookup_resVarEq_ne _ _ hxo]; exact ho, by rw [lookup_resVarEq_ne _ _ hxn]; exact hn,
    I, by rw [lookup_resVarEq_ne _ _ hxi]; exact hi, hIN⟩

/-- One `nibPair` step `k` of a block of `K` keys, with `k < K`, `I + K ≤ N`. -/
theorem hoareG_nibPair {b : MlS} (hbo : b ≠ oN) (hbn : b ≠ nN) (hbi : b ≠ iN) {k K : Nat}
    (hk : k < K) {O N I : BitVec 64} (hIK : I.toNat + K ≤ N.toNat)
    (hON : O.toNat + 2 * N.toNat < 2 ^ 63)
    {Rf : BitVec 64 → Prop} (hR : ∀ a, Overlap O.toNat (2 * N.toNat) a → Rf a) {s0 : State σ}
    {rest : ProgHOL 64} (hrest : HoareG σ X (LPre Rf s0 (NibJb O N I)) rest (LN Rf s0 (NibJ O N))) :
    HoareG σ X (LPre Rf s0 (NibJb O N I)) (nibPair b k rest) (LN Rf s0 (NibJ O N)) := by
  have hst : ∀ c, c < 2 * K → ∀ t : State σ, InCtx t X → NibJb O N I t.locals → ∀ w,
      ev t (nibAddr c) = some (.val (.word w)) → Rf (panByteAlignHOL w) := by
    intro c hc t _ ⟨ho, _, hi⟩ w hw
    rw [ev_nibAddr ho hi] at hw
    cases hw
    have := toNat_nib (O := O) (I := I) (c := c) (by omega)
    exact hR _ (overlap_byte (by rw [this]; omega) (by rw [this]; omega))
  refine hoareG_decN (L' := fun _ => NibJ O N)
    ?_ (fun m m' _ h => nibJ_resVarEq m' b _ hbo hbn hbi h)
  intro s _ hL v _ _
  have hL' : ∀ m, m = s.locals.update (b, v) → NibJb O N I m := by
    intro m h
    subst h
    refine ⟨?_, ?_, ?_⟩
    · rw [lookup_update_ne _ _ hbo]; exact hL.1
    · rw [lookup_update_ne _ _ hbn]; exact hL.2.1
    · rw [lookup_update_ne _ _ hbi]; exact hL.2.2
  refine hoareG_preN (L' := NibJb O N I) ?_ hL'
  exact hoareG_seqN (hoareG_stByteN (hst _ (by omega)))
    (hoareG_seqN (hoareG_stByteN (hst _ (by omega))) hrest)

/-- The increment `i += K` after a block. -/
theorem hoareG_nibInc {O N I : BitVec 64} {K : Nat} (hIK : I.toNat + K ≤ N.toNat)
    {Rf : BitVec 64 → Prop} {s0 : State σ} :
    HoareG σ X (LPre Rf s0 (NibJb O N I)) (incI iN K) (LN Rf s0 (NibJ O N)) := by
  refine hoareG_assignN fun t _ ⟨ho, hn, hi⟩ w hw => ?_
  rw [ev_add2 (ev_lw hi) (ev_cw _ _)] at hw
  cases hw
  have hN := N.isLt
  refine ⟨by rw [lookup_update_ne _ _ (by decide)]; exact ho,
    by rw [lookup_update_ne _ _ (by decide)]; exact hn, _, lookup_update_self _ _ _, ?_⟩
  rw [toNat_addc (by omega)]
  omega

/-- **`key_to_nibbles` footprint.** -/
theorem foot_key_to_nibbles (hC : X.code.lookup = guestCode) :
    FootSpec σ X (nm "key_to_nibbles") (BufPre2 2 1) (BufR2 2 1) := by
  refine footSpec_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, Kv, B, Cc, rfl, -, hB', hC', -, hlb, hlc⟩ :=
    lookupCode_three code_key_to_nibbles (by decide) (by decide) (by decide) hl
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hB'
  obtain ⟨O, rfl⟩ := val_of_shapeEq_one hC'
  obtain ⟨O', N', hO, hN, hb⟩ := hP
  cases hO
  cases hN
  have hse : scratchEnd < 2 ^ 63 := by decide
  let Rf := BufR2 2 1 [Kv, .val (.word N), .val (.word O)]
  have hR : ∀ a, Overlap O.toNat (2 * N.toNat) a → Rf a := fun a h => ⟨O, N, rfl, rfl, h⟩
  have hnw : N.toNat < 2 ^ 63 := by rcases hb with h | h <;> omega
  have hON : 0 < N.toNat → O.toNat + 2 * N.toNat < 2 ^ 63 := by
    intro h0; rcases hb with h | h <;> omega
  -- the two loops
  have loop : ∀ (K : Nat) (c : ExpHOL 64) (body : BitVec 64 → ProgHOL 64), 1 ≤ K →
      (∀ t : State σ, NibJ O N t.locals → CondTrue t c → ∃ I : BitVec 64,
        NibJb O N I t.locals ∧ I.toNat + K ≤ N.toNat) →
      (∀ I : BitVec 64, I.toNat + K ≤ N.toNat →
        HoareG σ X (LPre Rf s0 (NibJb O N I)) (body I) (LN Rf s0 (NibJ O N))) →
      (∀ I J : BitVec 64, body I = body J) →
      HoareG σ X (LPre Rf s0 (NibJ O N)) (.while c (body 0)) (LP Rf s0 (NibJ O N)) := by
    intro K c body hK hg hbody hconst
    refine hoareG_whileN ?_ (fun _ _ h _ => h)
    intro t ht ⟨hpre, hc⟩
    obtain ⟨I, hJb, hIK⟩ := hg t hpre.1 hc
    rw [hconst 0 I]
    exact hbody I hIK t ht ⟨hJb, hpre.2⟩
  have l1 := loop 4 (geK nN iN 4) (fun _ => nibPair (nm "b0") 0 (nibPair (nm "b1") 1
      (nibPair (nm "b2") 2 (nibPair (nm "b3") 3 (incI iN 4))))) (by decide)
    (fun t ⟨ho, hn, I, hi, hIN⟩ hc => ⟨I, ⟨ho, hn, hi⟩,
      geK_true (by decide) hnw hIN hn hi hc⟩)
    (fun I hIK => by
      have h1 := hON (by omega)
      exact hoareG_nibPair (by decide) (by decide) (by decide) (by decide : 0 < 4) hIK h1 hR
        (hoareG_nibPair (by decide) (by decide) (by decide) (by decide : 1 < 4) hIK h1 hR
          (hoareG_nibPair (by decide) (by decide) (by decide) (by decide : 2 < 4) hIK h1 hR
            (hoareG_nibPair (by decide) (by decide) (by decide) (by decide : 3 < 4) hIK h1 hR
              (hoareG_nibInc hIK)))))
    (fun _ _ => rfl)
  have l2 := loop 1 (ltN iN nN) (fun _ => nibPair (nm "b") 0 (incI iN 1)) (le_refl _)
    (fun t ⟨ho, hn, I, hi, _⟩ hc => ⟨I, ⟨ho, hn, hi⟩, ltN_true hn hi hc⟩)
    (fun I hIK => hoareG_nibPair (by decide) (by decide) (by decide) (by decide : 0 < 1) hIK
      (hON (by omega)) hR (hoareG_nibInc hIK))
    (fun _ _ => rfl)
  refine hoareG_dec fun s _ hs v hv _ => ?_
  subst s
  rw [ev_cw] at hv
  cases hv
  refine hoareG_conseq (P := LPre Rf s0 (NibJ O N)) (Q := LP Rf s0 (fun _ => True)) ?_ ?_
    fun _ _ _ _ h => h.1
  · exact hoareG_seqL l1 (hoareG_seqL l2 hoareG_returnL)
  · intro t _ ht
    subst t
    refine ⟨⟨by rw [lk_set_ne _ _ (by decide), hloc]; exact hlc,
      by rw [lk_set_ne _ _ (by decide), hloc]; exact hlb, _, lk_set_self _ _ _, by simp⟩,
      rfl, fun _ _ => rfl⟩

def sigKeyToNibbles : Sig := { params := [.any, .any, .bufArg 1 2 0], grows := false }

theorem summ_key_to_nibbles {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hC : X.code.lookup = guestCode) : Summ σ X C H (nm "key_to_nibbles") sigKeyToNibbles :=
  summ_of_foot hH hT rfl (foot_key_to_nibbles hC)
    (fun _ _ _ hord hL hA' => bufPre2_of_args (i := 2) rfl hord hL hA')
    (fun _ _ _ h => argCells_of_bufR2 (i := 2) rfl h)

end InitECandidate.Solver.MemSafe.Helpers
