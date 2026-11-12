import InitECandidate.Solver.Band.RootPre
import InitECandidate.Solver.Band2.MptFromWitness
import InitECandidate.Solver.Spec.Mpt.Leaves.Nodedb
import InitECandidate.Solver.MemSafe.Struct.Eval

/-!
# `ws_storage_trie` (sonnet-band, template T3)

```
fun 1 ws_storage_trie(1 root) {
  var t = lds 1 (ws + 32);
  var {1,1} m = htab_get(t, root);
  if m.0 != 0 { return m.1 - 1; }
  var 1 node = decode_witness_to_mpt(lds 1 (ws + 0), root);
  htab_set(t, root, node + 1);
  return node;
}
```
Pre `WstPre`: `vs = [r]` and the witness fact `WsW s` (`Band.WsW`).  `lds 1 (ws+32)` succeeding forces
`ws >= nullMax` (`NullSafe guestCtx`), `htab_get` keeps memory, allocator pointers and `ws`,
and `Band.dwPre_of_wsW` gives `DwPre` at `decode_witness_to_mpt`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Band2
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe (Ptrs ptrsOf heapBase gword nullMax State)
open InitECandidate.Solver.Band
open InitECandidate.Solver.Spec.Mpt.Leaves (ndbFns ndbNames ndbFns_valid htab_get_mem)

variable {σ : Type}

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem ndbFns_gw_ws :
    ndbFns.all (fun e => gwFreeB (nm "ws") ndbNames e.2.2.1) = true := by decide_cbv

/-- `htab_get` (and the node DB checkers) keep the global `ws`. -/
theorem ndb_ws (f : MlS) (hf : ndbNames.contains f = true) :
    FunSpec σ guestCtx f (fun _ s _ t => t.globals.lookup (nm "ws") = s.globals.lookup (nm "ws")) :=
  funSpec_gw (σ := σ) (X := guestCtx)
    (by rw [guestCtx_code]
        exact closed_of_entries (chk := gwFreeB (nm "ws")) ndbFns_valid ndbFns_gw_ws) hf

/-- `WsW` reads only the memory, `ws` and the allocator pointers. -/
theorem wsW_congr {s t : State σ} (hm : t.memory = s.memory)
    (hw : gword t (nm "ws") = gword s (nm "ws")) (hp : ptrsOf t = ptrsOf s)
    (h : WsW s) : WsW t := by
  obtain ⟨w, hw', hc⟩ := h
  refine ⟨w, by rw [hw]; exact hw', ?_⟩
  rcases hc with hc | ⟨p, hpp, hord, hW⟩
  · exact Or.inl hc
  · exact Or.inr ⟨p, by rw [hp]; exact hpp, hord, by rw [hm]; exact hW⟩

/-- A successful `lds 1 (ws + 32)` under `WsW` forces `ws` to be non-null. -/
theorem ws_nonnull {s : State σ} {v : ValueHOL 64} (hs : InCtx s guestCtx) (hW : WsW s)
    (hv : ev s (.load .one (.op .add [.var .global (nm "ws"), cw 32])) = some v) :
    ∃ w0, gword s (nm "ws") = some w0 ∧ nullMax ≤ w0.toNat := by
  obtain ⟨w, hw, hd, -⟩ := ev_load_one hv
  obtain ⟨y, z, hy, hz, hwy⟩ := Spec.Mpt.Leaves.ev_add2_inv' hw
  rw [ev_cw] at hz
  cases hz
  cases hwy
  have hdm : heapBase ≤ (y + BitVec.ofNat 64 32).toNat := by
    have := MemSafe.nullSafe_guestCtx (y + BitVec.ofNat 64 32) (by rw [← hs.2.1]; exact hd)
    exact this
  obtain ⟨y0, hy0, -⟩ := hW
  have hgy : gword s (nm "ws") = some y := by
    unfold gword; rw [show s.globals.lookup (nm "ws") = some (.val (.word y)) from hy]
  rw [hgy] at hy0
  cases hy0
  refine ⟨y, hgy, ?_⟩
  have h1 := BitVec.toNat_add y (BitVec.ofNat 64 32)
  simp only [BitVec.toNat_ofNat] at h1
  unfold nullMax; unfold heapBase at hdm
  have := y.isLt
  omega

def gws (k : Nat) : ExpHOL 64 := .load .one (.op .add [.var .global (nm "ws"), cw k])

def wstBody : ProgHOL 64 :=
  .dec (nm "t") .one (gws 32)
    (.decCall (nm "m") (.comb [.one, .one]) (nm "htab_get") [lv (nm "t"), lv (nm "root")]
      (.seq (.ite (.cmp .notEqual (.rfield 0 (lv (nm "m"))) (cw 0))
          (.return (.op .sub [.rfield 1 (lv (nm "m")), cw 1])) .skip)
        (.decCall (nm "node") .one (nm "decode_witness_to_mpt") [gws 0, lv (nm "root")]
          (.seq (callD (nm "htab_set") [lv (nm "t"), lv (nm "root"), .op .add [lv (nm "node"), cw 1]])
            (.return (lv (nm "node")))))))

def params_wst : List (MlS × ShapeHOL) := [(nm "root", .one)]

theorem entry_wst : fnEntry Guest.Software.guestFn_ws_storage_trie =
    (nm "ws_storage_trie", params_wst, wstBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_wst :
    guestCode (nm "ws_storage_trie") = some (params_wst, wstBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 368) (by decide)) ⟨_, rfl⟩
    entry_wst

/-- Pre: one argument, and the witness fact `WsW` (`ws` null or its node DB well formed). -/
def WstPre (vs : List (ValueHOL 64)) (s : State σ) : Prop :=
  ∃ r, vs = [r] ∧ WsW s

def bHtabGet : Nat := 92233720368547758087
def bHtabSet : Nat := 340282366920938464441052043338374447206

def wstB : Nat :=
  1 + bHtabGet + (max 0 0 + (1 + dwtmB + ((1 + bHtabSet + 0) + 0)))

theorem ws_storage_trie_costP :
    Inv.CalleeCostP σ guestCtx (nm "ws_storage_trie") WstPre wstB := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, -, hbind⟩ := MemSafe.lookupCode_gen code_wst hl
  unfold wstBody wstB
  refine Inv.costP_dec fun s hs ⟨hloc, r, hvs, hWs⟩ v hv _ => ?_
  subst hvs
  have hA := (hbind 0 (by decide) (by simp)).1
  obtain ⟨w0, hw0, hnn⟩ := ws_nonnull hs hWs hv
  have hr : s.locals.lookup (nm "root") = some r := by rw [hloc]; exact hA
  refine costP_decCall (Pre := fun _ _ => True)
    (Inv.calleeCostP_of_calleeCost (MemSafe.Wire.calleeCost_guest (f := nm "htab_get")
      (B := bHtabGet) rfl))
    (fun _ _ _ _ _ _ => trivial)
    ((Spec.Mpt.Leaves.ndb_mw guestCtx_code htab_get_mem).and
      ((Spec.Mpt.Leaves.ndb_ptrs guestCtx_code htab_get_mem).and (ndb_ws _ htab_get_mem))) ?_
  intro t _ ht vs2 hvs2 callee2 v2 st2 ⟨hm2, hpt2, hws2⟩ _ _
  subst ht
  -- the invariant: witness fact, the value of `ws`, the argument
  let J : State σ → Prop := fun u => WsW u ∧ gword u (nm "ws") = some w0 ∧
    u.locals.lookup (nm "root") = some r
  have j2 : J (setVarHOLFinite (nm "m") v2 { st2 with locals :=
      (setVarHOLFinite (nm "t") v s).locals }) := by
    have g2 : gword (setVarHOLFinite (nm "m") v2 { st2 with locals :=
        (setVarHOLFinite (nm "t") v s).locals }) (nm "ws") = gword s (nm "ws") := by
      unfold gword
      show (match st2.globals.lookup (nm "ws") with | some (.val (.word w)) => some w | _ => none) =
        (match s.globals.lookup (nm "ws") with | some (.val (.word w)) => some w | _ => none)
      rw [show st2.globals.lookup (nm "ws") = s.globals.lookup (nm "ws") from hws2]
    refine ⟨wsW_congr (s := s) hm2 g2 hpt2 hWs, g2.trans hw0, ?_⟩
    · show (setVarHOLFinite (nm "m") v2 { st2 with locals := (setVarHOLFinite (nm "t") v s).locals }).locals.lookup _ = _
      rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact hr
  refine Inv.costP_seq (R := J) (Inv.costP_of_cost (cost_ite (cost_return _) cost_skip))
    (hoare_ite (hoare_return fun _ _ _ _ _ h => by cases h)
      (hoare_skip fun u _ hu _ => by rw [hu.1]; exact j2)) ?_
  refine costP_decCall dwtm_costP ?_ (funSpec_true _) ?_
  · rintro u _ ⟨hWu, hgu, hru⟩ vs3 hvs3 callee3
    obtain ⟨va, vb, rfl, ha, hb⟩ := Spec.Mpt.Leaves.evs_two_inv' hvs3
    obtain ⟨w, hw, -, rfl⟩ := MemSafe.Struct.ev_load1_inv ha
    obtain ⟨x, y, hx, hy, hxy⟩ := Spec.Mpt.Leaves.ev_add2_inv' hw
    rw [ev_cw] at hy
    cases hy
    have hx' : x = w0 := by
      have : gword u (nm "ws") = some x := by
        unfold gword; rw [show u.globals.lookup (nm "ws") = some (.val (.word x)) from hx]
      rw [hgu] at this; exact (Option.some.inj this).symm
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hxy
    subst hx' hxy
    have hd := dwPre_of_wsW hWu hgu hnn vb
    rw [BitVec.add_zero]
    exact dwPre_congr rfl rfl hd
  · intro u _ _ _ _ _ _ _ _ _ _
    exact Inv.costP_of_cost (cost_seq (cost_call
      (MemSafe.Wire.calleeCost_guest (f := nm "htab_set") (B := bHtabSet) rfl)
      (by intro _ _ _ _ h; cases h)) (cost_return _))

end InitECandidate.Solver.Band2

#print axioms InitECandidate.Solver.Band2.ws_storage_trie_costP
