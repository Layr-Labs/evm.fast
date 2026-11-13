import InitECandidate.Solver.MemSafe.Puc.Final
import InitECandidate.Solver.MemSafe.PtC.K3

/-!
# Puc cost kit: copies of PtC's cost combinators (`PtC/K3.lean`, `T0.lean`, `W1.lean`) for the Puc bound
(`pmcB (30000002) bOp` for `process_message_call`, `Wg.bInc` for `incorporate_tx_into_block`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Puc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx
open InitECandidate.Solver.MemSafe.PtC (CW' cw_decCall_gen cw_dec_gen shEq_wv sz_comb sz_one hszW hszW' cw_pre_ex)

variable {σ : Type}

/-- The bound of `process_message_call` at `M = 30000002`. -/
def bPmcP : Nat := Entry2.pmcB (30000002) Entry2.bOp

/-- The bound of a callee: the table, else the two conditional callees of `process_unchecked_system_transaction`. -/
def tblP (f : MlS) : Nat :=
  match Shards.finalState.1.lookup f with
  | some B => B
  | none => if f = nm "process_message_call" then bPmcP else if f = nm "incorporate_tx_into_block" then Wg.bInc else 0

/-- The structural bound of a program of the spine. -/
def cbdP : ProgHOL 64 → Nat
  | .seq a b => cbdP a + cbdP b
  | .ite _ a b => max (cbdP a) (cbdP b)
  | .dec _ _ _ b => cbdP b
  | .decCall _ _ f _ k => 1 + tblP f + cbdP k
  | .call none f _ => 1 + tblP f + 0
  | .call (some (_, none)) f _ => 1 + tblP f + 0
  | p => (Wg.costFin p).getD 0

/-! ## Leaves -/

theorem cost_cbd {c : ProgHOL 64} (h : Wg.costFin c = some (cbdP c)) : Cost σ guestCtx c (cbdP c) :=
  Wg.cost_guest_costA h

theorem cw_hnN {P P1 : State σ → Prop} {c : ProgHOL 64} (hn : HN P c P1)
    (hc : Wg.costFin c = some (cbdP c) := by decide_cbv) : CW' P c (cbdP c) (fun r t => r = none ∧ P1 t) :=
  ⟨Inv.costP_of_cost (cost_cbd hc), hn⟩

theorem cw_leafN {P : State σ → Prop} {c : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hh : Hoare σ guestCtx P c Q) (hc : Wg.costFin c = some (cbdP c) := by decide_cbv) : CW' P c (cbdP c) Q :=
  ⟨Inv.costP_of_cost (cost_cbd hc), hh⟩

theorem cw_seqN {P P1 : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop} {a b : ProgHOL 64}
    (ha : HN P a P1) (hb : CW' P1 b (cbdP b) Q) (hc : Wg.costFin a = some (cbdP a) := by decide_cbv) :
    CW' P (.seq a b) (cbdP (.seq a b)) Q :=
  Eb.cw_seq (cw_hnN ha hc) hb

theorem cw_seqC {P P1 : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop} {a b : ProgHOL 64}
    (ha : CW' P a (cbdP a) (fun r t => r = none ∧ P1 t)) (hb : CW' P1 b (cbdP b) Q) :
    CW' P (.seq a b) (cbdP (.seq a b)) Q :=
  Eb.cw_seq ha hb

/-- A table callee. -/
theorem calleeCostP_tbl {f : MlS} {PreC : List (ValueHOL 64) → State σ → Prop}
    (hf : (Shards.finalState.1.lookup f).isSome = true := by decide_cbv) :
    Inv.CalleeCostP σ guestCtx f PreC (tblP f) := by
  obtain ⟨B, hB⟩ := Option.isSome_iff_exists.mp hf
  have : tblP f = B := by simp [tblP, hB]
  rw [this]
  exact Inv.calleeCostP_of_calleeCost (Wire.calleeCost_guest (Wire.tbLe_of_eq hB))


/-! ## Binders of the walk `PA` -/

section pa
variable {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem cw_decT {n : MlS} (hQT : ResIns n QT) {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64} {w : BitVec 64}
    (he : ∀ s : State σ, PA E En S s → ∀ v, ev s e = some v → v = .val (.word w))
    (hk : CW' (PA E (En.set n (.val (.word w))) S) body (cbdP body) QT) :
    CW' (PA E En S) (.dec n sh e body) (cbdP (.dec n sh e body)) QT :=
  ⟨Inv.costP_dec fun s hs hP v hv hsh => hk.1.pre fun t _ ht => by
      subst ht
      have := he s hP v hv
      subst this
      exact pa_set hP n _,
   hdecT hQT he hk.2⟩

theorem cw_decF {n : MlS} (hQT : ResIns n QT) {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64} (hn : En n = none)
    (hk : CW' (PA E En S) body (cbdP body) QT) :
    CW' (PA E En S) (.dec n sh e body) (cbdP (.dec n sh e body)) QT :=
  ⟨Inv.costP_dec fun s hs hP v hv hsh => hk.1.pre fun t _ ht => by
      subst ht
      exact pa_set_other hP hn v,
   hdecF hQT hn hk.2⟩

theorem cw_decW {n : MlS} (hQT : ResIns n QT) {e : ExpHOL 64} {body : ProgHOL 64}
    (hk : ∀ w : BitVec 64, CW' (PA E (En.set n (.val (.word w))) S) body (cbdP body) QT) :
    CW' (PA E En S) (.dec n .one e body) (cbdP (.dec n .one e body)) QT :=
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
    (hk : ∀ w : BitVec 64, CW' (PA E (En.set rn (.val (.word w))) (SW w)) k (cbdP k) QT) :
    CW' (PA E En S) (.decCall rn .one f args k) (cbdP (.decCall rn .one f args k)) QT := by
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
    (hk : ∀ v, shapeEqHOL (shapeOfHOLExact v) sh = true → CW' (PA E (En.set rn v) (SV v)) k (cbdP k) QT) :
    CW' (PA E En S) (.decCall rn sh f args k) (cbdP (.decCall rn sh f args k)) QT := by
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
    (hk : CW' (PA E En S') k (cbdP k) QT) :
    CW' (PA E En S) (.decCall rn sh f args k) (cbdP (.decCall rn sh f args k)) QT := by
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


section pag
variable {B : State σ → Prop} {En : Env} {QT : Option (PanSemResultExact 64) → State σ → Prop}

theorem cw_decT_g (hB : BLoc B) {n : MlS} (hQT : ResIns n QT) {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    {w : BitVec 64} (he : ∀ s : State σ, PAg B En s → ∀ v, ev s e = some v → v = .val (.word w))
    (hk : CW' (PAg B (En.set n (.val (.word w)))) body (cbdP body) QT) :
    CW' (PAg B En) (.dec n sh e body) (cbdP (.dec n sh e body)) QT :=
  ⟨Inv.costP_dec fun s hs hP v hv hsh => hk.1.pre fun t _ ht => by
      subst ht
      have := he s hP v hv
      subst this
      exact pag_set hB hP n _,
   hdecT_g hB hQT he hk.2⟩

theorem cw_decF_g (hB : BLoc B) {n : MlS} (hQT : ResIns n QT) {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    (hn : En n = none) (hk : CW' (PAg B En) body (cbdP body) QT) :
    CW' (PAg B En) (.dec n sh e body) (cbdP (.dec n sh e body)) QT :=
  ⟨Inv.costP_dec fun s hs hP v hv hsh => hk.1.pre fun t _ ht => by
      subst ht
      exact pag_set_other hB hP hn v,
   hdecF_g hB hQT hn hk.2⟩

end pag


theorem cw_decNewP {E : PtE σ}
    {En : Env}
    {S : FS}
    {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {f rn : MlS}
    {N : Nat}
    {k : ProgHOL 64}
    (hQT : ResIns rn QT)
    (hf : FunSpec σ guestCtx f (fun vs s r t => ∀ v, r = .returned v → NewR N s v t))
    (hfin : ptAllNames.contains f = true)
    (hN8 : N % 8 = 0)
    (hN0 : 0 < N)
    (hNb : N < 2 ^ 20)
    (ZC : List Nat)
    (hZ : ∀ o ∈ ZC, o % 8 = 0 ∧ o + 8 ≤ N)
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false)
    (PB : List (BitVec 64 × Nat))
    (hPB : ∀ b ∈ PB, S (Fct.fbuf b.1 b.2) ∧ S (Fct.prop (BlkP b.1 b.2)) ∧ b.2 % 8 = 0 ∧ 0 < b.2)
    (hk : ∀ w : BitVec 64, CW' (PA E (En.set rn (.val (.word w)))
      (addF S (Fct.fbuf w N :: Fct.prop (w.toNat % 8 = 0 ∧ heapBase ≤ w.toNat ∧ w.toNat + N ≤ heapEnd) ::
        (ZC.map (fun o => Fct.memw (w + BitVec.ofNat 64 o) 0) ++
          PB.map (fun b => Fct.prop (b.1.toNat + b.2 ≤ w.toNat)))))) k (cbdP k) QT)
    (hfc : (Shards.finalState.1.lookup f).isSome = true := by decide_cbv) :
    CW' (PA E En S) (.decCall rn .one f [] k) (cbdP (.decCall rn .one f [] k)) QT :=
  cw_decCallW (E := E) hQT (hrule := fun _ _ hq hk' => hdecNewP hq hf hfin hN8 hN0 hNb ZC hZ hGl PB hPB hk') (hf := hfc) (hk := hk)

theorem cw_decHtabNew {E : PtE σ}
    {En : Env}
    {S : FS}
    {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rn : MlS}
    {KL CP th : Nat}
    {k : ProgHOL 64}
    (hQT : ResIns rn QT)
    (hf : CSumm σ guestCtx guestC (HR σ) (nm "htab_new") ⟨[.eq KL, .eq CP], [.fits (.ptr th)], [], true⟩ [])
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false)
    (hk : ∀ w : BitVec 64, CW' (PA E (En.set rn (.val (.word w))) (addF S [Fct.obj w th 0])) k (cbdP k) QT) :
    CW' (PA E En S) (.decCall rn .one (nm "htab_new") [cw KL, cw CP] k) (cbdP (.decCall rn .one (nm "htab_new") [cw KL, cw CP] k)) QT :=
  cw_decCallW (E := E) hQT (hrule := fun _ _ hq hk' => hdecHtabNew hq hf hGl hk') (hk := hk)


end InitECandidate.Solver.MemSafe.Puc
