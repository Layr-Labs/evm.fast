import InitECandidate.Solver.Wit.WitG

/-!
# Band item #6: `ws_storage_trie` under the witness fact, and from `G` (witg)

```
fun 1 ws_storage_trie(1 root) {
  var t = lds 1 (ws + WS_STORAGE_TRIES);
  var {1,1} m = htab_get(t, root);
  if m.0 != 0 { return m.1 - 1; }
  var 1 node = decode_witness_to_mpt(lds 1 (ws + WS_NODEDB), root);
  htab_set(t, root, node + 1);
  return node; }
```

* **`wst_costP`**: `CalleeCostP … "ws_storage_trie" (fun _ s => WsW s) wstB`. The first load
  succeeds only for a non-null `ws` (`NullSafe`), `htab_get` keeps memory, the allocator pointers
  and the `ws` global (`ndb_mw`, `ndb_ptrs`, and the new checker fact `ndb_gwClosed_ws`), so
  `dwPre_of_wsW` gives `DwPre` at `decode_witness_to_mpt` (T3, `Band.dwtm_costP`); `htab_set` and
  the return are all-states.
* **`wst_condCost hGT sg`**: the `CondCost` at the record family, for any signature `sg`, with
  `Pre := True`: `G` gives `WsW` by `witG_of_gt hGT`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Wit
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe (Ptrs ptrsOf heapBase nullMax gword rd State G Cfg Sig CondCost
  NullSafe)
open InitECandidate.Solver.Spec.Mpt.Leaves (ndbFns ndbNames ndbFns_valid htab_get_mem ndb_mw ndb_ptrs
  ev_load1_inv' ev_add2_inv')

variable {σ : Type}

/-! ## `htab_get` keeps the `ws` global -/

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem ndbFns_gw_ws : ndbFns.all (fun e => gwFreeB (nm "ws") ndbNames e.2.2.1) = true := by
  decide_cbv

theorem ndb_gwClosed_ws : GwClosed (nm "ws") ndbNames guestCode :=
  closed_of_entries (chk := gwFreeB (nm "ws")) ndbFns_valid ndbFns_gw_ws

/-! ## The body -/

def wstBody : ProgHOL 64 :=
  .dec (nm "t") .one (.load .one (.op .add [.var .global (nm "ws"), cw 32]))
    (.decCall (nm "m") (.comb [.one, .one]) (nm "htab_get") [lv (nm "t"), lv (nm "root")]
      (.seq (.ite (.cmp .notEqual (.rfield 0 (lv (nm "m"))) (cw 0))
          (.return (.op .sub [.rfield 1 (lv (nm "m")), cw 1])) .skip)
        (.decCall (nm "node") .one (nm "decode_witness_to_mpt")
          [.load .one (.op .add [.var .global (nm "ws"), cw 0]), lv (nm "root")]
          (.seq (callD (nm "htab_set") [lv (nm "t"), lv (nm "root"), .op .add [lv (nm "node"), cw 1]])
            (.return (lv (nm "node")))))))

def params_wst : List (MlS × ShapeHOL) := [(nm "root", .one)]

theorem entry_wst : fnEntry Guest.Software.guestFn_ws_storage_trie =
    (nm "ws_storage_trie", params_wst, wstBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_wst : guestCode (nm "ws_storage_trie") = some (params_wst, wstBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 368) (by decide)) ⟨_, rfl⟩
    entry_wst

/-! ## The cost -/

def bHtabGet : Nat := 92233720368547758087
def bHtabSet : Nat := 340282366920938464441052043338374447206

def wstB : Nat := 1 + bHtabGet + (max 0 0 + (1 + Band.dwtmB + ((1 + bHtabSet + 0) + 0)))

theorem wsW_congr {s t : State σ} (hm : t.memory = s.memory) (hp : ptrsOf t = ptrsOf s)
    (hg : t.globals.lookup (nm "ws") = s.globals.lookup (nm "ws")) (h : Band.WsW s) :
    Band.WsW t := by
  obtain ⟨w, hw, hc⟩ := h
  refine ⟨w, by unfold gword at hw ⊢; rw [hg]; exact hw, ?_⟩
  rcases hc with hc | ⟨p, hp', hord, hN⟩
  · exact Or.inl hc
  · exact Or.inr ⟨p, hp.trans hp', hord, by rw [hm]; exact hN⟩

theorem ev_gvar {s : State σ} {g : MlS} {v : ValueHOL 64} (h : ev s (.var .global g) = some v) :
    s.globals.lookup g = some v := h

/-- The non-null `ws` read by the first load. -/
theorem ws_nonnull {s : State σ} (hs : InCtx s guestCtx) {v : ValueHOL 64}
    (hv : ev s (.load .one (.op .add [.var .global (nm "ws"), cw 32])) = some v) :
    ∃ w, gword s (nm "ws") = some w ∧ nullMax ≤ w.toNat := by
  obtain ⟨a, ha, hd, -⟩ := ev_load1_inv' hv
  obtain ⟨w, c, hw, hc, he⟩ := ev_add2_inv' ha
  cases he
  have hg := ev_gvar hw
  rw [ev_cw] at hc
  cases hc
  refine ⟨w, by unfold gword; rw [hg], ?_⟩
  have hns := MemSafe.nullSafe_guestCtx (w + BitVec.ofNat 64 32) (by rw [← hs.2.1]; exact hd)
  rw [BitVec.toNat_add, BitVec.toNat_ofNat] at hns
  unfold heapBase at hns
  unfold nullMax
  have := w.isLt
  by_contra hlt
  rw [Nat.mod_eq_of_lt (by omega)] at hns
  omega

/-- **Band item #6** under the witness fact. -/
theorem wst_costP :
    Inv.CalleeCostP σ guestCtx (nm "ws_storage_trie") (fun _ s => Band.WsW s) wstB := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, -, -⟩ := MemSafe.lookupCode_gen code_wst hl
  unfold wstBody wstB
  refine Inv.costP_dec fun s hs hP v hv _ => ?_
  obtain ⟨-, hW⟩ := hP
  obtain ⟨w, hw, hnn⟩ := ws_nonnull hs hv
  -- `var m = htab_get(t, root)`: memory, allocator pointers and `ws` unchanged
  refine Band.costP_decCall (Pre := fun _ _ => True)
    (Inv.calleeCostP_of_calleeCost
      (MemSafe.Wire.calleeCost_guest (f := nm "htab_get") (B := bHtabGet) rfl))
    (fun _ _ _ _ _ _ => trivial)
    ((ndb_mw guestCtx_code htab_get_mem).and ((ndb_ptrs guestCtx_code htab_get_mem).and
      (funSpec_gw (σ := σ) (X := guestCtx) (by rw [guestCtx_code]; exact ndb_gwClosed_ws)
        htab_get_mem))) ?_
  rintro u _ rfl vs2 _ callee2 v2 st2 ⟨hm2, hp2, hg2⟩ _ _
  -- the invariant up to the decode call: entry memory, pointers and `ws`
  let J : PanSemStateFiniteExact 64 σ → Prop := fun t => t.memory = s.memory ∧
    ptrsOf t = ptrsOf s ∧ t.globals.lookup (nm "ws") = s.globals.lookup (nm "ws")
  have j1 : J (setVarHOLFinite (nm "m") v2 { st2 with locals := (setVarHOLFinite (nm "t") v s).locals }) := by
    refine ⟨hm2, ?_, hg2⟩
    exact (Band.ptrsOf_glob (t := setVarHOLFinite (nm "m") v2
      { st2 with locals := (setVarHOLFinite (nm "t") v s).locals }) (s := st2) rfl).trans
      (hp2.trans (Band.ptrsOf_glob (t := callEntryStateHOLFinite _ callee2) (s := s) rfl))
  refine Inv.costP_seq (R := J) (Inv.costP_of_cost (cost_ite (cost_return _) cost_skip)) ?_ ?_
  · exact hoare_ite (hoare_return fun _ _ _ _ _ h => by cases h)
      (hoare_skip fun t _ ht _ => by rw [ht.1]; exact j1)
  -- `var node = decode_witness_to_mpt(lds (ws + 0), root)`: `DwPre` from the witness fact
  refine Band.costP_decCall Band.dwtm_costP ?_ (funSpec_true _) ?_
  · rintro t _ ⟨jm, jp, jg⟩ vs3 hvs3 callee3
    obtain ⟨a1, vs', rfl, h1, h2⟩ := evs_cons_inv hvs3
    obtain ⟨a2, vs'', rfl, -, h3⟩ := evs_cons_inv h2
    rw [evs_nil] at h3
    cases h3
    obtain ⟨x, hx, -, rfl⟩ := ev_load1_inv' h1
    obtain ⟨w', c, hw', hc, he⟩ := ev_add2_inv' hx
    cases he
    have hg := ev_gvar hw'
    rw [ev_cw] at hc
    cases hc
    have hww : w' = w := by
      have h' : gword t (nm "ws") = some w' := by unfold gword; rw [hg]
      unfold gword at h' hw
      rw [jg] at h'
      rw [hw] at h'
      exact (Option.some.inj h').symm
    subst hww
    have hW' : Band.WsW (callEntryStateHOLFinite t callee3) :=
      wsW_congr jm ((Band.ptrsOf_glob (t := callEntryStateHOLFinite t callee3) (s := t) rfl).trans jp)
        jg hW
    have hwE : gword (callEntryStateHOLFinite t callee3) (nm "ws") = some w' := by
      show gword t (nm "ws") = some w'
      unfold gword at hw ⊢; rw [jg]; exact hw
    have e0 : w' + BitVec.ofNat 64 0 = w' := by simp
    rw [e0]
    exact Band.dwPre_of_wsW hW' hwE hnn a2
  · intro _ _ _ _ _ _ _ _ _ _ _
    exact Inv.costP_of_cost (cost_seq (cost_call
      (MemSafe.Wire.calleeCost_guest (f := nm "htab_set") (B := bHtabSet) rfl)
      (by intro _ _ _ _ h; cases h)) (cost_return _))

/-- `ws_storage_trie`'s signature (`Sigs1`). -/
def wstSig : Sig := ⟨[.buf 32], [], [], true⟩

/-- **Band item #6 at the record family**: from `G` alone (the witness fact is `witG_of_gt`), for
any signature (the argument typing is not used; `wstSig` is the `Sigs1` one). -/
theorem wst_condCost
    (hGT : MemSafe.Types.guestC.GT.lookup (nm "ws") = some (.nptr MemSafe.Types.tWSR)) (sg : Sig) :
    CondCost σ guestCtx MemSafe.Types.guestC (MemSafe.Hooks.guestHooksR (σ := σ))
      (nm "ws_storage_trie") sg (fun _ _ _ => True) wstB :=
  fun vs body callee rs hl s hs ⟨hloc, Γ, _, hG, _⟩ =>
    wst_costP vs body callee rs hl s hs ⟨hloc, witG_of_gt hGT Γ s hG⟩

end InitECandidate.Solver.Wit

#print axioms InitECandidate.Solver.Wit.ndb_gwClosed_ws
#print axioms InitECandidate.Solver.Wit.wst_costP
#print axioms InitECandidate.Solver.Wit.wst_condCost
