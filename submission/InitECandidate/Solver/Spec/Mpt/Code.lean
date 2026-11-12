import InitECandidate.Solver.Spec.Scratch
import InitECandidate.Solver.Spec.TrieWalk
import InitECandidate.Solver.Spec.FootprintGuest

/-!
# The MPT write-path functions as guest code

Readable `ProgHOL` renderings of `node_invalidate`, `min`, `common_prefix_length` and
`_mpt_delete_node_body` (`guest/src/mpt.pnk`, `guest/src/lib/mem.pnk`), each certified by
`cbv` to be the code-map entry `guestCode` installs (`code_*`).

Footprint (`decide_cbv`): `node_invalidate`, `min`, `common_prefix_length`, `mpt_fail` write
neither `scratch_ptr` nor `frame_mem_ptr` and call only each other (`arenaFns_gw_sp`,
`arenaFns_gw_fp`), so they keep the scratch arena pointers (`arena_gwClosed_sp`,
`arena_gwClosed_fp`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-! ## `node_invalidate`, `min`, `common_prefix_length` -/

def invalBody : ProgHOL 64 :=
  .seq (.store (.op .add [lv (nm "nd"), cw 8]) (cw 0))
    (.seq (.store (.op .add [lv (nm "nd"), cw 16]) (cw 0))
      (.seq (.store (.op .add [lv (nm "nd"), cw 24]) (cw 0))
        (.return (cw 0))))

theorem entry_node_invalidate : fnEntry Guest.Software.guestFn_node_invalidate =
    (nm "node_invalidate", [(nm "nd", .one)], invalBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_node_invalidate :
    guestCode (nm "node_invalidate") = some ([(nm "nd", .one)], invalBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 259) (by decide)) ⟨_, rfl⟩
    entry_node_invalidate

def minBody : ProgHOL 64 :=
  .seq (.ite (.cmp .lower (lv (nm "a")) (lv (nm "b"))) (.return (lv (nm "a"))) .skip)
    (.return (lv (nm "b")))

theorem entry_min : fnEntry Guest.Software.guestFn_min =
    (nm "min", [(nm "a", .one), (nm "b", .one)], minBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_min : guestCode (nm "min") = some ([(nm "a", .one), (nm "b", .one)], minBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 31) (by decide)) ⟨_, rfl⟩
    entry_min

/-- `if ld8 (a + i) != ld8 (b + i) { return i; } i = i + 1;` -/
def cplLoopBody : ProgHOL 64 :=
  .seq (.ite (.cmp .notEqual (.loadByte (.op .add [lv (nm "a"), lv (nm "i")]))
        (.loadByte (.op .add [lv (nm "b"), lv (nm "i")])))
      (.return (lv (nm "i"))) .skip)
    (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1]))

def cplBody : ProgHOL 64 :=
  .decCall (nm "n") .one (nm "min") [lv (nm "al"), lv (nm "bl")]
    (.dec (nm "i") .one (cw 0)
      (.seq (.while (.cmp .lower (lv (nm "i")) (lv (nm "n"))) cplLoopBody)
        (.return (lv (nm "n")))))

def params_cpl : List (MlS × ShapeHOL) :=
  [(nm "a", .one), (nm "al", .one), (nm "b", .one), (nm "bl", .one)]

theorem entry_common_prefix_length : fnEntry Guest.Software.guestFn_common_prefix_length =
    (nm "common_prefix_length", params_cpl, cplBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_common_prefix_length :
    guestCode (nm "common_prefix_length") = some (params_cpl, cplBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 251) (by decide)) ⟨_, rfl⟩
    entry_common_prefix_length

/-! ## `_mpt_delete_node_body` -/

def go_ : MlS := nm "go"

/-- The descent loop condition `go != 0` (also the insert loop's). -/
def goCond : ExpHOL 64 := .cmp .notEqual (lv (nm "go")) (cw 0)

/-- Leaf: `res = node; if ld (node + 40) == klen - level { if memeq(...) != 0 { res = 0 } }`. -/
def delLeaf : ProgHOL 64 :=
  .seq (.assign .local (nm "res") (lv (nm "node")))
    (.ite (.cmp .equal (.load .one (.op .add [lv (nm "node"), cw 40]))
        (.op .sub [lv (nm "klen"), lv (nm "level")]))
      (.decCall (nm "eq") .one (nm "memeq")
        [.load .one (.op .add [lv (nm "node"), cw 32]), .op .add [lv (nm "key"), lv (nm "level")],
          .op .sub [lv (nm "klen"), lv (nm "level")]]
        (.ite (.cmp .notEqual (lv (nm "eq")) (cw 0)) (.assign .local (nm "res") (cw 0)) .skip))
      .skip)

/-- The extension record push, after `var fr = scratch_alloc(40)`. -/
def delPushE : ProgHOL 64 :=
  .seq (.store (.op .add [lv (nm "fr"), cw 0]) (lv (nm "top")))
    (.seq (.store (.op .add [lv (nm "fr"), cw 8]) (lv (nm "node")))
      (.seq (.store (.op .add [lv (nm "fr"), cw 16]) (cw 2))
        (.seq (.store (.op .add [lv (nm "fr"), cw 24]) (lv (nm "seg")))
          (.seq (.store (.op .add [lv (nm "fr"), cw 32]) (lv (nm "sl")))
            (.seq (.assign .local (nm "top") (lv (nm "fr")))
              (.seq (.assign .local (nm "node") (.load .one (.op .add [lv (nm "node"), cw 48])))
                (.seq (.assign .local (nm "level") (.op .add [lv (nm "level"), lv (nm "sl")]))
                  (.assign .local (nm "go") (cw 1)))))))))

def delExt : ProgHOL 64 :=
  .dec (nm "seg") .one (.load .one (.op .add [lv (nm "node"), cw 32]))
    (.dec (nm "sl") .one (.load .one (.op .add [lv (nm "node"), cw 40]))
      (.decCall (nm "pl") .one (nm "common_prefix_length")
        [lv (nm "seg"), lv (nm "sl"), .op .add [lv (nm "key"), lv (nm "level")],
          .op .sub [lv (nm "klen"), lv (nm "level")]]
        (.ite (.cmp .lower (lv (nm "pl")) (lv (nm "sl")))
          (.assign .local (nm "res") (lv (nm "node")))
          (.decCall (nm "fr") .one (nm "scratch_alloc") [cw 40] delPushE))))

/-- Branch at the end of the key: clear the value and collapse. -/
def delBrEnd : ProgHOL 64 :=
  .ite (.cmp .equal (.load .one (.op .add [lv (nm "node"), cw 168])) (cw 0))
    (.assign .local (nm "res") (lv (nm "node")))
    (.seq (.store (.op .add [lv (nm "node"), cw 160]) (cw 0))
      (.seq (.store (.op .add [lv (nm "node"), cw 168]) (cw 0))
        (.call (some (some (.local, nm "res"), none)) (nm "_collapse_branch") [lv (nm "node")])))

/-- The branch record push, after `var fr2 = scratch_alloc(40)`. -/
def delPushB : ProgHOL 64 :=
  .seq (.store (.op .add [lv (nm "fr2"), cw 0]) (lv (nm "top")))
    (.seq (.store (.op .add [lv (nm "fr2"), cw 8]) (lv (nm "node")))
      (.seq (.store (.op .add [lv (nm "fr2"), cw 16]) (cw 3))
        (.seq (.store (.op .add [lv (nm "fr2"), cw 32]) (lv (nm "idx")))
          (.seq (.assign .local (nm "top") (lv (nm "fr2")))
            (.seq (.assign .local (nm "node")
                (.load .one (.op .add [lv (nm "node"), cw 32, .panop .mul [lv (nm "idx"), cw 8]])))
              (.seq (.assign .local (nm "level") (.op .add [lv (nm "level"), cw 1]))
                (.assign .local (nm "go") (cw 1))))))))

def delBranch : ProgHOL 64 :=
  .ite (.cmp .equal (lv (nm "level")) (lv (nm "klen"))) delBrEnd
    (.dec (nm "idx") .one (.loadByte (.op .add [lv (nm "key"), lv (nm "level")]))
      (.decCall (nm "fr2") .one (nm "scratch_alloc") [cw 40] delPushB))

/-- The kind dispatch after `node_invalidate(node)`. -/
def delKinds : ProgHOL 64 :=
  .ite (.cmp .equal (lv (nm "k")) (cw 1)) delLeaf
    (.ite (.cmp .equal (lv (nm "k")) (cw 2)) delExt delBranch)

/-- `if k == NODE_HASHED { mpt_fail(2); }` -/
def failHashed : ProgHOL 64 :=
  .ite (.cmp .equal (lv (nm "k")) (cw 0)) (callD (nm "mpt_fail") [cw 2]) .skip

def delNode : ProgHOL 64 :=
  .dec (nm "k") .one (.load .one (.op .add [lv (nm "node"), cw 0]))
    (.seq failHashed (.seq (callD (nm "node_invalidate") [lv (nm "node")]) delKinds))

def delDescBody : ProgHOL 64 :=
  .seq (.assign .local (nm "go") (cw 0))
    (.ite (.cmp .equal (lv (nm "node")) (cw 0)) (.assign .local (nm "res") (cw 0)) delNode)

def delUnwindCond : ExpHOL 64 := .cmp .notEqual (lv (nm "top")) (cw 0)

def delUnwindBody : ProgHOL 64 :=
  .dec (nm "fnode") .one (.load .one (.op .add [lv (nm "top"), cw 8]))
    (.seq (.ite (.cmp .equal (.load .one (.op .add [lv (nm "top"), cw 16])) (cw 2))
        (.call (some (some (.local, nm "res"), none)) (nm "_delete_ext_finish")
          [lv (nm "fnode"), .load .one (.op .add [lv (nm "top"), cw 24]),
            .load .one (.op .add [lv (nm "top"), cw 32]), lv (nm "res")])
        (.seq (.store (.op .add [lv (nm "fnode"), cw 32,
              .panop .mul [.load .one (.op .add [lv (nm "top"), cw 32]), cw 8]]) (lv (nm "res")))
          (.call (some (some (.local, nm "res"), none)) (nm "_collapse_branch") [lv (nm "fnode")])))
      (.assign .local (nm "top") (.load .one (.op .add [lv (nm "top"), cw 0]))))

def delBody : ProgHOL 64 :=
  .dec (nm "top") .one (cw 0)
    (.dec (nm "res") .one (cw 0)
      (.dec (nm "go") .one (cw 1)
        (.seq (.while goCond delDescBody)
          (.seq (.while delUnwindCond delUnwindBody) (.return (lv (nm "res")))))))

def params_del : List (MlS × ShapeHOL) :=
  [(nm "node", .one), (nm "key", .one), (nm "klen", .one), (nm "level", .one)]

theorem entry_mpt_delete_node_body : fnEntry Guest.Software.guestFn__mpt_delete_node_body =
    (nm "_mpt_delete_node_body", params_del, delBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_mpt_delete_node_body :
    guestCode (nm "_mpt_delete_node_body") = some (params_del, delBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 278) (by decide)) ⟨_, rfl⟩
    entry_mpt_delete_node_body

/-! ## Footprint: the arena pointers -/

def arenaFns : EntryList :=
  [fnEntry Guest.Software.guestFn_node_invalidate, fnEntry Guest.Software.guestFn_min,
   fnEntry Guest.Software.guestFn_common_prefix_length, fnEntry Guest.Software.guestFn_mpt_fail]

def arenaNames : List MlS := arenaFns.map Prod.fst

theorem arenaFns_valid : ∀ e ∈ arenaFns, guestCode e.1 = some e.2 := by
  intro e he
  simp only [arenaFns, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl | rfl
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 259) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 31) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 251) (by decide)) ⟨_, rfl⟩
  · exact entry_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 246) (by decide)) ⟨_, rfl⟩

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem arenaFns_gw_sp :
    arenaFns.all (fun e => gwFreeB (nm "scratch_ptr") arenaNames e.2.2.1) = true := by decide_cbv

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem arenaFns_gw_fp :
    arenaFns.all (fun e => gwFreeB (nm "frame_mem_ptr") arenaNames e.2.2.1) = true := by decide_cbv

theorem arena_gwClosed_sp : GwClosed (nm "scratch_ptr") arenaNames guestCode :=
  closed_of_entries (chk := gwFreeB (nm "scratch_ptr")) arenaFns_valid arenaFns_gw_sp

theorem arena_gwClosed_fp : GwClosed (nm "frame_mem_ptr") arenaNames guestCode :=
  closed_of_entries (chk := gwFreeB (nm "frame_mem_ptr")) arenaFns_valid arenaFns_gw_fp

end InitECandidate.Solver.Spec.Mpt
