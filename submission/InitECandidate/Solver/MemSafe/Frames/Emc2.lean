import InitECandidate.Solver.MemSafe.Frames.OpMem
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `extend_memory_cost2` (frames13, task 2)

```
fun {1,1} extend_memory_cost2(s1, n1, s2, n2) {
  var a = extend_memory_cost1(s1, n1);
  if a.0 == WORD_MAX { return a; }
  var saved = lds 1 (ev + 32);
  st ev + 32, saved + a.1;
  var b = extend_memory_cost1(s2, n2);
  st ev + 32, saved;
  if b.0 == WORD_MAX { return b; }
  return <a.0 + b.0, a.1 + b.1>;
}
```
Not a pure function syntactically (two stores to `MEM_LEN`), but every good run restores `MEM_LEN`
(`upd (upd m a x) a (rd m a) = m`), so it is a **`Struct.PureR`** callee:

* `emc2C A B` (`A` if it saturates, else `B` if it saturates, else the sums), **`emc2F`** (the
  second `emc1F` taken against `cur + A.2`), `Emc2R`;
* `upd_upd_same`, `upd_rd_self`;
* `emc2Body`, `code_emc2`, **`pure_emc2 hC : Struct.PureR σ X (nm "extend_memory_cost2") Emc2R`**;
* **`emc2_ok`**: when `emc2F` does not saturate, the expansion is a multiple of 32, the new length
  stays below `2^37`, and both nonempty ranges lie below it;
* **`hoareG_gkEmc2`**: the `GK` step (`hoareG_kPure` + the value).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

/-! ## The value -/

/-- `extend_memory_cost2`'s value from the two `extend_memory_cost1` values. -/
def emc2C (A B : BitVec 64 × BitVec 64) : BitVec 64 × BitVec 64 :=
  if A.1 = Struct.wMax then A else if B.1 = Struct.wMax then B else (A.1 + B.1, A.2 + B.2)

/-- **`extend_memory_cost2(s1, n1, s2, n2)` at `MEM_LEN = cur`**: `emc1F` for the first range, then
`emc1F` for the second against `cur + A.2`. -/
def emc2F (a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 d0 d1 d2 d3 cur : BitVec 64) :
    BitVec 64 × BitVec 64 :=
  emc2C (Struct.emc1F a0 a1 a2 a3 b0 b1 b2 b3 cur)
    (Struct.emc1F c0 c1 c2 c3 d0 d1 d2 d3 (cur + (Struct.emc1F a0 a1 a2 a3 b0 b1 b2 b3 cur).2))

/-- The value relation of `extend_memory_cost2`. -/
def Emc2R (vs : List (ValueHOL 64)) (s : State σ) (v : ValueHOL 64) : Prop :=
  ∀ a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 d0 d1 d2 d3 E,
    vs = [wv [a0, a1, a2, a3], wv [b0, b1, b2, b3], wv [c0, c1, c2, c3], wv [d0, d1, d2, d3]] →
    s.globals.lookup Struct.gEv = some (.val (.word E)) →
    v = wv [(emc2F a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 d0 d1 d2 d3
        (rd s.memory (E + BitVec.ofNat 64 32))).1,
      (emc2F a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 d0 d1 d2 d3
        (rd s.memory (E + BitVec.ofNat 64 32))).2]

/-! ## Memory updates -/

theorem upd_upd_same (m : Mem) (a x y : BitVec 64) : upd (upd m a x) a y = upd m a y := by
  funext z
  unfold upd
  split <;> rfl

theorem upd_rd_self (m : Mem) (a : BitVec 64) : upd m a (rd m a) = m := by
  funext z
  unfold upd
  split
  · rename_i h; subst h; exact (mem_rd m z).symm
  · rfl

/-! ## The code -/

def emc2Body : ProgHOL 64 :=
  .decCall (nm "a") (shK 2) (nm "extend_memory_cost1") [lv (nm "s1"), lv (nm "n1")]
    (.seq (.ite (.cmp .equal ((.rfield 0 (lv (nm "a")))) Struct.cMax) (.return (lv (nm "a"))) .skip)
      (.dec (nm "saved") .one (gLoad "ev" 32)
        (.seq (.store (.op .add [gv (nm "ev"), cw 32]) (.op .add [lv (nm "saved"), (.rfield 1 (lv (nm "a")))]))
          (.decCall (nm "b") (shK 2) (nm "extend_memory_cost1") [lv (nm "s2"), lv (nm "n2")]
            (.seq (.store (.op .add [gv (nm "ev"), cw 32]) (lv (nm "saved")))
              (.seq (.ite (.cmp .equal ((.rfield 0 (lv (nm "b")))) Struct.cMax) (.return (lv (nm "b"))) .skip)
                (.return (.rstruct [.op .add [(.rfield 0 (lv (nm "a"))), (.rfield 0 (lv (nm "b")))],
                  .op .add [(.rfield 1 (lv (nm "a"))), (.rfield 1 (lv (nm "b")))]]))))))))

theorem entry_emc2 : fnEntry Guest.Software.guestFn_extend_memory_cost2 =
    (nm "extend_memory_cost2",
      [(nm "s1", shK 4), (nm "n1", shK 4), (nm "s2", shK 4), (nm "n2", shK 4)], emc2Body, shK 2) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_emc2 : guestCode (nm "extend_memory_cost2") =
    some ([(nm "s1", shK 4), (nm "n1", shK 4), (nm "s2", shK 4), (nm "n2", shK 4)], emc2Body,
      shK 2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 459) (by decide)) ⟨_, rfl⟩
    entry_emc2

/-! ## The spec -/

theorem wv2_of {v : ValueHOL 64} (h : shapeEqHOL (shapeOfHOLExact v) (shK 2) = true) :
    ∃ x y, v = wv [x, y] := by
  obtain ⟨ws, hl, rfl⟩ := eq_wv_of_shapeEq' h
  match ws, hl with
  | [x, y], _ => exact ⟨x, y, rfl⟩

theorem wv2_inj {x y x' y' : BitVec 64} (h : wv [x, y] = wv [x', y']) : x = x' ∧ y = y' := by
  have := wv_inj h
  simp only [List.cons.injEq, and_true] at this
  exact this

/-- **`extend_memory_cost2` is a pure callee** (memory and globals restored) with value `emc2F`. -/
theorem pure_emc2 {X : Ctx 64} (hC : X.code.lookup = guestCode) :
    Struct.PureR σ X (nm "extend_memory_cost2") Emc2R := by
  have hE1 := Struct.pure_extend_memory_cost1 (σ := σ) (X := X) hC
  refine Struct.pureR_of fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨ps, hps, hlen, hpar⟩ := lookupCode_kS hl
  rw [code_emc2] at hps
  simp only [Option.some.injEq, Prod.mk.injEq] at hps
  obtain ⟨rfl, rfl, -⟩ := hps
  obtain ⟨A, B, C, D, rfl⟩ : ∃ A B C D, vs = [A, B, C, D] := by
    rcases vs with _ | ⟨A, _ | ⟨B, _ | ⟨C, _ | ⟨D, _ | ⟨E, vs⟩⟩⟩⟩⟩ <;> simp at hlen
    exact ⟨A, B, C, D, rfl⟩
  obtain ⟨hA, hsA⟩ := hpar 0 _ A rfl rfl
  obtain ⟨hB, hsB⟩ := hpar 1 _ B rfl rfl
  obtain ⟨hCc, hsC⟩ := hpar 2 _ C rfl rfl
  obtain ⟨hD, hsD⟩ := hpar 3 _ D rfl rfl
  obtain ⟨wa, hla, rfl⟩ := eq_wv_of_shapeEq hsA
  obtain ⟨wb, hlb, rfl⟩ := eq_wv_of_shapeEq hsB
  obtain ⟨wc, hlc, rfl⟩ := eq_wv_of_shapeEq hsC
  obtain ⟨wd, hld, rfl⟩ := eq_wv_of_shapeEq hsD
  obtain ⟨a0, a1, a2, a3, rfl⟩ := Struct.wv4 hla
  obtain ⟨b0, b1, b2, b3, rfl⟩ := Struct.wv4 hlb
  obtain ⟨c0, c1, c2, c3, rfl⟩ := Struct.wv4 hlc
  obtain ⟨d0, d1, d2, d3, rfl⟩ := Struct.wv4 hld
  have hs1 : s0.locals.lookup (nm "s1") = some (wv [a0, a1, a2, a3]) := by rw [hloc]; exact hA
  have hn1 : s0.locals.lookup (nm "n1") = some (wv [b0, b1, b2, b3]) := by rw [hloc]; exact hB
  have hs2 : s0.locals.lookup (nm "s2") = some (wv [c0, c1, c2, c3]) := by rw [hloc]; exact hCc
  have hn2 : s0.locals.lookup (nm "n2") = some (wv [d0, d1, d2, d3]) := by rw [hloc]; exact hD
  set F := emc2F a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 d0 d1 d2 d3 with hF
  have post : ∀ (t : State σ) (v : ValueHOL 64), t.memory = s0.memory → t.globals = s0.globals →
      (∀ E, s0.globals.lookup Struct.gEv = some (.val (.word E)) →
        v = wv [(F (rd s0.memory (E + BitVec.ofNat 64 32))).1,
          (F (rd s0.memory (E + BitVec.ofNat 64 32))).2]) →
      Struct.PureP s0 (Emc2R [wv [a0, a1, a2, a3], wv [b0, b1, b2, b3], wv [c0, c1, c2, c3],
        wv [d0, d1, d2, d3]] s0) (some (.returned v)) t := by
    intro t v hm hg hv
    refine ⟨hm, hg, v, rfl, fun a0' a1' a2' a3' b0' b1' b2' b3' c0' c1' c2' c3' d0' d1' d2' d3' E
      he hE => ?_⟩
    simp only [List.cons.injEq, and_true] at he
    obtain ⟨h1, h2, h3, h4⟩ := he
    have e1 := wv_inj h1
    have e2 := wv_inj h2
    have e3 := wv_inj h3
    have e4 := wv_inj h4
    simp only [List.cons.injEq, and_true] at e1 e2 e3 e4
    obtain ⟨rfl, rfl, rfl, rfl⟩ := e1
    obtain ⟨rfl, rfl, rfl, rfl⟩ := e2
    obtain ⟨rfl, rfl, rfl, rfl⟩ := e3
    obtain ⟨rfl, rfl, rfl, rfl⟩ := e4
    exact hv E hE
  -- `var a = extend_memory_cost1(s1, n1)`
  refine Struct.hoareG_decCallP hE1 (fun r t o h => Struct.pureP_locals r t _ h)
    fun u _ hu vs hvs callee v hR hsh => ?_
  subst u
  rw [evs_cons (Struct.ev_lw' hs1) (evs_cons (Struct.ev_lw' hn1) evs_nil)] at hvs
  cases hvs
  have hRa : ∀ E, s0.globals.lookup Struct.gEv = some (.val (.word E)) →
      v = wv [(Struct.emc1F a0 a1 a2 a3 b0 b1 b2 b3 (rd s0.memory (E + BitVec.ofNat 64 32))).1,
        (Struct.emc1F a0 a1 a2 a3 b0 b1 b2 b3 (rd s0.memory (E + BitVec.ofNat 64 32))).2] :=
    fun E hE => hR a0 a1 a2 a3 b0 b1 b2 b3 E rfl hE
  obtain ⟨x, y, rfl⟩ := wv2_of hsh
  -- `if a.0 == WORD_MAX { return a; }`
  refine Struct.hoareG_guardRet ?_ ?_
  · intro t _ ⟨hm, hg, hl⟩ w hw hw0 v hv
    have hla : t.locals.lookup (nm "a") = some (wv [x, y]) := by
      rw [hl]; exact Struct.lk_upd_self _ _ _
    rw [Struct.cmp_eq_val (Struct.ev_wv_word hla (i := 0) (by simp)) (Struct.ev_cMax _)] at hw
    have hx : x = Struct.wMax := by
      by_contra h; simp [h] at hw; exact hw0 hw.symm
    rw [Struct.ev_lw' hla] at hv; cases hv
    refine post _ _ hm hg fun E hE => ?_
    obtain ⟨rfl, rfl⟩ := wv2_inj (hRa E hE)
    rw [hF]; unfold emc2F emc2C; rw [if_pos hx]
  refine hoareG_pre (P := fun t => t.memory = s0.memory ∧ t.globals = s0.globals ∧
      t.locals.lookup (nm "a") = some (wv [x, y]) ∧
      t.locals.lookup (nm "s2") = some (wv [c0, c1, c2, c3]) ∧
      t.locals.lookup (nm "n2") = some (wv [d0, d1, d2, d3]) ∧ x ≠ Struct.wMax) ?_
    (fun t _ ⟨⟨hm, hg, hl⟩, hc⟩ => by
      have hla : t.locals.lookup (nm "a") = some (wv [x, y]) := by
        rw [hl]; exact Struct.lk_upd_self _ _ _
      rw [Struct.cmp_eq_val (Struct.ev_wv_word hla (i := 0) (by simp)) (Struct.ev_cMax _)] at hc
      refine ⟨hm, hg, hla, by rw [hl, Struct.lk_upd_ne' _ _ (by decide)]; exact hs2,
        by rw [hl, Struct.lk_upd_ne' _ _ (by decide)]; exact hn2, ?_⟩
      intro h; simp [h] at hc)
  -- `var saved = lds 1 (ev + 32)`
  refine hoareG_dec fun u3 _ ⟨hm3, hg3, h3a, h3s, h3n, hxne⟩ v hv _ => ?_
  obtain ⟨w, hw, hd3, rfl⟩ := Struct.ev_load1_inv hv
  obtain ⟨E, z, hE, hz, rfl⟩ := ev_add2_inv hw
  rw [ev_cw] at hz; cases hz
  have hE0 : s0.globals.lookup Struct.gEv = some (.val (.word E)) := by rw [← hg3]; exact hE
  obtain ⟨rfl, rfl⟩ := wv2_inj (hRa E hE0)
  rw [hm3]
  set CUR := rd s0.memory (E + BitVec.ofNat 64 32) with hCUR
  set AA := Struct.emc1F a0 a1 a2 a3 b0 b1 b2 b3 CUR with hAA
  refine hoareG_conseq (Q := Struct.PureP s0 (Emc2R [wv [a0, a1, a2, a3], wv [b0, b1, b2, b3],
      wv [c0, c1, c2, c3], wv [d0, d1, d2, d3]] s0)) ?_ (fun _ _ h => h)
    (fun r t _ _ hq => Struct.pureP_locals r t _ hq)
  -- `st ev + 32, saved + a.1`
  refine hoareG_seq (R := fun ro t => ro = none ∧ t.memory = upd s0.memory (E + BitVec.ofNat 64 32)
      (CUR + AA.2) ∧ t.globals = s0.globals ∧
      t.locals.lookup (nm "a") = some (wv [AA.1, AA.2]) ∧
      t.locals.lookup (nm "saved") = some (.val (.word CUR)) ∧
      t.locals.lookup (nm "s2") = some (wv [c0, c1, c2, c3]) ∧
      t.locals.lookup (nm "n2") = some (wv [d0, d1, d2, d3])) ?_
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_stG fun s _ hs G v hG hv => ?_
    subst hs
    have hE' : u3.globals.lookup (nm "ev") = some (.val (.word E)) := hE
    have hGE : G = E := Option.some.inj
      (hG.symm.trans (gword_of (s := setVarHOLFinite (nm "saved") (.val (.word CUR)) u3) hE'))
    subst hGE
    have hsv : (setVarHOLFinite (nm "saved") (.val (.word CUR)) u3).locals.lookup (nm "saved") =
        some (.val (.word CUR)) := lk_set_self _ _ _
    have hav : (setVarHOLFinite (nm "saved") (.val (.word CUR)) u3).locals.lookup (nm "a") =
        some (wv [AA.1, AA.2]) := by rw [lk_set_ne _ _ (by decide)]; exact h3a
    rw [ev_add2 (Struct.ev_lw' hsv) (Struct.ev_wv_word hav (i := 1) (by simp))] at hv
    cases hv
    refine ⟨_, rfl, fun hd => ⟨rfl, ?_, hg3, hav, hsv, ?_, ?_⟩⟩
    · show upd u3.memory _ _ = _
      rw [hm3]
      rfl
    · rw [lk_set_ne _ _ (by decide)]; exact h3s
    · rw [lk_set_ne _ _ (by decide)]; exact h3n
  -- `var b = extend_memory_cost1(s2, n2)`
  refine Struct.hoareG_decCallP hE1 (fun r t o h => Struct.pureP_locals r t _ h)
    fun u4 _ ⟨_, hm4, hg4, h4a, h4sv, h4s, h4n⟩ vs hvs callee v hR hsh => ?_
  rw [evs_cons (Struct.ev_lw' h4s) (evs_cons (Struct.ev_lw' h4n) evs_nil)] at hvs
  cases hvs
  have hE4 : (callEntryStateHOLFinite u4 callee).globals.lookup Struct.gEv =
      some (.val (.word E)) := by
    show u4.globals.lookup Struct.gEv = _
    rw [hg4]; exact hE0
  have hRb := hR c0 c1 c2 c3 d0 d1 d2 d3 E rfl hE4
  have hcur2 : rd (callEntryStateHOLFinite u4 callee).memory (E + BitVec.ofNat 64 32) =
      CUR + AA.2 := by
    show rd u4.memory _ = _
    rw [hm4]; exact rd_upd_self _ _ _
  rw [hcur2] at hRb
  subst hRb
  set BB := Struct.emc1F c0 c1 c2 c3 d0 d1 d2 d3 (CUR + AA.2) with hBB
  -- `st ev + 32, saved`
  refine hoareG_seq (R := fun ro t => ro = none ∧ t.memory = s0.memory ∧ t.globals = s0.globals ∧
      t.locals.lookup (nm "a") = some (wv [AA.1, AA.2]) ∧
      t.locals.lookup (nm "b") = some (wv [BB.1, BB.2])) ?_
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_stG fun s _ ⟨hm5, hg5, hl5⟩ G v' hG hv' => ?_
    have hE5 : s.globals.lookup (nm "ev") = some (.val (.word E)) := by
      rw [hg5, hg4]; exact hE0
    have hGE : G = E := Option.some.inj (hG.symm.trans (gword_of hE5))
    subst hGE
    have h5sv : s.locals.lookup (nm "saved") = some (.val (.word CUR)) := by
      rw [hl5, Struct.lk_upd_ne' _ _ (by decide)]; exact h4sv
    rw [Struct.ev_lw' h5sv] at hv'
    cases hv'
    refine ⟨_, rfl, fun _ => ⟨rfl, ?_, hg5.trans hg4, ?_, ?_⟩⟩
    · show upd s.memory _ _ = _
      rw [hm5, hm4, upd_upd_same, hCUR, upd_rd_self]
    · rw [hl5, Struct.lk_upd_ne' _ _ (by decide)]; exact h4a
    · rw [hl5]; exact Struct.lk_upd_self _ _ _
  -- `if b.0 == WORD_MAX { return b; }`
  refine Struct.hoareG_guardRet ?_ ?_
  · intro t _ ⟨_, hm6, hg6, h6a, h6b⟩ w hw hw0 v hv
    rw [Struct.cmp_eq_val (Struct.ev_wv_word h6b (i := 0) (by simp)) (Struct.ev_cMax _)] at hw
    have hb : BB.1 = Struct.wMax := by
      by_contra h; simp [h] at hw; exact hw0 hw.symm
    rw [Struct.ev_lw' h6b] at hv
    cases hv
    refine post _ _ hm6 hg6 fun E' hE' => ?_
    rw [hE0] at hE'
    cases hE'
    show wv [BB.1, BB.2] = wv [(emc2C AA BB).1, (emc2C AA BB).2]
    unfold emc2C
    rw [if_neg hxne, if_pos hb]
  · refine hoareG_return fun t _ ⟨⟨_, hm6, hg6, h6a, h6b⟩, hc⟩ v hv => ?_
    rw [Struct.cmp_eq_val (Struct.ev_wv_word h6b (i := 0) (by simp)) (Struct.ev_cMax _)] at hc
    have hb : BB.1 ≠ Struct.wMax := by
      intro h; simp [h] at hc
    rw [Struct.ev_ret2 (ev_add2 (Struct.ev_wv_word h6a (i := 0) (by simp))
      (Struct.ev_wv_word h6b (i := 0) (by simp))) (ev_add2 (Struct.ev_wv_word h6a (i := 1)
      (by simp)) (Struct.ev_wv_word h6b (i := 1) (by simp)))] at hv
    cases hv
    refine post _ _ hm6 hg6 fun E' hE' => ?_
    rw [hE0] at hE'
    cases hE'
    show wv [_, _] = wv [(emc2C AA BB).1, (emc2C AA BB).2]
    unfold emc2C
    rw [if_neg hxne, if_neg hb]
    rfl

/-! ## The arithmetic fact -/

/-- **The two-range memory-cost fact.** When `extend_memory_cost2` does not saturate: the
expansion is a multiple of 32, the new length stays below `2^37`, both nonempty ranges lie below
it, and the cost is the sum of the two `extend_memory_cost1` costs (both unsaturated). -/
theorem emc2_ok {a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 d0 d1 d2 d3 cur : BitVec 64}
    (hc32 : cur.toNat % 32 = 0) (hcb : cur.toNat < 2 ^ 37)
    (hne : (emc2F a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 d0 d1 d2 d3 cur).1 ≠ Struct.wMax) :
    (emc2F a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 d0 d1 d2 d3 cur).2.toNat % 32 = 0 ∧
      cur.toNat + (emc2F a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 d0 d1 d2 d3 cur).2.toNat < 2 ^ 37 ∧
      (Struct.isZeroF b0 b1 b2 b3 = 0 →
        (Struct.satWordF a0 a1 a2 a3).toNat + (Struct.satWordF b0 b1 b2 b3).toNat ≤
          cur.toNat + (emc2F a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 d0 d1 d2 d3 cur).2.toNat) ∧
      (Struct.isZeroF d0 d1 d2 d3 = 0 →
        (Struct.satWordF c0 c1 c2 c3).toNat + (Struct.satWordF d0 d1 d2 d3).toNat ≤
          cur.toNat + (emc2F a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 d0 d1 d2 d3 cur).2.toNat) := by
  unfold emc2F at hne ⊢
  set A := Struct.emc1F a0 a1 a2 a3 b0 b1 b2 b3 cur with hA
  set B := Struct.emc1F c0 c1 c2 c3 d0 d1 d2 d3 (cur + A.2) with hB
  have hAne : A.1 ≠ Struct.wMax := by
    intro h; unfold emc2C at hne; rw [if_pos h] at hne; exact hne h
  have hBne : B.1 ≠ Struct.wMax := by
    intro h; unfold emc2C at hne; rw [if_neg hAne, if_pos h] at hne; exact hne h
  have hC : emc2C A B = (A.1 + B.1, A.2 + B.2) := by
    unfold emc2C; rw [if_neg hAne, if_neg hBne]
  rw [hC]
  obtain ⟨hA32, hAb, hAr⟩ := Struct.emc1_ok (a0 := a0) (a1 := a1) (a2 := a2) (a3 := a3)
    (b0 := b0) (b1 := b1) (b2 := b2) (b3 := b3) hc32 hcb hAne
  rw [← hA] at hA32 hAb hAr
  have hcur' : (cur + A.2).toNat = cur.toNat + A.2.toNat := by
    rw [BitVec.toNat_add]; exact Nat.mod_eq_of_lt (by omega)
  obtain ⟨hB32, hBb, hBr⟩ := Struct.emc1_ok (a0 := c0) (a1 := c1) (a2 := c2) (a3 := c3)
    (b0 := d0) (b1 := d1) (b2 := d2) (b3 := d3) (cur := cur + A.2) (by rw [hcur']; omega)
    (by rw [hcur']; omega) hBne
  rw [← hB] at hB32 hBb hBr
  rw [hcur'] at hBb hBr
  have hsum : (A.2 + B.2).toNat = A.2.toNat + B.2.toNat := by
    rw [BitVec.toNat_add]; exact Nat.mod_eq_of_lt (by omega)
  dsimp only
  rw [hsum]
  refine ⟨by omega, by omega, fun hz => ?_, fun hz => ?_⟩
  · have := hAr hz; omega
  · have := hBr hz; omega

/-! ## The `GK` step -/

section steps
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}

local notation "KJ" => GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs

/-- **`var x = extend_memory_cost2(args); k`**: memory / globals / `memaddrs` / `be` kept, `x` the
value `emc2F … (MEM_LEN)`. -/
theorem hoareG_gkEmc2 {rn : MlS} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {P : State σ → Prop} {b' : Bool}
    {a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 d0 d1 d2 d3 E : BitVec 64}
    (hP0 : ∀ u, P u → evs u args = some [wv [a0, a1, a2, a3], wv [b0, b1, b2, b3],
        wv [c0, c1, c2, c3], wv [d0, d1, d2, d3]] ∧
      u.globals.lookup Struct.gEv = some (.val (.word E)))
    (hk : ∀ u, P u → ∀ st : State σ, st.memory = u.memory → st.globals = u.globals →
      st.memaddrs = u.memaddrs → st.be = u.be →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite rn
          (wv [(emc2F a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 d0 d1 d2 d3 (fld u.memory E 32)).1,
            (emc2F a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 d0 d1 d2 d3 (fld u.memory E 32)).2])
          { st with locals := u.locals }) k (GQ (KJ) b')) :
    HoareG σ guestCtx P (.decCall rn (shK 2) (nm "extend_memory_cost2") args k) (GQ (KJ) b') := by
  refine hoareG_kPure (Γ0 := Γ0) (s0 := s0) (p0 := p0) (fs := fs) (pure_emc2 (σ := σ) guestCtx_code)
    fun u hu vs hvs callee v st hm hg hd hbe hRv _ => ?_
  obtain ⟨hargs, hE⟩ := hP0 u hu
  rw [hargs] at hvs
  cases hvs
  have hv := hRv a0 a1 a2 a3 b0 b1 b2 b3 c0 c1 c2 c3 d0 d1 d2 d3 E rfl hE
  subst hv
  exact hk u hu st hm hg hd hbe

end steps

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.pure_emc2
#print axioms InitECandidate.Solver.MemSafe.Frames.emc2_ok
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_gkEmc2
