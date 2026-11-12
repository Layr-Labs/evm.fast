import InitECandidate.Solver.MemSafe.Calls.Mcg
import InitECandidate.Solver.MemSafe.Ops.ExtCode
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `calculate_delegation_cost` and `ext_code_of`: what the CALL family needs (frames14)

```
fun {1,1,1} calculate_delegation_cost(1 addr) {
  var {1,1} code = ext_code_of(addr);
  var 1 v = is_valid_delegation(code.0, code.1);
  if v == 0 { return <0, addr, 0>; }
  var 1 da = alloc(24); memcpy(da, code.0 + 3, 20);
  var 1 warm = is_warm_address(da);
  if warm != 0 { return <1, da, 100>; }
  return <1, da, 3000>;
}
```
* **`dlg_val`** (proved): every return is `<a, b, c>` with `a = 0 → b = addr`.
* The handlers pass `dl.1` to `warm_address` / `ext_code_of` (`.buf 20`). For `dl.0 ≠ 0` it is the
  fresh `alloc(24)` block, whose `BufOK 20` in the post typing the tab26 summary (`ret = []`) does
  not give: **`DlgHyp σ`** (open) is the tab26 summary with that post (`DlgQ`).
* `generic_call` needs the callee's code length `code.1 + 63 < 2^64`, `code = ext_code_of(·)`:
  **`EcoHyp σ`** (open) is the tab26 summary of `ext_code_of` with that post (`EcoQ`).
* **`CallHyps σ`**: the two open facts.
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

/-! ## The fold entry -/

def dlgSg : Sig := ⟨[.buf 20], [], [], true⟩
def dlgCs : List Cap :=
  [⟨nm "*", 10, [], true⟩, ⟨nm "*", 14, [], true⟩, ⟨nm "*", 11, [], true⟩, ⟨nm "*", 12, [], true⟩,
   ⟨nm "*", 42, [], true⟩, ⟨nm "*", 43, [], true⟩, ⟨nm "*", 44, [], true⟩, ⟨nm "*", 45, [], true⟩, ⟨nm "*", 55, [], true⟩, ⟨nm "*", 65, [], true⟩, ⟨nm "*", 66, [], true⟩, ⟨nm "*", 67, [], true⟩, ⟨nm "*", 68, [], true⟩, ⟨nm "*", 69, [], true⟩, ⟨nm "*", 70, [], true⟩, ⟨nm "*", 71, [], true⟩,
   ⟨nm "sk_buf", 24, [], false⟩]

theorem dlg_mem : (nm "calculate_delegation_cost", dlgSg, dlgCs) ∈ ShardsJL.tab26 := by
  decide +kernel
theorem dlg_fp : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "calculate_delegation_cost") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)

/-! ## The value -/

def dlgBody : ProgHOL 64 :=
  .decCall (nm "code") (shK 2) (nm "ext_code_of") [(lv (nm "addr"))]
    (.decCall (nm "v") .one (nm "is_valid_delegation") [(.rfield 0 (lv (nm "code"))),
        (.rfield 1 (lv (nm "code")))]
      (.seq (.ite (.cmp .equal (lv (nm "v")) (cw 0))
          (.return (.rstruct [(cw 0), (lv (nm "addr")), (cw 0)]))
          .skip)
        (.decCall (nm "da") .one (nm "alloc") [(cw 24)]
          (.seq (callD (nm "memcpy") [(lv (nm "da")), (.op .add [(.rfield 0 (lv (nm "code"))), (cw 3)]),
              (cw 20)])
            (.decCall (nm "warm") .one (nm "is_warm_address") [(lv (nm "da"))]
              (.seq (.ite (.cmp .notEqual (lv (nm "warm")) (cw 0))
                  (.return (.rstruct [(cw 1), (lv (nm "da")), (cw 100)]))
                  .skip)
                (.return (.rstruct [(cw 1), (lv (nm "da")), (cw 3000)]))))))))

theorem entry_dlg : fnEntry Guest.Software.guestFn_calculate_delegation_cost =
    (nm "calculate_delegation_cost", [(nm "addr", .one)], dlgBody, shK 3) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_dlg : guestCode (nm "calculate_delegation_cost") =
    some ([(nm "addr", .one)], dlgBody, shK 3) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 573) (by decide)) ⟨_, rfl⟩
    entry_dlg

/-- The value relation: a three-word result `<a, b, c>` with `a = 0 → b = addr`. -/
def DlgV (vs : List (ValueHOL 64)) (r : PanSemResultExact 64) : Prop :=
  ∀ v, r = .returned v → ∃ a b c, v = wv [a, b, c] ∧ (a = 0 → vs = [.val (.word b)])

theorem ev_ret3 {s : State σ} {a b c : ExpHOL 64} {x y z : BitVec 64}
    (ha : ev s a = some (.val (.word x))) (hb : ev s b = some (.val (.word y)))
    (hc : ev s c = some (.val (.word z))) :
    ev s (.rstruct [a, b, c]) = some (wv [x, y, z]) :=
  ev_rstruct (evs_cons ha (evs_cons hb (evs_cons hc evs_nil)))

/-- **`calculate_delegation_cost`'s value fact.** -/
theorem dlg_val {X : Ctx 64} (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "calculate_delegation_cost") (fun vs _ r _ => Good (some r) → DlgV vs r) := by
  refine funSpec_of_hoareG fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hA, hla⟩ := lookupCode_one code_dlg hl
  obtain ⟨w, rfl⟩ := val_of_shapeEq_one hA
  have l0 : s0.locals.lookup (nm "addr") = some (.val (.word w)) := by rw [hloc]; exact hla
  -- the post (locals-free)
  let Q : Option (PanSemResultExact 64) → State σ → Prop := fun r _ =>
    ∀ r', r = some r' → DlgV [.val (.word w)] r'
  have habn : ∀ (r : PanSemResultExact 64) (t : State σ), Abn r → Q (some r) t := by
    intro r t hab r' hr' v hv
    simp only [Option.some.injEq] at hr'
    subst hr'
    rcases hab with ⟨e, v', rfl⟩ | ⟨e, rfl⟩ <;> cases hv
  have hret1 : ∀ (t : State σ) (v : ValueHOL 64) (b c : BitVec 64), v = wv [BitVec.ofNat 64 1, b, c] →
      Q (some (.returned v)) t := by
    intro t v b c hv r' hr' v' hv'
    simp only [Option.some.injEq] at hr'
    subst hr'
    simp only [PanSemResultExact.returned.injEq] at hv'
    subst hv' hv
    exact ⟨_, b, c, rfl, fun h => absurd h (by decide)⟩
  show HoareG σ X (fun u => u = s0) dlgBody Q
  -- `var code = ext_code_of(addr)`
  refine hoareG_decCall (funSpec_true _) (fun s _ hs vs hvs callee v st _ _ _ => ?_)
    (fun s _ _ vs _ callee r st _ _ hab => habn r st hab)
  subst s
  have l1 : (setVarHOLFinite (nm "code") v { st with locals := s0.locals }).locals.lookup (nm "addr") =
      some (.val (.word w)) := by rw [lk_set_ne _ _ (by decide)]; exact l0
  generalize setVarHOLFinite (nm "code") v { st with locals := s0.locals } = s1 at l1 ⊢
  refine hoareG_conseq (Q := Q) ?_ (fun _ _ h => h) (fun r t _ _ h => h)
  -- `var v = is_valid_delegation(code.0, code.1)`
  refine hoareG_decCall (funSpec_true _) (fun s _ hs vs hvs callee v st _ _ _ => ?_)
    (fun s _ _ vs _ callee r st _ _ hab => habn r st hab)
  subst s
  refine hoareG_conseq (Q := Q) ?_ (fun _ _ h => h) (fun r t _ _ h => h)
  have l2 : (setVarHOLFinite (nm "v") v { st with locals := s1.locals }).locals.lookup (nm "addr") =
      some (.val (.word w)) := by rw [lk_set_ne _ _ (by decide)]; exact l1
  generalize setVarHOLFinite (nm "v") v { st with locals := s1.locals } = s2 at l2 ⊢
  -- `if v == 0 { return <0, addr, 0>; }`
  refine Struct.hoareG_guardRet ?_ ?_
  · intro t _ ht w' _ _ v' hv'
    subst ht
    rw [ev_ret3 (ev_cw _ 0) (Struct.ev_lw' l2) (ev_cw _ 0)] at hv'
    cases hv'
    intro r' hr' v'' hv''
    simp only [Option.some.injEq] at hr'
    subst hr'
    simp only [PanSemResultExact.returned.injEq] at hv''
    subst hv''
    exact ⟨_, w, _, rfl, fun _ => rfl⟩
  refine hoareG_pre (P := fun t => t = s2) ?_ (fun t _ h => h.1)
  -- `var da = alloc(24)`
  refine hoareG_decCall (funSpec_true _) (fun s _ hs vs hvs callee v st _ _ hsh => ?_)
    (fun s _ _ vs _ callee r st _ _ hab => habn r st hab)
  subst s
  obtain ⟨da, rfl⟩ := val_of_shapeEq_one' hsh
  refine hoareG_conseq (Q := Q) ?_ (fun _ _ h => h) (fun r t _ _ h => h)
  have l3 : (setVarHOLFinite (nm "da") (.val (.word da)) { st with locals := s2.locals }).locals.lookup
      (nm "da") = some (.val (.word da)) := lk_set_self _ _ _
  generalize setVarHOLFinite (nm "da") (.val (.word da)) { st with locals := s2.locals } = s3 at l3 ⊢
  -- `memcpy(da, code.0 + 3, 20)`
  refine hoareG_seq (R := fun ro t => (ro = none ∧ t.locals = s3.locals) ∨
      (∃ r, ro = some r ∧ Abn r)) (hoareG_callD (funSpec_true _) ?_ ?_) ?_ ?_
  · intro s _ hs vs hvs callee v st _ _
    subst s
    exact Or.inl ⟨rfl, rfl⟩
  · intro s _ _ vs _ callee r st _ _ hab
    exact Or.inr ⟨r, rfl, hab⟩
  · intro r t _ hr _ h
    rcases h with ⟨h, -⟩ | ⟨r', rfl, hab⟩
    · exact absurd h hr
    · exact habn r' t hab
  refine hoareG_pre (P := fun t => t.locals.lookup (nm "da") = some (.val (.word da))) ?_
    (fun t _ h => by
      rcases h with ⟨-, hl⟩ | ⟨r, hr, -⟩
      · rw [hl]; exact l3
      · cases hr)
  -- `var warm = is_warm_address(da)`, then the two returns
  refine hoareG_decCall (funSpec_true _) (fun s _ hs vs hvs callee v st _ _ _ => ?_)
    (fun s _ _ vs _ callee r st _ _ hab => habn r st hab)
  refine hoareG_conseq (Q := Q) ?_ (fun _ _ h => h) (fun r t _ _ h => h)
  have l4 : ∀ t : State σ, t = setVarHOLFinite (nm "warm") v { st with locals := s.locals } →
      t.locals.lookup (nm "da") = some (.val (.word da)) := by
    intro t ht; subst ht; rw [lk_set_ne _ _ (by decide)]; exact hs
  refine Struct.hoareG_guardRet ?_ ?_
  · intro t _ ht w' _ _ v' hv'
    rw [ev_ret3 (ev_cw _ 1) (Struct.ev_lw' (l4 t ht)) (ev_cw _ 100)] at hv'
    cases hv'
    exact hret1 t _ da _ rfl
  · refine hoareG_return fun t _ ⟨ht, _⟩ v' hv' => ?_
    rw [ev_ret3 (ev_cw _ 1) (Struct.ev_lw' (l4 t ht)) (ev_cw _ 3000)] at hv'
    cases hv'
    exact hret1 t _ da _ rfl

/-! ## The open facts -/

/-- **`calculate_delegation_cost`'s needed post**: for a delegated code address (`a ≠ 0`), the
returned block `b` (the fresh `alloc(24)` copy of the delegation target) is a writable 20-byte
buffer of the post typing. -/
def DlgQ (_ : List (ValueHOL 64)) (_ : State σ) (_ : Gam) (r : PanSemResultExact 64)
    (t : State σ) (Γ' : Gam) : Prop :=
  ∀ a b c, r = .returned (wv [a, b, c]) → a ≠ 0 → ∀ p', ptrsOf t = some p' →
    BufOK guestC Γ' p' b.toNat 20

/-- **Open (frames14): `calculate_delegation_cost`'s tab26 summary with `DlgQ`.** -/
def DlgHyp (σ : Type) : Prop :=
  SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "calculate_delegation_cost") dlgSg
    (fun _ s Γ => ReqOK dlgCs s Γ) (fun _ s Γ a => CapPW dlgCs s Γ a) DlgQ

/-- **`ext_code_of`'s needed post**: the code length leaves room for `+ 63`. -/
def EcoQ (_ : List (ValueHOL 64)) (_ : State σ) (_ : Gam) (r : PanSemResultExact 64)
    (_ : State σ) (_ : Gam) : Prop :=
  ∀ c n, r = .returned (wv [c, n]) → n.toNat + 63 < 2 ^ 64

/-- **Open (frames14): `ext_code_of`'s tab26 summary with `EcoQ`** (a code-table / witness
invariant: `get_code` returns `<lds (w.1), lds (w.1 + 8)>` of a code-table entry or
`ws_get_code`'s result). -/
def EcoHyp (σ : Type) : Prop :=
  SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "ext_code_of") eocSg
    (fun _ s Γ => ReqOK eocCs s Γ) (fun _ s Γ a => CapPW eocCs s Γ a) EcoQ

/-- **The CALL family's open callee facts.** -/
structure CallHyps (σ : Type) : Prop where
  dlg : DlgHyp σ
  eco : EcoHyp σ

end InitECandidate.Solver.MemSafe.Calls

#print axioms InitECandidate.Solver.MemSafe.Calls.dlg_mem
#print axioms InitECandidate.Solver.MemSafe.Calls.dlg_val
