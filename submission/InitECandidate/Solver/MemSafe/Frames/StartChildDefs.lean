import InitECandidate.Solver.MemSafe.Frames.Push

/-!
# `start_child`: code, specification shape, step lemmas

```
fun 1 start_child(1 cm, 1 kind, 1 child_mark, 1 child_mem_mark, 1 new_account_charged,
    1 out_start, 1 out_size, 1 contract_address) {
  var csnap = 0;
  if kind == 2 { csnap = state_snapshot(); var target = lds 1 (cm + MSG_CURRENT_TARGET);
    destroy_storage(target); mark_account_created(target); increment_nonce(target); }
  if (lds 1 (cm + MSG_DEPTH)) >+ STACK_DEPTH_LIMIT { throw EvmErr E_STACK_DEPTH_LIMIT; }
  frame_open(cm, kind);
  var 1 snapshot = state_snapshot();
  st cur_cont + CK_SNAPSHOT, snapshot; st cur_cont + CK_CSNAPSHOT, csnap;
  st cur_cont + CK_MARK, child_mark; st cur_cont + CK_MEM_MARK, child_mem_mark;
  st cur_cont + CK_NEW_ACCOUNT, new_account_charged; st cur_cont + CK_OUT_START, out_start;
  st cur_cont + CK_OUT_SIZE, out_size; st cur_cont + CK_CONTRACT, contract_address;
  frame_start();
  return 0; }
```
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

/-! ## Callee locals of any arity -/

theorem foldl_step_not_mem' {V : Type} :
    ∀ (l : List (MlS × V)) (init : MlS → Option V) (x : MlS), x ∉ l.map Prod.fst →
      List.foldl (fun (map : MlS → Option V) (entry : MlS × V) =>
        fun current => if current = entry.1 then some entry.2 else map current) init l x = init x
  | [], _, _, _ => rfl
  | (a, b) :: l, init, x, hx => by
      simp only [List.map_cons, List.mem_cons, not_or] at hx
      simp only [List.foldl_cons]
      rw [foldl_step_not_mem' l _ x hx.2]
      simp [hx.1]

theorem foldl_step_mem' {V : Type} :
    ∀ (l : List (MlS × V)) (init : MlS → Option V), (l.map Prod.fst).Nodup →
      ∀ x v, (x, v) ∈ l →
      List.foldl (fun (map : MlS → Option V) (entry : MlS × V) =>
        fun current => if current = entry.1 then some entry.2 else map current) init l x = some v
  | [], _, _, _, _, h => by simp at h
  | (a, b) :: l, init, hnd, x, v, h => by
      simp only [List.map_cons, List.nodup_cons] at hnd
      simp only [List.foldl_cons]
      rcases List.mem_cons.mp h with h | h
      · simp only [Prod.mk.injEq] at h
        obtain ⟨rfl, rfl⟩ := h
        rw [foldl_step_not_mem' l _ x hnd.1]
        simp
      · exact foldl_step_mem' l _ hnd.2 x v h

/-- The callee locals bind each parameter to its argument. -/
theorem lookupCode_k {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    {f : MlS} {vs : List (ValueHOL 64)} {b : ProgHOL 64} {c : HolFiniteMapExact MlS (ValueHOL 64)}
    {r : ShapeHOL} (h : PanSemStateFiniteExact.lookupCodeHOLFinite code f vs = some (b, c, r)) :
    ∃ ps : List (MlS × ShapeHOL), code f = some (ps, b, r) ∧
      ∀ (k : Nat) (p : MlS × ShapeHOL) (v : ValueHOL 64), ps[k]? = some p → vs[k]? = some v →
        c.lookup p.1 = some v := by
  unfold PanSemStateFiniteExact.lookupCodeHOLFinite at h
  split at h
  · simp at h
  · rename_i body cl rs hx
    simp only [Option.some.injEq, Prod.mk.injEq] at h
    obtain ⟨rfl, hc, rfl⟩ := h
    unfold lookupCodeHOLExact at hx
    split at hx
    · simp at hx
    · rename_i ps bd rr hcode
      split at hx
      · rename_i hcond
        simp only [Option.some.injEq, Prod.mk.injEq] at hx
        obtain ⟨rfl, hcl, rfl⟩ := hx
        refine ⟨ps, hcode, ?_⟩
        intro k p v hp hv
        rw [← hc]
        show cl p.1 = some v
        rw [← hcl]
        obtain ⟨hnd, hlen, -⟩ := hcond
        have hkp : k < ps.length := (List.getElem?_eq_some_iff.mp hp).1
        have hkv : k < vs.length := (List.getElem?_eq_some_iff.mp hv).1
        apply foldl_step_mem'
        · rw [List.map_fst_zip (by simp; omega)]; exact hnd
        · have hz : ((ps.map Prod.fst).zip vs)[k]? = some (p.1, v) := by
            rw [List.getElem?_zip_eq_some]
            exact ⟨by rw [List.getElem?_map, hp]; rfl, hv⟩
          exact List.mem_of_getElem? hz
      · simp at hx

/-! ## Code -/

def scParams : List (MlS × ShapeHOL) :=
  [(nm "cm", .one), (nm "kind", .one), (nm "child_mark", .one), (nm "child_mem_mark", .one),
    (nm "new_account_charged", .one), (nm "out_start", .one), (nm "out_size", .one),
    (nm "contract_address", .one)]

/-- `st cur_cont + k, x` for a local `x`. -/
def stCC (k : Nat) (x : String) : ProgHOL 64 := stG "cur_cont" k (lv (nm x))

def scStores : ProgHOL 64 :=
  .seq (stCC 24 "snapshot") (.seq (stCC 96 "csnap") (.seq (stCC 48 "child_mark")
  (.seq (stCC 56 "child_mem_mark") (.seq (stCC 64 "new_account_charged")
  (.seq (stCC 72 "out_start") (.seq (stCC 80 "out_size") (.seq (stCC 88 "contract_address")
  (.seq (callD (nm "frame_start") []) (.return (cw 0))))))))))

def scKind2 : ProgHOL 64 :=
  .seq (.call (some (some (.local, nm "csnap"), none)) (nm "state_snapshot") [])
    (.dec (nm "target") .one (lLoad "cm" 32)
      (.seq (callD (nm "destroy_storage") [lv (nm "target")])
        (.seq (callD (nm "mark_account_created") [lv (nm "target")])
          (callD (nm "increment_nonce") [lv (nm "target")]))))

def scBody : ProgHOL 64 :=
  .dec (nm "csnap") .one (cw 0)
    (.seq (.ite (.cmp .equal (lv (nm "kind")) (cw 2)) scKind2 .skip)
    (.seq (.ite (.cmp .lower (cw 1024) (lLoad "cm" 128)) (.raise nmEvmErr (cw 7)) .skip)
    (.seq .skip
    (.seq (callD (nm "frame_open") [lv (nm "cm"), lv (nm "kind")])
    (.seq .skip
    (.seq .skip
    (.decCall (nm "snapshot") .one (nm "state_snapshot") [] scStores)))))))

theorem entry_sc : fnEntry Guest.Software.guestFn_start_child =
    (nm "start_child", scParams, scBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_sc : guestCode (nm "start_child") = some (scParams, scBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 585) (by decide)) ⟨_, rfl⟩
    entry_sc

/-! ## Specification shape -/

abbrev sgSC (gw : List MlS) : Sig := { params := List.replicate 8 .any, gw := nmEv :: nmCC :: gw }

/-- The word arguments of `start_child`. -/
def scArgs (cm kind cmark cmm nac os osz ca : BitVec 64) : List (ValueHOL 64) :=
  [.val (.word cm), .val (.word kind), .val (.word cmark), .val (.word cmm), .val (.word nac),
    .val (.word os), .val (.word osz), .val (.word ca)]

/-- `start_child`'s precondition: a running chain whose top frame becomes the parent, the
§2.4 facts for the new child/parent pair, the Φ budget for the child, `frame_new`'s
precondition, the child message's `MSG_GAS` cell `prot` (so that the kind-2 callees, which
write no `prot` cell, keep it), and the release invariant for the child's marks (taken by the
caller before it allocated the child message). -/
def PreSC (C : Cfg) (tEV tCK M : Nat) (NewPre : List (ValueHOL 64) → State σ → Gam → Prop)
    (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ cm kind cmark cmm nac os osz ca, vs = scArgs cm kind cmark cmm nac os osz ca ∧
    (kind = 1 ∨ kind = 2) ∧
    ∃ fs e0 c0 rest, ChainL C tEV tCK Γ s fs ∧ fs = (e0, c0) :: rest ∧
      (fld s.memory e0 evSp).toNat < (fld s.memory e0 evStackCap).toNat ∧
      cmm.toNat = (fld s.memory e0 evMem).toNat + (fld s.memory e0 evMemCap).toNat ∧
      (osz = 0 ∨ os.toNat + osz.toNat ≤ (fld s.memory e0 evMemLen).toNat) ∧
      Phi s + (fld s.memory cm 40).toNat + 2 ≤ M ∧
      NewPre [.val (.word cm)] s Γ ∧ ProtCell C Γ (cm + BitVec.ofNat 64 40) ∧
      MarkOK C tEV Γ s cmark.toNat cmm.toNat ∧
      (∀ f ∈ fs, FrameAbove C tEV tCK Γ cmark.toNat cmm.toNat f) ∧
      (rest ≠ [] → cmark.toNat < mkOf s.memory c0 ∧ mmOf s.memory c0 < cmm.toNat)

/-- `start_child`'s post: a return pushed the child (Φ grows by at most its gas plus 2); the
depth `EvmErr` changes neither the chain nor `Φ`. -/
def QSC (C : Cfg) (tEV tCK : Nat) (vs : List (ValueHOL 64)) (s : State σ) (_ : Gam)
    (r : PanSemResultExact 64) (t : State σ) (Γ' : Gam) : Prop :=
  ∀ cm, vs.head? = some (.val (.word cm)) →
    (∀ v, r = .returned v → Chain C tEV tCK Γ' t ∧ Phi t ≤ Phi s + (fld s.memory cm 40).toNat + 2) ∧
    (∀ v, r = .exception nmEvmErr v → Chain C tEV tCK Γ' t ∧ Phi t = Phi s)

end InitECandidate.Solver.MemSafe.Frames
