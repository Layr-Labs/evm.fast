import InitECandidate.Solver.MemSafe.Frames.Emc2

/-!
# `calculate_message_call_gas` (frames14, deliverable 1)

```
fun {1,1} calculate_message_call_gas({1,1,1,1} value, 1 gas, 1 gas_left, 1 memory_cost,
    1 extra_gas) {
  var 1 vz = u256_is_zero(value);
  var stipend = 0;
  if vz == 0 { stipend = 2300; }
  var 1 need = add_sat(extra_gas, memory_cost);
  if gas_left <+ need {
    var 1 c = add_sat(gas, extra_gas); var 1 s = add_sat(gas, stipend); return <c, s>;
  }
  var avail = gas_left - memory_cost - extra_gas;
  var 1 mx = avail - (avail >>> 6);
  var g = gas; if g >+ mx { g = mx; }
  return <g + extra_gas, g + stipend>;
}
```
**Finding.** The CALL family calls it with `memory_cost = extra_gas = 0`; then
`mcg.0 = g` and `mcg.1 = g + stipend`: the child's gas `mcg.1` **exceeds** the charge `mcg.0`
by the stipend (2300 when the value is nonzero), so `mcg.1 ≤ mcg.0` is false in general. The
fact the handlers need is **`mcg.1 ≤ mcg.0 + stipend`** (`McgR`), where the stipend is paid out of
the transfer cost (11300 when the value is nonzero) charged before.

* `mcgSt` (the stipend word), **`McgR`**, `mcgBody`, `entry_mcg`, `code_mcg`;
* **`pure_mcg hC : Struct.PureR σ X (nm "calculate_message_call_gas") McgR`**.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Calls
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-- The stipend word: `2300` when the value is nonzero. -/
def mcgSt (v0 v1 v2 v3 : BitVec 64) : BitVec 64 :=
  if Struct.isZeroF v0 v1 v2 v3 = 0 then BitVec.ofNat 64 2300 else 0

/-- **`calculate_message_call_gas`'s value fact** (for `memory_cost = extra_gas = 0`): the
returned pair `<c, s>` has `s ≤ c + stipend`. -/
def McgR (vs : List (ValueHOL 64)) (_ : State σ) (v : ValueHOL 64) : Prop :=
  ∀ v0 v1 v2 v3 g gl : BitVec 64,
    vs = [wv [v0, v1, v2, v3], .val (.word g), .val (.word gl), .val (.word (BitVec.ofNat 64 0)),
      .val (.word (BitVec.ofNat 64 0))] →
    ∃ a b, v = wv [a, b] ∧ b.toNat ≤ a.toNat + (mcgSt v0 v1 v2 v3).toNat

def mcgTail : ProgHOL 64 :=
  .dec (nm "avail") .one (.op .sub [(.op .sub [(lv (nm "gas_left")), (lv (nm "memory_cost"))]),
      (lv (nm "extra_gas"))])
    (.dec (nm "mx") .one (.op .sub [(lv (nm "avail")), (.shift .lsr (lv (nm "avail")) (cw 6))])
      (.dec (nm "g") .one (lv (nm "gas"))
        (.seq (.ite (.cmp .lower (lv (nm "mx")) (lv (nm "g")))
            (.assign .local (nm "g") (lv (nm "mx")))
            .skip)
          (.return (.rstruct [(.op .add [(lv (nm "g")), (lv (nm "extra_gas"))]),
            (.op .add [(lv (nm "g")), (lv (nm "stipend"))])])))))

def mcgLow : ProgHOL 64 :=
  .decCall (nm "c") .one (nm "add_sat") [(lv (nm "gas")), (lv (nm "extra_gas"))]
    (.decCall (nm "s") .one (nm "add_sat") [(lv (nm "gas")), (lv (nm "stipend"))]
      (.return (.rstruct [(lv (nm "c")), (lv (nm "s"))])))

def mcgBody : ProgHOL 64 :=
  .decCall (nm "vz") .one (nm "u256_is_zero") [(lv (nm "value"))]
    (.dec (nm "stipend") .one (cw 0)
      (.seq (.ite (.cmp .equal (lv (nm "vz")) (cw 0))
          (.assign .local (nm "stipend") (cw 2300))
          .skip)
        (.decCall (nm "need") .one (nm "add_sat") [(lv (nm "extra_gas")), (lv (nm "memory_cost"))]
          (.seq (.ite (.cmp .lower (lv (nm "gas_left")) (lv (nm "need"))) mcgLow .skip)
            mcgTail))))

def mcgParams : List (MlS × ShapeHOL) :=
  [(nm "value", shK 4), (nm "gas", .one), (nm "gas_left", .one), (nm "memory_cost", .one),
    (nm "extra_gas", .one)]

theorem entry_mcg : fnEntry Guest.Software.guestFn_calculate_message_call_gas =
    (nm "calculate_message_call_gas", mcgParams, mcgBody, shK 2) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_mcg : guestCode (nm "calculate_message_call_gas") = some (mcgParams, mcgBody, shK 2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 602) (by decide)) ⟨_, rfl⟩
    entry_mcg

/-! ## Arithmetic -/

theorem addSatF_zero (g : BitVec 64) : Struct.addSatF g 0 = g := by
  unfold Struct.addSatF
  rw [if_neg (by simp)]
  simp

theorem addSatF_le (g s : BitVec 64) : (Struct.addSatF g s).toNat ≤ g.toNat + s.toNat := by
  unfold Struct.addSatF
  split
  · rename_i h
    rw [BitVec.toNat_add] at h
    have hg := g.isLt
    have hs := s.isLt
    have : g.toNat + s.toNat ≥ 2 ^ 64 := by
      by_contra hc
      rw [Nat.mod_eq_of_lt (by omega)] at h
      omega
    show (BitVec.ofNat 64 18446744073709551615).toNat ≤ _
    rw [BitVec.toNat_ofNat]
    omega
  · rw [BitVec.toNat_add]
    exact Nat.mod_le _ _

theorem add_toNat_le (g s : BitVec 64) : (g + s).toNat ≤ g.toNat + s.toNat := by
  rw [BitVec.toNat_add]; exact Nat.mod_le _ _

/-! ## The spec -/

/-- **`calculate_message_call_gas` is pure** with `McgR`. -/
theorem pure_mcg {X : Ctx 64} (hC : X.code.lookup = guestCode) :
    Struct.PureR σ X (nm "calculate_message_call_gas") McgR := by
  have hZ := Struct.pure_u256_is_zero (σ := σ) (X := X) hC
  have hA := Struct.pure_add_sat (σ := σ) (X := X) hC
  refine Struct.pureR_of fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨ps, hps, hlen, hpar⟩ := lookupCode_kS hl
  rw [code_mcg] at hps
  simp only [Option.some.injEq, Prod.mk.injEq] at hps
  obtain ⟨rfl, rfl, -⟩ := hps
  obtain ⟨A, B, C, D, E, rfl⟩ : ∃ A B C D E, vs = [A, B, C, D, E] := by
    rcases vs with _ | ⟨A, _ | ⟨B, _ | ⟨C, _ | ⟨D, _ | ⟨E, _ | ⟨F, vs⟩⟩⟩⟩⟩⟩ <;> simp [mcgParams] at hlen
    exact ⟨A, B, C, D, E, rfl⟩
  obtain ⟨hlA, hsA⟩ := hpar 0 _ A rfl rfl
  obtain ⟨hlB, hsB⟩ := hpar 1 _ B rfl rfl
  obtain ⟨hlC, hsC⟩ := hpar 2 _ C rfl rfl
  obtain ⟨hlD, hsD⟩ := hpar 3 _ D rfl rfl
  obtain ⟨hlE, hsE⟩ := hpar 4 _ E rfl rfl
  obtain ⟨wa, hla, rfl⟩ := eq_wv_of_shapeEq hsA
  obtain ⟨v0, v1, v2, v3, rfl⟩ := Struct.wv4 hla
  obtain ⟨g, rfl⟩ := val_of_shapeEq_one hsB
  obtain ⟨gl, rfl⟩ := val_of_shapeEq_one hsC
  obtain ⟨mc, rfl⟩ := val_of_shapeEq_one hsD
  obtain ⟨eg, rfl⟩ := val_of_shapeEq_one hsE
  have l_val : s0.locals.lookup (nm "value") = some (wv [v0, v1, v2, v3]) := by
    rw [hloc]; exact hlA
  have l_gas : s0.locals.lookup (nm "gas") = some (.val (.word g)) := by rw [hloc]; exact hlB
  have l_gl : s0.locals.lookup (nm "gas_left") = some (.val (.word gl)) := by rw [hloc]; exact hlC
  have l_mc : s0.locals.lookup (nm "memory_cost") = some (.val (.word mc)) := by
    rw [hloc]; exact hlD
  have l_eg : s0.locals.lookup (nm "extra_gas") = some (.val (.word eg)) := by
    rw [hloc]; exact hlE
  set ST := mcgSt v0 v1 v2 v3 with hST
  have post : ∀ (t : State σ) (a b : BitVec 64), t.memory = s0.memory → t.globals = s0.globals →
      (eg = BitVec.ofNat 64 0 → b.toNat ≤ a.toNat + ST.toNat) →
      Struct.PureP s0 (McgR [wv [v0, v1, v2, v3], .val (.word g), .val (.word gl),
        .val (.word mc), .val (.word eg)] s0) (some (.returned (wv [a, b]))) t := by
    intro t a b hm hg hb
    refine ⟨hm, hg, _, rfl, fun v0' v1' v2' v3' g' gl' he => ?_⟩
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at he
    obtain ⟨h1, -, -, -, rfl⟩ := he
    have e1 := wv_inj h1
    simp only [List.cons.injEq, and_true] at e1
    obtain ⟨rfl, rfl, rfl, rfl⟩ := e1
    exact ⟨a, b, rfl, hb rfl⟩
  -- `var vz = u256_is_zero(value)`
  refine Struct.hoareG_decCallP hZ (fun r t o h => Struct.pureP_locals r t _ h)
    fun u _ hu vs hvs callee v hR _ => ?_
  subst u
  rw [evs_cons (Struct.ev_lw' l_val) evs_nil] at hvs
  cases hvs
  have hvv := hR v0 v1 v2 v3 rfl
  subst hvv
  set Z := Struct.isZeroF v0 v1 v2 v3 with hZd
  -- `var stipend = 0`
  refine hoareG_dec fun s _ ⟨hm1, hg1, hl1⟩ v hv _ => ?_
  rw [ev_cw] at hv
  cases hv
  refine hoareG_conseq (Q := Struct.PureP s0 (McgR [wv [v0, v1, v2, v3], .val (.word g),
      .val (.word gl), .val (.word mc), .val (.word eg)] s0)) ?_ (fun _ _ h => h)
    (fun r t _ _ hq => Struct.pureP_locals r t _ hq)
  have hL1 : ∀ x, x ≠ nm "vz" → s.locals.lookup x = s0.locals.lookup x := fun x hx => by
    rw [hl1, Struct.lk_upd_ne' _ _ (Ne.symm hx)]
  -- the facts after the stipend `if`
  let P2 : State σ → Prop := fun t => t.memory = s0.memory ∧ t.globals = s0.globals ∧
    t.locals.lookup (nm "stipend") = some (.val (.word ST)) ∧
    t.locals.lookup (nm "gas") = some (.val (.word g)) ∧
    t.locals.lookup (nm "gas_left") = some (.val (.word gl)) ∧
    t.locals.lookup (nm "memory_cost") = some (.val (.word mc)) ∧
    t.locals.lookup (nm "extra_gas") = some (.val (.word eg))
  have hS : ∀ (u : State σ) (w : BitVec 64), u.memory = s0.memory → u.globals = s0.globals →
      w = ST → (∀ x, x ≠ nm "stipend" → x ≠ nm "vz" → u.locals.lookup x = s0.locals.lookup x) →
      u.locals.lookup (nm "stipend") = some (.val (.word w)) → P2 u := by
    intro u w hm hg hw hx hst
    subst hw
    exact ⟨hm, hg, hst, by rw [hx _ (by decide) (by decide)]; exact l_gas,
      by rw [hx _ (by decide) (by decide)]; exact l_gl,
      by rw [hx _ (by decide) (by decide)]; exact l_mc,
      by rw [hx _ (by decide) (by decide)]; exact l_eg⟩
  have hvz : (setVarHOLFinite (nm "stipend") (.val (.word (BitVec.ofNat 64 0))) s).locals.lookup
      (nm "vz") = some (.val (.word Z)) := by
    rw [lk_set_ne _ _ (by decide), hl1]; exact Struct.lk_upd_self _ _ _
  refine hoareG_seq (R := fun ro t => ro = none ∧ P2 t) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_assign fun u _ ⟨hu, w, hw, hw0⟩ v hv _ => ?_
      subst hu
      rw [ev_cw] at hv
      cases hv
      rw [Struct.cmp_eq_val (Struct.ev_lw' hvz) (ev_cw _ 0)] at hw
      have hZ0 : Z = 0 := by
        by_contra h
        simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
        split at hw
        · rename_i hz; exact h (of_decide_eq_true hz)
        · exact hw0 hw.symm
      refine ⟨rfl, hS _ _ hm1 hg1 ?_ (fun x hx1 hx2 => ?_) (lk_set_self _ _ _)⟩
      · rw [hST]; unfold mcgSt; rw [← hZd, if_pos hZ0]
      · rw [lk_set_ne _ _ (Ne.symm hx1), lk_set_ne _ _ (Ne.symm hx1)]; exact hL1 x hx2
    · refine hoareG_skip fun u _ ⟨hu, hc⟩ => ?_
      subst hu
      rw [Struct.cmp_eq_val (Struct.ev_lw' hvz) (ev_cw _ 0)] at hc
      have hZ0 : Z ≠ 0 := by
        intro h
        simp [h] at hc
      refine ⟨rfl, hS _ _ hm1 hg1 ?_ (fun x hx1 hx2 => ?_) (lk_set_self _ _ _)⟩
      · rw [hST]; unfold mcgSt; rw [← hZd, if_neg hZ0]; rfl
      · rw [lk_set_ne _ _ (Ne.symm hx1)]; exact hL1 x hx2
  refine hoareG_pre (P := P2) ?_ (fun t _ h => h.2)
  -- `var need = add_sat(extra_gas, memory_cost)`
  refine Struct.hoareG_decCallP hA (fun r t o h => Struct.pureP_locals r t _ h)
    fun u _ ⟨hm2, hg2, l2s, l2g, l2gl, l2mc, l2eg⟩ vs hvs callee v hR _ => ?_
  rw [evs_cons (Struct.ev_lw' l2eg) (evs_cons (Struct.ev_lw' l2mc) evs_nil)] at hvs
  cases hvs
  have hvv := hR _ _ rfl
  subst hvv
  refine hoareG_seq (R := fun ro t => (ro ≠ none → Struct.PureP s0 (McgR [wv [v0, v1, v2, v3],
      .val (.word g), .val (.word gl), .val (.word mc), .val (.word eg)] s0) ro t) ∧
      (ro = none → P2 t)) ?_ (fun r t _ hr _ h => h.1 hr) ?_
  · refine hoareG_ite ?_ (hoareG_skip fun t _ ⟨⟨hm3, hg3, hl3⟩, _⟩ => ⟨fun h => absurd rfl h,
      fun _ => ⟨hm3.trans hm2, hg3.trans hg2, ?_, ?_, ?_, ?_, ?_⟩⟩)
    · -- the low-gas branch
      refine hoareG_conseq (P := fun t => t.memory = s0.memory ∧ t.globals = s0.globals ∧
          t.locals.lookup (nm "stipend") = some (.val (.word ST)) ∧
          t.locals.lookup (nm "gas") = some (.val (.word g)) ∧
          t.locals.lookup (nm "extra_gas") = some (.val (.word eg)))
        (Q := Struct.PureP s0 (McgR [wv [v0, v1, v2, v3], .val (.word g),
          .val (.word gl), .val (.word mc), .val (.word eg)] s0)) ?_
        (fun t _ ⟨⟨hm3, hg3, hl3⟩, _⟩ => ?_)
        (fun r t _ _ hq => ⟨fun _ => hq, fun hr => by
          obtain ⟨_, _, v, hv, _⟩ := hq; rw [hr] at hv; cases hv⟩)
      rotate_left
      · exact ⟨hm3.trans hm2, hg3.trans hg2, by rw [hl3, Struct.lk_upd_ne' _ _ (by decide)]; exact l2s,
          by rw [hl3, Struct.lk_upd_ne' _ _ (by decide)]; exact l2g,
          by rw [hl3, Struct.lk_upd_ne' _ _ (by decide)]; exact l2eg⟩
      refine Struct.hoareG_decCallP (P := fun t => t.memory = s0.memory ∧ t.globals = s0.globals ∧
          t.locals.lookup (nm "stipend") = some (.val (.word ST)) ∧
          t.locals.lookup (nm "gas") = some (.val (.word g)) ∧
          t.locals.lookup (nm "extra_gas") = some (.val (.word eg))) hA
        (fun r t o h => Struct.pureP_locals r t _ h)
        fun u _ ⟨hm4, hg4, l4s, l4g, l4eg⟩ vs hvs callee v hR _ => ?_
      rw [evs_cons (Struct.ev_lw' l4g) (evs_cons (Struct.ev_lw' l4eg) evs_nil)] at hvs
      cases hvs
      have hvv := hR _ _ rfl
      subst hvv
      refine Struct.hoareG_decCallP hA (fun r t o h => Struct.pureP_locals r t _ h)
        fun u' _ ⟨hm5, hg5, hl5⟩ vs hvs callee v hR _ => ?_
      rw [evs_cons (Struct.ev_lw' (by rw [hl5, Struct.lk_upd_ne' _ _ (by decide)]; exact l4g))
        (evs_cons (Struct.ev_lw' (by rw [hl5, Struct.lk_upd_ne' _ _ (by decide)]; exact l4s))
          evs_nil)] at hvs
      cases hvs
      have hvv := hR _ _ rfl
      subst hvv
      refine hoareG_return fun t _ ⟨hm6, hg6, hl6⟩ v hv => ?_
      have hc : t.locals.lookup (nm "c") = some (.val (.word (Struct.addSatF g eg))) := by
        rw [hl6, Struct.lk_upd_ne' _ _ (by decide), hl5]; exact Struct.lk_upd_self _ _ _
      have hs : t.locals.lookup (nm "s") = some (.val (.word (Struct.addSatF g ST))) := by
        rw [hl6]; exact Struct.lk_upd_self _ _ _
      rw [Struct.ev_ret2 (Struct.ev_lw' hc) (Struct.ev_lw' hs)] at hv
      cases hv
      refine post _ _ _ (hm6.trans (hm5.trans hm4)) (hg6.trans (hg5.trans hg4)) fun heg => ?_
      subst heg
      rw [show (BitVec.ofNat 64 0 : BitVec 64) = 0 from rfl, addSatF_zero]
      exact addSatF_le g ST
    · rw [hl3, Struct.lk_upd_ne' _ _ (by decide)]; exact l2s
    · rw [hl3, Struct.lk_upd_ne' _ _ (by decide)]; exact l2g
    · rw [hl3, Struct.lk_upd_ne' _ _ (by decide)]; exact l2gl
    · rw [hl3, Struct.lk_upd_ne' _ _ (by decide)]; exact l2mc
    · rw [hl3, Struct.lk_upd_ne' _ _ (by decide)]; exact l2eg
  refine hoareG_pre (P := P2) ?_ (fun t _ h => h.2 rfl)
  -- the tail
  refine hoareG_dec fun s7 _ ⟨hm7, hg7, l7s, l7g, l7gl, l7mc, l7eg⟩ va hva _ => ?_
  rw [ev_sub2 (ev_sub2 (Struct.ev_lw' l7gl) (Struct.ev_lw' l7mc)) (Struct.ev_lw' l7eg)] at hva
  cases hva
  refine hoareG_conseq (Q := Struct.PureP s0 (McgR [wv [v0, v1, v2, v3], .val (.word g),
      .val (.word gl), .val (.word mc), .val (.word eg)] s0)) ?_ (fun _ _ h => h)
    (fun r t _ _ hq => Struct.pureP_locals r t _ hq)
  refine hoareG_dec fun s8 _ hs8 vm hvm _ => ?_
  subst hs8
  obtain ⟨wm, rfl⟩ := ev_op_word hvm
  refine hoareG_conseq (Q := Struct.PureP s0 (McgR [wv [v0, v1, v2, v3], .val (.word g),
      .val (.word gl), .val (.word mc), .val (.word eg)] s0)) ?_ (fun _ _ h => h)
    (fun r t _ _ hq => Struct.pureP_locals r t _ hq)
  refine hoareG_dec fun s9 _ hs9 vg hvg _ => ?_
  subst hs9
  refine hoareG_conseq (Q := Struct.PureP s0 (McgR [wv [v0, v1, v2, v3], .val (.word g),
      .val (.word gl), .val (.word mc), .val (.word eg)] s0)) ?_ (fun _ _ h => h)
    (fun r t _ _ hq => Struct.pureP_locals r t _ hq)
  have l9g : (setVarHOLFinite (nm "g") vg (setVarHOLFinite (nm "mx") (.val (.word wm))
      (setVarHOLFinite (nm "avail") (.val (.word (gl - mc - eg))) s7))).locals.lookup (nm "g") =
      some (.val (.word g)) := by
    rw [lk_set_self]
    rw [ev_lv, lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), l7g] at hvg
    exact hvg.symm
  -- `if mx < g { g = mx }`, then the return
  let P10 : State σ → Prop := fun t => t.memory = s0.memory ∧ t.globals = s0.globals ∧
    (∃ G, t.locals.lookup (nm "g") = some (.val (.word G))) ∧
    t.locals.lookup (nm "stipend") = some (.val (.word ST)) ∧
    t.locals.lookup (nm "extra_gas") = some (.val (.word eg))
  refine hoareG_seq (R := fun ro t => ro = none ∧ P10 t) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_assign fun u _ ⟨hu, _⟩ v hv _ => ?_
      subst hu
      rw [ev_lv, lk_set_ne _ _ (by decide), lk_set_self] at hv
      cases hv
      refine ⟨rfl, hm7, hg7, ⟨wm, lk_set_self _ _ _⟩, ?_, ?_⟩
      · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
          lk_set_ne _ _ (by decide)]; exact l7s
      · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
          lk_set_ne _ _ (by decide)]; exact l7eg
    · refine hoareG_skip fun u _ ⟨hu, _⟩ => ?_
      subst hu
      refine ⟨rfl, hm7, hg7, ⟨g, l9g⟩, ?_, ?_⟩
      · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
        exact l7s
      · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
        exact l7eg
  refine hoareG_return fun t _ ⟨_, hm10, hg10, ⟨G, l10g⟩, l10s, l10eg⟩ v hv => ?_
  rw [Struct.ev_ret2 (ev_add2 (Struct.ev_lw' l10g) (Struct.ev_lw' l10eg))
    (ev_add2 (Struct.ev_lw' l10g) (Struct.ev_lw' l10s))] at hv
  cases hv
  refine post _ _ _ hm10 hg10 fun heg => ?_
  subst heg
  have h := add_toNat_le G ST
  simpa using h

end InitECandidate.Solver.MemSafe.Calls

#print axioms InitECandidate.Solver.MemSafe.Calls.pure_mcg
