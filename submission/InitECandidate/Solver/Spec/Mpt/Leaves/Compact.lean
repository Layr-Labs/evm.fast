import InitECandidate.Solver.Spec.Mpt.Leaves.Common
import InitECandidate.Solver.MemSafe.Helpers.Nibbles
import InitECandidate.Solver.Spec.TrieWalk
import InitECandidate.Solver.Spec.Inv.Memcpy

/-!
# `compact_to_nibbles` writes only its fresh block

```
fun {1,1,1} compact_to_nibbles(1 p, 1 n) {
  if n == 0 { mpt_fail(5); }
  var c0 = ld8 p; var first = c0 >>> 4; var is_leaf = (first >>> 1) & 1; var odd = first & 1;
  var 1 out = alloc(2 * n);
  var k = 0;
  if odd != 0 { st8 out, c0 & 15; k = 1; }
  key_to_nibbles(p + 1, n - 1, out + k);
  return <out, k + 2 * (n - 1), is_leaf>; }
```

`freshFoot_compact_to_nibbles`: `FreshFoot … LenPre (fun _ _ _ _ _ => True)`. With `n < 2^60` the
block `[out, out + 2n)` does not wrap; `key_to_nibbles` (`MemSafe.Helpers.foot_key_to_nibbles`)
writes the cells overlapping `[out + k, out + k + 2(n - 1)) ⊆ [out, out + 2n)`, and the odd-path
byte store hits the aligned cell `out`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Mpt.Leaves
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd)

/-! ## The code -/

def ctnTail : ProgHOL 64 :=
  .dec (nm "k") .one (cw 0)
    (.seq (.ite (.cmp .notEqual (lv (nm "odd")) (cw 0))
        (.seq (.storeByte (lv (nm "out")) (.op .and [lv (nm "c0"), cw 15]))
          (.assign .local (nm "k") (cw 1))) .skip)
      (.seq (.call (some (none, none)) (nm "key_to_nibbles")
          [.op .add [lv (nm "p"), cw 1], .op .sub [lv (nm "n"), cw 1],
            .op .add [lv (nm "out"), lv (nm "k")]])
        (.return (.rstruct [lv (nm "out"),
          .op .add [lv (nm "k"), .panop .mul [cw 2, .op .sub [lv (nm "n"), cw 1]]],
          lv (nm "is_leaf")]))))

def ctnMid : ProgHOL 64 :=
  .dec (nm "c0") .one (.loadByte (lv (nm "p")))
    (.dec (nm "first") .one (.shift .lsr (lv (nm "c0")) (cw 4))
      (.dec (nm "is_leaf") .one (.op .and [.shift .lsr (lv (nm "first")) (cw 1), cw 1])
        (.dec (nm "odd") .one (.op .and [lv (nm "first"), cw 1])
          (.decCall (nm "out") .one (nm "alloc") [.panop .mul [cw 2, lv (nm "n")]] ctnTail))))

def ctnBody : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "n")) (cw 0)) (.call (some (none, none)) (nm "mpt_fail") [cw 5])
    .skip) ctnMid

def params_ctn : List (MlS × ShapeHOL) := [(nm "p", .one), (nm "n", .one)]

def sh3 : ShapeHOL := .comb [.one, .one, .one]

theorem entry_compact_to_nibbles : fnEntry Guest.Software.guestFn_compact_to_nibbles =
    (nm "compact_to_nibbles", params_ctn, ctnBody, sh3) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_compact_to_nibbles :
    guestCode (nm "compact_to_nibbles") = some (params_ctn, ctnBody, sh3) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 249) (by decide)) ⟨_, rfl⟩
    entry_compact_to_nibbles

/-! ## The footprint -/

/-- The locals the tail reads. -/
structure CtnL (L : HolFiniteMapExact MlS (ValueHOL 64)) (A N Q : BitVec 64) : Prop where
  p : L.lookup (nm "p") = some (.val (.word A))
  n : L.lookup (nm "n") = some (.val (.word N))
  out : L.lookup (nm "out") = some (.val (.word Q))

theorem ctnL_set {L : HolFiniteMapExact MlS (ValueHOL 64)} {A N Q : BitVec 64} (h : CtnL L A N Q)
    {x : MlS} (hp : x ≠ nm "p") (hn : x ≠ nm "n") (ho : x ≠ nm "out") (v : ValueHOL 64) :
    CtnL (L.update (x, v)) A N Q :=
  ⟨by rw [lookup_update_ne _ _ hp]; exact h.p,
   by rw [lookup_update_ne _ _ hn]; exact h.n,
   by rw [lookup_update_ne _ _ ho]; exact h.out⟩

/-- The tail, from `out = Q` a fresh block of `2 N` bytes (`N ≠ 0`, `N < 2^60`). -/
theorem ctn_tail (hC : X.code.lookup = guestCode) {p : Ptrs} {M0 : MemSafe.Mem}
    {A N Q : BitVec 64} (hN0 : N.toNat ≠ 0) (hN : N.toNat < 2 ^ 60) (hQ8 : Q.toNat % 8 = 0)
    (hQe : Q.toNat + 2 * N.toNat ≤ heapEnd)
    (hfresh : ∀ a : Nat, Q.toNat ≤ a → a < Q.toNat + 2 * N.toNat → ¬ p.Allocated a) :
    Hoare σ X (fun t => CtnL t.locals A N Q ∧ FF p M0 t) ctnTail
      (FPost p M0 (fun _ _ _ => True)) := by
  have fresh : ∀ a : BitVec 64, Q.toNat ≤ a.toNat → a.toNat < Q.toNat + 2 * N.toNat →
      ¬ p.Allocated a.toNat := fun a h1 h2 => hfresh a.toNat h1 h2
  refine hoare_decL (fpost_locals) fun s _ ⟨hl, hff⟩ v hv _ => ?_
  rw [ev_cw] at hv
  cases hv
  -- after `var k = 0`: `k ∈ {0, 1}`
  refine hoare_seq (R := fun r t => r = none ∧ CtnL t.locals A N Q ∧ FF p M0 t ∧
      ∃ K : BitVec 64, t.locals.lookup (nm "k") = some (.val (.word K)) ∧ K.toNat ≤ 1) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_ite ?_ (hoare_skip fun t _ ⟨ht, _⟩ => ?_)
    · refine hoare_seq (R := fun r t => r = none ∧ CtnL t.locals A N Q ∧ FF p M0 t) ?_
        (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      · refine Spec.Inv.hoare_storeByte fun t _ ⟨ht, _⟩ w x mem hw _ hmem => ?_
        subst ht
        rw [ev_lv, show (setVarHOLFinite (nm "k") (.val (.word (BitVec.ofNat 64 0))) s).locals.lookup
          (nm "out") = some (.val (.word Q)) from by
            rw [lk_set_ne _ _ (by decide)]; exact hl.out] at hw
        cases hw
        refine ⟨rfl, ctnL_set hl (by decide) (by decide) (by decide) _, ff_store hff ?_⟩
        intro a ha
        have e := MemSafe.Helpers.storeByte_mod hmem a
        have hae : a = panByteAlignHOL Q := by
          by_contra hne; exact ha (e hne)
        rw [Spec.Inv.align_self hQ8] at hae
        subst hae
        exact fresh _ le_rfl (by omega)
      · refine hoare_assign fun t _ ⟨_, hl', hff'⟩ v hv _ => ?_
        rw [ev_cw] at hv
        cases hv
        exact ⟨rfl, ctnL_set hl' (by decide) (by decide) (by decide) _, hff',
          _, lk_set_self _ _ _, by simp⟩
    · subst ht
      exact ⟨rfl, ctnL_set hl (by decide) (by decide) (by decide) _, hff, _, lk_set_self _ _ _,
        by simp⟩
  · -- `key_to_nibbles(p + 1, n - 1, out + k)`, then return
    refine hoare_seq (R := fun r t => r = none ∧ FF p M0 t) ?_ (fun _ _ _ hr _ h => absurd h.1 hr)
      (hoare_return fun t _ ⟨_, hff'⟩ v _ => fpost_of_ff (ff_empty hff') fun _ _ => trivial)
    refine hoare_callD (MemSafe.Helpers.foot_key_to_nibbles hC)
      fun t _ ⟨_, hl', hff', K, hK, hK1⟩ vs hvs callee v st hR _ => ?_
    rw [evs_cons (ev_add2 (ev_lv' hl'.p) (ev_cw _ 1)) (evs_cons (ev_sub2 (ev_lv' hl'.n) (ev_cw _ 1))
      (evs_cons (ev_add2 (ev_lv' hl'.out) (ev_lv' hK)) evs_nil))] at hvs
    simp only [Option.some.injEq] at hvs
    subst hvs
    have hN1 : (N - BitVec.ofNat 64 1).toNat = N.toNat - 1 := by
      rw [BitVec.toNat_sub_of_le (by rw [BitVec.le_def]; simp; omega)]; simp
    have hQK : (Q + K).toNat = Q.toNat + K.toNat := by
      rw [BitVec.toNat_add, Nat.mod_eq_of_lt (by simp only [heapEnd] at hQe; omega)]
    obtain ⟨hgl, hmod⟩ := hR (by simp [Good]) ⟨Q + K, N - BitVec.ofNat 64 1, rfl, rfl, Or.inr (by
      rw [hN1, hQK]; simp only [heapEnd, scratchEnd] at hQe ⊢; omega)⟩
    refine ⟨rfl, ff_mem hff' (ptrsOf_frame hgl) fun a ha => ?_⟩
    have hov : MemSafe.Helpers.BufR2 2 1 [.val (.word (A + BitVec.ofNat 64 1)),
        .val (.word (N - BitVec.ofNat 64 1)), .val (.word (Q + K))] a := by
      by_contra hn; exact ha (hmod a hn)
    obtain ⟨D, M, hD, hM, ha8, h1, h2⟩ := hov
    simp only [MemSafe.argW, MemSafe.wordOf, List.getElem?_cons_zero, List.getElem?_cons_succ,
      Option.some.injEq] at hD hM
    subst hD hM
    rw [hQK] at h1 h2
    rw [hN1] at h2
    exact fresh a (by omega) (by omega)

theorem freshFoot_compact_to_nibbles (hC : X.code.lookup = guestCode) :
    FreshFoot σ X (nm "compact_to_nibbles") LenPre (fun _ _ _ _ _ => True) := by
  refine freshFoot_of fun vs body callee rs hl s0 _ hloc p hp hord hpre => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hsA, hsB, hA, hB⟩ := lookupCode_two code_compact_to_nibbles (by decide) hl
  obtain ⟨a', N, hvs, hN⟩ := hpre
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  obtain ⟨A, rfl⟩ := val_of_shapeEq_one hsA
  have hlp : s0.locals.lookup (nm "p") = some (.val (.word A)) := by rw [hloc]; exact hA
  have hln : s0.locals.lookup (nm "n") = some (.val (.word N)) := by rw [hloc]; exact hB
  refine hoare_guard_seq (funRet_mpt_fail hC) ?_
  refine hoare_pre (P := fun t => t.locals.lookup (nm "p") = some (.val (.word A)) ∧
      t.locals.lookup (nm "n") = some (.val (.word N)) ∧ N.toNat ≠ 0 ∧ t.memory = s0.memory ∧
      t.globals = s0.globals) ?_ fun t _ ⟨ht, hc⟩ => by
    subst ht
    refine ⟨hlp, hln, ?_, rfl, rfl⟩
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
    rw [ev_lv, hln] at hx
    rw [ev_cw] at hy
    cases hx; cases hy
    intro h0
    have : N = 0 := by apply BitVec.eq_of_toNat_eq; simpa using h0
    subst this
    simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hxy
  -- four `dec`s of scalars: locals grow, memory and globals stay
  have keep : ∀ {x : MlS} {e : ExpHOL 64} {k : ProgHOL 64}, x ≠ nm "p" → x ≠ nm "n" →
      Hoare σ X (fun t => t.locals.lookup (nm "p") = some (.val (.word A)) ∧
        t.locals.lookup (nm "n") = some (.val (.word N)) ∧ N.toNat ≠ 0 ∧ t.memory = s0.memory ∧
        t.globals = s0.globals) k (FPost p s0.memory (fun _ _ _ => True)) →
      Hoare σ X (fun t => t.locals.lookup (nm "p") = some (.val (.word A)) ∧
        t.locals.lookup (nm "n") = some (.val (.word N)) ∧ N.toNat ≠ 0 ∧ t.memory = s0.memory ∧
        t.globals = s0.globals) (.dec x .one e k) (FPost p s0.memory (fun _ _ _ => True)) := by
    intro x e k hxp hxn hk
    refine hoare_decL fpost_locals fun s _ ⟨h1, h2, h3, h4, h5⟩ v _ _ => hoare_pre hk ?_
    intro t _ ht
    subst ht
    exact ⟨by rw [lk_set_ne _ _ hxp]; exact h1, by rw [lk_set_ne _ _ hxn]; exact h2,
      h3, h4, h5⟩
  refine keep (by decide) (by decide) (keep (by decide) (by decide) (keep (by decide) (by decide)
    (keep (by decide) (by decide) ?_)))
  refine hoare_decCallL (MemSafe.allocSpec_alloc (σ := σ) hC) fpost_locals
    fun s _ ⟨h1, h2, h3, h4, h5⟩ avs havs callee' v st hR _ _ => ?_
  rw [evs_cons (ev_mul2 (ev_cw _ 2) (ev_lv' h2)) evs_nil] at havs
  simp only [Option.some.injEq] at havs
  subst havs
  have hps : ptrsOf s = some p := by rw [ptrsOf_frame h5]; exact hp
  have h2N : (BitVec.ofNat 64 2 * N).toNat = 2 * N.toNat := by
    rw [BitVec.toNat_mul, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by decide : 2 < 2 ^ 64),
      Nat.mod_eq_of_lt (by omega)]
  obtain ⟨hm, -, q', hq', ho', hmono, hv⟩ := hR (by simp [Good]) _ p rfl hps hord
  obtain ⟨Q, rfl, hQ8, ⟨hQ1, hQ2⟩, hfree⟩ := hv _ rfl
  rw [h2N] at hQ2 hfree
  have hQe : Q.toNat + 2 * N.toNat ≤ heapEnd := le_trans hQ2 ho'.2.1
  have hffs : FF p s0.memory s := by
    rw [← h4]; exact ff_refl hps hord
  refine hoare_pre (ctn_tail (A := A) hC h3 hN hQ8 hQe hfree) fun t _ ht => ?_
  subst ht
  refine ⟨⟨?_, ?_, lk_set_self _ _ _⟩, ff_locals _ (ff_ptrs hffs hps hm hq' ho' hmono)⟩
  · rw [lk_set_ne _ _ (by decide)]; exact h1
  · rw [lk_set_ne _ _ (by decide)]; exact h2

end InitECandidate.Solver.Spec.Mpt.Leaves
