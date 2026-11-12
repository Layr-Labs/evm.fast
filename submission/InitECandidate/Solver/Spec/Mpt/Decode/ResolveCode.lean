import InitECandidate.Solver.Spec.Mpt.Decode.Body

/-!
# `_resolve_step` and `node_new_hashed` as guest code

Readable renderings certified by `cbv` against the code map (`code_resolve_step`,
`code_node_new_hashed`), and `freshFoot_node_new_hashed`: `node_new_hashed` returns a fresh
32-byte heap block (from `MemSafe.allocSpec_alloc`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Mpt.Dec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd)

def sh3 : ShapeHOL := .comb [.one, .one, .one]

/-- After `var r = nodedb_lookup(db, it.1)`. -/
def rsNode : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (.rfield 0 (lv (nm "r"))) (cw 0))
      (.decCall (nm "hn") .one (nm "node_new_hashed") [.rfield 1 (lv (nm "it"))]
        (.return (.rstruct [cw 0, lv (nm "hn"), cw 0, cw 0])))
      .skip)
    (.return (.rstruct [cw 1, .rfield 1 (lv (nm "r")), .rfield 2 (lv (nm "r")),
      .rfield 1 (lv (nm "it"))]))

/-- A string item: empty, or a 32-byte hash looked up in the node DB. -/
def rsStr : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (.rfield 2 (lv (nm "it"))) (cw 0))
      (.return (.rstruct [cw 0, cw 0, cw 0, cw 0])) .skip)
    (.seq (.ite (.cmp .notEqual (.rfield 2 (lv (nm "it"))) (cw 32))
        (callD (nm "mpt_fail") [cw 10]) .skip)
      (.decCall (nm "r") sh3 (nm "nodedb_lookup") [lv (nm "db"), .rfield 1 (lv (nm "it"))] rsNode))

def rsCall : ProgHOL 64 :=
  .call (some (some (.local, nm "it"), some (nm "RlpErr", nm "e", callD (nm "mpt_fail") [cw 3])))
    (nm "rlp_item") [lv (nm "p"), lv (nm "n")]

def rsBody : ProgHOL 64 :=
  .dec (nm "it") sh4 (.rstruct [cw 0, cw 0, cw 0, cw 0])
    (.dec (nm "e") .one (cw 0)
      (.seq rsCall
        (.seq (.ite (.cmp .equal (.rfield 0 (lv (nm "it"))) (cw 0)) rsStr .skip)
          (.return (.rstruct [cw 1, lv (nm "p"), lv (nm "n"), cw 0])))))

theorem entry_resolve_step : fnEntry Guest.Software.guestFn__resolve_step =
    (nm "_resolve_step", params_wd, rsBody, sh4) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_resolve_step : guestCode (nm "_resolve_step") = some (params_wd, rsBody, sh4) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 260) (by decide)) ⟨_, rfl⟩
    entry_resolve_step

def nhK : ProgHOL 64 :=
  .seq (.store (.op .add [lv (nm "nd"), cw 0]) (cw 0))
    (.seq (.store (.op .add [lv (nm "nd"), cw 8]) (cw 0))
      (.seq (.store (.op .add [lv (nm "nd"), cw 16]) (cw 0))
        (.seq (.store (.op .add [lv (nm "nd"), cw 24]) (lv (nm "hash")))
          (.return (lv (nm "nd"))))))

def nhBody : ProgHOL 64 := .decCall (nm "nd") .one (nm "alloc") [cw 32] nhK

theorem entry_node_new_hashed : fnEntry Guest.Software.guestFn_node_new_hashed =
    (nm "node_new_hashed", [(nm "hash", .one)], nhBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_node_new_hashed :
    guestCode (nm "node_new_hashed") = some ([(nm "hash", .one)], nhBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 255) (by decide)) ⟨_, rfl⟩
    entry_node_new_hashed

theorem freshFoot_node_new_hashed (hC : X.code.lookup = guestCode) :
    FreshFoot σ X (nm "node_new_hashed") (fun _ _ => True)
      (fun _ p p' _ v => FreshRet 32 p p' v) := by
  refine funSpec_of_hoare fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hsA, hA⟩ := lookupCode_one code_node_new_hashed hl
  obtain ⟨A, rfl⟩ := val_of_shapeEq_one hsA
  refine hoare_decCallS (MemSafe.allocSpec_alloc (σ := σ) hC) fun s _ hs0 avs havs callee' v st hR _ _ => ?_
  subst hs0
  rw [evs_cons (ev_cw _ 32) evs_nil] at havs
  simp only [Option.some.injEq] at havs
  subst havs
  refine hoare_conseq (P := fun t => t = setVarHOLFinite (nm "nd") v { st with locals := s.locals })
    ?_ (fun _ _ h => h) (fun r t _ _ h => h)
  intro t1 hctx1 ht1 htr
  subst ht1
  suffices H : ∀ p : Ptrs, ptrsOf s = some p → p.Ordered → ∃ q : BitVec 64, v = .val (.word q) ∧
      Hoare σ X (fun t => t = setVarHOLFinite (nm "nd") v { st with locals := s.locals }) nhK
        (fun r t => ∀ w, r = some (.returned w) → ∃ p' : Ptrs, ptrsOf t = some p' ∧ p'.Ordered ∧
          p.Mono p' ∧ (∀ a : BitVec 64, t.memory a ≠ s.memory a → ¬ p.Allocated a.toNat) ∧
          FreshRet 32 p p' w) by
    intro w hw p hp hord _
    obtain ⟨q, -, hH⟩ := H p hp hord
    exact (hH _ hctx1 rfl htr) w hw
  intro p hp hord
  have hpe : ptrsOf (callEntryStateHOLFinite s callee') = some p := hp
  obtain ⟨hm, hglob, p1, hp1, hord1, hmono, hq⟩ := hR (by simp [Good]) _ p rfl hpe hord
  obtain ⟨q, rfl, -, ⟨hl1, hl2⟩, hfree⟩ := hq _ rfl
  refine ⟨q, rfl, ?_⟩
  simp only [BitVec.toNat_ofNat] at hl2 hfree
  have hpq : p.hp ≤ q.toNat := by
    by_contra hlt
    exact hfree q.toNat le_rfl (by omega) (Or.inl ⟨hl1, by omega⟩)
  have hord1' := hord1
  obtain ⟨-, hh2, -⟩ := hord1'
  have hq64 : q.toNat + 32 ≤ 2 ^ 64 := by simp only [heapEnd] at hh2; omega
  set t1 := setVarHOLFinite (nm "nd") (.val (.word q)) { st with locals := s.locals }
  have hnd : t1.locals.lookup (nm "nd") = some (.val (.word q)) := lk_set_self _ _ _
  have hM1 : t1.memory = s.memory := hm
  have hP1 : ptrsOf t1 = some p1 := by rw [← hp1]; rfl
  have hlA : t1.locals.lookup (nm "hash") = some (.val (.word A)) := by
    rw [lk_set_ne _ _ (by decide)]; show s.locals.lookup _ = _; rw [hloc]; exact hA
  refine hoare_pre (P := InBlk t1.locals t1.globals t1.memory q 32) ?_
    (fun t _ ht => by subst ht; exact ⟨rfl, rfl, fun a ha => absurd rfl ha⟩)
  unfold nhK
  refine hoare_seq_blk hnd (by decide) hq64 (wordE_cw _ _) (hoare_seq_blk hnd (by decide) hq64
    (wordE_cw _ _) (hoare_seq_blk hnd (by decide) hq64 (wordE_cw _ _) (hoare_seq_blk hnd
      (by decide) hq64 (wordE_lv hlA) ?_)))
  refine hoare_return fun t _ ⟨hl, hg, hmt⟩ w hw w' hw' => ?_
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw'
  subst hw'
  rw [ev_lv, hl, hnd] at hw
  cases hw
  refine ⟨p1, ?_, hord1, hmono, fun a ha => ?_, q, rfl, hpq, hl2⟩
  · show ptrsOf (emptyLocalsHOLFinite t) = _
    rw [← hP1]
    exact ptrsOf_frame hg
  · have ha' : t.memory a ≠ t1.memory a := by rw [hM1]; exact ha
    obtain ⟨h1, h2⟩ := hmt a ha'
    exact hfree a.toNat h1 h2

end InitECandidate.Solver.Spec.Mpt.Dec
