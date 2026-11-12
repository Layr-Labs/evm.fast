import InitECandidate.Solver.Band.Rules
import InitECandidate.Solver.Spec.Mpt.Leaves.Slices
import InitECandidate.Solver.MemSafe.Wire.Guest

/-!
# The decode chain: band templates (band1)

Three conditional table entries above the decode root `_decode_witness_node_body`, as worked
templates for the band (recipe: `research/notes/band1-status.md`).

* **T1 `dwnm_costP`** (`_decode_witness_node_mpt(db, p, n, mark)`: `try nd = body(db, p, n)
  catch MptErr => e { scratch_release(mark); throw MptErr e }; return nd`): the *pass-through*
  case. The precondition is the root's `DecPre NdbW` on the first three arguments; the locals
  `e`, `nd` are fresh, so the arguments of the call are the entry arguments and the memory and
  globals are the entry ones. Handler: all-states (`cost_relRaise`).
* **T2 `dwn_costP`** (`_decode_witness_node(db, p, n)`: `var mark = scratch_mark(); try nd =
  _decode_witness_node_mpt(db, p, n, mark) catch RlpErr …; scratch_release(mark); return nd`):
  the *sum of callee costs* case, with one `decCall` whose `FunSpec` (`MarkSpec'`: memory and
  globals unchanged) carries the precondition to the conditional call.
* **T3 `dwtm_costP`** (`decode_witness_to_mpt(db, root_hash)`): the *root precondition
  discharge*. Under `DwPre` (`AllocOK`, the node DB well formed below `heap_ptr`: `NdbW db hp`),
  `memeq` and `nodedb_lookup` keep memory and allocator pointers (`ndb_mw`, `ndb_ptrs`),
  `nodedb_lookup` returns a slice located below `hp` (`funSpec_nodedb_lookup_ret`), the
  `mpt_fail` guard gives a found entry, and that is `DecPre NdbW` at `_decode_witness_node`.
  The suffix (`alloc`, `memcpy`, a store) is all-states.

All three are `G`-free (`Spec.Inv.CalleeCostP`), so they serve `state_init`, `mpt_from_witness`
and `ws_storage_trie` alike.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Band
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe (Ptrs ptrsOf heapBase)
open InitECandidate.Solver.Spec.Mpt.Dec (DecPre decB)
open InitECandidate.Solver.Spec.Mpt.Leaves (NdbW NlRet)

variable {σ : Type}

/-! ## The root's entry in the challenge context -/

/-- `_decode_witness_node_body`'s bound with the table costs of its callees. -/
def decBG : Nat :=
  decB 610466566584485109304066731080843672970071
    174224571957326637822053171064618402978918
    174224571957326637821960937344249855220822 3 0

/-- **The decode root** in `guestCtx` (`Leaves.decode_witness_node_body_costP_final` with the
table costs). -/
theorem decRoot :
    Inv.CalleeCostP σ guestCtx (nm "_decode_witness_node_body") (DecPre NdbW) decBG :=
  Spec.Mpt.Leaves.decode_witness_node_body_costP_final guestCtx_code
    MemSafe.Helpers.alignedDom_guestCtx (MemSafe.Wire.calleeCost_guest rfl)
    (MemSafe.Wire.calleeCost_guest rfl) (MemSafe.Wire.calleeCost_guest rfl)
    (MemSafe.Wire.calleeCost_guest rfl) (MemSafe.Wire.calleeCost_guest rfl)

theorem ptrsOf_glob {s t : PanSemStateFiniteExact 64 σ} (hg : t.globals = s.globals) :
    ptrsOf t = ptrsOf s := by
  unfold ptrsOf MemSafe.gword; rw [hg]

/-- `DecPre` reads only the memory and the globals. -/
theorem decPre_congr {W : BitVec 64 → Nat → MemSafe.Mem → Prop} {vs : List (ValueHOL 64)}
    {s t : PanSemStateFiniteExact 64 σ} (hm : t.memory = s.memory) (hg : t.globals = s.globals)
    (h : DecPre W vs s) : DecPre W vs t := by
  obtain ⟨db, q, n, hvs, ⟨p0, hp0, hord⟩, H, p, hp, h1, h2, h3, hW⟩ := h
  exact ⟨db, q, n, hvs, ⟨p0, by rw [ptrsOf_glob hg]; exact hp0, hord⟩, H, p,
    by rw [ptrsOf_glob hg]; exact hp, h1, h2, h3, by rw [hm]; exact hW⟩

/-! ## T1: `_decode_witness_node_mpt` (pass-through to the root) -/

/-- `scratch_release(mark); throw E e`. -/
def relRaise (x : String) : ProgHOL 64 :=
  .seq (callD (nm "scratch_release") [lv (nm "mark")]) (.raise (nm x) (lv (nm "e")))

def dwnmBody : ProgHOL 64 :=
  .dec (nm "e") .one (cw 0) (.dec (nm "nd") .one (cw 0)
    (.seq (.call (some (some (.local, nm "nd"), some (nm "MptErr", nm "e", relRaise "MptErr")))
        (nm "_decode_witness_node_body") [lv (nm "db"), lv (nm "p"), lv (nm "n")])
      (.return (lv (nm "nd")))))

def params_dwnm : List (MlS × ShapeHOL) :=
  [(nm "db", .one), (nm "p", .one), (nm "n", .one), (nm "mark", .one)]

theorem entry_dwnm : fnEntry Guest.Software.guestFn__decode_witness_node_mpt =
    (nm "_decode_witness_node_mpt", params_dwnm, dwnmBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_dwnm :
    guestCode (nm "_decode_witness_node_mpt") = some (params_dwnm, dwnmBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 263) (by decide)) ⟨_, rfl⟩
    entry_dwnm

/-- T1's precondition: the root's on the first three arguments. -/
def DwnmPre (vs : List (ValueHOL 64)) (s : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ a b c d, vs = [a, b, c, d] ∧ DecPre NdbW [a, b, c] s

def dwnmB : Nat := 1 + decBG + (1 + 0 + 0 + 0) + 0

/-- **T1.** `_decode_witness_node_mpt` under `DwnmPre`. -/
theorem dwnm_costP :
    Inv.CalleeCostP σ guestCtx (nm "_decode_witness_node_mpt") DwnmPre dwnmB := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, -, hbind⟩ := MemSafe.lookupCode_gen code_dwnm hl
  refine Inv.costP_dec fun s _ ⟨hloc, hpre⟩ v0 _ _ => ?_
  refine Inv.costP_dec fun s1 _ hs1 v1 _ _ => ?_
  subst s1
  obtain ⟨a, b, c, d, rfl, hdec⟩ := hpre
  have hA := (hbind 0 (by decide) (by simp)).1
  have hB := (hbind 1 (by decide) (by simp)).1
  have hC := (hbind 2 (by decide) (by simp)).1
  -- `e` and `nd` are fresh: the parameters keep their entry values
  have hl2 : ∀ y, nm "nd" ≠ y → nm "e" ≠ y →
      (setVarHOLFinite (nm "nd") v1 (setVarHOLFinite (nm "e") v0 s)).locals.lookup y =
        callee.lookup y := by
    intro y h1 h2; rw [lk_set_ne _ _ h1, lk_set_ne _ _ h2, hloc]
  refine Inv.costP_seq (R := fun _ => True)
    (Inv.costP_call (Bh := 1 + 0 + 0 + 0) decRoot ?_ ?_) (fun _ _ _ _ _ => trivial)
    (Inv.costP_of_cost (cost_return _))
  · rintro t _ rfl vs' hvs' callee'
    rw [evs_cons (by rw [ev_lv, hl2 _ (by decide) (by decide)]; exact hA)
      (evs_cons (by rw [ev_lv, hl2 _ (by decide) (by decide)]; exact hB)
        (evs_cons (by rw [ev_lv, hl2 _ (by decide) (by decide)]; exact hC) evs_nil))] at hvs'
    cases hvs'
    exact decPre_congr rfl rfl hdec
  · intro r hid hv hp hinfo
    simp only [Option.some.injEq, Prod.mk.injEq] at hinfo
    obtain ⟨-, rfl, rfl, rfl⟩ := hinfo
    exact cost_relRaise (MemSafe.Wire.calleeCost_guest (f := nm "scratch_release") (B := 0) rfl)

/-! ## T2: `_decode_witness_node` (sum of callee costs) -/

def dwnBody : ProgHOL 64 :=
  .decCall (nm "mark") .one (nm "scratch_mark") []
    (.dec (nm "e") .one (cw 0) (.dec (nm "nd") .one (cw 0)
      (.seq (.call (some (some (.local, nm "nd"), some (nm "RlpErr", nm "e", relRaise "RlpErr")))
          (nm "_decode_witness_node_mpt") [lv (nm "db"), lv (nm "p"), lv (nm "n"), lv (nm "mark")])
        (.seq (callD (nm "scratch_release") [lv (nm "mark")]) (.return (lv (nm "nd")))))))

def params_dwn : List (MlS × ShapeHOL) := [(nm "db", .one), (nm "p", .one), (nm "n", .one)]

theorem entry_dwn : fnEntry Guest.Software.guestFn__decode_witness_node =
    (nm "_decode_witness_node", params_dwn, dwnBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_dwn : guestCode (nm "_decode_witness_node") = some (params_dwn, dwnBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 264) (by decide)) ⟨_, rfl⟩
    entry_dwn

def dwnB : Nat := 1 + 0 + ((1 + dwnmB + (1 + 0 + 0 + 0)) + ((1 + 0 + 0) + 0))

/-- **T2.** `_decode_witness_node` under the root's precondition `DecPre NdbW`. -/
theorem dwn_costP : Inv.CalleeCostP σ guestCtx (nm "_decode_witness_node") (DecPre NdbW) dwnB := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, -, hbind⟩ := MemSafe.lookupCode_gen code_dwn hl
  unfold dwnBody dwnB
  -- `var mark = scratch_mark()`: memory and globals unchanged (`MarkSpec'`)
  refine costP_decCall (Pre := fun _ _ => True)
    (Inv.calleeCostP_of_calleeCost (MemSafe.Wire.calleeCost_guest rfl)) (fun _ _ _ _ _ _ => trivial)
    (MemSafe.markSpec'_scratch_mark guestCtx_code) ?_
  rintro s _ ⟨hloc, hdec⟩ vs0 hvs0 callee0 vm st hR _ _
  rw [evs_nil] at hvs0
  cases hvs0
  obtain ⟨hm, hg, -⟩ := hR (by simp [Good]) rfl
  have hdec' : DecPre NdbW vs st := decPre_congr hm hg hdec
  obtain ⟨a, b, c, rfl, -⟩ := id hdec
  have hA := (hbind 0 (by decide) (by simp)).1
  have hB := (hbind 1 (by decide) (by simp)).1
  have hC := (hbind 2 (by decide) (by simp)).1
  refine Inv.costP_dec fun s1 _ hs1 v0 _ _ => ?_
  subst hs1
  refine Inv.costP_dec fun s2 _ hs2 v1 _ _ => ?_
  subst hs2
  have hl3 : ∀ y, nm "nd" ≠ y → nm "e" ≠ y → nm "mark" ≠ y →
      (setVarHOLFinite (nm "nd") v1 (setVarHOLFinite (nm "e") v0
        (setVarHOLFinite (nm "mark") vm { st with locals := s.locals }))).locals.lookup y =
        callee.lookup y := by
    intro y h1 h2 h3
    rw [lk_set_ne _ _ h1, lk_set_ne _ _ h2, lk_set_ne _ _ h3]
    exact congrArg (fun l => l.lookup y) hloc
  refine Inv.costP_seq (R := fun _ => True)
    (Inv.costP_call (Bh := 1 + 0 + 0 + 0) dwnm_costP ?_ ?_) (fun _ _ _ _ _ => trivial)
    (Inv.costP_of_cost (cost_seq (cost_call (MemSafe.Wire.calleeCost_guest (B := 0) rfl)
      (by intro _ _ _ _ h; cases h)) (cost_return _)))
  · rintro t _ rfl vs' hvs' callee'
    rw [evs_cons (by rw [ev_lv, hl3 _ (by decide) (by decide) (by decide)]; exact hA)
      (evs_cons (by rw [ev_lv, hl3 _ (by decide) (by decide) (by decide)]; exact hB)
        (evs_cons (by rw [ev_lv, hl3 _ (by decide) (by decide) (by decide)]; exact hC)
          (evs_cons (by rw [ev_lv, lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
            lk_set_self]) evs_nil)))] at hvs'
    cases hvs'
    exact ⟨.val (.word a), .val (.word b), .val (.word c), vm, rfl, decPre_congr rfl rfl hdec'⟩
  · intro r hid hv hp hinfo
    simp only [Option.some.injEq, Prod.mk.injEq] at hinfo
    obtain ⟨-, rfl, rfl, rfl⟩ := hinfo
    exact cost_relRaise (MemSafe.Wire.calleeCost_guest (f := nm "scratch_release") (B := 0) rfl)

/-! ## T3: `decode_witness_to_mpt` (discharging the root precondition) -/

def dwtmBody : ProgHOL 64 :=
  .decCall (nm "is_empty") .one (nm "memeq")
    [lv (nm "root_hash"), .var .global (nm "empty_trie_root"), cw 32]
    (.seq (.ite (.cmp .notEqual (lv (nm "is_empty")) (cw 0)) (.return (cw 0)) .skip)
      (.decCall (nm "r") (.comb [.one, .one, .one]) (nm "nodedb_lookup") [lv (nm "db"), lv (nm "root_hash")]
        (.seq (.ite (.cmp .equal (.rfield 0 (lv (nm "r"))) (cw 0)) (callD (nm "mpt_fail") [cw 1]) .skip)
          (.decCall (nm "nd") .one (nm "_decode_witness_node")
            [lv (nm "db"), .rfield 1 (lv (nm "r")), .rfield 2 (lv (nm "r"))]
            (.seq (.ite (.cmp .notEqual (lv (nm "nd")) (cw 0))
                (.decCall (nm "h") .one (nm "alloc") [cw 32]
                  (.seq (callD (nm "memcpy") [lv (nm "h"), lv (nm "root_hash"), cw 32])
                    (.store (.op .add [lv (nm "nd"), cw 24]) (lv (nm "h")))))
                .skip)
              (.return (lv (nm "nd"))))))))

def params_dwtm : List (MlS × ShapeHOL) := [(nm "db", .one), (nm "root_hash", .one)]

theorem entry_dwtm : fnEntry Guest.Software.guestFn_decode_witness_to_mpt =
    (nm "decode_witness_to_mpt", params_dwtm, dwtmBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_dwtm :
    guestCode (nm "decode_witness_to_mpt") = some (params_dwtm, dwtmBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 265) (by decide)) ⟨_, rfl⟩
    entry_dwtm

/-- **`decode_witness_to_mpt`'s precondition**: the allocator is ordered and the node DB `db` is
well formed below `heap_ptr` (`NdbW db hp`). This is what a caller must establish (from `G` plus
the witness hook `WitG`, see `band1-design.md` §3.1). -/
def DwPre (vs : List (ValueHOL 64)) (s : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ (db : BitVec 64) (rh : ValueHOL 64), vs = [.val (.word db), rh] ∧
    ∃ p : Ptrs, ptrsOf s = some p ∧ p.Ordered ∧ NdbW db p.hp s.memory

/-- The table costs `decode_witness_to_mpt` uses. -/
def bMemeq : Nat := 73786976294838206468
def bNdbLookup : Nat := 92233720368547758088

def dwtmB : Nat :=
  1 + bMemeq + (max 0 0 + (1 + bNdbLookup + (max (1 + 0 + 0) 0 +
    (1 + dwnB + (max (1 + 2 + ((1 + bMemeq + 0) + 0)) 0 + 0)))))

/-- **T3.** `decode_witness_to_mpt` under `DwPre`: the found witness slice satisfies the root's
`DecPre NdbW` at `_decode_witness_node`. -/
theorem dwtm_costP : Inv.CalleeCostP σ guestCtx (nm "decode_witness_to_mpt") DwPre dwtmB := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, -, hbind⟩ := MemSafe.lookupCode_gen code_dwtm hl
  unfold dwtmBody dwtmB
  -- `var is_empty = memeq(…)`: memory and allocator pointers unchanged
  refine costP_decCall (Pre := fun _ _ => True)
    (Inv.calleeCostP_of_calleeCost (MemSafe.Wire.calleeCost_guest (f := nm "memeq") (B := bMemeq) rfl))
    (fun _ _ _ _ _ _ => trivial)
    ((Spec.Mpt.Leaves.ndb_mw guestCtx_code Spec.Mpt.Leaves.memeq_mem').and
      (Spec.Mpt.Leaves.ndb_ptrs guestCtx_code Spec.Mpt.Leaves.memeq_mem')) ?_
  rintro s _ ⟨hloc, db, rh, rfl, p0, hp0, hord, hW⟩ _ _ callee1 v1 st1 ⟨hm1, hpt1⟩ _ _
  have hA := (hbind 0 (by decide) (by simp)).1
  have hB := (hbind 1 (by decide) (by simp)).1
  -- the invariant up to the root call: entry memory, entry pointers, entry arguments
  let J : PanSemStateFiniteExact 64 σ → Prop := fun t => t.memory = s.memory ∧
    ptrsOf t = some p0 ∧ t.locals.lookup (nm "db") = some (.val (.word db)) ∧
    t.locals.lookup (nm "root_hash") = some rh
  have j1 : J (setVarHOLFinite (nm "is_empty") v1 { st1 with locals := s.locals }) := by
    refine ⟨hm1, ?_, ?_, ?_⟩
    · exact (ptrsOf_glob (t := setVarHOLFinite (nm "is_empty") v1 { st1 with locals := s.locals })
        (s := st1) rfl).trans (hpt1.trans ((ptrsOf_glob (t := callEntryStateHOLFinite s callee1)
          (s := s) rfl).trans hp0))
    · rw [lk_set_ne _ _ (by decide)]; show s.locals.lookup _ = _; rw [hloc]; exact hA
    · rw [lk_set_ne _ _ (by decide)]; show s.locals.lookup _ = _; rw [hloc]; exact hB
  refine Inv.costP_seq (R := J) (Inv.costP_of_cost (cost_ite (cost_return _) cost_skip)) ?_ ?_
  · exact hoare_ite (hoare_return fun _ _ _ _ _ h => by cases h)
      (hoare_skip fun t _ ht _ => by rw [ht.1]; exact j1)
  -- `var r = nodedb_lookup(db, root_hash)`: memory and pointers unchanged, a located slice
  refine costP_decCall (Pre := fun _ _ => True)
    (Inv.calleeCostP_of_calleeCost
      (MemSafe.Wire.calleeCost_guest (f := nm "nodedb_lookup") (B := bNdbLookup) rfl))
    (fun _ _ _ _ _ _ => trivial)
    ((Spec.Mpt.Leaves.ndb_mw guestCtx_code Spec.Mpt.Leaves.nodedb_lookup_mem).and
      ((Spec.Mpt.Leaves.ndb_ptrs guestCtx_code Spec.Mpt.Leaves.nodedb_lookup_mem).and
        (Spec.Mpt.Leaves.funSpec_nodedb_lookup_ret guestCtx_code))) ?_
  rintro t _ ⟨jm, jp, jdb, jrh⟩ vs2 hvs2 callee2 v2 st2 ⟨hm2, hpt2, hret⟩ _ hsh2
  rw [evs_cons (by rw [ev_lv]; exact jdb) (evs_cons (by rw [ev_lv]; exact jrh) evs_nil)] at hvs2
  cases hvs2
  obtain ⟨ws, hws, rfl⟩ := eq_wv_of_shapeEq' (k := 3) hsh2
  match ws, hws with
  | [x, y, z], _ =>
  have hnl : NlRet p0.hp (wv [x, y, z]) :=
    hret _ rfl db rh p0.hp rfl (by
      show NdbW db p0.hp t.memory
      rw [jm]; exact hW)
  let t2 := setVarHOLFinite (nm "r") (wv [x, y, z]) { st2 with locals := t.locals }
  have hr2 : ev t2 (lv (nm "r")) = some (wv [x, y, z]) := by rw [ev_lv]; exact lk_set_self _ _ _
  have hm2' : t2.memory = s.memory := hm2.trans jm
  have hp2' : ptrsOf t2 = some p0 :=
    (ptrsOf_glob (t := t2) (s := st2) rfl).trans (hpt2.trans
      ((ptrsOf_glob (t := callEntryStateHOLFinite t callee2) (s := t) rfl).trans jp))
  have hdb2 : t2.locals.lookup (nm "db") = some (.val (.word db)) := by
    show (setVarHOLFinite _ _ _).locals.lookup _ = _
    rw [lk_set_ne _ _ (by decide)]; exact jdb
  -- the `mpt_fail` guard: a found entry
  refine Inv.CostP.pre (P := fun u => u = t2) ?_ (fun u _ hu => hu)
  refine Inv.costP_seq
    (R := fun u => u = t2 ∧ ev u (.cmp .equal (.rfield 0 (lv (nm "r"))) (cw 0)) = some (.val (.word 0)))
    (Inv.costP_of_cost (cost_ite (cost_call (MemSafe.Wire.calleeCost_guest (f := nm "mpt_fail") (B := 0) rfl)
      (by intro _ _ _ _ h; cases h)) cost_skip))
    (hoare_post (hoare_guard (funRet_mpt_fail guestCtx_code)) fun _ _ _ _ h _ => ⟨h.2.1, h.2.2⟩) ?_
  -- `var nd = _decode_witness_node(db, r.1, r.2)`: the root precondition
  refine costP_decCall dwn_costP ?_ (funSpec_true _) ?_
  · rintro u _ ⟨rfl, hc⟩ vs3 hvs3 callee3
    obtain ⟨x', y', hx', hy', hxy⟩ := cmp_false hc
    rw [ev_rfield_wv hr2 (by simp)] at hx'
    rw [ev_cw] at hy'
    cases hx'; cases hy'
    have hx0 : x ≠ 0 := Spec.equal_false hxy
    obtain ⟨hy1, hy2⟩ := hnl x y z rfl hx0
    rw [evs_cons (by rw [ev_lv]; exact hdb2) (evs_cons (ev_rfield_wv hr2 (by simp))
      (evs_cons (ev_rfield_wv hr2 (by simp)) evs_nil))] at hvs3
    cases hvs3
    refine ⟨db, y, z, rfl, ⟨p0, ?_, hord⟩, p0.hp, p0, ?_, hy1, hy2, le_rfl, ?_⟩
    · exact (ptrsOf_glob (t := callEntryStateHOLFinite t2 callee3) (s := t2) rfl).trans hp2'
    · exact (ptrsOf_glob (t := callEntryStateHOLFinite t2 callee3) (s := t2) rfl).trans hp2'
    · show NdbW db p0.hp t2.memory
      rw [hm2']; exact hW
  · intro _ _ _ _ _ _ _ _ _ _ _
    exact Inv.costP_of_cost (cost_seq (cost_ite
      (cost_decCall (MemSafe.Wire.calleeCost_guest (f := nm "alloc") (B := 2) rfl)
        (cost_seq (cost_call (MemSafe.Wire.calleeCost_guest (f := nm "memcpy") (B := bMemeq) rfl)
          (by intro _ _ _ _ h; cases h)) (cost_store _ _))) cost_skip) (cost_return _))

end InitECandidate.Solver.Band

#print axioms InitECandidate.Solver.Band.decRoot
#print axioms InitECandidate.Solver.Band.dwnm_costP
#print axioms InitECandidate.Solver.Band.dwn_costP
#print axioms InitECandidate.Solver.Band.dwtm_costP
