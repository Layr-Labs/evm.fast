import InitECandidate.Solver.MemSafe.Helpers.DigitsDiv
import InitECandidate.Solver.MemSafe.Helpers.PureR

set_option autoImplicit false

/-!
# `u256_divmod`, `u256_div`, `u256_mod`, `u256_addmod`, `u256_mulmod`

Each of these writes only the workspace `u256_ws[0, 640)`: `footS_*` (a `FootSpecS` with Pre
`WsPre`, footprint `DDR`), and so has a plain `Summ` (`summ_*`, any parameters, `grows :=
false`) given `ScalarGlob C (nm "u256_ws") 640`. They discharge the preconditions of
`digits_divmod` (`m ≤ 16`, divisor `≠ 0`) themselves: the divisor is tested against zero first,
and `m ∈ {4, 8, 10, 16}`.

* `foot_u256_to_digits`: `u256_to_digits(p, a)` writes only `[p, p + 64)`.
* `hoareG_decCallFootS`, `hoareG_tailFootS`, `hoareG_decCallROL`: call rules.
* `limbs_ne_zero`: the guest's test `a.0 | a.1 | a.2 | a.3 == 0` failing gives a nonzero limb.
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

/-! ## Callee specs and call rules -/

/-- `u256_to_digits(p, _)` with `p + 64 ≤ 2^64`. -/
def U2DPre (vs : List (ValueHOL 64)) : Prop :=
  ∃ P : BitVec 64, argW vs 0 = some P ∧ P.toNat + 64 ≤ 2 ^ 64

def U2DR (vs : List (ValueHOL 64)) (a : BitVec 64) : Prop :=
  ∃ P : BitVec 64, argW vs 0 = some P ∧ Overlap P.toNat 64 a

theorem foot_u256_to_digits (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootSpec σ X (nm "u256_to_digits") U2DPre U2DR := by
  intro vs body callee rs hl s hs hloc r hr hg hP
  have hl' := hl
  rw [hC] at hl'
  obtain ⟨-, -, A, B, rfl, hA', hB', -, -⟩ := lookupCode_two code_u256_to_digits (by decide) hl'
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hA'
  obtain ⟨bs, hlen, rfl⟩ := eq_wv_of_shapeEq hB'
  obtain ⟨P', hP', hb⟩ := hP
  cases hP'
  obtain ⟨hgl, hmod, -⟩ :=
    funSpec_u256_to_digits hC hA _ body callee rs hl s hs hloc r hr hg _ _ rfl hlen hb
  exact ⟨hgl, hmod.mono fun a ha => ⟨P, rfl, ha⟩⟩

/-- `var rn = f(args); k` for a callee with a state-dependent footprint spec. -/
theorem hoareG_decCallFootS {f rn : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)}
    {k : ProgHOL 64} {Pre : List (ValueHOL 64) → State σ → Prop}
    {R : List (ValueHOL 64) → State σ → BitVec 64 → Prop} (hf : FootSpecS σ X f Pre R)
    {Rf : BitVec 64 → Prop} {s0 : State σ} {L Lout : Locals → Prop}
    {L' : Locals → Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → LPre Rf s0 L s → ∀ vs, evs s args = some vs →
      ∀ callee, Pre vs (callEntryStateHOLFinite s callee) ∧
        ∀ a, R vs (callEntryStateHOLFinite s callee) a → Rf a)
    (hk : ∀ (s : State σ) v, InCtx s X → L s.locals →
      HoareG σ X (LPre Rf s0 (fun m' => m' = s.locals.update (rn, v))) k
        (LQ Rf s0 (L' s.locals) Ret))
    (hout : ∀ m m', L m → L' m m' → Lout (m'.resVarEq (rn, m.lookup rn))) :
    HoareG σ X (LPre Rf s0 L) (.decCall rn sh f args k) (LQ Rf s0 Lout Ret) := by
  refine hoareG_decCall hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _ _
    obtain ⟨hP, hsub⟩ := h s hs hpre vs hvs callee
    obtain ⟨hgl, hmod⟩ := hR (by simp [Good]) hP
    refine hoareG_conseq (hk s v hs hpre.1) (fun t _ ht => ?_) ?_
    · subst ht
      exact ⟨rfl, hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩
    · intro r t _ _ hq
      exact ⟨hq.1, fun hr => hout _ _ hpre.1 (hq.2.1 hr), hq.2.2⟩
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hP, hsub⟩ := h s hs hpre vs hvs callee
    obtain ⟨hgl, hmod⟩ := hR (abn_good habn) hP
    exact ⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩, (fun h => nomatch h),
      fun v hv => absurd (Option.some.inj hv) (abn_ne_returned habn v)⟩

/-- `return f(args)` for a callee with a state-dependent footprint spec. -/
theorem hoareG_tailFootS {f : MlS} {args : List (ExpHOL 64)}
    {Pre : List (ValueHOL 64) → State σ → Prop}
    {R : List (ValueHOL 64) → State σ → BitVec 64 → Prop} (hf : FootSpecS σ X f Pre R)
    {Rf : BitVec 64 → Prop} {s0 : State σ} {L L' : Locals → Prop}
    (h : ∀ s : State σ, InCtx s X → LPre Rf s0 L s → ∀ vs, evs s args = some vs →
      ∀ callee, Pre vs (callEntryStateHOLFinite s callee) ∧
        ∀ a, R vs (callEntryStateHOLFinite s callee) a → Rf a) :
    HoareG σ X (LPre Rf s0 L) (.call none f args) (LP Rf s0 L') := by
  refine hoareG_tailCall hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _
    obtain ⟨hP, hsub⟩ := h s hs hpre vs hvs callee
    obtain ⟨hgl, hmod⟩ := hR (by simp [Good]) hP
    exact ⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩, (fun h => nomatch h),
      fun _ _ => trivial⟩
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hP, hsub⟩ := h s hs hpre vs hvs callee
    obtain ⟨hgl, hmod⟩ := hR (abn_good habn) hP
    exact ⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩, (fun h => nomatch h),
      fun _ _ => trivial⟩

/-- `var rn = f(args); k` for a read-only callee. -/
theorem hoareG_decCallROL {f rn : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)}
    {k : ProgHOL 64} (hf : ROSpec σ X f) {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L Lout : Locals → Prop} {L' : Locals → Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (hk : ∀ (s : State σ) v, InCtx s X → L s.locals →
      HoareG σ X (LPre Rf s0 (fun m' => m' = s.locals.update (rn, v))) k
        (LQ Rf s0 (L' s.locals) Ret))
    (hout : ∀ m m', L m → L' m m' → Lout (m'.resVarEq (rn, m.lookup rn))) :
    HoareG σ X (LPre Rf s0 L) (.decCall rn sh f args k) (LQ Rf s0 Lout Ret) :=
  hoareG_decCallRO (RetF := fun _ _ _ => True)
    (hf.mono fun _ _ _ _ h hg => ⟨(h hg).1, (h hg).2, fun _ _ => trivial⟩)
    (fun _ h => h.2) (fun s _ v hs hpre _ _ _ => hk s v hs hpre.1)
    (fun _ _ hpre h => hout _ _ hpre.1 h)

/-- `if c { a }` (no `else`). -/
theorem hoareG_iteSkip {c : ExpHOL 64} {a : ProgHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (ha : HoareG σ X (LPre Rf s0 L) a (LQ Rf s0 L Ret)) :
    HoareG σ X (LPre Rf s0 L) (.ite c a .skip) (LQ Rf s0 L Ret) :=
  hoareG_ite (hoareG_pre ha fun _ _ h => h.1) (hoareG_pre (hoareG_skipL fun _ h => h) fun _ _ h => h.1)

theorem ev_or4' {s : State σ} {a b c d : ExpHOL 64} {x y z w : BitVec 64}
    (ha : ev s a = some (.val (.word x))) (hb : ev s b = some (.val (.word y)))
    (hc : ev s c = some (.val (.word z))) (hd : ev s d = some (.val (.word w))) :
    ev s (.op .or [a, b, c, d]) = some (.val (.word (x ||| (y ||| (z ||| (w ||| 0)))))) :=
  ev_op (xs := [x, y, z, w]) (evs_cons ha (evs_cons hb (evs_cons hc (evs_cons hd evs_nil))))

/-- The guest's zero test of a `u256` failing gives a nonzero limb. -/
theorem limbs_ne_zero {t : State σ} {b : MlS} {bs : List (BitVec 64)} (hlen : bs.length = 4)
    (hb : t.locals.lookup b = some (wv bs))
    (h : ev t (.cmp .equal (.op .or [.rfield 0 (lv b), .rfield 1 (lv b), .rfield 2 (lv b),
      .rfield 3 (lv b)]) (cw 0)) = some (.val (.word 0))) :
    ∃ j, ∃ _ : j < bs.length, bs[j] ≠ 0 := by
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false h
  have hb' : ev t (lv b) = some (wv bs) := by rw [ev_lv]; exact hb
  rw [ev_or4' (ev_rfield_wv hb' (by omega)) (ev_rfield_wv hb' (by omega))
    (ev_rfield_wv hb' (by omega)) (ev_rfield_wv hb' (by omega))] at hx
  cases hx
  rw [ev_cw] at hy
  cases hy
  have hne := equal_false hxy
  by_contra hall
  simp only [not_exists, not_not] at hall
  apply hne
  rw [hall 0 (by omega), hall 1 (by omega), hall 2 (by omega), hall 3 (by omega)]
  rfl

/-! ## The workspace footprint -/

/-- The workspace is below `scratchEnd`. -/
def WsPre (_ : List (ValueHOL 64)) (s : State σ) : Prop :=
  ∃ W : BitVec 64, gword s wsN = some W ∧ W.toNat + 640 ≤ scratchEnd

abbrev WsR (W : BitVec 64) : BitVec 64 → Prop := fun a => Overlap W.toNat 640 a

theorem summ_of_ws {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hWS : ScalarGlob C wsN 640) {f : MlS} {sg : Sig} (hret : sg.ret = [])
    (hf : FootSpecS σ X f WsPre DDR) : Summ σ X C H f sg := by
  refine sumSpec_of_footS hH hT hret hf ?_ ?_
  · intro Γ p vs s hG _ _ _
    obtain ⟨W, hW, hWe, -⟩ := scell_of_glob hG hWS
    exact ⟨W, hW, hWe⟩
  · intro Γ p vs s a hG _ _ _ hR
    obtain ⟨W', hW', ha⟩ := hR
    obtain ⟨W, hW, -, hsc⟩ := scell_of_glob hG hWS
    rw [hW] at hW'
    cases hW'
    exact Or.inr (hsc a ha)

/-- From a body triple to the workspace footprint spec of a two-`u256` function. -/
theorem footS_ws2 {f pa pb : MlS} {bd : ProgHOL 64} {k : Nat}
    (hcode : guestCode f = some ([(pa, shK 4), (pb, shK 4)], bd, shK k)) (hne : pa ≠ pb)
    (hC : X.code.lookup = guestCode)
    (h : ∀ (s0 : State σ) (W : BitVec 64) (as bs : List (BitVec 64)), gword s0 wsN = some W →
      W.toNat + 640 ≤ scratchEnd → as.length = 4 → bs.length = 4 →
      HoareG σ X (LPre (WsR W) s0 (fun m => m.lookup pa = some (wv as) ∧
        m.lookup pb = some (wv bs))) bd (LP (WsR W) s0 (fun _ => False))) :
    FootSpecS σ X f WsPre DDR := by
  refine footSpecS_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hA', hB', hla, hlb⟩ := lookupCode_two hcode hne hl
  obtain ⟨as, hlena, rfl⟩ := eq_wv_of_shapeEq hA'
  obtain ⟨bs, hlenb, rfl⟩ := eq_wv_of_shapeEq hB'
  obtain ⟨W, hW, hWe⟩ := hP
  refine hoareG_conseq (h s0 W as bs hW hWe hlena hlenb) (fun t _ ht => ?_)
    (fun r t _ _ hq => ⟨hq.1.1, hq.1.2.mono fun a ha => ⟨W, hW, ha⟩⟩)
  subst ht
  exact ⟨⟨by rw [hloc]; exact hla, by rw [hloc]; exact hlb⟩, rfl, fun _ _ => rfl⟩

/-- The same for three `u256` parameters. -/
theorem footS_ws3 {f pa pb pc : MlS} {bd : ProgHOL 64} {k : Nat}
    (hcode : guestCode f = some ([(pa, shK 4), (pb, shK 4), (pc, shK 4)], bd, shK k))
    (hab : pa ≠ pb) (hac : pa ≠ pc) (hbc : pb ≠ pc) (hC : X.code.lookup = guestCode)
    (h : ∀ (s0 : State σ) (W : BitVec 64) (as bs ms : List (BitVec 64)),
      gword s0 wsN = some W → W.toNat + 640 ≤ scratchEnd → as.length = 4 → bs.length = 4 →
      ms.length = 4 →
      HoareG σ X (LPre (WsR W) s0 (fun m => m.lookup pa = some (wv as) ∧
        m.lookup pb = some (wv bs) ∧ m.lookup pc = some (wv ms))) bd
        (LP (WsR W) s0 (fun _ => False))) :
    FootSpecS σ X f WsPre DDR := by
  refine footSpecS_of_hoareG fun vs body callee rs hl s0 _ hloc hP => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, D, rfl, hA', hB', hD', hla, hlb, hld⟩ := lookupCode_three hcode hab hac hbc hl
  obtain ⟨as, hlena, rfl⟩ := eq_wv_of_shapeEq hA'
  obtain ⟨bs, hlenb, rfl⟩ := eq_wv_of_shapeEq hB'
  obtain ⟨ms, hlenm, rfl⟩ := eq_wv_of_shapeEq hD'
  obtain ⟨W, hW, hWe⟩ := hP
  refine hoareG_conseq (h s0 W as bs ms hW hWe hlena hlenb hlenm) (fun t _ ht => ?_)
    (fun r t _ _ hq => ⟨hq.1.1, hq.1.2.mono fun a ha => ⟨W, hW, ha⟩⟩)
  subst ht
  exact ⟨⟨by rw [hloc]; exact hla, by rw [hloc]; exact hlb, by rw [hloc]; exact hld⟩, rfl,
    fun _ _ => rfl⟩

/-- Calling a workspace function. -/
theorem wsCall {Rf : BitVec 64 → Prop} {s0 s : State σ} {W : BitVec 64}
    (hW : gword s0 wsN = some W) (hWe : W.toNat + 640 ≤ scratchEnd)
    (hR : ∀ a, WsR W a → Rf a) (hbw : BWPost Rf s0 s) (vs : List (ValueHOL 64))
    (callee : Locals) :
    WsPre vs (callEntryStateHOLFinite s callee) ∧
      ∀ a, DDR vs (callEntryStateHOLFinite s callee) a → Rf a := by
  have hgw : gword (callEntryStateHOLFinite s callee) wsN = some W := gword_of_globals hW hbw.1
  refine ⟨⟨W, hgw, hWe⟩, fun a ⟨W', hW', ha⟩ => ?_⟩
  rw [hgw] at hW'
  cases hW'
  exact hR a ha

/-! ## `u256_divmod` -/

def dmBody : ProgHOL 64 :=
  (.seq
          (.ite (.cmp .equal (.op .or [(.rfield 0 (lv (nm "b"))), (.rfield 1 (lv (nm "b"))), (.rfield 2 (lv (nm "b"))), (.rfield 3 (lv (nm "b")))]) (cw 0))
            (.return (.rstruct [(cw 0), (cw 0), (cw 0), (cw 0), (cw 0), (cw 0), (cw 0), (cw 0)]))
            .skip)
          (.decCall (nm "lt") .one (nm "u256_lt") [(lv (nm "a")), (lv (nm "b"))]
            (.seq
              (.ite (.cmp .equal (lv (nm "lt")) (cw 1))
                (.return (.rstruct [(cw 0), (cw 0), (cw 0), (cw 0), (.rfield 0 (lv (nm "a"))), (.rfield 1 (lv (nm "a"))), (.rfield 2 (lv (nm "a"))), (.rfield 3 (lv (nm "a")))]))
                .skip)
              (.seq
              (.ite (.cmp .equal (.op .or [(.rfield 1 (lv (nm "a"))), (.rfield 2 (lv (nm "a"))), (.rfield 3 (lv (nm "a"))), (.rfield 1 (lv (nm "b"))), (.rfield 2 (lv (nm "b"))), (.rfield 3 (lv (nm "b")))]) (cw 0))
                (.decCall (nm "qr") ((.comb [.one, .one])) (nm "udivmod") [(.rfield 0 (lv (nm "a"))), (.rfield 0 (lv (nm "b")))]
                  (.return (.rstruct [(.rfield 0 (lv (nm "qr"))), (cw 0), (cw 0), (cw 0), (.rfield 1 (lv (nm "qr"))), (cw 0), (cw 0), (cw 0)])))
                .skip)
              (.dec (nm "u") .one (.op .add [(.var .global (nm "u256_ws")), (cw 424)])
                (.seq
                  (.call (some (none, none)) (nm "u256_to_digits") [(lv (nm "u")), (lv (nm "a"))])
                  (.decCall (nm "r") (ShapeHOL.comb [.one, .one, .one, .one]) (nm "digits_divmod") [(lv (nm "u")), (cw 8), (lv (nm "b"))]
                    (.decCall (nm "q") (ShapeHOL.comb [.one, .one, .one, .one]) (nm "digits_to_u256") [(.op .add [(.var .global (nm "u256_ws")), (cw 216)])]
                      (.return (.rstruct [(.rfield 0 (lv (nm "q"))), (.rfield 1 (lv (nm "q"))), (.rfield 2 (lv (nm "q"))), (.rfield 3 (lv (nm "q"))), (.rfield 0 (lv (nm "r"))), (.rfield 1 (lv (nm "r"))), (.rfield 2 (lv (nm "r"))), (.rfield 3 (lv (nm "r")))]))))))))))

theorem entry_u256_divmod : fnEntry Guest.Software.guestFn_u256_divmod =
    (nm "u256_divmod", [(nm "a", shK 4), (nm "b", shK 4)], dmBody, shK 8) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_u256_divmod : guestCode (nm "u256_divmod") =
    some ([(nm "a", shK 4), (nm "b", shK 4)], dmBody, shK 8) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 69) (by decide)) ⟨_, rfl⟩
    entry_u256_divmod

theorem footS_u256_divmod (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootSpecS σ X (nm "u256_divmod") WsPre DDR := by
  refine footS_ws2 code_u256_divmod (by decide) hC fun s0 W as bs hW hWe hla hlb => ?_
  have hse := scratchEnd_lt
  have hU : (W + BitVec.ofNat 64 424).toNat = W.toNat + 424 := toNat_addc (by omega)
  have hgw : ∀ t : State σ, BWPost (WsR W) s0 t →
      ev t (.var .global (nm "u256_ws")) = some (.val (.word W)) :=
    fun t h => ev_gword (gword_of_globals hW h.1)
  unfold dmBody
  refine hoareG_seqL (L2 := fun m => (m.lookup (nm "a") = some (wv as) ∧
      m.lookup (nm "b") = some (wv bs)) ∧ ∃ j, ∃ _ : j < bs.length, bs[j] ≠ 0) ?_ ?_
  · refine hoareG_ite (hoareG_pre hoareG_returnL fun _ _ h => h.1) ?_
    refine hoareG_skip fun t _ h => ?_
    obtain ⟨hpre, hc⟩ := h
    exact ⟨hpre.2, fun _ => ⟨hpre.1, limbs_ne_zero hlb hpre.1.2 hc⟩, fun _ h => nomatch h⟩
  refine hoareG_decCallROL (roSpec_u256_lt hC) (L' := fun _ _ => False) (fun s v _ hL => ?_)
    (fun _ _ _ h => h.elim)
  refine hoareG_preL (L' := fun m => (m.lookup (nm "a") = some (wv as) ∧
      m.lookup (nm "b") = some (wv bs)) ∧ ∃ j, ∃ _ : j < bs.length, bs[j] ≠ 0) ?_
    (fun m hm => by
      rw [hm]
      exact ⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.1,
        by rw [lookup_update_ne _ _ (by decide)]; exact hL.1.2⟩, hL.2⟩)
  refine hoareG_seqL (hoareG_iteSkip (hoareG_pre hoareG_returnL fun _ _ h => h)) ?_
  refine hoareG_seqL (hoareG_iteSkip (hoareG_decCallROL (roSpec_udivmod hC)
    (L' := fun _ _ => False) (fun _ _ _ _ => hoareG_returnL) (fun _ _ _ h => h.elim))) ?_
  refine hoareG_decL' (L' := fun _ _ => False) (fun s _ hpre v hv _ => ?_) (fun _ _ _ h => h.elim)
  rw [ev_add2 (hgw s hpre.2) (ev_cw _ 424)] at hv
  cases hv
  obtain ⟨⟨ha, hb⟩, hnz⟩ := hpre.1
  refine hoareG_preL (L' := fun m => m = s.locals.update (nm "u",
    .val (.word (W + BitVec.ofNat 64 424)))) ?_ fun _ h => h
  refine hoareG_seqL (hoareG_callFoot (foot_u256_to_digits hC hA) ?_) ?_
  · intro t _ hpre' vs hvs
    obtain ⟨v1, vs', rfl, hv1, -⟩ := evs_cons_inv hvs
    rw [ev_lv, hpre'.1, lookup_update_self] at hv1
    cases hv1
    exact ⟨⟨_, rfl, by rw [hU]; omega⟩, fun a ⟨P, hP, ha⟩ => by
      cases hP
      exact overlap_mono ha (by rw [hU]; omega) (by rw [hU]; omega)⟩
  refine hoareG_decCallFootS (footS_digits_divmod hC hA) (L' := fun _ _ => False) ?_
    (fun s' v _ _ => ?_) (fun _ _ _ h => h.elim)
  · intro t _ hpre' vs hvs callee
    have hu : t.locals.lookup (nm "u") = some (.val (.word (W + BitVec.ofNat 64 424))) := by
      rw [hpre'.1, lookup_update_self]
    have hb' : t.locals.lookup (nm "b") = some (wv bs) := by
      rw [hpre'.1, lookup_update_ne _ _ (by decide)]; exact hb
    rw [evs_cons (ev_lw hu) (evs_cons (ev_cw _ 8) (evs_cons (by rw [ev_lv]; exact hb')
      evs_nil))] at hvs
    cases hvs
    have hgw' : gword (callEntryStateHOLFinite t callee) wsN = some W :=
      gword_of_globals hW hpre'.2.1
    refine ⟨⟨_, _, W, bs, rfl, hlb, hgw', hWe, by decide, hnz⟩, fun a ⟨W', hW', ha'⟩ => ?_⟩
    rw [hgw'] at hW'
    cases hW'
    exact ha'
  · exact hoareG_decCallROL (pureSpec_digits_to_u256 hC).ro (L' := fun _ _ => False)
      (fun _ _ _ _ => hoareG_returnL) (fun _ _ _ h => h.elim)

/-! ## `u256_div`, `u256_mod` -/

def udBody : ProgHOL 64 :=
  (.decCall (nm "qr") (ShapeHOL.comb [.one, .one, .one, .one, .one, .one, .one, .one]) (nm "u256_divmod") [(lv (nm "a")), (lv (nm "b"))]
          (.return (.rstruct [(.rfield 0 (lv (nm "qr"))), (.rfield 1 (lv (nm "qr"))), (.rfield 2 (lv (nm "qr"))), (.rfield 3 (lv (nm "qr")))])))

def umBody : ProgHOL 64 :=
  (.decCall (nm "qr") (ShapeHOL.comb [.one, .one, .one, .one, .one, .one, .one, .one]) (nm "u256_divmod") [(lv (nm "a")), (lv (nm "b"))]
          (.return (.rstruct [(.rfield 4 (lv (nm "qr"))), (.rfield 5 (lv (nm "qr"))), (.rfield 6 (lv (nm "qr"))), (.rfield 7 (lv (nm "qr")))])))

theorem entry_u256_div : fnEntry Guest.Software.guestFn_u256_div =
    (nm "u256_div", [(nm "a", shK 4), (nm "b", shK 4)], udBody, shK 4) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_u256_div : guestCode (nm "u256_div") =
    some ([(nm "a", shK 4), (nm "b", shK 4)], udBody, shK 4) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 70) (by decide)) ⟨_, rfl⟩
    entry_u256_div

theorem entry_u256_mod : fnEntry Guest.Software.guestFn_u256_mod =
    (nm "u256_mod", [(nm "a", shK 4), (nm "b", shK 4)], umBody, shK 4) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_u256_mod : guestCode (nm "u256_mod") =
    some ([(nm "a", shK 4), (nm "b", shK 4)], umBody, shK 4) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 71) (by decide)) ⟨_, rfl⟩
    entry_u256_mod

theorem footS_u256_div (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootSpecS σ X (nm "u256_div") WsPre DDR :=
  footS_ws2 code_u256_div (by decide) hC fun s0 W _ _ hW hWe _ _ =>
    hoareG_decCallFootS (footS_u256_divmod hC hA) (L' := fun _ _ => False)
      (fun t _ hpre vs _ callee => wsCall hW hWe (fun _ h => h) hpre.2 vs callee)
      (fun _ _ _ _ => hoareG_returnL) (fun _ _ _ h => h.elim)

theorem footS_u256_mod (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootSpecS σ X (nm "u256_mod") WsPre DDR :=
  footS_ws2 code_u256_mod (by decide) hC fun s0 W _ _ hW hWe _ _ =>
    hoareG_decCallFootS (footS_u256_divmod hC hA) (L' := fun _ _ => False)
      (fun t _ hpre vs _ callee => wsCall hW hWe (fun _ h => h) hpre.2 vs callee)
      (fun _ _ _ _ => hoareG_returnL) (fun _ _ _ h => h.elim)

/-! ## `u256_addmod` -/

def amBody : ProgHOL 64 :=
  (.seq
          (.ite (.cmp .equal (.op .or [(.rfield 0 (lv (nm "m"))), (.rfield 1 (lv (nm "m"))), (.rfield 2 (lv (nm "m"))), (.rfield 3 (lv (nm "m")))]) (cw 0))
            (.return (.rstruct [(cw 0), (cw 0), (cw 0), (cw 0)]))
            .skip)
          (.decCall (nm "s") (ShapeHOL.comb [.one, .one, .one, .one, .one]) (nm "u256_add_carry") [(lv (nm "a")), (lv (nm "b"))]
            (.dec (nm "sum") (ShapeHOL.comb [.one, .one, .one, .one]) (.rstruct [(.rfield 0 (lv (nm "s"))), (.rfield 1 (lv (nm "s"))), (.rfield 2 (lv (nm "s"))), (.rfield 3 (lv (nm "s")))])
              (.seq
                (.ite (.cmp .equal (.rfield 4 (lv (nm "s"))) (cw 0))
                  (.call none (nm "u256_mod") [(lv (nm "sum")), (lv (nm "m"))])
                  .skip)
                (.dec (nm "u") .one (.op .add [(.var .global (nm "u256_ws")), (cw 424)])
                  (.seq
                    (.call (some (none, none)) (nm "u256_to_digits") [(lv (nm "u")), (lv (nm "sum"))])
                    (.seq
                    (.store (.op .add [(lv (nm "u")), (cw 64)]) (cw 1))
                    (.seq
                    (.store (.op .add [(lv (nm "u")), (cw 72)]) (cw 0))
                    (.call none (nm "digits_divmod") [(lv (nm "u")), (cw 10), (lv (nm "m"))])))))))))

theorem entry_u256_addmod : fnEntry Guest.Software.guestFn_u256_addmod =
    (nm "u256_addmod", [(nm "a", shK 4), (nm "b", shK 4), (nm "m", shK 4)], amBody, shK 4) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_u256_addmod : guestCode (nm "u256_addmod") =
    some ([(nm "a", shK 4), (nm "b", shK 4), (nm "m", shK 4)], amBody, shK 4) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 75) (by decide)) ⟨_, rfl⟩
    entry_u256_addmod

/-! ## `u256_mulmod` -/

def mmBody : ProgHOL 64 :=
  (.seq
          (.ite (.cmp .equal (.op .or [(.rfield 0 (lv (nm "m"))), (.rfield 1 (lv (nm "m"))), (.rfield 2 (lv (nm "m"))), (.rfield 3 (lv (nm "m")))]) (cw 0))
            (.return (.rstruct [(cw 0), (cw 0), (cw 0), (cw 0)]))
            .skip)
          (.dec (nm "u") .one (.op .add [(.var .global (nm "u256_ws")), (cw 424)])
            (.seq
              (.ite (.cmp .equal (.op .or [(.rfield 1 (lv (nm "a"))), (.rfield 2 (lv (nm "a"))), (.rfield 3 (lv (nm "a"))), (.rfield 1 (lv (nm "b"))), (.rfield 2 (lv (nm "b"))), (.rfield 3 (lv (nm "b")))]) (cw 0))
                (.decCall (nm "p") ((.comb [.one, .one])) (nm "mul64x64") [(.rfield 0 (lv (nm "a"))), (.rfield 0 (lv (nm "b")))]
                  (.seq
                    (.ite (.cmp .equal (.rfield 1 (lv (nm "p"))) (cw 0))
                      (.call none (nm "u256_mod") [(.rstruct [(.rfield 0 (lv (nm "p"))), (cw 0), (cw 0), (cw 0)]), (lv (nm "m"))])
                      .skip)
                    (.seq
                    (.call (some (none, none)) (nm "u256_to_digits") [(lv (nm "u")), (.rstruct [(.rfield 0 (lv (nm "p"))), (.rfield 1 (lv (nm "p"))), (cw 0), (cw 0)])])
                    (.call none (nm "digits_divmod") [(lv (nm "u")), (cw 4), (lv (nm "m"))]))))
                .skip)
              (.decCall (nm "f") (ShapeHOL.comb [.one, .one, .one, .one, .one, .one, .one, .one]) (nm "u256_mul_full") [(lv (nm "a")), (lv (nm "b"))]
                (.seq
                  (.call (some (none, none)) (nm "u256_to_digits") [(lv (nm "u")), (.rstruct [(.rfield 0 (lv (nm "f"))), (.rfield 1 (lv (nm "f"))), (.rfield 2 (lv (nm "f"))), (.rfield 3 (lv (nm "f")))])])
                  (.seq
                  (.call (some (none, none)) (nm "u256_to_digits") [(.op .add [(lv (nm "u")), (cw 64)]), (.rstruct [(.rfield 4 (lv (nm "f"))), (.rfield 5 (lv (nm "f"))), (.rfield 6 (lv (nm "f"))), (.rfield 7 (lv (nm "f")))])])
                  (.call none (nm "digits_divmod") [(lv (nm "u")), (cw 16), (lv (nm "m"))])))))))

theorem entry_u256_mulmod : fnEntry Guest.Software.guestFn_u256_mulmod =
    (nm "u256_mulmod", [(nm "a", shK 4), (nm "b", shK 4), (nm "m", shK 4)], mmBody, shK 4) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_u256_mulmod : guestCode (nm "u256_mulmod") =
    some ([(nm "a", shK 4), (nm "b", shK 4), (nm "m", shK 4)], mmBody, shK 4) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 76) (by decide)) ⟨_, rfl⟩
    entry_u256_mulmod

/-! ## Summaries -/

def sigWs2 : Sig := { params := [.any, .any], grows := false }

theorem summ_u256_divmod {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hWS : ScalarGlob C wsN 640) (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    Summ σ X C H (nm "u256_divmod") sigWs2 :=
  summ_of_ws hH hT hWS rfl (footS_u256_divmod hC hA)

theorem summ_u256_div {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hWS : ScalarGlob C wsN 640) (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    Summ σ X C H (nm "u256_div") sigWs2 :=
  summ_of_ws hH hT hWS rfl (footS_u256_div hC hA)

theorem summ_u256_mod {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hWS : ScalarGlob C wsN 640) (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    Summ σ X C H (nm "u256_mod") sigWs2 :=
  summ_of_ws hH hT hWS rfl (footS_u256_mod hC hA)

/-- The `m ≠ 0` test of `u256_addmod` / `u256_mulmod`. -/
theorem hoareG_mTest {c : ExpHOL 64} {e : ExpHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L : Locals → Prop} {ms : List (BitVec 64)} (hlm : ms.length = 4)
    (hL : ∀ m, L m → m.lookup (nm "m") = some (wv ms))
    (hc : c = .cmp .equal (.op .or [.rfield 0 (lv (nm "m")), .rfield 1 (lv (nm "m")),
      .rfield 2 (lv (nm "m")), .rfield 3 (lv (nm "m"))]) (cw 0)) :
    HoareG σ X (LPre Rf s0 L) (.ite c (.return e) .skip)
      (LP Rf s0 (fun m => L m ∧ ∃ j, ∃ _ : j < ms.length, ms[j] ≠ 0)) := by
  subst hc
  refine hoareG_ite (hoareG_pre hoareG_returnL fun _ _ h => h.1) ?_
  refine hoareG_skip fun t _ h => ?_
  obtain ⟨hpre, hc⟩ := h
  exact ⟨hpre.2, fun _ => ⟨hpre.1, limbs_ne_zero hlm (hL _ hpre.1) hc⟩, fun _ h => nomatch h⟩

theorem footS_u256_addmod (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootSpecS σ X (nm "u256_addmod") WsPre DDR := by
  refine footS_ws3 code_u256_addmod (by decide) (by decide) (by decide) hC
    fun s0 W as bs ms hW hWe _ _ hlm => ?_
  have hse := scratchEnd_lt
  have hU : (W + BitVec.ofNat 64 424).toNat = W.toNat + 424 := toNat_addc (by omega)
  have hgw : ∀ t : State σ, BWPost (WsR W) s0 t →
      ev t (.var .global (nm "u256_ws")) = some (.val (.word W)) :=
    fun t h => ev_gword (gword_of_globals hW h.1)
  unfold amBody
  refine hoareG_seqL (hoareG_mTest hlm (fun m h => h.2.2) rfl) ?_
  refine hoareG_decCallROL (roSpec_u256_add_carry hC) (L' := fun _ _ => False)
    (fun s v _ hL => ?_) (fun _ _ _ h => h.elim)
  refine hoareG_decL' (L' := fun _ _ => False) (fun s1 _ hpre1 v1 _ hsh => ?_)
    (fun _ _ _ h => h.elim)
  obtain ⟨sums, hls, rfl⟩ := eq_wv_of_shapeEq (k := 4) hsh
  have hm1 : s1.locals.lookup (nm "m") = some (wv ms) := by
    rw [hpre1.1, lookup_update_ne _ _ (by decide)]; exact hL.1.2.2
  refine hoareG_preL (L' := fun m => (m.lookup (nm "m") = some (wv ms) ∧
      ∃ j, ∃ _ : j < ms.length, ms[j] ≠ 0) ∧ m.lookup (nm "sum") = some (wv sums)) ?_
    (fun m hm => by
      rw [hm]
      exact ⟨⟨by rw [lookup_update_ne _ _ (by decide)]; exact hm1, hL.2⟩, lookup_update_self _ _ _⟩)
  refine hoareG_seqL (hoareG_iteSkip (hoareG_tailFootS (footS_u256_mod hC hA)
    (fun t _ hpre vs _ callee => wsCall hW hWe (fun _ h => h) hpre.2 vs callee))) ?_
  refine hoareG_decL' (L' := fun _ _ => False) (fun s2 _ hpre2 v hv _ => ?_)
    (fun _ _ _ h => h.elim)
  rw [ev_add2 (hgw s2 hpre2.2) (ev_cw _ 424)] at hv
  cases hv
  obtain ⟨⟨hm2, hnz⟩, -⟩ := hpre2.1
  let L3 : Locals → Prop := fun m => m.lookup (nm "m") = some (wv ms) ∧
    m.lookup (nm "u") = some (.val (.word (W + BitVec.ofNat 64 424)))
  refine hoareG_preL (L' := L3) ?_ (fun m hm => by
    rw [hm]
    exact ⟨by rw [lookup_update_ne _ _ (by decide)]; exact hm2, lookup_update_self _ _ _⟩)
  refine hoareG_seqL (hoareG_callFoot (foot_u256_to_digits hC hA) ?_) ?_
  · intro t _ hpre' vs hvs
    obtain ⟨v1, vs', rfl, hv1, -⟩ := evs_cons_inv hvs
    rw [ev_lw hpre'.1.2] at hv1
    cases hv1
    exact ⟨⟨_, rfl, by rw [hU]; omega⟩, fun a ⟨P, hP, ha⟩ => by
      cases hP
      exact overlap_mono ha (by rw [hU]; omega) (by rw [hU]; omega)⟩
  refine hoareG_seqL (hoareG_stP hA (p := nm "u") (P := W + BitVec.ofNat 64 424) (n := 80)
    (c := 64) (k := .w) (fun m h => h.2) (by decide) (by rw [hU]; omega)
    (fun a h => overlap_mono h (by rw [hU]; omega) (by rw [hU]; omega))
    (fun _ => oneWordL_of (oneWord_cw 1))) ?_
  refine hoareG_seqL (hoareG_stP hA (p := nm "u") (P := W + BitVec.ofNat 64 424) (n := 80)
    (c := 72) (k := .w) (fun m h => h.2) (by decide) (by rw [hU]; omega)
    (fun a h => overlap_mono h (by rw [hU]; omega) (by rw [hU]; omega))
    (fun _ => oneWordL_of (oneWord_cw 0))) ?_
  refine hoareG_tailFootS (footS_digits_divmod hC hA) ?_
  intro t _ hpre' vs hvs callee
  rw [evs_cons (ev_lw hpre'.1.2) (evs_cons (ev_cw _ 10) (evs_cons (by rw [ev_lv]; exact hpre'.1.1)
    evs_nil))] at hvs
  cases hvs
  have hgw' : gword (callEntryStateHOLFinite t callee) wsN = some W :=
    gword_of_globals hW hpre'.2.1
  refine ⟨⟨_, _, W, ms, rfl, hlm, hgw', hWe, by decide, hnz⟩, fun a ⟨W', hW', ha'⟩ => ?_⟩
  rw [hgw'] at hW'
  cases hW'
  exact ha'

theorem footS_u256_mulmod (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    FootSpecS σ X (nm "u256_mulmod") WsPre DDR := by
  refine footS_ws3 code_u256_mulmod (by decide) (by decide) (by decide) hC
    fun s0 W as bs ms hW hWe _ _ hlm => ?_
  have hse := scratchEnd_lt
  have hU : (W + BitVec.ofNat 64 424).toNat = W.toNat + 424 := toNat_addc (by omega)
  have hU64 : (W + BitVec.ofNat 64 424 + BitVec.ofNat 64 64).toNat = W.toNat + 488 := by
    rw [toNat_addc (by rw [hU]; omega), hU]
  have hgw : ∀ t : State σ, BWPost (WsR W) s0 t →
      ev t (.var .global (nm "u256_ws")) = some (.val (.word W)) :=
    fun t h => ev_gword (gword_of_globals hW h.1)
  unfold mmBody
  refine hoareG_seqL (hoareG_mTest hlm (fun m h => h.2.2) rfl) ?_
  refine hoareG_decL' (L' := fun _ _ => False) (fun s2 _ hpre2 v hv _ => ?_)
    (fun _ _ _ h => h.elim)
  rw [ev_add2 (hgw s2 hpre2.2) (ev_cw _ 424)] at hv
  cases hv
  obtain ⟨⟨-, -, hm2⟩, hnz⟩ := hpre2.1
  let L3 : Locals → Prop := fun m => m.lookup (nm "m") = some (wv ms) ∧
    m.lookup (nm "u") = some (.val (.word (W + BitVec.ofNat 64 424)))
  refine hoareG_preL (L' := L3) ?_ (fun m hm => by
    rw [hm]
    exact ⟨by rw [lookup_update_ne _ _ (by decide)]; exact hm2, lookup_update_self _ _ _⟩)
  -- `u256_to_digits(u, _)`, `u256_to_digits(u + 64, _)`, `digits_divmod(u, k, m)` (`k ≤ 16`)
  have hcallU : ∀ e : ExpHOL 64, HoareG σ X (LPre (WsR W) s0 L3)
      (.call (some (none, none)) (nm "u256_to_digits") [lv (nm "u"), e]) (LP (WsR W) s0 L3) := by
    intro e
    refine hoareG_callFoot (foot_u256_to_digits hC hA) ?_
    intro t _ hpre' vs hvs
    obtain ⟨v1, vs', rfl, hv1, -⟩ := evs_cons_inv hvs
    rw [ev_lw hpre'.1.2] at hv1
    cases hv1
    exact ⟨⟨_, rfl, by rw [hU]; omega⟩, fun a ⟨P, hP, ha⟩ => by
      cases hP
      exact overlap_mono ha (by rw [hU]; omega) (by rw [hU]; omega)⟩
  have hcallU64 : ∀ e : ExpHOL 64, HoareG σ X (LPre (WsR W) s0 L3)
      (.call (some (none, none)) (nm "u256_to_digits") [.op .add [lv (nm "u"), cw 64], e])
      (LP (WsR W) s0 L3) := by
    intro e
    refine hoareG_callFoot (foot_u256_to_digits hC hA) ?_
    intro t _ hpre' vs hvs
    obtain ⟨v1, vs', rfl, hv1, -⟩ := evs_cons_inv hvs
    rw [ev_add2 (ev_lw hpre'.1.2) (ev_cw _ 64)] at hv1
    cases hv1
    exact ⟨⟨_, rfl, by rw [hU64]; omega⟩, fun a ⟨P, hP, ha⟩ => by
      cases hP
      exact overlap_mono ha (by rw [hU64]; omega) (by rw [hU64]; omega)⟩
  have htail : ∀ k : Nat, k ≤ 16 → HoareG σ X (LPre (WsR W) s0 L3)
      (.call none (nm "digits_divmod") [lv (nm "u"), cw k, lv (nm "m")])
      (LP (WsR W) s0 (fun _ => False)) := by
    intro k hk
    refine hoareG_tailFootS (footS_digits_divmod hC hA) ?_
    intro t _ hpre' vs hvs callee
    rw [evs_cons (ev_lw hpre'.1.2) (evs_cons (ev_cw _ k) (evs_cons
      (by rw [ev_lv]; exact hpre'.1.1) evs_nil))] at hvs
    cases hvs
    have hgw' : gword (callEntryStateHOLFinite t callee) wsN = some W :=
      gword_of_globals hW hpre'.2.1
    refine ⟨⟨_, _, W, ms, rfl, hlm, hgw', hWe, ?_, hnz⟩, fun a ⟨W', hW', ha'⟩ => ?_⟩
    · rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]; exact hk
    · rw [hgw'] at hW'
      cases hW'
      exact ha'
  have hL3 : ∀ (x : MlS) (v : ValueHOL 64), x ≠ nm "m" → x ≠ nm "u" → ∀ m0 m, L3 m0 →
      m = m0.update (x, v) → L3 m := fun x v h1 h2 m0 m h0 hm => by
    rw [hm]
    exact ⟨by rw [lookup_update_ne _ _ h1]; exact h0.1, by rw [lookup_update_ne _ _ h2]; exact h0.2⟩
  refine hoareG_seqL (hoareG_iteSkip (hoareG_decCallROL (roSpec_mul64x64 hC)
    (L' := fun _ _ => False) (fun s v _ hL => ?_) (fun _ _ _ h => h.elim))) ?_
  · refine hoareG_preL ?_ (hL3 (nm "p") v (by decide) (by decide) _ · hL)
    refine hoareG_seqL (hoareG_iteSkip (hoareG_tailFootS (footS_u256_mod hC hA)
      (fun t _ hpre vs _ callee => wsCall hW hWe (fun _ h => h) hpre.2 vs callee))) ?_
    exact hoareG_seqL (hcallU _) (htail 4 (by decide))
  · refine hoareG_decCallROL (roSpec_u256_mul_full hC) (L' := fun _ _ => False)
      (fun s v _ hL => ?_) (fun _ _ _ h => h.elim)
    refine hoareG_preL ?_ (hL3 (nm "f") v (by decide) (by decide) _ · hL)
    exact hoareG_seqL (hcallU _) (hoareG_seqL (hcallU64 _) (htail 16 (by decide)))

/-! ## Summaries of `u256_addmod`, `u256_mulmod` -/

def sigWs3 : Sig := { params := [.any, .any, .any], grows := false }

theorem summ_u256_addmod {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hWS : ScalarGlob C wsN 640) (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    Summ σ X C H (nm "u256_addmod") sigWs3 :=
  summ_of_ws hH hT hWS rfl (footS_u256_addmod hC hA)

theorem summ_u256_mulmod {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hWS : ScalarGlob C wsN 640) (hC : X.code.lookup = guestCode) (hA : AlignedDom X) :
    Summ σ X C H (nm "u256_mulmod") sigWs3 :=
  summ_of_ws hH hT hWS rfl (footS_u256_mulmod hC hA)

end InitECandidate.Solver.MemSafe.Helpers
