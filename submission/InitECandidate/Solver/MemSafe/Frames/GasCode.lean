import InitECandidate.Solver.MemSafe.Frames.Lib0

/-!
# Gas and halt functions: certified code and exact specifications

Bodies certified by `cbv` on the single declarations (`Guest/src/evm.pnk`, `evm_calls.pnk`):

```
fun 1 refill_frame_state_gas() {
  var msg = lds 1 (ev + EV_MSG);
  st ev + EV_GAS_LEFT, (lds 1 (ev + EV_GAS_LEFT)) + (lds 1 (ev + EV_STATE_GAS_SPILLED));
  st ev + EV_STATE_GAS_LEFT, lds 1 (msg + MSG_RESERVOIR);
  st ev + EV_STATE_GAS_SPILLED, 0;
  return 0; }
fun 1 frame_halt(1 err) {
  st ev + EV_REGULAR_GAS_USED, (lds 1 (ev + EV_REGULAR_GAS_USED)) + (lds 1 (ev + EV_GAS_LEFT));
  st ev + EV_GAS_LEFT, 0;
  st ev + EV_ERROR, err;
  return 0; }
fun 1 charge_gas(1 amount) {
  var gl = lds 1 (ev + EV_GAS_LEFT);
  if gl <+ amount { throw EvmErr E_OUT_OF_GAS; }
  st ev + EV_GAS_LEFT, gl - amount;
  st ev + EV_REGULAR_GAS_USED, (lds 1 (ev + EV_REGULAR_GAS_USED)) + amount;
  return 0; }
```

Exact specifications (`refill_spec`, `halt_spec`, `charge_spec`): the final memory as word
updates of the entry memory at the current frame `ev`, the globals unchanged.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## Code -/

/-- `st g + k, e`. -/
def stG (g : String) (k : Nat) (e : ExpHOL 64) : ProgHOL 64 := .store (.op .add [gv (nm g), cw k]) e

def refillBody : ProgHOL 64 :=
  .dec (nm "msg") .one (gLoad "ev" 112)
    (.seq (stG "ev" 64 (.op .add [gLoad "ev" 64, gLoad "ev" 192]))
    (.seq (stG "ev" 72 (.load .one (.op .add [lv (nm "msg"), cw 48])))
    (.seq (stG "ev" 192 (cw 0))
      (.return (cw 0)))))

def haltBody : ProgHOL 64 :=
  .seq (stG "ev" 184 (.op .add [gLoad "ev" 184, gLoad "ev" 64]))
  (.seq (stG "ev" 64 (cw 0))
  (.seq (stG "ev" 160 (lv (nm "err")))
    (.return (cw 0))))

def chargeBody : ProgHOL 64 :=
  .dec (nm "gl") .one (gLoad "ev" 64)
    (.seq (.ite (.cmp .lower (lv (nm "gl")) (lv (nm "amount"))) (.raise (nm "EvmErr") (cw 4)) .skip)
    (.seq (stG "ev" 64 (.op .sub [lv (nm "gl"), lv (nm "amount")]))
    (.seq (stG "ev" 184 (.op .add [gLoad "ev" 184, lv (nm "amount")]))
      (.return (cw 0)))))

theorem entry_refill : fnEntry Guest.Software.guestFn_refill_frame_state_gas =
    (nm "refill_frame_state_gas", [], refillBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_refill : guestCode (nm "refill_frame_state_gas") = some ([], refillBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 452) (by decide)) ⟨_, rfl⟩
    entry_refill

theorem entry_halt : fnEntry Guest.Software.guestFn_frame_halt =
    (nm "frame_halt", [(nm "err", .one)], haltBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_halt : guestCode (nm "frame_halt") = some ([(nm "err", .one)], haltBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 586) (by decide)) ⟨_, rfl⟩
    entry_halt

theorem entry_charge : fnEntry Guest.Software.guestFn_charge_gas =
    (nm "charge_gas", [(nm "amount", .one)], chargeBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_charge : guestCode (nm "charge_gas") = some ([(nm "amount", .one)], chargeBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 448) (by decide)) ⟨_, rfl⟩
    entry_charge

/-! ## From pinned `HoareG` triples to `FunSpec`s -/

theorem hoareG_pure {P0 : Prop} {P : State σ → Prop} {c : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} (h : P0 → HoareG σ X P c Q) :
    HoareG σ X (fun u => P0 ∧ P u) c Q := fun u hu ⟨h0, hp⟩ => h h0 u hu hp

theorem funSpec_of_hoareG {f : MlS}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ s0 : State σ, InCtx s0 X → s0.locals = callee →
        HoareG σ X (fun u => u = s0) body (fun r t => ∀ rr, r = some rr → R vs s0 rr t)) :
    FunSpec σ X f (fun vs s r t => Good (some r) → R vs s r t) := by
  intro vs body callee rs hl s hs hloc r hr hg
  have := h vs body callee rs hl s hs hloc s hs rfl (by rw [hr]; exact hg)
  rw [hr] at this
  exact this r rfl

/-- Every evaluation keeps the domain and the byte order. -/
theorem funSpec_dom (f : MlS) :
    FunSpec σ X f (fun _ s _ t => t.memaddrs = s.memaddrs ∧ t.be = s.be) := by
  intro vs body callee rs hl s hs hloc r hr
  exact ⟨memaddrs_preserved s body, Spec.Inv.be_preserved s body⟩

theorem ev_op_add_inv {s : State σ} {a b : ExpHOL 64} {v : ValueHOL 64}
    (h : ev s (.op .add [a, b]) = some v) :
    ∃ y z, ev s a = some (.val (.word y)) ∧ ev s b = some (.val (.word z)) ∧
      v = .val (.word (y + z)) := by
  obtain ⟨w, rfl⟩ := ev_op_word h
  obtain ⟨y, z, hy, hz, rfl⟩ := ev_add2_inv h
  exact ⟨y, z, hy, hz, rfl⟩

theorem ev_op_sub_inv {s : State σ} {a b : ExpHOL 64} {v : ValueHOL 64}
    (h : ev s (.op .sub [a, b]) = some v) :
    ∃ y z, ev s a = some (.val (.word y)) ∧ ev s b = some (.val (.word z)) ∧
      v = .val (.word (y - z)) := by
  obtain ⟨w, rfl⟩ := ev_op_word h
  obtain ⟨y, z, hy, hz, rfl⟩ := ev_sub2_inv h
  exact ⟨y, z, hy, hz, rfl⟩

theorem ev_load_word {s : State σ} {a : ExpHOL 64} {v : ValueHOL 64}
    (h : ev s (.load .one a) = some v) : ∃ x, v = .val (.word x) := by
  obtain ⟨w, -, -, rfl⟩ := ev_load_one h
  exact ⟨rd s.memory w, by rw [mem_rd s.memory w]⟩

theorem gword_setVar {s : State σ} (n : MlS) (v : ValueHOL 64) (g : MlS) :
    gword (setVarHOLFinite n v s) g = gword s g := rfl

theorem gword_mem {s : State σ} (m : Mem) (g : MlS) :
    gword { s with memory := m } g = gword s g := rfl

/-! ## `refill_frame_state_gas` -/

/-- The memory after `refill_frame_state_gas` on the frame `e` (the reservoir word `S` is not
pinned down). -/
def refillMem (m : Mem) (e S : BitVec 64) : Mem :=
  upd (upd (upd m (e + BitVec.ofNat 64 64) (fld m e 64 + fld m e 192)) (e + BitVec.ofNat 64 72) S)
    (e + BitVec.ofNat 64 192) 0

theorem refill_spec (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "refill_frame_state_gas") (fun _ s r t => Good (some r) →
      ∃ e S, gword s nmEv = some e ∧ r = .returned (.val (.word 0)) ∧ t.globals = s.globals ∧
        t.memory = refillMem s.memory e S) := by
  refine funSpec_of_hoareG fun vs body callee rs hl s0 _ _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_zero code_refill hl
  refine hoareG_dec fun s1 _ hs1 v1 hv1 _ => ?_
  subst hs1
  -- `msg`
  obtain ⟨e, he⟩ : ∃ e, gword s1 nmEv = some e := by
    obtain ⟨w, hw, -, -⟩ := ev_load_one hv1
    obtain ⟨y, z, hy, -, -⟩ := ev_add2_inv hw
    exact ⟨y, gword_of hy⟩
  refine hoareG_seq (R := fun r t => r = none ∧
      t = { setVarHOLFinite (nm "msg") v1 s1 with memory := (upd s1.memory (e + BitVec.ofNat 64 64) (fld s1.memory e 64 + fld s1.memory e 192)) })
    ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_stG fun u _ hu G v hG hv => ?_
    subst hu
    rw [gword_setVar, he] at hG
    rw [Option.some.injEq] at hG
    subst hG
    obtain ⟨y, z, hy, hz, rfl⟩ := ev_op_add_inv hv
    obtain ⟨hy', -⟩ := (ev_gLoad_eq (by rw [gword_setVar]; exact he) hy)
    obtain ⟨hz', -⟩ := (ev_gLoad_eq (by rw [gword_setVar]; exact he) hz)
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hy' hz'
    subst hy' hz'
    exact ⟨_, rfl, fun _ => ⟨rfl, rfl⟩⟩
  refine hoareG_seq (R := fun r t => r = none ∧ ∃ S,
      t = { setVarHOLFinite (nm "msg") v1 s1 with memory := (upd (upd s1.memory (e + BitVec.ofNat 64 64) (fld s1.memory e 64 + fld s1.memory e 192))
          (e + BitVec.ofNat 64 72) S) })
    ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_stG fun u _ ⟨_, hu⟩ G v hG hv => ?_
    subst hu
    rw [gword_mem, gword_setVar, he] at hG
    rw [Option.some.injEq] at hG
    subst hG
    obtain ⟨x, rfl⟩ := ev_load_word hv
    exact ⟨x, rfl, fun _ => ⟨rfl, x, rfl⟩⟩
  refine hoareG_seq (R := fun r t => r = none ∧ ∃ S,
      t = { setVarHOLFinite (nm "msg") v1 s1 with memory := refillMem s1.memory e S })
    ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_stG fun u _ ⟨_, S, hu⟩ G v hG hv => ?_
    subst hu
    rw [gword_mem, gword_setVar, he] at hG
    rw [Option.some.injEq] at hG
    subst hG
    rw [ev_cw] at hv
    cases hv
    exact ⟨_, rfl, fun _ => ⟨rfl, S, rfl⟩⟩
  refine hoareG_return fun u _ ⟨_, S, hu⟩ v hv => ?_
  subst hu
  rw [ev_cw] at hv
  cases hv
  intro rr hrr
  cases hrr
  exact ⟨e, S, he, rfl, rfl, rfl⟩

/-! ## `frame_halt` -/

def haltMem (m : Mem) (e err : BitVec 64) : Mem :=
  upd (upd (upd m (e + BitVec.ofNat 64 184) (fld m e 184 + fld m e 64)) (e + BitVec.ofNat 64 64) 0)
    (e + BitVec.ofNat 64 160) err

theorem halt_spec (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "frame_halt") (fun vs s r t => Good (some r) →
      ∃ e err, vs = [.val (.word err)] ∧ gword s nmEv = some e ∧
        r = .returned (.val (.word 0)) ∧ t.globals = s.globals ∧ t.memory = haltMem s.memory e err) := by
  refine funSpec_of_hoareG fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hsh, hA⟩ := lookupCode_one code_halt hl
  obtain ⟨err, rfl⟩ := val_of_shapeEq_one hsh
  have herr : s0.locals.lookup (nm "err") = some (.val (.word err)) := by rw [hloc]; exact hA
  refine hoareG_seq (R := fun r t => r = none ∧ ∃ e, gword s0 nmEv = some e ∧
      t = { s0 with memory := (upd s0.memory (e + BitVec.ofNat 64 184)
        (fld s0.memory e 184 + fld s0.memory e 64)) })
    ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_stG fun u _ hu G v hG hv => ?_
    subst hu
    obtain ⟨y, z, hy, hz, rfl⟩ := ev_op_add_inv hv
    obtain ⟨hy', -⟩ := ev_gLoad_eq hG hy
    obtain ⟨hz', -⟩ := ev_gLoad_eq hG hz
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hy' hz'
    subst hy' hz'
    exact ⟨_, rfl, fun _ => ⟨rfl, G, hG, rfl⟩⟩
  refine hoareG_seq (R := fun r t => r = none ∧ ∃ e, gword s0 nmEv = some e ∧
      t = { s0 with memory := (upd (upd s0.memory (e + BitVec.ofNat 64 184)
        (fld s0.memory e 184 + fld s0.memory e 64)) (e + BitVec.ofNat 64 64) 0) })
    ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_stG fun u _ ⟨_, e, he, hu⟩ G v hG hv => ?_
    subst hu
    rw [gword_mem, he] at hG
    rw [Option.some.injEq] at hG
    subst hG
    rw [ev_cw] at hv
    cases hv
    exact ⟨_, rfl, fun _ => ⟨rfl, e, he, rfl⟩⟩
  refine hoareG_seq (R := fun r t => r = none ∧ ∃ e, gword s0 nmEv = some e ∧
      t = { s0 with memory := haltMem s0.memory e err })
    ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_stG fun u _ ⟨_, e, he, hu⟩ G v hG hv => ?_
    subst hu
    rw [gword_mem, he] at hG
    rw [Option.some.injEq] at hG
    subst hG
    have : ev { s0 with memory := (upd (upd s0.memory (e + BitVec.ofNat 64 184)
        (fld s0.memory e 184 + fld s0.memory e 64)) (e + BitVec.ofNat 64 64) 0) } (lv (nm "err")) =
        some (.val (.word err)) := herr
    rw [this] at hv
    cases hv
    exact ⟨_, rfl, fun _ => ⟨rfl, e, he, rfl⟩⟩
  refine hoareG_return fun u _ ⟨_, e, he, hu⟩ v hv => ?_
  subst hu
  rw [ev_cw] at hv
  cases hv
  intro rr hrr
  cases hrr
  exact ⟨e, err, rfl, he, rfl, rfl, rfl⟩

/-! ## `charge_gas` -/

def chargeMem (m : Mem) (e a : BitVec 64) : Mem :=
  upd (upd m (e + BitVec.ofNat 64 64) (fld m e 64 - a)) (e + BitVec.ofNat 64 184)
    (fld (upd m (e + BitVec.ofNat 64 64) (fld m e 64 - a)) e 184 + a)

/-- `charge_gas(a)`: either out of gas (`EvmErr`, state unchanged), or `GAS_LEFT -= a`
(with `a ≤ GAS_LEFT`) and `REGULAR_GAS_USED += a`. -/
theorem charge_spec (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "charge_gas") (fun vs s r t => Good (some r) →
      ∃ e a, vs = [.val (.word a)] ∧ gword s nmEv = some e ∧ t.globals = s.globals ∧
        ((r = .exception nmEvmErr (.val (.word 4)) ∧ fld s.memory e 64 < a ∧
            t.memory = s.memory) ∨
          (r = .returned (.val (.word 0)) ∧ a ≤ fld s.memory e 64 ∧
            t.memory = chargeMem s.memory e a))) := by
  refine funSpec_of_hoareG fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hsh, hA⟩ := lookupCode_one code_charge hl
  obtain ⟨a, rfl⟩ := val_of_shapeEq_one hsh
  have ha : s0.locals.lookup (nm "amount") = some (.val (.word a)) := by rw [hloc]; exact hA
  refine hoareG_dec fun s1 _ hs1 v1 hv1 _ => ?_
  subst hs1
  obtain ⟨e, he⟩ : ∃ e, gword s1 nmEv = some e := by
    obtain ⟨w, hw, -, -⟩ := ev_load_one hv1
    obtain ⟨y, z, hy, -, -⟩ := ev_add2_inv hw
    exact ⟨y, gword_of hy⟩
  obtain ⟨rfl, -⟩ := ev_gLoad_eq he hv1
  have hgl : (setVarHOLFinite (nm "gl") (.val (.word (fld s1.memory e 64))) s1).locals.lookup
      (nm "gl") = some (.val (.word (fld s1.memory e 64))) := lk_set_self _ _ _
  have ha1 : (setVarHOLFinite (nm "gl") (.val (.word (fld s1.memory e 64))) s1).locals.lookup
      (nm "amount") = some (.val (.word a)) := by rw [lk_set_ne _ _ (by decide)]; exact ha
  refine hoareG_seq (R := fun r t => (r = some (.exception nmEvmErr (.val (.word 4))) ∧
        fld s1.memory e 64 < a ∧ t.memory = s1.memory ∧ t.globals = s1.globals) ∨
      (r = none ∧ a ≤ fld s1.memory e 64 ∧
        t = setVarHOLFinite (nm "gl") (.val (.word (fld s1.memory e 64))) s1)) ?_ ?_ ?_
  · refine hoareG_ite ?_ ?_
    · refine hoareG_raise fun u _ ⟨hu, w, hw, hw0⟩ v hv => ?_
      subst hu
      rw [ev_cw] at hv
      cases hv
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      rw [ev_lv_eq hgl] at hx
      rw [ev_lv_eq ha1] at hy
      cases hx; cases hy
      refine Or.inl ⟨rfl, ?_, rfl, rfl⟩
      simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hxy
    · refine hoareG_skip fun u _ ⟨hu, hw⟩ => ?_
      subst hu
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hw
      rw [ev_lv_eq hgl] at hx
      rw [ev_lv_eq ha1] at hy
      cases hx; cases hy
      refine Or.inr ⟨rfl, ?_, rfl⟩
      simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hxy
  · intro r t _ hr _ h
    rcases h with ⟨rfl, hlt, hm, hg⟩ | ⟨h0, -⟩
    · intro rr hrr
      cases hrr
      exact ⟨e, a, rfl, he, hg, Or.inl ⟨rfl, hlt, hm⟩⟩
    · exact absurd h0 hr
  refine hoareG_pre (hoareG_pure (P0 := a ≤ fld s1.memory e 64)
    (P := fun u => u = setVarHOLFinite (nm "gl") (.val (.word (fld s1.memory e 64))) s1)
    fun hle => ?_) ?_
  rotate_left
  · rintro u - (⟨h0, -⟩ | ⟨-, hle, hu⟩)
    · cases h0
    · exact ⟨hle, hu⟩
  refine hoareG_seq (R := fun r t => r = none ∧
      t = { setVarHOLFinite (nm "gl") (.val (.word (fld s1.memory e 64))) s1 with memory := (upd s1.memory (e + BitVec.ofNat 64 64) (fld s1.memory e 64 - a)) })
    ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_stG fun u _ hu G v hG hv => ?_
    subst hu
    rw [gword_setVar, he] at hG
    rw [Option.some.injEq] at hG
    subst hG
    obtain ⟨y, z, hy, hz, rfl⟩ := ev_op_sub_inv hv
    rw [ev_lv_eq hgl] at hy
    rw [ev_lv_eq ha1] at hz
    cases hy; cases hz
    exact ⟨_, rfl, fun _ => ⟨rfl, rfl⟩⟩
  refine hoareG_seq (R := fun r t => r = none ∧
      t = { setVarHOLFinite (nm "gl") (.val (.word (fld s1.memory e 64))) s1 with memory := (chargeMem s1.memory e a) })
    ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_stG fun u _ ⟨_, hu⟩ G v hG hv => ?_
    subst hu
    rw [gword_mem, gword_setVar, he] at hG
    rw [Option.some.injEq] at hG
    subst hG
    obtain ⟨y, z, hy, hz, rfl⟩ := ev_op_add_inv hv
    obtain ⟨hy', -⟩ := ev_gLoad_eq (by rw [gword_mem, gword_setVar]; exact he) hy
    have hz' : z = a := by
      have : ev ({ setVarHOLFinite (nm "gl") (.val (.word (fld s1.memory e 64))) s1 with memory := (upd s1.memory (e + BitVec.ofNat 64 64) (fld s1.memory e 64 - a)) }) (lv (nm "amount")) =
          some (.val (.word a)) := ha1
      rw [this] at hz
      cases hz
      rfl
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hy'
    subst hy' hz'
    exact ⟨_, rfl, fun _ => ⟨rfl, rfl⟩⟩
  refine hoareG_return fun u _ ⟨_, hu⟩ v hv => ?_
  subst hu
  rw [ev_cw] at hv
  cases hv
  intro rr hrr
  cases hrr
  exact ⟨e, a, rfl, he, rfl, Or.inr ⟨rfl, hle, rfl⟩⟩

end InitECandidate.Solver.MemSafe.Frames
