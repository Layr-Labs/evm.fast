import InitECandidate.Solver.Spec.Inv.Memeq
import InitECandidate.Solver.Spec.Inv.BePreserved

/-!
# `htab_del`: certified code and Hoare helpers

`code_htab_del`: the body of `htab_del` (`guest/src/lib/htab.pnk`), certified against
`guestCode` by `cbv`. Helpers: `upd` (one-word memory update) and `store_word` (what a word
store does), `hoare_skipif` (an `if c { .. }` whose condition is false), the
footprints of the two callees (`funSpec_find_leaf_mw`, `funSpec_be`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-! ## The code -/

/-- `t + k` -/
def tAddr (k : Nat) : ExpHOL 64 := .op .add [lv (nm "t"), cw k]

/-- `nodes + x * 32 + off` -/
def nA (x : String) (off : Nat) : ExpHOL 64 :=
  .op .add [lv (nm "nodes"), .panop .mul [lv (nm x), cw 32], cw off]

def delHole : ProgHOL 64 :=
  .dec (nm "order") .one (tLoad 48)
    (.dec (nm "moved") .one (.load .one (.op .add [lv (nm "order"), .panop .mul [lv (nm "count"), cw 8]]))
      (.seq (.store (.op .add [lv (nm "order"), .panop .mul [lv (nm "pos"), cw 8]]) (lv (nm "moved")))
        (.store (nA "moved" 16) (lv (nm "pos")))))

/-- Splice the sibling `s` into the place of the parent `p`, free `p`. -/
def delSplice : ProgHOL 64 :=
  .dec (nm "p") .one (.load .one (nA "leaf" 0))
    (.dec (nm "g") .one (.load .one (nA "p" 0))
      (.dec (nm "s") .one (.load .one (nA "p" 8))
        (.seq (.ite (.cmp .equal (lv (nm "s")) (lv (nm "leaf")))
                (.assign .local (nm "s") (.load .one (nA "p" 16))) .skip)
          (.seq (.store (nA "s" 0) (lv (nm "g")))
            (.seq (.ite (.cmp .equal (lv (nm "g")) (cw 0))
                    (.store (tAddr 56) (lv (nm "s")))
                    (.ite (.cmp .equal (.load .one (nA "g" 8)) (lv (nm "p")))
                      (.store (nA "g" 8) (lv (nm "s")))
                      (.store (nA "g" 16) (lv (nm "s")))))
              (.seq (.store (nA "p" 0) (tLoad 72))
                (.store (tAddr 72) (lv (nm "p")))))))))

/-- From `var nodes = ..` on. -/
def delTail : ProgHOL 64 :=
  .dec (nm "nodes") .one (tLoad 40)
    (.dec (nm "pos") .one (.load .one (nA "leaf" 16))
      (.dec (nm "count") .one (.op .sub [tLoad 24, cw 1])
        (.seq (.ite (.cmp .notEqual (lv (nm "pos")) (lv (nm "count"))) delHole .skip)
          (.seq (.store (tAddr 24) (lv (nm "count")))
            (.seq (.ite (.cmp .equal (lv (nm "leaf")) (tLoad 56)) (.store (tAddr 56) (cw 0)) delSplice)
              (.seq (.store (nA "leaf" 0) (tLoad 72))
                (.seq (.store (tAddr 72) (lv (nm "leaf"))) (.return (cw 1)))))))))

def delBody : ProgHOL 64 :=
  .dec (nm "klen") .one (tLoad 0)
    (.dec (nm "stride") .one (tLoad 8)
      (.decCall (nm "leaf") .one (nm "htab_find_leaf") [lv (nm "t"), lv (nm "key")]
        (.seq (.ite (.cmp .equal (lv (nm "leaf")) (cw 0)) (.return (cw 0)) .skip)
          (.dec (nm "keys") .one (tLoad 32)
            (.decCall (nm "eq") .one (nm "memeq")
                [.op .add [lv (nm "keys"), .panop .mul [lv (nm "leaf"), lv (nm "stride")]],
                 lv (nm "key"), lv (nm "klen")]
              (.seq (.ite (.cmp .equal (lv (nm "eq")) (cw 0)) (.return (cw 0)) .skip) delTail))))))

def delParams : List (MlS × ShapeHOL) := [(nm "t", .one), (nm "key", .one)]

theorem entry_htab_del : fnEntry Guest.Software.guestFn_htab_del =
    (nm "htab_del", delParams, delBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_htab_del : guestCode (nm "htab_del") = some (delParams, delBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 139) (by decide)) ⟨_, rfl⟩
    entry_htab_del

/-! ## Stores -/

/-- Memory after a one-word store of `x` at `a`. -/
def upd (m : Mem) (a x : BitVec 64) : Mem := fun c => if c = a then .word x else m c

theorem rd_upd (m : Mem) (a x b : BitVec 64) : rd (upd m a x) b = if b = a then x else rd m b := by
  by_cases h : b = a <;> simp [upd, rd, h]

theorem upd_ne {m : Mem} {a x b : BitVec 64} (h : b ≠ a) : upd m a x b = m b := by
  unfold upd; rw [if_neg h]

theorem store_word {d : BitVec 64 → Prop} {inst : DecidablePred d} {m mem : Mem} {a x : BitVec 64}
    (h : @panMemStoresHOL 64 _ a (flattenHOL (.val (.word x))) d inst m = some mem) :
    mem = upd m a x := by
  rw [flattenHOL] at h
  simp only [panMemStoresHOL] at h
  split at h
  · rename_i updated hu
    simp only [Option.some.injEq] at h
    subst h
    unfold panMemStoreHOL at hu
    split at hu
    · simp only [Option.some.injEq] at hu
      rw [← hu]
      rfl
    · simp at hu
  · simp at h

/-! ## Hoare helpers -/

section helpers
variable {σ : Type} {X : Ctx 64}

/-- `if c { a }` whose condition is the zero word under `P`. -/
theorem hoare_skipif {P : PanSemStateFiniteExact 64 σ → Prop} {c : ExpHOL 64} {a : ProgHOL 64}
    (h : ∀ s, InCtx s X → P s → ∀ w, ev s c = some (.val (.word w)) → w = 0) :
    Hoare σ X P (.ite c a .skip) (fun r t => r = none ∧ P t) := by
  refine hoare_ite ?_ (hoare_skip fun s _ hp => ⟨rfl, hp.1⟩)
  intro s hs ⟨hp, w, hw, hw0⟩ _
  exact absurd (h s hs hp w hw) hw0

/-- A store of a word value, with the stored address and value given. -/
theorem hoare_store_w {P : PanSemStateFiniteExact 64 σ → Prop}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    {a e : ExpHOL 64} (A V : PanSemStateFiniteExact 64 σ → BitVec 64)
    (ha : ∀ s, InCtx s X → P s → ∀ w, ev s a = some (.val (.word w)) → w = A s)
    (he : ∀ s, InCtx s X → P s → ∀ v, ev s e = some v → v = .val (.word (V s)))
    (h : ∀ s, InCtx s X → P s → Q none { s with memory := upd s.memory (A s) (V s) }) :
    Hoare σ X P (.store a e) Q := by
  refine hoare_store fun s hs hp w v mem hw hv hmem => ?_
  have := ha s hs hp w hw
  subst this
  have := he s hs hp v hv
  subst this
  rw [store_word hmem]
  exact h s hs hp

theorem funSpec_be (f : MlS) : FunSpec σ X f (fun _ s _ t => t.be = s.be) := by
  intro vs body callee rs hl s hs hloc r hr
  exact be_preserved s body

def findFns : EntryList := [fnEntry Guest.Software.guestFn_htab_find_leaf]

theorem findFns_valid : ∀ e ∈ findFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [findFns, List.mem_cons, List.not_mem_nil, or_false] at he
  subst he
  exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 131) (by decide)) ⟨_, rfl⟩

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem findFns_mw : findFns.all (fun e => mwFreeB (findFns.map Prod.fst) e.2.2.1) = true := by
  decide_cbv

theorem find_mem : (findFns.map Prod.fst).contains (nm "htab_find_leaf") = true := by decide_cbv

theorem funSpec_find_leaf_mw (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_find_leaf") (fun _ s _ t => t.memory = s.memory) :=
  funSpec_mw (by rw [hC]; exact closed_of_entries (chk := mwFreeB) findFns_valid findFns_mw)
    find_mem

end helpers

end InitECandidate.Solver.Spec.Inv
