import InitECandidate.Solver.Spec.Mpt.Code

/-!
# `_mpt_insert_node` as guest code

The descent loop of `mpt_set`'s insertion (`guest/src/mpt.pnk`), certified by `cbv`
(`code_mpt_insert_node`), split into named pieces. Footprint: `common_prefix_length` and
`min` write no memory (`cpl_mwClosed`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

def keyLv : ExpHOL 64 := .op .add [lv (nm "key"), lv (nm "level")]
def remLv : ExpHOL 64 := .op .sub [lv (nm "klen"), lv (nm "level")]

/-- Extension on the key path: descend into the child. -/
def insExtDesc : ProgHOL 64 :=
  .seq (.assign .local (nm "r") (lv (nm "node")))
    (.seq (.assign .local (nm "next_node") (.load .one (.op .add [lv (nm "node"), cw 48])))
      (.seq (.assign .local (nm "next_slot") (.op .add [lv (nm "node"), cw 48]))
        (.seq (.assign .local (nm "next_level") (.op .add [lv (nm "level"), lv (nm "pl")]))
          (.assign .local (nm "go") (cw 1)))))

/-- Extension off the key path: split it. -/
def insSplit : ProgHOL 64 :=
  .decCall (nm "br") .one (nm "_split_extension")
    [lv (nm "node"), keyLv, remLv, lv (nm "vptr"), lv (nm "vlen"), lv (nm "pl")]
    (.ite (.cmp .lower (cw 0) (lv (nm "pl")))
      (.call (some (some (.local, nm "r"), none)) (nm "node_new_ext")
        [lv (nm "seg"), lv (nm "pl"), lv (nm "br")])
      (.assign .local (nm "r") (lv (nm "br"))))

def insExt : ProgHOL 64 :=
  .dec (nm "seg") .one (.load .one (.op .add [lv (nm "node"), cw 32]))
    (.dec (nm "sl") .one (.load .one (.op .add [lv (nm "node"), cw 40]))
      (.decCall (nm "pl") .one (nm "common_prefix_length") [lv (nm "seg"), lv (nm "sl"), keyLv, remLv]
        (.ite (.cmp .equal (lv (nm "pl")) (lv (nm "sl"))) insExtDesc insSplit)))

def insLeaf : ProgHOL 64 :=
  .call (some (some (.local, nm "r"), none)) (nm "_insert_into_leaf")
    [lv (nm "node"), keyLv, remLv, lv (nm "vptr"), lv (nm "vlen")]

def insBrEnd : ProgHOL 64 :=
  .seq (.store (.op .add [lv (nm "node"), cw 160]) (lv (nm "vptr")))
    (.seq (.store (.op .add [lv (nm "node"), cw 168]) (lv (nm "vlen")))
      (.assign .local (nm "r") (lv (nm "node"))))

def childAddr : ExpHOL 64 := .op .add [lv (nm "node"), cw 32, .panop .mul [lv (nm "idx"), cw 8]]

def insBrDesc : ProgHOL 64 :=
  .dec (nm "idx") .one (.loadByte keyLv)
    (.seq (.assign .local (nm "r") (lv (nm "node")))
      (.seq (.assign .local (nm "next_node") (.load .one childAddr))
        (.seq (.assign .local (nm "next_slot") childAddr)
          (.seq (.assign .local (nm "next_level") (.op .add [lv (nm "level"), cw 1]))
            (.assign .local (nm "go") (cw 1))))))

def insBranch : ProgHOL 64 :=
  .ite (.cmp .equal (lv (nm "level")) (lv (nm "klen"))) insBrEnd insBrDesc

def insKinds : ProgHOL 64 :=
  .ite (.cmp .equal (lv (nm "k")) (cw 1)) insLeaf
    (.ite (.cmp .equal (lv (nm "k")) (cw 2)) insExt insBranch)

def insNode : ProgHOL 64 :=
  .dec (nm "k") .one (.load .one (.op .add [lv (nm "node"), cw 0]))
    (.seq failHashed (.seq (callD (nm "node_invalidate") [lv (nm "node")]) insKinds))

def insNewLeaf : ProgHOL 64 :=
  .call (some (some (.local, nm "r"), none)) (nm "node_new_leaf")
    [keyLv, remLv, lv (nm "vptr"), lv (nm "vlen")]

def insMain : ProgHOL 64 :=
  .ite (.cmp .equal (lv (nm "node")) (cw 0)) insNewLeaf insNode

/-- Hand the subtree result to the parent slot, then move down. -/
def insTail : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "slot")) (cw 0)) (.assign .local (nm "result") (lv (nm "r")))
      (.store (lv (nm "slot")) (lv (nm "r"))))
    (.seq (.assign .local (nm "node") (lv (nm "next_node")))
      (.seq (.assign .local (nm "slot") (lv (nm "next_slot")))
        (.assign .local (nm "level") (lv (nm "next_level")))))

def insInner : ProgHOL 64 := .seq (.assign .local (nm "go") (cw 0)) (.seq insMain insTail)

def insLoopBody : ProgHOL 64 :=
  .dec (nm "r") .one (cw 0) (.dec (nm "next_node") .one (cw 0)
    (.dec (nm "next_slot") .one (cw 0) (.dec (nm "next_level") .one (cw 0) insInner)))

def insBody : ProgHOL 64 :=
  .dec (nm "result") .one (cw 0) (.dec (nm "slot") .one (cw 0) (.dec (nm "go") .one (cw 1)
    (.seq (.while goCond insLoopBody) (.return (lv (nm "result"))))))

def params_ins : List (MlS × ShapeHOL) :=
  [(nm "node", .one), (nm "key", .one), (nm "klen", .one), (nm "level", .one), (nm "vptr", .one),
   (nm "vlen", .one)]

theorem entry_mpt_insert_node : fnEntry Guest.Software.guestFn__mpt_insert_node =
    (nm "_mpt_insert_node", params_ins, insBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_mpt_insert_node :
    guestCode (nm "_mpt_insert_node") = some (params_ins, insBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 275) (by decide)) ⟨_, rfl⟩
    entry_mpt_insert_node

/-! ## `common_prefix_length` writes no memory -/

def cplFns : EntryList :=
  [fnEntry Guest.Software.guestFn_common_prefix_length, fnEntry Guest.Software.guestFn_min]

def cplNames : List MlS := cplFns.map Prod.fst

theorem cplFns_valid : ∀ e ∈ cplFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [cplFns, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 251) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 31) (by decide)) ⟨_, rfl⟩

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem cplFns_mw : cplFns.all (fun e => mwFreeB cplNames e.2.2.1) = true := by decide_cbv

theorem cpl_mwClosed : MwClosed cplNames guestCode :=
  closed_of_entries (chk := mwFreeB) cplFns_valid cplFns_mw

theorem cpl_mem : cplNames.contains (nm "common_prefix_length") = true := by decide_cbv

end InitECandidate.Solver.Spec.Mpt
