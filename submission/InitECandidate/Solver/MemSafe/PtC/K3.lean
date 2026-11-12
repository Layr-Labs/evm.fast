import InitECandidate.Solver.MemSafe.PtC.K2

/-!
# PtC: the cost kit, part 3 (rules of the walk `PA` with costs)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.PtC
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx

variable {σ : Type}

theorem shEq_wv (ws : List (BitVec 64)) (sh : ShapeHOL) (h : shK ws.length = sh) :
    shapeEqHOL (shapeOfHOLExact (wv ws)) sh = true :=
  (shapeEqHOL_eq_true _ _).mpr (by rw [shapeOf_wv, h])

theorem sz_comb (k : Nat) (hk : k ≤ 32) : ∀ c : Flapjack.Pancake.PanLang.StructContextExact,
    Flapjack.Pancake.PanLang.sizeOfShapeWithContextHOL c (shK k) ≤ 32 := by
  intro c
  have : ∀ j : Nat, Flapjack.Pancake.PanLang.sizeOfShapesWithContextHOL c (List.replicate j ShapeHOL.one) = j := by
    intro j
    induction j with
    | zero => rfl
    | succ j ih => simp [List.replicate_succ, Flapjack.Pancake.PanLang.sizeOfShapeWithContextHOL, ih]; omega
  simp only [shK, Flapjack.Pancake.PanLang.sizeOfShapeWithContextHOL, this]
  exact hk

/-! ## Leaves -/

theorem cost_cbd {c : ProgHOL 64} (h : Wg.costFin c = some (cbd c)) : Cost σ guestCtx c (cbd c) :=
  Wg.cost_guest_costA h

theorem cw_hnN {P P1 : State σ → Prop} {c : ProgHOL 64} (hn : HN P c P1)
    (hc : Wg.costFin c = some (cbd c) := by decide_cbv) : CW' P c (cbd c) (fun r t => r = none ∧ P1 t) :=
  ⟨Inv.costP_of_cost (cost_cbd hc), hn⟩

theorem cw_leafN {P : State σ → Prop} {c : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hh : Hoare σ guestCtx P c Q) (hc : Wg.costFin c = some (cbd c) := by decide_cbv) : CW' P c (cbd c) Q :=
  ⟨Inv.costP_of_cost (cost_cbd hc), hh⟩

theorem cw_seqN {P P1 : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop} {a b : ProgHOL 64}
    (ha : HN P a P1) (hb : CW' P1 b (cbd b) Q) (hc : Wg.costFin a = some (cbd a) := by decide_cbv) :
    CW' P (.seq a b) (cbd (.seq a b)) Q :=
  Eb.cw_seq (cw_hnN ha hc) hb

theorem cw_seqC {P P1 : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop} {a b : ProgHOL 64}
    (ha : CW' P a (cbd a) (fun r t => r = none ∧ P1 t)) (hb : CW' P1 b (cbd b) Q) :
    CW' P (.seq a b) (cbd (.seq a b)) Q :=
  Eb.cw_seq ha hb

/-- A table callee. -/
theorem calleeCostP_tbl {f : MlS} {PreC : List (ValueHOL 64) → State σ → Prop}
    (hf : (Shards.finalState.1.lookup f).isSome = true := by decide_cbv) :
    Inv.CalleeCostP σ guestCtx f PreC (tbl f) := by
  obtain ⟨B, hB⟩ := Option.isSome_iff_exists.mp hf
  have : tbl f = B := by simp [tbl, hB]
  rw [this]
  exact Inv.calleeCostP_of_calleeCost (Wire.calleeCost_guest (Wire.tbLe_of_eq hB))

theorem hszW (sh : ShapeHOL) (h : ∀ c : Flapjack.Pancake.PanLang.StructContextExact,
      Flapjack.Pancake.PanLang.sizeOfShapeWithContextHOL c sh ≤ 32) :
    ∀ (t : State σ) (v : ValueHOL 64), shapeEqHOL (shapeOfHOLExact v) sh = true →
      Flapjack.Pancake.PanLang.sizeOfShapeWithContextHOL t.structs (shapeOfHOLExact v) ≤ 32 := by
  intro t v hv
  rw [(shapeEqHOL_eq_true _ _).mp hv]
  exact h _

theorem hszW' (sh : ShapeHOL) (h : ∀ c : Flapjack.Pancake.PanLang.StructContextExact,
      Flapjack.Pancake.PanLang.sizeOfShapeWithContextHOL c sh ≤ 32) :
    ∀ (t : State σ) (v : ValueHOL 64), shapeEqHOL sh (shapeOfHOLExact v) = true →
      Flapjack.Pancake.PanLang.sizeOfShapeWithContextHOL t.structs (shapeOfHOLExact v) ≤ 32 := by
  intro t v hv
  rw [← (shapeEqHOL_eq_true _ _).mp hv]
  exact h _

theorem sz_one : ∀ c : Flapjack.Pancake.PanLang.StructContextExact,
    Flapjack.Pancake.PanLang.sizeOfShapeWithContextHOL c .one ≤ 32 := by
  intro c; simp [Flapjack.Pancake.PanLang.sizeOfShapeWithContextHOL]


/-- A precondition covered state by state. -/
theorem cw_pre_ex {P' : State σ → Prop} {c : ProgHOL 64} {B : Nat} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : ∀ s : State σ, InCtx s guestCtx → P' s → ∃ P : State σ → Prop, P s ∧ CW' P c B Q) : CW' P' c B Q :=
  ⟨fun s hs hp hg => by obtain ⟨P, hP, hc⟩ := h s hs hp; exact hc.1 s hs hP hg,
   fun s hs hp ht => by obtain ⟨P, hP, hc⟩ := h s hs hp; exact hc.2 s hs hP ht⟩

/-! ## Binders of the walk `PA` -/

section pa
variable {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem cw_decT {n : MlS} (hQT : ResIns n QT) {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64} {w : BitVec 64}
    (he : ∀ s : State σ, PA E En S s → ∀ v, ev s e = some v → v = .val (.word w))
    (hk : CW' (PA E (En.set n (.val (.word w))) S) body (cbd body) QT) :
    CW' (PA E En S) (.dec n sh e body) (cbd (.dec n sh e body)) QT :=
  ⟨Inv.costP_dec fun s hs hP v hv hsh => hk.1.pre fun t _ ht => by
      subst ht
      have := he s hP v hv
      subst this
      exact pa_set hP n _,
   hdecT hQT he hk.2⟩

theorem cw_decF {n : MlS} (hQT : ResIns n QT) {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64} (hn : En n = none)
    (hk : CW' (PA E En S) body (cbd body) QT) :
    CW' (PA E En S) (.dec n sh e body) (cbd (.dec n sh e body)) QT :=
  ⟨Inv.costP_dec fun s hs hP v hv hsh => hk.1.pre fun t _ ht => by
      subst ht
      exact pa_set_other hP hn v,
   hdecF hQT hn hk.2⟩

theorem cw_decW {n : MlS} (hQT : ResIns n QT) {e : ExpHOL 64} {body : ProgHOL 64}
    (hk : ∀ w : BitVec 64, CW' (PA E (En.set n (.val (.word w))) S) body (cbd body) QT) :
    CW' (PA E En S) (.dec n .one e body) (cbd (.dec n .one e body)) QT :=
  ⟨Inv.costP_dec fun s hs hP v hv hsh => by
      obtain ⟨w, rfl⟩ := val_of_shapeEq_one hsh
      exact (hk w).1.pre fun t _ ht => by subst ht; exact pa_set hP n _,
   hdecW hQT fun w => (hk w).2⟩

/-- A binder `var rn = f(args); k` of a table callee: the result is a word `w`, the continuation sees `SW w`. -/
theorem cw_decCallW {rn f : MlS} {args : List (ExpHOL 64)} {k : ProgHOL 64} {SW : BitVec 64 → FS}
    (hQ : ResIns rn QT)
    (hrule : ∀ (k' : ProgHOL 64) (Q' : Option (PanSemResultExact 64) → State σ → Prop), ResIns rn Q' →
      (∀ w : BitVec 64, Hoare σ guestCtx (PA E (En.set rn (.val (.word w))) (SW w)) k' Q') →
      Hoare σ guestCtx (PA E En S) (.decCall rn .one f args k') Q')
    (hf : (Shards.finalState.1.lookup f).isSome = true := by decide_cbv)
    (hk : ∀ w : BitVec 64, CW' (PA E (En.set rn (.val (.word w))) (SW w)) k (cbd k) QT) :
    CW' (PA E En S) (.decCall rn .one f args k) (cbd (.decCall rn .one f args k)) QT := by
  refine cw_decCall_gen (B := PB E S) (En := En)
    (Bk := fun v t => ∃ w, v = .val (.word w) ∧ PB E (SW w) t) (Ek := fun v => En.set rn v)
    (PreC := fun _ _ => True) hQ ?_ ?_ ?_ ?_ (hszW _ sz_one) (calleeCostP_tbl hf) (fun _ _ _ _ _ _ => trivial) ?_
  · intro k' Q' hQ' hk'
    exact hrule k' Q' hQ' fun w => hoare_pre (hk' (.val (.word w)) ((shapeEqHOL_eq_true _ _).mpr (shapeOf_val _))) fun t _ ht => ⟨⟨w, rfl, ht.1⟩, ht.2⟩
  · intro v t l c ⟨w, hv, hb⟩
    exact ⟨w, hv, pb_loc hb l c⟩
  · intro s st v hlk
    exact lke_set (lke_restore hlk) rn v
  · intro v t w hl hlw ⟨w', hv, hb⟩
    have h1 := hl rn v (env_set_self _ _ _)
    rw [h1] at hlw
    obtain rfl : v = w := Option.some.inj hlw
    exact ⟨w', hv, hb⟩
  · intro v hv
    obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hv
    refine Eb.cw_pre (hk w) fun t _ ht => ?_
    obtain ⟨⟨w', hw', hb⟩, hl⟩ := ht
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw'
    subst hw'
    exact ⟨hb, hl⟩

/-- The same for a result of any shape and a continuation indexed by the value. -/
theorem cw_decCallV {rn f : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64} {SV : ValueHOL 64 → FS}
    (hQ : ResIns rn QT)
    (hsz : ∀ c : Flapjack.Pancake.PanLang.StructContextExact, Flapjack.Pancake.PanLang.sizeOfShapeWithContextHOL c sh ≤ 32 := by first | exact sz_one | exact sz_comb 2 (by norm_num) | exact sz_comb 3 (by norm_num) | exact sz_comb 4 (by norm_num) | exact sz_comb 5 (by norm_num))
    (hrule : ∀ (k' : ProgHOL 64) (Q' : Option (PanSemResultExact 64) → State σ → Prop), ResIns rn Q' →
      (∀ v, shapeEqHOL (shapeOfHOLExact v) sh = true →
        Hoare σ guestCtx (PA E (En.set rn v) (SV v)) k' Q') →
      Hoare σ guestCtx (PA E En S) (.decCall rn sh f args k') Q')
    (hf : (Shards.finalState.1.lookup f).isSome = true := by decide_cbv)
    (hk : ∀ v, shapeEqHOL (shapeOfHOLExact v) sh = true → CW' (PA E (En.set rn v) (SV v)) k (cbd k) QT) :
    CW' (PA E En S) (.decCall rn sh f args k) (cbd (.decCall rn sh f args k)) QT := by
  refine cw_decCall_gen (B := PB E S) (En := En)
    (Bk := fun v t => PB E (SV v) t) (Ek := fun v => En.set rn v)
    (PreC := fun _ _ => True) hQ ?_ ?_ ?_ ?_ (hszW _ hsz) (calleeCostP_tbl hf) (fun _ _ _ _ _ _ => trivial) hk
  · intro k' Q' hQ' hk'
    exact hrule k' Q' hQ' fun v hv => hk' v hv
  · intro v t l c hb
    exact pb_loc hb l c
  · intro s st v hlk
    exact lke_set (lke_restore hlk) rn v
  · intro v t w hl hlw hb
    have h1 := hl rn v (env_set_self _ _ _)
    rw [h1] at hlw
    obtain rfl : v = w := Option.some.inj hlw
    exact hb

/-- An untracked result. -/
theorem cw_decCallU {rn f : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64} {S' : FS}
    (hQ : ResIns rn QT) (hrn : En rn = none)
    (hsz : ∀ c : Flapjack.Pancake.PanLang.StructContextExact, Flapjack.Pancake.PanLang.sizeOfShapeWithContextHOL c sh ≤ 32 := by first | exact sz_one | exact sz_comb 2 (by norm_num) | exact sz_comb 3 (by norm_num) | exact sz_comb 4 (by norm_num) | exact sz_comb 5 (by norm_num))
    (hrule : ∀ (k' : ProgHOL 64) (Q' : Option (PanSemResultExact 64) → State σ → Prop), ResIns rn Q' →
      Hoare σ guestCtx (PA E En S') k' Q' → Hoare σ guestCtx (PA E En S) (.decCall rn sh f args k') Q')
    (hex : ∃ v0 : ValueHOL 64, shapeEqHOL (shapeOfHOLExact v0) sh = true := by
      first
        | exact ⟨.val (.word 0), (shapeEqHOL_eq_true _ _).mpr (shapeOf_val _)⟩
        | exact ⟨wv [0, 0], shEq_wv _ _ rfl⟩ | exact ⟨wv [0, 0, 0], shEq_wv _ _ rfl⟩
        | exact ⟨wv [0, 0, 0, 0], shEq_wv _ _ rfl⟩ | exact ⟨wv [0, 0, 0, 0, 0], shEq_wv _ _ rfl⟩)
    (hf : (Shards.finalState.1.lookup f).isSome = true := by decide_cbv)
    (hk : CW' (PA E En S') k (cbd k) QT) :
    CW' (PA E En S) (.decCall rn sh f args k) (cbd (.decCall rn sh f args k)) QT := by
  refine cw_decCall_gen (B := PB E S) (En := En)
    (Bk := fun _ t => PB E S' t) (Ek := fun _ => En)
    (PreC := fun _ _ => True) hQ ?_ ?_ ?_ ?_ (hszW _ hsz) (calleeCostP_tbl hf) (fun _ _ _ _ _ _ => trivial) (fun _ _ => hk)
  · intro k' Q' hQ' hk'
    obtain ⟨v0, hv0⟩ := hex
    exact hrule k' Q' hQ' (fun t hs ht => hk' v0 hv0 t hs ⟨ht.1, ht.2⟩)
  · intro v t l c hb
    exact pb_loc hb l c
  · intro s st v hlk
    exact lke_set_other (lke_restore hlk) hrn v
  · intro v t w hl hlw hb
    exact hb

end pa

end InitECandidate.Solver.MemSafe.PtC
