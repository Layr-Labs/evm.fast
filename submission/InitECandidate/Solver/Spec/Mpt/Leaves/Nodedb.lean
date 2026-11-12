import InitECandidate.Solver.Spec.Mpt.Leaves.Common
import InitECandidate.Solver.Spec.Inv.HtabRead
import InitECandidate.Solver.Spec.Inv.HtabFind
import InitECandidate.Solver.Spec.FootprintGuest

/-!
# `nodedb_lookup`: a found slice lies in the heap below `H`, under a node-DB invariant `NdbW`

```
fun {1,1,1} nodedb_lookup(1 db, 1 hash) {
  var {1,1} r = htab_get(db, hash);
  if r.0 == 0 { return <0, 0, 0>; }
  return <1, lds 1 (r.1), lds 1 (r.1 + 8)>; }
```

`htab_get(T, key)` returns `<1, LEFT(leaf)>` only for a nonzero `leaf` that ends the
`htab_find_leaf` walk from the root (`funSpec_htab_get_ret`, from `Inv.funSpec_find_leaf`). Such a
leaf is reached from the root through internal nodes (`KIND ≠ KB`) and has `KIND = KB`
(`walk_S`).

**The invariant** `NdbW T H M` (the weakest that makes the fact provable while reading only heap
cells below `H`): the header cells `T + 0` (`KEYLEN`), `T + 40` (`NODES`) and `T + 56` (`ROOT`)
lie in `[heapBase, H)`, and some set `S` of node indices contains the root and, for every
nonzero `n ∈ S`,
* the `KIND` and `LEFT` cells of `n` lie in `[heapBase, H)`;
* a leaf (`KIND = KB`, `KB = 8 · KEYLEN`): the slice record `LEFT` (its cells `LEFT` and
  `LEFT + 8`) lies in `[heapBase, H)`, and so does the slice it describes:
  `heapBase ≤ rd LEFT` and `rd LEFT + rd (LEFT + 8) ≤ H`;
* an internal node: the `RIGHT` cell lies in `[heapBase, H)`, and both children are in `S`.

`wFrame_ndbW : WFrame NdbW`. `freshFoot_nodedb_lookup : FreshFoot … (NlPre NdbW H) (NlQ H)`: memory and
the three allocator globals are unchanged (`nodedb_lookup`, `htab_get`, `htab_find_leaf` and `memeq`
pass the memory-write and global-write checkers, `decide_cbv`).

`memsafe-design` establishes `NdbW` from `G`: the node DB built by `nodedb_build` is a
`Γ` htab whose leaves hold pointers to 16-byte slice records of the witness array, and the
witness slices are heap buffers allocated before the decode (below the `heap_ptr` at the call).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Mpt.Leaves
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec

variable {σ : Type} {X : Ctx 64}

open MemSafe (ptrsOf Ptrs heapEnd heapBase scratchEnd)

/-! ## The invariant -/

/-- The cell address of field `off` of node `i`. -/
def nodeA (M : MemSafe.Mem) (T i : BitVec 64) (off : Nat) : BitVec 64 :=
  Inv.hdr M T 40 + i * BitVec.ofNat 64 32 + BitVec.ofNat 64 off

/-- A heap cell below `H`. -/
def InH (H : Nat) (a : BitVec 64) : Prop := heapBase ≤ a.toNat ∧ a.toNat < H

/-- **The node-DB invariant** `nodedb_lookup` needs. -/
def NdbW (T : BitVec 64) (H : Nat) (M : MemSafe.Mem) : Prop :=
  InH H (T + BitVec.ofNat 64 0) ∧ InH H (T + BitVec.ofNat 64 40) ∧
    InH H (T + BitVec.ofNat 64 56) ∧
    ∃ S : BitVec 64 → Prop, S (Inv.hdr M T 56) ∧ ∀ n, S n → n ≠ 0 →
      InH H (nodeA M T n 24) ∧ InH H (nodeA M T n 8) ∧
      (Inv.KIND M T n = Inv.KB M T → InH H (Inv.LEFT M T n) ∧
        InH H (Inv.LEFT M T n + BitVec.ofNat 64 8) ∧ heapBase ≤ (Inv.rd M (Inv.LEFT M T n)).toNat ∧
        (Inv.rd M (Inv.LEFT M T n)).toNat + (Inv.rd M (Inv.LEFT M T n + BitVec.ofNat 64 8)).toNat ≤
          H) ∧
      (Inv.KIND M T n ≠ Inv.KB M T → InH H (nodeA M T n 16) ∧ S (Inv.LEFT M T n) ∧
        S (Inv.RIGHT M T n))

/-- `NdbW` reads only heap cells below `H`. -/
theorem wFrame_ndbW : WFrame NdbW := by
  intro T H M M' ⟨h0, h40, h56, S, hroot, hS⟩ hM
  have rdE : ∀ a, InH H a → Inv.rd M' a = Inv.rd M a := fun a ⟨h1, h2⟩ => by
    unfold Inv.rd; rw [hM a h1 h2]
  have h40e : Inv.hdr M' T 40 = Inv.hdr M T 40 := rdE _ h40
  have nA : ∀ n off, nodeA M' T n off = nodeA M T n off := by
    intro n off; unfold nodeA; rw [h40e]
  have nF : ∀ n off, InH H (nodeA M T n off) → Inv.nodeF M' T n off = Inv.nodeF M T n off := by
    intro n off h
    unfold Inv.nodeF
    rw [h40e]
    exact rdE _ h
  have hKB : Inv.KB M' T = Inv.KB M T := by
    unfold Inv.KB; rw [show Inv.hdr M' T 0 = Inv.hdr M T 0 from rdE _ h0]
  refine ⟨h0, h40, h56, S, by rw [show Inv.hdr M' T 56 = Inv.hdr M T 56 from rdE _ h56]; exact hroot,
    fun n hn hn0 => ?_⟩
  obtain ⟨k24, k8, hleaf, hint⟩ := hS n hn hn0
  have eK : Inv.KIND M' T n = Inv.KIND M T n := nF n 24 k24
  have eL : Inv.LEFT M' T n = Inv.LEFT M T n := nF n 8 k8
  refine ⟨by rw [nA]; exact k24, by rw [nA]; exact k8, fun hk => ?_, fun hk => ?_⟩
  · rw [eK, hKB] at hk
    obtain ⟨hv0, hv1, hv2, hv3⟩ := hleaf hk
    rw [eL]
    exact ⟨hv0, hv1, by rw [rdE _ hv0]; exact hv2, by rw [rdE _ hv0, rdE _ hv1]; exact hv3⟩
  · rw [eK, hKB] at hk
    obtain ⟨k16, hl, hr⟩ := hint hk
    have eR : Inv.RIGHT M' T n = Inv.RIGHT M T n := nF n 16 k16
    exact ⟨by rw [nA]; exact k16, by rw [eL]; exact hl, by rw [eR]; exact hr⟩

/-- A walk from a node of a child-closed set ends, when nonzero, at a leaf of the set. -/
theorem walk_S {M : MemSafe.Mem} {d : BitVec 64 → Prop} {be : Bool} {T key : BitVec 64}
    {S : BitVec 64 → Prop}
    (hcl : ∀ n, S n → n ≠ 0 → Inv.KIND M T n ≠ Inv.KB M T → S (Inv.LEFT M T n) ∧ S (Inv.RIGHT M T n))
    {n v : BitVec 64} (h : Inv.WalkFrom M d be T key n v) :
    S n → v ≠ 0 → S v ∧ Inv.KIND M T v = Inv.KB M T := by
  induction h with
  | zero => intro _ hv; exact absurd rfl hv
  | leaf hn0 hk => intro hn _; exact ⟨hn, hk⟩
  | left hn0 hk _ _ ih => intro hn hv; exact ih (hcl _ hn hn0 hk).1 hv
  | right hn0 hk _ _ ih => intro hn hv; exact ih (hcl _ hn hn0 hk).2 hv

/-! ## Checkers: memory and the allocator globals -/

def ndbFns : EntryList :=
  [fnEntry Guest.Software.guestFn_nodedb_lookup, fnEntry Guest.Software.guestFn_htab_get,
   fnEntry Guest.Software.guestFn_htab_find_leaf, fnEntry Guest.Software.guestFn_memeq]

def ndbNames : List MlS := ndbFns.map Prod.fst

theorem ndbFns_valid : ∀ e ∈ ndbFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [ndbFns, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 254) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 132) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 131) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 18) (by decide)) ⟨_, rfl⟩

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem ndbFns_mw : ndbFns.all (fun e => mwFreeB ndbNames e.2.2.1) = true := by decide_cbv

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem ndbFns_gw_heap : ndbFns.all (fun e => gwFreeB (nm "heap_ptr") ndbNames e.2.2.1) = true := by
  decide_cbv

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem ndbFns_gw_frame :
    ndbFns.all (fun e => gwFreeB (nm "frame_mem_ptr") ndbNames e.2.2.1) = true := by decide_cbv

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem ndbFns_gw_scratch :
    ndbFns.all (fun e => gwFreeB (nm "scratch_ptr") ndbNames e.2.2.1) = true := by decide_cbv

theorem nodedb_lookup_mem : ndbNames.contains (nm "nodedb_lookup") = true := by decide_cbv
theorem htab_get_mem : ndbNames.contains (nm "htab_get") = true := by decide_cbv
theorem find_leaf_mem : ndbNames.contains (nm "htab_find_leaf") = true := by decide_cbv
theorem memeq_mem' : ndbNames.contains (nm "memeq") = true := by decide_cbv

theorem ndb_mwClosed : MwClosed ndbNames guestCode :=
  closed_of_entries (chk := mwFreeB) ndbFns_valid ndbFns_mw
theorem ndb_gwClosed_heap : GwClosed (nm "heap_ptr") ndbNames guestCode :=
  closed_of_entries (chk := gwFreeB (nm "heap_ptr")) ndbFns_valid ndbFns_gw_heap
theorem ndb_gwClosed_frame : GwClosed (nm "frame_mem_ptr") ndbNames guestCode :=
  closed_of_entries (chk := gwFreeB (nm "frame_mem_ptr")) ndbFns_valid ndbFns_gw_frame
theorem ndb_gwClosed_scratch : GwClosed (nm "scratch_ptr") ndbNames guestCode :=
  closed_of_entries (chk := gwFreeB (nm "scratch_ptr")) ndbFns_valid ndbFns_gw_scratch

theorem ndb_mw (hC : X.code.lookup = guestCode) {f : MlS} (hf : ndbNames.contains f = true) :
    FunSpec σ X f (fun _ s _ t => t.memory = s.memory) :=
  funSpec_mw (by rw [hC]; exact ndb_mwClosed) hf

/-- The three allocator globals are unchanged. -/
theorem ndb_ptrs (hC : X.code.lookup = guestCode) {f : MlS} (hf : ndbNames.contains f = true) :
    FunSpec σ X f (fun _ s _ t => ptrsOf t = ptrsOf s) := by
  have h1 := funSpec_gw (σ := σ) (X := X) (by rw [hC]; exact ndb_gwClosed_heap) hf
  have h2 := funSpec_gw (σ := σ) (X := X) (by rw [hC]; exact ndb_gwClosed_frame) hf
  have h3 := funSpec_gw (σ := σ) (X := X) (by rw [hC]; exact ndb_gwClosed_scratch) hf
  refine FunSpec.mono ((h1.and h2).and h3) fun _ s _ t ⟨⟨e1, e2⟩, e3⟩ => ?_
  unfold ptrsOf MemSafe.gword MemSafe.gHeap MemSafe.gFrame MemSafe.gScratch
  rw [e1, e2, e3]

/-! ## `htab_get` -/

def hgTail : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "eq")) (cw 0)) (.return (.rstruct [cw 0, cw 0])) .skip)
    (.return (.rstruct [cw 1, .load .one (.op .add [.load .one (.op .add [lv (nm "t"), cw 40]),
      .panop .mul [lv (nm "leaf"), cw 32], cw 8])]))

def hgBody : ProgHOL 64 :=
  .decCall (nm "leaf") .one (nm "htab_find_leaf") [lv (nm "t"), lv (nm "key")]
    (.seq (.ite (.cmp .equal (lv (nm "leaf")) (cw 0)) (.return (.rstruct [cw 0, cw 0])) .skip)
      (.dec (nm "klen") .one (.load .one (.op .add [lv (nm "t"), cw 0]))
        (.dec (nm "stride") .one (.load .one (.op .add [lv (nm "t"), cw 8]))
          (.dec (nm "keys") .one (.load .one (.op .add [lv (nm "t"), cw 32]))
            (.decCall (nm "eq") .one (nm "memeq")
              [.op .add [lv (nm "keys"), .panop .mul [lv (nm "leaf"), lv (nm "stride")]],
                lv (nm "key"), lv (nm "klen")] hgTail)))))

def params_hg : List (MlS × ShapeHOL) := [(nm "t", .one), (nm "key", .one)]

theorem entry_htab_get : fnEntry Guest.Software.guestFn_htab_get =
    (nm "htab_get", params_hg, hgBody, .comb [.one, .one]) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_htab_get : guestCode (nm "htab_get") = some (params_hg, hgBody, .comb [.one, .one]) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 132) (by decide)) ⟨_, rfl⟩
    entry_htab_get

/-- A found result of `htab_get(T, key)` from memory `M`: `<a, b>`, `a ≠ 0`, `b` the `LEFT` field of
a nonzero end of the root walk. -/
def HgRet (s : State σ) (T key : BitVec 64) (v : ValueHOL 64) : Prop :=
  ∀ a b : BitVec 64, v = .rStruct [.val (.word a), .val (.word b)] → a ≠ 0 →
    ∃ leaf, Inv.Wk s T key (Inv.hdr s.memory T 56) leaf ∧ leaf ≠ 0 ∧ b = Inv.LEFT s.memory T leaf

/-- A return of `rstruct [cw 0, cw 0]` is not found. -/
theorem hgRet_zero {s : State σ} {T key : BitVec 64} {t : State σ} {v : ValueHOL 64}
    (hv : ev t (.rstruct [cw 0, cw 0]) = some v) : HgRet s T key v := by
  intro a b hab ha
  rw [ev_rstruct (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) evs_nil))] at hv
  rw [← Option.some.inj hv] at hab
  simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq,
    and_true] at hab
  exact absurd hab.1.symm ha

theorem funSpec_htab_get_ret (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_get") (fun vs s r _ => ∀ v, r = .returned v → ∀ T key,
      vs = [.val (.word T), .val (.word key)] → HgRet s T key v) := by
  refine FunSpec.mono (R := fun vs s r _ => ∀ v, r = .returned v →
      ∀ T key, vs = [.val (.word T), .val (.word key)] → HgRet s T key v)
    (funSpec_of_hoare (R := fun vs s v _ => ∀ T key, vs = [.val (.word T), .val (.word key)] →
      HgRet s T key v) ?_) fun _ _ _ _ h => h
  intro vs body callee rs hl s0 _ hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hsA, hsB, hA, hB⟩ := lookupCode_two code_htab_get (by decide) hl
  obtain ⟨T, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨K, rfl⟩ := val_of_shapeEq_one hsB
  have hlt : s0.locals.lookup (nm "t") = some (.val (.word T)) := by rw [hloc]; exact hA
  have hlk : s0.locals.lookup (nm "key") = some (.val (.word K)) := by rw [hloc]; exact hB
  -- the post ignores the final state
  refine hoare_conseq (Q := fun r _ => ∀ v, r = some (.returned v) → HgRet s0 T K v) ?_
    (fun _ _ h => h) fun r t _ _ h v hv T' K' hvs => by
      simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
      obtain ⟨rfl, rfl⟩ := hvs
      exact h v hv
  refine hoare_decCallL ((Inv.funSpec_find_leaf (σ := σ) hC).and (ndb_mw hC find_leaf_mem))
    (fun _ _ _ h => h) fun s _ hs0 avs havs callee' v st ⟨hR, hm⟩ _ hsh => ?_
  subst hs0
  rw [evs_cons (ev_lv' hlt) (evs_cons (ev_lv' hlk) evs_nil)] at havs
  simp only [Option.some.injEq] at havs
  subst havs
  obtain ⟨L, rfl⟩ := val_of_shapeEq_one' hsh
  have hW := hR T K rfl L rfl
  have hm' : st.memory = s.memory := hm
  set t1 := setVarHOLFinite (nm "leaf") (.val (.word L)) { st with locals := s.locals }
  have hl1 : t1.locals.lookup (nm "leaf") = some (.val (.word L)) := lk_set_self _ _ _
  have ht1 : t1.locals.lookup (nm "t") = some (.val (.word T)) := by
    rw [lk_set_ne _ _ (by decide)]; exact hlt
  -- the invariant: `t`, `leaf`, memory
  let J : State σ → Prop := fun t => t.locals.lookup (nm "t") = some (.val (.word T)) ∧
    t.locals.lookup (nm "leaf") = some (.val (.word L)) ∧ t.memory = s.memory
  refine hoare_pre (P := J) ?_ fun t _ ht => by subst ht; exact ⟨ht1, hl1, hm'⟩
  refine hoare_retGuard (fun t _ _ v hv => fun w hw => ?_) ?_
  · simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
    subst hw
    exact hgRet_zero hv
  refine hoare_pre (P := fun t => J t ∧ L ≠ 0) ?_ fun t _ ⟨hJ, hc⟩ => ⟨hJ, by
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
    rw [ev_lv, hJ.2.1] at hx; rw [ev_cw] at hy; cases hx; cases hy
    exact Spec.equal_false hxy⟩
  -- three `dec`s and the `memeq` call keep `J`
  have keepD : ∀ {x : MlS} {e : ExpHOL 64} {k : ProgHOL 64}, x ≠ nm "t" → x ≠ nm "leaf" →
      Hoare σ X (fun t => J t ∧ L ≠ 0) k (fun r _ => ∀ v, r = some (.returned v) → HgRet s T K v) →
      Hoare σ X (fun t => J t ∧ L ≠ 0) (.dec x .one e k)
        (fun r _ => ∀ v, r = some (.returned v) → HgRet s T K v) := by
    intro x e k hxt hxl hk
    refine hoare_decL (fun _ _ _ h => h) fun u _ ⟨⟨j1, j2, j3⟩, hL⟩ w _ _ => hoare_pre hk ?_
    intro t _ ht
    subst ht
    exact ⟨⟨by rw [lk_set_ne _ _ hxt]; exact j1, by rw [lk_set_ne _ _ hxl]; exact j2, j3⟩, hL⟩
  refine keepD (by decide) (by decide) (keepD (by decide) (by decide) (keepD (by decide) (by decide) ?_))
  refine hoare_decCallL (ndb_mw hC memeq_mem') (fun _ _ _ h => h)
    fun u _ ⟨⟨j1, j2, j3⟩, hL⟩ _ _ callee'' w st' hm2 _ _ => ?_
  have hm2' : st'.memory = u.memory := hm2
  refine hoare_pre (P := fun t => J t ∧ L ≠ 0) ?_ fun t _ ht => by
    subst ht
    exact ⟨⟨by rw [lk_set_ne _ _ (by decide)]; exact j1, by rw [lk_set_ne _ _ (by decide)]; exact j2,
      by show st'.memory = s.memory; rw [hm2', j3]⟩, hL⟩
  unfold hgTail
  refine hoare_retGuard (fun t _ _ v hv => fun w hw => ?_) ?_
  · simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
    subst hw
    exact hgRet_zero hv
  refine hoare_return fun t _ ⟨⟨⟨j1, j2, j3⟩, hL⟩, _⟩ v hv => fun w hw => ?_
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
  subst hw
  intro a b hab _
  obtain ⟨vs, rfl, hvs⟩ := ev_rstruct_inv hv
  obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
  obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
  simp only [ValueHOL.rStruct.injEq, List.cons.injEq] at hab
  obtain ⟨-, rfl, -⟩ := hab
  obtain ⟨w, hw, -, hv2⟩ := ev_load1_inv' h2
  obtain ⟨x, y, z, hx, hy, hz, hw'⟩ := ev_add3_inv' hw
  obtain ⟨w0, hw0, -, hx'⟩ := ev_load1_inv' hx
  rw [ev_add2 (ev_lv' j1) (ev_cw _ 40)] at hw0
  obtain ⟨y1, y2, hy1, hy2, hy'⟩ := ev_mul2_inv' hy
  rw [ev_lv, j2] at hy1
  rw [ev_cw] at hy2 hz
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw0 hx' hy1 hy2 hy' hz hw' hv2
  subst hw0 hy1 hy2 hz hw' hv2 hx' hy'
  refine ⟨L, hW, hL, ?_⟩
  rw [j3]
  show _ = Inv.rd s.memory (Inv.rd s.memory (T + BitVec.ofNat 64 40) + L * BitVec.ofNat 64 32 +
    BitVec.ofNat 64 8)
  rw [BitVec.add_assoc]
  rfl

/-! ## `nodedb_lookup` -/

def nlBody : ProgHOL 64 :=
  .decCall (nm "r") (.comb [.one, .one]) (nm "htab_get") [lv (nm "db"), lv (nm "hash")]
    (.seq (.ite (.cmp .equal (.rfield 0 (lv (nm "r"))) (cw 0)) (.return (.rstruct [cw 0, cw 0, cw 0]))
        .skip)
      (.return (.rstruct [cw 1, .load .one (.rfield 1 (lv (nm "r"))),
        .load .one (.op .add [.rfield 1 (lv (nm "r")), cw 8])])))

def params_nl : List (MlS × ShapeHOL) := [(nm "db", .one), (nm "hash", .one)]

theorem entry_nodedb_lookup : fnEntry Guest.Software.guestFn_nodedb_lookup =
    (nm "nodedb_lookup", params_nl, nlBody, .comb [.one, .one, .one]) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_nodedb_lookup :
    guestCode (nm "nodedb_lookup") = some (params_nl, nlBody, .comb [.one, .one, .one]) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 254) (by decide)) ⟨_, rfl⟩
    entry_nodedb_lookup

/-- The `NlQ H` fact of a returned value. -/
def NlRet (H : Nat) (v : ValueHOL 64) : Prop :=
  ∀ a b c : BitVec 64, v = .rStruct [.val (.word a), .val (.word b), .val (.word c)] → a ≠ 0 →
    heapBase ≤ b.toNat ∧ b.toNat + c.toNat ≤ H

theorem funSpec_nodedb_lookup_ret (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "nodedb_lookup") (fun vs s r _ => ∀ v, r = .returned v →
      ∀ (T : BitVec 64) (b : ValueHOL 64) (H : Nat), vs = [.val (.word T), b] →
        NdbW T H s.memory → NlRet H v) := by
  refine FunSpec.mono (funSpec_of_hoare (R := fun vs s v _ => ∀ (T : BitVec 64) (b : ValueHOL 64)
      (H : Nat), vs = [.val (.word T), b] → NdbW T H s.memory → NlRet H v) ?_) fun _ _ _ _ h => h
  intro vs body callee rs hl s0 _ hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hsA, hsB, hA, hB⟩ := lookupCode_two code_nodedb_lookup (by decide) hl
  obtain ⟨T, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨K, rfl⟩ := val_of_shapeEq_one hsB
  have hld : s0.locals.lookup (nm "db") = some (.val (.word T)) := by rw [hloc]; exact hA
  have hlh : s0.locals.lookup (nm "hash") = some (.val (.word K)) := by rw [hloc]; exact hB
  refine hoare_conseq (Q := fun r _ => ∀ v, r = some (.returned v) →
      ∀ H, NdbW T H s0.memory → NlRet H v) ?_ (fun _ _ h => h) fun r t _ _ h v hv T' b' H hvs hW => by
    simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
    obtain ⟨rfl, -⟩ := hvs
    exact h v hv H hW
  refine hoare_decCallL ((funSpec_htab_get_ret (σ := σ) hC).and (ndb_mw hC htab_get_mem))
    (fun _ _ _ h => h) fun s _ hs0 avs havs callee' v st ⟨hR, hm⟩ _ hsh => ?_
  subst hs0
  rw [evs_cons (ev_lv' hld) (evs_cons (ev_lv' hlh) evs_nil)] at havs
  simp only [Option.some.injEq] at havs
  subst havs
  obtain ⟨ws, hws, rfl⟩ := eq_wv_of_shapeEq' (k := 2) hsh
  match ws, hws with
  | [x, y], _ =>
  have hG := hR (wv [x, y]) rfl T K rfl
  have hm' : st.memory = s.memory := hm
  set t1 := setVarHOLFinite (nm "r") (wv [x, y]) { st with locals := s.locals }
  have hr1 : t1.locals.lookup (nm "r") = some (.rStruct [.val (.word x), .val (.word y)]) :=
    lk_set_self _ _ _
  refine hoare_pre (P := fun t => t.locals.lookup (nm "r") =
      some (.rStruct [.val (.word x), .val (.word y)]) ∧ t.memory = s.memory) ?_
    fun t _ ht => by subst ht; exact ⟨hr1, hm'⟩
  refine hoare_retGuard (fun t _ _ v hv => fun w hw => ?_) ?_
  · simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
    subst hw
    intro H _ a b c hv' ha
    rw [ev_rstruct (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) evs_nil)))] at hv
    rw [← Option.some.inj hv] at hv'
    simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq,
      and_true] at hv'
    exact absurd hv'.1.symm ha
  refine hoare_return fun t _ ⟨⟨j1, j2⟩, hc⟩ v hv => fun w hw => ?_
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
  subst hw
  intro H hW a b c hv' _
  have hx0 : x ≠ 0 := by
    obtain ⟨x', y', hx', hy', hxy⟩ := cmp_false hc
    rw [ev_rfield_w j1 (by rfl)] at hx'
    rw [ev_cw] at hy'
    cases hx'; cases hy'
    exact Spec.equal_false hxy
  obtain ⟨leaf, hwk, hl0, rfl⟩ := hG x y rfl hx0
  obtain ⟨vs, rfl, hvs⟩ := ev_rstruct_inv hv
  obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
  obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
  obtain ⟨v3, vs3, rfl, h3, hvs3⟩ := evs_cons_inv hvs2
  simp only [ValueHOL.rStruct.injEq, List.cons.injEq] at hv'
  obtain ⟨-, rfl, rfl, -⟩ := hv'
  obtain ⟨w2, hw2, -, hv2⟩ := ev_load1_inv' h2
  rw [ev_rfield_w j1 (by rfl)] at hw2
  obtain ⟨w3, hw3, -, hv3⟩ := ev_load1_inv' h3
  rw [ev_add2 (ev_rfield_w j1 (by rfl)) (ev_cw _ 8)] at hw3
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw2 hv2 hw3 hv3
  subst hw2 hv2 hw3 hv3
  obtain ⟨-, -, -, S, hroot, hS⟩ := hW
  obtain ⟨hSl, hk⟩ := walk_S (fun n hn hn0 hk => ((hS n hn hn0).2.2.2 hk).2) hwk hroot hl0
  rw [j2]
  obtain ⟨-, -, hb, hbc⟩ := (hS leaf hSl hl0).2.2.1 hk
  exact ⟨hb, hbc⟩

/-- **`nodedb_lookup`** under `NdbW`: no memory or allocator change; a found slice lies in the
heap below `H`. -/
theorem freshFoot_nodedb_lookup (hC : X.code.lookup = guestCode) (H : Nat) :
    FreshFoot σ X (nm "nodedb_lookup") (NlPre NdbW H) (NlQ H) := by
  refine FunSpec.mono (((ndb_mw hC nodedb_lookup_mem).and (ndb_ptrs hC nodedb_lookup_mem)).and
    (funSpec_nodedb_lookup_ret hC)) fun vs s r t ⟨⟨hm, hp⟩, hret⟩ v hv p hps hord hpre => ?_
  obtain ⟨db, b, rfl, p0, -, -, -, hW⟩ := hpre
  refine ⟨p, by rw [hp, hps], hord, ⟨le_rfl, le_rfl, le_rfl⟩, fun a ha => absurd (by rw [hm]) ha, ?_⟩
  exact hret v hv db b H rfl hW

end InitECandidate.Solver.Spec.Mpt.Leaves
