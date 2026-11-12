import InitECandidate.Solver.Spec.Mpt.Leaves.RlpLen

/-!
# `nibble_list_to_compact` writes only `dst[0 ..= n/2]`

```
fun 1 nibble_list_to_compact(1 nibs, 1 n, 1 is_leaf, 1 dst) {
  var flag = is_leaf * 2; var i = 0;
  if (n & 1) == 0 { st8 dst, 16 * flag; } else { st8 dst, 16 * (flag + 1) + ld8 nibs; i = 1; }
  var o = 1;
  while i <+ n { st8 dst + o, (ld8 (nibs + i) << 4) | ld8 (nibs + i + 1); i = i + 2; o = o + 1; }
  return o; }
```

`foot_nibble_list_to_compact`: every good result keeps the globals and changes only the cells
`align(dst + j)`, `j ≤ n / 2` (no precondition). Invariant: `i = (n mod 2) + 2k`, `o = 1 + k`,
`i ≤ n`. `i` has the parity of `n`, so `i + 2` cannot wrap while `i < n`.
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

variable {σ : Type} {X : Ctx 64}

open MemSafe (ptrsOf Ptrs heapEnd heapBase scratchEnd)

def nlcLoop : ProgHOL 64 :=
  .seq (.storeByte (.op .add [lv (nm "dst"), lv (nm "o")])
      (.op .or [.shift .lsl (.loadByte (.op .add [lv (nm "nibs"), lv (nm "i")])) (cw 4),
        .loadByte (.op .add [lv (nm "nibs"), lv (nm "i"), cw 1])]))
    (.seq (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 2]))
      (.assign .local (nm "o") (.op .add [lv (nm "o"), cw 1])))

def nlcBody : ProgHOL 64 :=
  .dec (nm "flag") .one (.panop .mul [lv (nm "is_leaf"), cw 2])
    (.dec (nm "i") .one (cw 0)
      (.seq (.ite (.cmp .equal (.op .and [lv (nm "n"), cw 1]) (cw 0))
          (.storeByte (lv (nm "dst")) (.panop .mul [cw 16, lv (nm "flag")]))
          (.seq (.storeByte (lv (nm "dst")) (.op .add [.panop .mul [cw 16, .op .add [lv (nm "flag"), cw 1]],
              .loadByte (lv (nm "nibs"))]))
            (.assign .local (nm "i") (cw 1))))
        (.dec (nm "o") .one (cw 1)
          (.seq (.while (.cmp .lower (lv (nm "i")) (lv (nm "n"))) nlcLoop) (.return (lv (nm "o")))))))

def params_nlc : List (MlS × ShapeHOL) :=
  [(nm "nibs", .one), (nm "n", .one), (nm "is_leaf", .one), (nm "dst", .one)]

theorem entry_nibble_list_to_compact : fnEntry Guest.Software.guestFn_nibble_list_to_compact =
    (nm "nibble_list_to_compact", params_nlc, nlcBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_nibble_list_to_compact :
    guestCode (nm "nibble_list_to_compact") = some (params_nlc, nlcBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 250) (by decide)) ⟨_, rfl⟩
    entry_nibble_list_to_compact

theorem and1_val (N : BitVec 64) :
    Flapjack.wordOpHOL (width := 64) .and [N, 1#64] = some (BitVec.ofNat 64 (N.toNat % 2)) := by
  simp only [Flapjack.wordOpHOL, Flapjack.wordOp, List.foldr]
  congr 1
  apply BitVec.eq_of_toNat_eq
  show (N &&& (1#64 &&& ~~~0#64)).toNat = _
  rw [BitVec.toNat_and, BitVec.toNat_and, BitVec.toNat_not]
  simp
  omega

/-- The cells `nibble_list_to_compact(·, N, ·, D)` may change. -/
def NlcR (D N : BitVec 64) (a : BitVec 64) : Prop :=
  ∃ j : Nat, j ≤ N.toNat / 2 ∧ a = panByteAlignHOL (D + BitVec.ofNat 64 j)

/-- The loop state. -/
def NlcJ (D N : BitVec 64) (s0 t : State σ) : Prop :=
  t.locals.lookup (nm "dst") = some (.val (.word D)) ∧
    t.locals.lookup (nm "n") = some (.val (.word N)) ∧
    (∃ K : Nat, t.locals.lookup (nm "i") = some (.val (.word (BitVec.ofNat 64 (N.toNat % 2 + 2 * K)))) ∧
      t.locals.lookup (nm "o") = some (.val (.word (BitVec.ofNat 64 (1 + K)))) ∧
      N.toNat % 2 + 2 * K ≤ N.toNat) ∧
    t.globals = s0.globals ∧ MemSafe.ModifiesOnly (NlcR D N) s0.memory t.memory

theorem ofNat_add_ofNat' (a b : Nat) :
    BitVec.ofNat 64 a + BitVec.ofNat 64 b = BitVec.ofNat 64 (a + b) := by
  apply BitVec.eq_of_toNat_eq
  simp [BitVec.toNat_add, Nat.add_mod]

theorem nlc_loop {D N : BitVec 64} {s0 : State σ} :
    HoareG σ X (fun t => NlcJ D N s0 t ∧ CondTrue t (.cmp .lower (lv (nm "i")) (lv (nm "n")))) nlcLoop
      (fun r t => r = none ∧ NlcJ D N s0 t) := by
  unfold nlcLoop
  refine hoareG_seq (R := fun r t => r = none ∧ ∃ K : Nat,
      t.locals.lookup (nm "dst") = some (.val (.word D)) ∧
      t.locals.lookup (nm "n") = some (.val (.word N)) ∧
      t.locals.lookup (nm "i") = some (.val (.word (BitVec.ofNat 64 (N.toNat % 2 + 2 * K)))) ∧
      t.locals.lookup (nm "o") = some (.val (.word (BitVec.ofNat 64 (1 + K)))) ∧
      N.toNat % 2 + 2 * K + 2 ≤ N.toNat ∧
      t.globals = s0.globals ∧ MemSafe.ModifiesOnly (NlcR D N) s0.memory t.memory) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine MemSafe.hoareG_storeByte fun t _ ⟨⟨hd, hn, ⟨K, hi, ho, hK⟩, hg, hm⟩, hc⟩ w x mem hw _ hst => ?_
    obtain ⟨c, hc', hc0⟩ := hc
    have hlt := lower_true (cmp_val_true hc' hc0 (ev_lv' hi) (ev_lv' hn))
    have hNlt := N.isLt
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)] at hlt
    have hK2 : N.toNat % 2 + 2 * K + 2 ≤ N.toNat := by omega
    rw [ev_add2 (ev_lv' hd) (ev_lv' ho)] at hw
    cases hw
    refine ⟨rfl, K, hd, hn, hi, ho, hK2, hg, ?_⟩
    have hmod := MemSafe.Helpers.storeByte_mod hst
    refine hm.trans (hmod.mono fun a ha => ⟨1 + K, by omega, ha⟩)
  refine hoareG_seq (R := fun r t => r = none ∧ ∃ K : Nat,
      t.locals.lookup (nm "dst") = some (.val (.word D)) ∧
      t.locals.lookup (nm "n") = some (.val (.word N)) ∧
      t.locals.lookup (nm "i") = some (.val (.word (BitVec.ofNat 64 (N.toNat % 2 + 2 * (K + 1))))) ∧
      t.locals.lookup (nm "o") = some (.val (.word (BitVec.ofNat 64 (1 + K)))) ∧
      N.toNat % 2 + 2 * (K + 1) ≤ N.toNat ∧
      t.globals = s0.globals ∧ MemSafe.ModifiesOnly (NlcR D N) s0.memory t.memory) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_assign fun t _ ⟨_, K, hd, hn, hi, ho, hK, hg, hm⟩ v hv _ => ?_
    rw [ev_add2 (ev_lv' hi) (ev_cw _ 2), ofNat_add_ofNat'] at hv
    cases hv
    refine ⟨rfl, K, ?_, ?_, ?_, ?_, by omega, hg, hm⟩
    · rw [lk_set_ne _ _ (by decide)]; exact hd
    · rw [lk_set_ne _ _ (by decide)]; exact hn
    · rw [lk_set_self, show N.toNat % 2 + 2 * K + 2 = N.toNat % 2 + 2 * (K + 1) by omega]
    · rw [lk_set_ne _ _ (by decide)]; exact ho
  · refine hoareG_assign fun t _ ⟨_, K, hd, hn, hi, ho, hK, hg, hm⟩ v hv _ => ?_
    rw [ev_add2 (ev_lv' ho) (ev_cw _ 1), ofNat_add_ofNat'] at hv
    cases hv
    refine ⟨rfl, ?_, ?_, ⟨K + 1, ?_, ?_, hK⟩, hg, hm⟩
    · rw [lk_set_ne _ _ (by decide)]; exact hd
    · rw [lk_set_ne _ _ (by decide)]; exact hn
    · rw [lk_set_ne _ _ (by decide)]; exact hi
    · rw [lk_set_self, show 1 + K + 1 = 1 + (K + 1) by omega]

theorem foot_nibble_list_to_compact (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "nibble_list_to_compact") (fun vs s r t => Good (some r) →
      ∀ NB N IL D : BitVec 64,
        vs = [.val (.word NB), .val (.word N), .val (.word IL), .val (.word D)] →
        t.globals = s.globals ∧ MemSafe.ModifiesOnly (NlcR D N) s.memory t.memory) := by
  intro vs body callee rs hl s0 hs hloc r hr hg NB N IL D hvs
  rw [hC] at hl
  obtain ⟨rfl, A, B, C, Dv, rfl, -, -, -, -, hA, hB, hC', hD⟩ :=
    Dec.lookupCode_four' code_nibble_list_to_compact (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) hl
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl, rfl⟩ := hvs
  have hn0 : s0.locals.lookup (nm "n") = some (.val (.word N)) := by rw [hloc]; exact hB
  have hd0 : s0.locals.lookup (nm "dst") = some (.val (.word D)) := by rw [hloc]; exact hD
  have H : HoareG σ X (fun t => t = s0) nlcBody (fun _ t => t.globals = s0.globals ∧
      MemSafe.ModifiesOnly (NlcR D N) s0.memory t.memory) := by
    refine hoareG_dec fun s1 _ hs1 v1 _ _ => ?_
    subst s1
    refine hoareG_dec fun s2 _ hs2 v2 hv2 _ => ?_
    subst hs2
    rw [ev_cw] at hv2
    cases hv2
    set t2 := setVarHOLFinite (nm "i") (.val (.word (BitVec.ofNat 64 0))) (setVarHOLFinite (nm "flag") v1 s0)
    have hd2 : t2.locals.lookup (nm "dst") = some (.val (.word D)) := by
      rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hd0
    have hn2 : t2.locals.lookup (nm "n") = some (.val (.word N)) := by
      rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hn0
    have hcnd : ev t2 (.cmp .equal (.op .and [lv (nm "n"), cw 1]) (cw 0)) =
        some (.val (.word (if wordCmpHOL .equal (BitVec.ofNat 64 (N.toNat % 2)) 0 then 1 else 0))) := by
      refine ev_cmp ?_ (ev_cw _ 0)
      rw [ev_op2 (ev_lv' hn2) (ev_cw _ 1), and1_val]
      rfl
    -- after the first byte and `i`: the loop state with `K = 0`, `o` not yet declared
    refine hoareG_seq (R := fun r t => r = none ∧ t.locals.lookup (nm "dst") = some (.val (.word D)) ∧
        t.locals.lookup (nm "n") = some (.val (.word N)) ∧
        t.locals.lookup (nm "i") = some (.val (.word (BitVec.ofNat 64 (N.toNat % 2)))) ∧
        t.globals = s0.globals ∧ MemSafe.ModifiesOnly (NlcR D N) s0.memory t.memory) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoareG_ite ?_ ?_
      · refine MemSafe.hoareG_storeByte fun t _ ⟨ht, w, hw, hw0⟩ wd x mem hwd _ hst => ?_
        subst ht
        rw [hcnd] at hw
        simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
        subst hw
        have h0 : N.toNat % 2 = 0 := by
          by_contra hne
          apply hw0
          have hf : wordCmpHOL .equal (BitVec.ofNat 64 (N.toNat % 2)) 0 = false := by
            simp only [wordCmpHOL, beq_eq_false_iff_ne, ne_eq]
            intro h
            have := congrArg BitVec.toNat h
            simp only [BitVec.toNat_ofNat] at this
            have : (0 : BitVec 64).toNat = 0 := rfl
            omega
          rw [hf]
          rfl
        rw [ev_lv, hd2] at hwd
        cases hwd
        refine ⟨rfl, hd2, hn2, by rw [h0, lk_set_self], rfl, ?_⟩
        refine (MemSafe.Helpers.storeByte_mod hst).mono fun a ha => ⟨0, by omega, by rw [ha]; simp⟩
      · refine hoareG_seq (R := fun r t => r = none ∧ t.locals = t2.locals ∧
          t.globals = s0.globals ∧ MemSafe.ModifiesOnly (NlcR D N) s0.memory t.memory ∧
          N.toNat % 2 = 1) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
        · refine MemSafe.hoareG_storeByte fun t _ ⟨ht, hc⟩ wd x mem hwd _ hst => ?_
          subst ht
          rw [hcnd] at hc
          simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hc
          have h1 : N.toNat % 2 = 1 := by
            by_contra hne
            have h0 : N.toNat % 2 = 0 := by omega
            rw [h0, if_pos (by simp [wordCmpHOL])] at hc
            exact absurd hc (by decide)
          rw [ev_lv, hd2] at hwd
          cases hwd
          refine ⟨rfl, rfl, rfl, ?_, h1⟩
          refine (MemSafe.Helpers.storeByte_mod hst).mono fun a ha => ⟨0, by omega, by rw [ha]; simp⟩
        · refine hoareG_assign fun t _ ⟨_, hl2, hg2, hm2, h1⟩ v hv _ => ?_
          rw [ev_cw] at hv
          cases hv
          refine ⟨rfl, ?_, ?_, ?_, hg2, hm2⟩
          · rw [lk_set_ne _ _ (by decide), hl2]; exact hd2
          · rw [lk_set_ne _ _ (by decide), hl2]; exact hn2
          · rw [lk_set_self, h1]
    · refine hoareG_dec fun s3 _ ⟨_, hd3, hn3, hi3, hg3, hm3⟩ v3 hv3 _ => ?_
      rw [ev_cw] at hv3
      cases hv3
      refine hoareG_seq (R := fun r t => r = none ∧ NlcJ D N s0 t) ?_
        (fun _ _ _ hr _ h => absurd h.1 hr)
        (MemSafe.hoareG_return fun t _ ⟨_, _, _, _, hg, hm⟩ _ _ => ⟨hg, hm⟩)
      refine hoareG_pre (P := NlcJ D N s0) ?_ fun t _ ht => by
        subst ht
        refine ⟨?_, ?_, ⟨0, ?_, lk_set_self _ _ _, by omega⟩, hg3, hm3⟩
        · rw [lk_set_ne _ _ (by decide)]; exact hd3
        · rw [lk_set_ne _ _ (by decide)]; exact hn3
        · rw [lk_set_ne _ _ (by decide)]; simpa using hi3
      exact MemSafe.hoareG_while (fun _ h => h) (hoareG_conseq nlc_loop (fun _ _ h => h)
        fun _ _ _ _ ⟨hr, h⟩ => ⟨fun _ => h, (fun h' => by subst hr; cases h'),
          (fun h' => by subst hr; cases h'), (fun _ h' => by subst hr; cases h')⟩)
        fun _ _ h _ => ⟨rfl, h⟩
  have := H s0 hs rfl (by rw [hr]; exact hg)
  rw [hr] at this
  exact this

end InitECandidate.Solver.Spec.Mpt.Leaves
