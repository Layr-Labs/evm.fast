import InitECandidate.Solver.Band.RootPre
import InitECandidate.Solver.Spec.Mpt.Leaves.DelFinal

/-!
# `_mpt_delete_node` (sonnet-band, template T2)

```
fun 1 _mpt_delete_node(1 node, 1 key, 1 klen, 1 level) {
  var 1 mark = scratch_mark();
  var e = 0; var res = 0;
  try res = _mpt_delete_node_body(node, key, klen, level)
  catch MptErr => e { scratch_release(mark); throw MptErr e; }
  scratch_release(mark);
  return res;
}
```
Pre `Spec.Mpt.DelPre` itself (on the four arguments): the root's own precondition, which callers
get from `Band.delPre_of_G` (`G`, `Fits Γ nodeU node`, `KeyNib`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Band2
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe (Ptrs ptrsOf heapBase State)
open InitECandidate.Solver.Band
open InitECandidate.Solver.Spec.Mpt (DelPre)

variable {σ : Type}

/-- `DelPre` reads only the memory and the globals. -/
theorem delPre_congr {vs : List (ValueHOL 64)} {s t : State σ}
    (hm : t.memory = s.memory) (hg : t.globals = s.globals) (hb : t.be = s.be) (h : DelPre vs s) : DelPre vs t := by
  obtain ⟨node, key, klen, level, hvs, ⟨p, hp, hord⟩, Nd, hcl, hnn, hk⟩ := h
  exact ⟨node, key, klen, level, hvs, ⟨p, by rw [ptrsOf_glob hg]; exact hp, hord⟩, Nd,
    by rw [hm]; exact hcl, hnn, by rw [hm, hb]; exact hk⟩

def bCpl : Nat := 18446744073709551618
def bCollapse : Nat := 166020696663385964580
def bDelExt : Nat := 147573952589676412951

/-- `_mpt_delete_node_body`'s bound with the table costs of its callees. -/
def delBG : Nat := Spec.Mpt.delB 0 0 bMemeq bCpl 2 bCollapse bDelExt

/-- The root in `guestCtx`. -/
theorem delRoot : Inv.CalleeCostP σ guestCtx (nm "_mpt_delete_node_body") DelPre delBG :=
  Spec.Mpt.Leaves.mpt_delete_node_body_costP_leaf guestCtx_code MemSafe.nullSafe_guestCtx
    MemSafe.Helpers.alignedDom_guestCtx Spec.Mpt.Leaves.domTop_guestCtx
    (MemSafe.Wire.calleeCost_guest rfl) (MemSafe.Wire.calleeCost_guest rfl)
    (MemSafe.Wire.calleeCost_guest rfl) (MemSafe.Wire.calleeCost_guest rfl)
    (MemSafe.Wire.calleeCost_guest rfl) (MemSafe.Wire.calleeCost_guest rfl)
    (MemSafe.Wire.calleeCost_guest rfl)

def dnBody : ProgHOL 64 :=
  .decCall (nm "mark") .one (nm "scratch_mark") []
    (.dec (nm "e") .one (cw 0) (.dec (nm "res") .one (cw 0)
      (.seq (.call (some (some (.local, nm "res"), some (nm "MptErr", nm "e", relRaise "MptErr")))
          (nm "_mpt_delete_node_body")
          [lv (nm "node"), lv (nm "key"), lv (nm "klen"), lv (nm "level")])
        (.seq (callD (nm "scratch_release") [lv (nm "mark")]) (.return (lv (nm "res")))))))

def params_dn : List (MlS × ShapeHOL) :=
  [(nm "node", .one), (nm "key", .one), (nm "klen", .one), (nm "level", .one)]

theorem entry_dn : fnEntry Guest.Software.guestFn__mpt_delete_node =
    (nm "_mpt_delete_node", params_dn, dnBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_dn : guestCode (nm "_mpt_delete_node") = some (params_dn, dnBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 279) (by decide)) ⟨_, rfl⟩
    entry_dn

def dnB : Nat := 1 + 0 + ((1 + delBG + (1 + 0 + 0 + 0)) + ((1 + 0 + 0) + 0))

/-- **`_mpt_delete_node`** under the root's `DelPre`. -/
theorem mpt_delete_node_costP :
    Inv.CalleeCostP σ guestCtx (nm "_mpt_delete_node") DelPre dnB := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, -, hbind⟩ := MemSafe.lookupCode_gen code_dn hl
  unfold dnBody dnB
  refine costP_decCall (Pre := fun _ _ => True)
    (Inv.calleeCostP_of_calleeCost (MemSafe.Wire.calleeCost_guest rfl)) (fun _ _ _ _ _ _ => trivial)
    ((MemSafe.markSpec'_scratch_mark guestCtx_code).and (MemSafe.funSpec_be' _)) ?_
  rintro s _ ⟨hloc, hdel⟩ vs0 hvs0 callee0 vm st ⟨hR, hbe⟩ _ _
  rw [evs_nil] at hvs0
  cases hvs0
  obtain ⟨hm, hg, -⟩ := hR (by simp [Good]) rfl
  have hdel' : DelPre vs st := delPre_congr hm hg hbe hdel
  obtain ⟨a, b, c, d, rfl, -⟩ := id hdel
  have hA := (hbind 0 (by decide) (by simp)).1
  have hB := (hbind 1 (by decide) (by simp)).1
  have hC := (hbind 2 (by decide) (by simp)).1
  have hD := (hbind 3 (by decide) (by simp)).1
  refine Inv.costP_dec fun s1 _ hs1 v0 _ _ => ?_
  subst hs1
  refine Inv.costP_dec fun s2 _ hs2 v1 _ _ => ?_
  subst hs2
  have hl3 : ∀ y, nm "res" ≠ y → nm "e" ≠ y → nm "mark" ≠ y →
      (setVarHOLFinite (nm "res") v1 (setVarHOLFinite (nm "e") v0
        (setVarHOLFinite (nm "mark") vm { st with locals := s.locals }))).locals.lookup y =
        callee.lookup y := by
    intro y h1 h2 h3
    rw [lk_set_ne _ _ h1, lk_set_ne _ _ h2, lk_set_ne _ _ h3]
    exact congrArg (fun l => l.lookup y) hloc
  refine Inv.costP_seq (R := fun _ => True)
    (Inv.costP_call (Bh := 1 + 0 + 0 + 0) delRoot ?_ ?_) (fun _ _ _ _ _ => trivial)
    (Inv.costP_of_cost (cost_seq (cost_call (MemSafe.Wire.calleeCost_guest (B := 0) rfl)
      (by intro _ _ _ _ h; cases h)) (cost_return _)))
  · rintro t _ rfl vs' hvs' callee'
    rw [evs_cons (by rw [ev_lv, hl3 _ (by decide) (by decide) (by decide)]; exact hA)
      (evs_cons (by rw [ev_lv, hl3 _ (by decide) (by decide) (by decide)]; exact hB)
        (evs_cons (by rw [ev_lv, hl3 _ (by decide) (by decide) (by decide)]; exact hC)
          (evs_cons (by rw [ev_lv, hl3 _ (by decide) (by decide) (by decide)]; exact hD)
            evs_nil)))] at hvs'
    cases hvs'
    exact delPre_congr rfl rfl rfl hdel'
  · intro r hid hv hp hinfo
    simp only [Option.some.injEq, Prod.mk.injEq] at hinfo
    obtain ⟨-, rfl, rfl, rfl⟩ := hinfo
    exact cost_relRaise (MemSafe.Wire.calleeCost_guest (f := nm "scratch_release") (B := 0) rfl)

end InitECandidate.Solver.Band2

#print axioms InitECandidate.Solver.Band2.delRoot
#print axioms InitECandidate.Solver.Band2.mpt_delete_node_costP
