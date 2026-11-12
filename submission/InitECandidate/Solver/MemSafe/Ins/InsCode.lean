import InitECandidate.Solver.MemSafe.Ins.CallA

set_option autoImplicit false

/-!
# `_mpt_insert_node`: the code, split into the ladder and the tail
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

def kA : ExpHOL 64 := .op .add [lv (nm "key"), lv (nm "level")]
def kB : ExpHOL 64 := .op .sub [lv (nm "klen"), lv (nm "level")]

def iExtGo : ProgHOL 64 :=
  .seq (.assign .local (nm "r") (lv (nm "node")))
    (.seq (.assign .local (nm "next_node") (.load .one (.op .add [lv (nm "node"), cw 48])))
      (.seq (.assign .local (nm "next_slot") (.op .add [lv (nm "node"), cw 48]))
        (.seq (.assign .local (nm "next_level") (.op .add [lv (nm "level"), lv (nm "pl")]))
          (.assign .local (nm "go") (cw 1)))))

def iExtSplit : ProgHOL 64 :=
  .decCall (nm "br") .one (nm "_split_extension")
    [lv (nm "node"), kA, kB, lv (nm "vptr"), lv (nm "vlen"), lv (nm "pl")]
    (.ite (.cmp .lower (cw 0) (lv (nm "pl")))
      (.call (some (some (.local, nm "r"), none)) (nm "node_new_ext")
        [lv (nm "seg"), lv (nm "pl"), lv (nm "br")])
      (.assign .local (nm "r") (lv (nm "br"))))

def iExt : ProgHOL 64 :=
  .dec (nm "seg") .one (.load .one (.op .add [lv (nm "node"), cw 32]))
    (.dec (nm "sl") .one (.load .one (.op .add [lv (nm "node"), cw 40]))
      (.decCall (nm "pl") .one (nm "common_prefix_length")
        [lv (nm "seg"), lv (nm "sl"), kA, kB]
        (.ite (.cmp .equal (lv (nm "pl")) (lv (nm "sl"))) iExtGo iExtSplit)))

def iBrGo : ProgHOL 64 :=
  .dec (nm "idx") .one (.loadByte kA)
    (.seq (.assign .local (nm "r") (lv (nm "node")))
      (.seq (.assign .local (nm "next_node") (.load .one (childAddrI (nm "node") (nm "idx"))))
        (.seq (.assign .local (nm "next_slot") (childAddrI (nm "node") (nm "idx")))
          (.seq (.assign .local (nm "next_level") (.op .add [lv (nm "level"), cw 1]))
            (.assign .local (nm "go") (cw 1))))))

def iBr : ProgHOL 64 :=
  .ite (.cmp .equal (lv (nm "level")) (lv (nm "klen")))
    (.seq (.store (.op .add [lv (nm "node"), cw 160]) (lv (nm "vptr")))
      (.seq (.store (.op .add [lv (nm "node"), cw 168]) (lv (nm "vlen")))
        (.assign .local (nm "r") (lv (nm "node")))))
    iBrGo

def iLadder : ProgHOL 64 :=
  .ite (.cmp .equal (lv (nm "node")) (cw 0))
    (.call (some (some (.local, nm "r"), none)) (nm "node_new_leaf") [kA, kB, lv (nm "vptr"), lv (nm "vlen")])
    (.dec (nm "k") .one (.load .one (.op .add [lv (nm "node"), cw 0]))
      (.seq (.ite (.cmp .equal (lv (nm "k")) (cw 0)) (.call (some (none, none)) (nm "mpt_fail") [cw 2]) .skip)
        (.seq (.call (some (none, none)) (nm "node_invalidate") [lv (nm "node")])
          (.ite (.cmp .equal (lv (nm "k")) (cw 1))
            (.call (some (some (.local, nm "r"), none)) (nm "_insert_into_leaf")
              [lv (nm "node"), kA, kB, lv (nm "vptr"), lv (nm "vlen")])
            (.ite (.cmp .equal (lv (nm "k")) (cw 2)) iExt iBr)))))

def iTail : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "slot")) (cw 0)) (.assign .local (nm "result") (lv (nm "r")))
      (.store (lv (nm "slot")) (lv (nm "r"))))
    (.seq (.assign .local (nm "node") (lv (nm "next_node")))
      (.seq (.assign .local (nm "slot") (lv (nm "next_slot")))
        (.assign .local (nm "level") (lv (nm "next_level")))))

def iBody : ProgHOL 64 :=
  .dec (nm "r") .one (cw 0) (.dec (nm "next_node") .one (cw 0) (.dec (nm "next_slot") .one (cw 0)
    (.dec (nm "next_level") .one (cw 0)
      (.seq (.assign .local (nm "go") (cw 0)) (.seq iLadder iTail)))))

def goCondI : ExpHOL 64 := .cmp .notEqual (lv (nm "go")) (cw 0)

def insFull : ProgHOL 64 :=
  .dec (nm "result") .one (cw 0) (.dec (nm "slot") .one (cw 0) (.dec (nm "go") .one (cw 1)
    (.seq (.while goCondI iBody) (.return (lv (nm "result"))))))

def params_ins : List (MlS × ShapeHOL) :=
  [(nm "node", .one), (nm "key", .one), (nm "klen", .one), (nm "level", .one), (nm "vptr", .one),
   (nm "vlen", .one)]

theorem entry_ins : fnEntry Guest.Software.guestFn__mpt_insert_node =
    (nm "_mpt_insert_node", params_ins, insFull, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_ins :
    guestCode (nm "_mpt_insert_node") = some (params_ins, insFull, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 275) (by decide)) ⟨_, rfl⟩
    entry_ins

end InitECandidate.Solver.MemSafe.Ins
