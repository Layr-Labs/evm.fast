import InitECandidate.Solver.Spec.Mpt.Decode.Resolve

/-!
# `_decode_step` and `node_new_leaf` as guest code

Readable renderings certified by `cbv` against the code map (`code_decode_step`,
`code_node_new_leaf`), and `freshFoot_node_new_leaf`: `node_new_leaf` returns a fresh 64-byte
heap block (from `MemSafe.allocSpec_alloc`).
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

/-- `st x + k, e` -/
def stk (x : MlS) (k : Nat) (e : ExpHOL 64) : ProgHOL 64 := .store (.op .add [lv x, cw k]) e

/-- Loads of slice `i`'s pointer and length from the array `arr`. -/
def ldArr0 (i : Nat) : ExpHOL 64 := .load .one (.op .add [lv (nm "arr"), .panop .mul [cw i, cw 16]])
def ldArr8 (i : Nat) : ExpHOL 64 :=
  .load .one (.op .add [lv (nm "arr"), .panop .mul [cw i, cw 16], cw 8])

/-- The leaf node, after `var vi = rlp_item(arr[1])`. -/
def dsLeaf : ProgHOL 64 :=
  .seq (.ite (.cmp .notEqual (.rfield 0 (lv (nm "vi"))) (cw 0)) (callD (nm "mpt_fail") [cw 6]) .skip)
    (.decCall (nm "lf") .one (nm "node_new_leaf")
      [.rfield 0 (lv (nm "cn")), .rfield 1 (lv (nm "cn")), .rfield 1 (lv (nm "vi")), .rfield 2 (lv (nm "vi"))]
      (.seq (stk (nm "lf") 8 (lv (nm "p")))
        (.seq (stk (nm "lf") 16 (lv (nm "n")))
          (.return (.rstruct [cw 0, lv (nm "lf")])))))

/-- The extension record, after `var rec = scratch_alloc(88)`. -/
def dsExtRec : ProgHOL 64 :=
  .seq (stk (nm "rec") 8 (cw 1))
    (.seq (stk (nm "rec") 24 (lv (nm "arr")))
      (.seq (stk (nm "rec") 48 (lv (nm "p")))
        (.seq (stk (nm "rec") 56 (lv (nm "n")))
          (.seq (stk (nm "rec") 64 (.rfield 0 (lv (nm "cn"))))
            (.seq (stk (nm "rec") 72 (.rfield 1 (lv (nm "cn"))))
              (.return (.rstruct [cw 1, lv (nm "rec")])))))))

/-- After `var cn = compact_to_nibbles(pi.1, pi.2)`. -/
def dsCn : ProgHOL 64 :=
  .seq (.ite (.cmp .notEqual (.rfield 2 (lv (nm "cn"))) (cw 0))
      (.decCall (nm "vi") sh4 (nm "rlp_item") [ldArr0 1, ldArr8 1] dsLeaf) .skip)
    (.seq (.ite (.cmp .equal (.rfield 1 (lv (nm "cn"))) (cw 0)) (callD (nm "mpt_fail") [cw 7]) .skip)
      (.decCall (nm "rec") .one (nm "scratch_alloc") [cw 88] dsExtRec))

/-- After `var pi = rlp_item(arr[0])`. -/
def dsPi : ProgHOL 64 :=
  .seq (.ite (.cmp .notEqual (.rfield 0 (lv (nm "pi"))) (cw 0)) (callD (nm "mpt_fail") [cw 5]) .skip)
    (.decCall (nm "cn") sh3 (nm "compact_to_nibbles") [.rfield 1 (lv (nm "pi")), .rfield 2 (lv (nm "pi"))]
      dsCn)

def dsExt : ProgHOL 64 := .decCall (nm "pi") sh4 (nm "rlp_item") [ldArr0 0, ldArr8 0] dsPi

/-- The branch record, after `var rec2 = scratch_alloc(88)`. -/
def dsBrRec : ProgHOL 64 :=
  .seq (stk (nm "rec2") 8 (cw 2))
    (.seq (stk (nm "rec2") 16 (lv (nm "br")))
      (.seq (stk (nm "rec2") 24 (lv (nm "arr")))
        (.seq (stk (nm "rec2") 32 (cw 0))
          (.seq (stk (nm "rec2") 40 (cw 0))
            (.seq (stk (nm "rec2") 48 (lv (nm "p")))
              (.seq (stk (nm "rec2") 56 (lv (nm "n")))
                (.return (.rstruct [cw 1, lv (nm "rec2")]))))))))

def dsBr : ProgHOL 64 :=
  .seq (.ite (.cmp .notEqual (.rfield 1 (lv (nm "sl"))) (cw 17)) (callD (nm "mpt_fail") [cw 4]) .skip)
    (.decCall (nm "br") .one (nm "node_new_branch") []
      (.decCall (nm "rec2") .one (nm "scratch_alloc") [cw 88] dsBrRec))

/-- After `var sl = rlp_list_to_slices(it.1, it.2)`. -/
def dsSl : ProgHOL 64 :=
  .dec (nm "arr") .one (.rfield 0 (lv (nm "sl")))
    (.seq (.ite (.cmp .equal (.rfield 1 (lv (nm "sl"))) (cw 2)) dsExt .skip) dsBr)

def dsHead : ProgHOL 64 :=
  .ite (.cmp .equal (.rfield 0 (lv (nm "it"))) (cw 0))
    (.seq (.ite (.cmp .equal (.rfield 2 (lv (nm "it"))) (cw 0)) (.return (.rstruct [cw 0, cw 0])) .skip)
      (callD (nm "mpt_fail") [cw 4]))
    .skip

def dsCall : ProgHOL 64 :=
  .call (some (some (.local, nm "it"), some (nm "RlpErr", nm "e", callD (nm "mpt_fail") [cw 3])))
    (nm "rlp_decode_fully") [lv (nm "p"), lv (nm "n")]

def dsBody : ProgHOL 64 :=
  .dec (nm "it") sh4 (.rstruct [cw 0, cw 0, cw 0, cw 0])
    (.dec (nm "e") .one (cw 0)
      (.seq dsCall
        (.seq dsHead
          (.decCall (nm "sl") sh2 (nm "rlp_list_to_slices") [.rfield 1 (lv (nm "it")), .rfield 2 (lv (nm "it"))]
            dsSl))))

theorem entry_decode_step : fnEntry Guest.Software.guestFn__decode_step =
    (nm "_decode_step", params_wd, dsBody, sh2) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_decode_step : guestCode (nm "_decode_step") = some (params_wd, dsBody, sh2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 261) (by decide)) ⟨_, rfl⟩
    entry_decode_step

/-! ## `node_new_leaf` -/

theorem lookupCode_four' {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    {f pa pb pc pd : MlS} {sa sb sc sd : ShapeHOL} {bd : ProgHOL 64} {rsh : ShapeHOL}
    (hc : code f = some ([(pa, sa), (pb, sb), (pc, sc), (pd, sd)], bd, rsh))
    (hab : pa ≠ pb) (hac : pa ≠ pc) (had : pa ≠ pd) (hbc : pb ≠ pc) (hbd : pb ≠ pd) (hcd : pc ≠ pd)
    {vs : List (ValueHOL 64)} {body : ProgHOL 64} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {rs : ShapeHOL} (h : PanSemStateFiniteExact.lookupCodeHOLFinite code f vs = some (body, callee, rs)) :
    body = bd ∧ ∃ A B C D, vs = [A, B, C, D] ∧ shapeEqHOL sa (shapeOfHOLExact A) = true ∧
      shapeEqHOL sb (shapeOfHOLExact B) = true ∧ shapeEqHOL sc (shapeOfHOLExact C) = true ∧
      shapeEqHOL sd (shapeOfHOLExact D) = true ∧
      callee.lookup pa = some A ∧ callee.lookup pb = some B ∧ callee.lookup pc = some C ∧
      callee.lookup pd = some D := by
  unfold PanSemStateFiniteExact.lookupCodeHOLFinite at h
  split at h
  · simp at h
  · rename_i body' cl rs' hx
    simp only [Option.some.injEq, Prod.mk.injEq] at h
    obtain ⟨rfl, rfl, rfl⟩ := h
    unfold lookupCodeHOLExact at hx
    rw [hc] at hx
    dsimp only at hx
    split at hx
    · rename_i hcond
      simp only [Option.some.injEq, Prod.mk.injEq] at hx
      obtain ⟨rfl, rfl, rfl⟩ := hx
      obtain ⟨-, hlen, hall⟩ := hcond
      match vs, hlen, hall with
      | [A, B, C, D], _, hall =>
          simp only [List.zip_cons_cons, List.zip_nil_right, List.all_cons, List.all_nil,
            Bool.and_true, Bool.and_eq_true] at hall
          refine ⟨rfl, A, B, C, D, rfl, hall.1, hall.2.1, hall.2.2.1, hall.2.2.2, ?_, ?_, ?_, ?_⟩
          · simp [hab, hac, had]
          · simp [hbc, hbd]
          · simp [hcd]
          · simp
    · simp at hx

def nlK : ProgHOL 64 :=
  .seq (stk (nm "nd") 0 (cw 1))
    (.seq (stk (nm "nd") 8 (cw 0))
      (.seq (stk (nm "nd") 16 (cw 0))
        (.seq (stk (nm "nd") 24 (cw 0))
          (.seq (stk (nm "nd") 32 (lv (nm "nib")))
            (.seq (stk (nm "nd") 40 (lv (nm "nlen")))
              (.seq (stk (nm "nd") 48 (lv (nm "vptr")))
                (.seq (stk (nm "nd") 56 (lv (nm "vlen")))
                  (.return (lv (nm "nd"))))))))))

def nlBody : ProgHOL 64 := .decCall (nm "nd") .one (nm "alloc") [cw 64] nlK

def params_nl : List (MlS × ShapeHOL) :=
  [(nm "nib", .one), (nm "nlen", .one), (nm "vptr", .one), (nm "vlen", .one)]

theorem entry_node_new_leaf : fnEntry Guest.Software.guestFn_node_new_leaf =
    (nm "node_new_leaf", params_nl, nlBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_node_new_leaf : guestCode (nm "node_new_leaf") = some (params_nl, nlBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 256) (by decide)) ⟨_, rfl⟩
    entry_node_new_leaf

theorem freshFoot_node_new_leaf (hC : X.code.lookup = guestCode) :
    FreshFoot σ X (nm "node_new_leaf") (fun _ _ => True) (fun _ p p' _ v => FreshRet 64 p p' v) := by
  refine funSpec_of_hoare fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, A, B, Cc, D, rfl, hsA, hsB, hsC, hsD, hA, hB, hCc, hD⟩ :=
    lookupCode_four' code_node_new_leaf (by decide) (by decide) (by decide) (by decide) (by decide)
      (by decide) hl
  obtain ⟨A, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨B, rfl⟩ := val_of_shapeEq_one hsB
  obtain ⟨Cc, rfl⟩ := val_of_shapeEq_one hsC
  obtain ⟨D, rfl⟩ := val_of_shapeEq_one hsD
  refine hoare_decCallS (MemSafe.allocSpec_alloc (σ := σ) hC) fun s _ hs0 avs havs callee' v st hR _ _ => ?_
  subst hs0
  rw [evs_cons (ev_cw _ 64) evs_nil] at havs
  simp only [Option.some.injEq] at havs
  subst havs
  refine hoare_conseq (P := fun t => t = setVarHOLFinite (nm "nd") v { st with locals := s.locals })
    ?_ (fun _ _ h => h) (fun r t _ _ h => h)
  intro t1 hctx1 ht1 htr
  subst ht1
  suffices H : ∀ p : Ptrs, ptrsOf s = some p → p.Ordered → ∃ q : BitVec 64, v = .val (.word q) ∧
      Hoare σ X (fun t => t = setVarHOLFinite (nm "nd") v { st with locals := s.locals }) nlK
        (fun r t => ∀ w, r = some (.returned w) → ∃ p' : Ptrs, ptrsOf t = some p' ∧ p'.Ordered ∧
          p.Mono p' ∧ (∀ a : BitVec 64, t.memory a ≠ s.memory a → ¬ p.Allocated a.toNat) ∧
          FreshRet 64 p p' w) by
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
  have hq64 : q.toNat + 64 ≤ 2 ^ 64 := by simp only [heapEnd] at hh2; omega
  set t1 := setVarHOLFinite (nm "nd") (.val (.word q)) { st with locals := s.locals }
  have hnd : t1.locals.lookup (nm "nd") = some (.val (.word q)) := lk_set_self _ _ _
  have hM1 : t1.memory = s.memory := hm
  have hP1 : ptrsOf t1 = some p1 := by rw [← hp1]; rfl
  have hlx : ∀ (x : MlS) (V : BitVec 64), callee.lookup x = some (.val (.word V)) → x ≠ nm "nd" →
      t1.locals.lookup x = some (.val (.word V)) := fun x V hx hne => by
    rw [lk_set_ne _ _ (Ne.symm hne)]; show s.locals.lookup _ = _; rw [hloc]; exact hx
  refine hoare_pre (P := InBlk t1.locals t1.globals t1.memory q 64) ?_
    (fun t _ ht => by subst ht; exact ⟨rfl, rfl, fun a ha => absurd rfl ha⟩)
  unfold nlK stk
  refine hoare_seq_blk hnd (by decide) hq64 (wordE_cw _ _) (hoare_seq_blk hnd (by decide) hq64
    (wordE_cw _ _) (hoare_seq_blk hnd (by decide) hq64 (wordE_cw _ _) (hoare_seq_blk hnd
      (by decide) hq64 (wordE_cw _ _) (hoare_seq_blk hnd (by decide) hq64
        (wordE_lv (hlx _ _ hA (by decide))) (hoare_seq_blk hnd (by decide) hq64
          (wordE_lv (hlx _ _ hB (by decide))) (hoare_seq_blk hnd (by decide) hq64
            (wordE_lv (hlx _ _ hCc (by decide))) (hoare_seq_blk hnd (by decide) hq64
              (wordE_lv (hlx _ _ hD (by decide))) ?_)))))))
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
