import InitECandidate.Solver.MemSafe.Ins.DelRec2

set_option autoImplicit false

/-!
# `_mpt_delete_node_body` / `_mpt_delete_node`: the code
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

def dlLeaf : ProgHOL 64 :=
  .seq (.assign .local (nm "res") (lv (nm "node")))
    (.ite (.cmp .equal (ldK "node" 40) kB)
      (.decCall (nm "eq") .one (nm "memeq") [ldK "node" 32, kA, kB]
        (.ite (.cmp .notEqual (lv (nm "eq")) (cw 0)) (.assign .local (nm "res") (cw 0)) .skip))
      .skip)

/-- The post-allocation part of an extension step. -/
def dlExtRec : ProgHOL 64 :=
  .seq (.store (.op .add [lv (nm "fr"), cw 0]) (lv (nm "top")))
    (.seq (.store (.op .add [lv (nm "fr"), cw 8]) (lv (nm "node")))
      (.seq (.store (.op .add [lv (nm "fr"), cw 16]) (cw 2))
        (.seq (.store (.op .add [lv (nm "fr"), cw 24]) (lv (nm "seg")))
          (.seq (.store (.op .add [lv (nm "fr"), cw 32]) (lv (nm "sl")))
            (.seq (.assign .local (nm "top") (lv (nm "fr")))
              (.seq (.assign .local (nm "node") (ldK "node" 48))
                (.seq (.assign .local (nm "level") (.op .add [lv (nm "level"), lv (nm "sl")]))
                  (.assign .local (nm "go") (cw 1)))))))))

def dlExt : ProgHOL 64 :=
  .dec (nm "seg") .one (ldK "node" 32)
    (.dec (nm "sl") .one (ldK "node" 40)
      (.decCall (nm "pl") .one (nm "common_prefix_length") [lv (nm "seg"), lv (nm "sl"), kA, kB]
        (.ite (.cmp .lower (lv (nm "pl")) (lv (nm "sl")))
          (.assign .local (nm "res") (lv (nm "node")))
          (.decCall (nm "fr") .one (nm "scratch_alloc") [cw 40] dlExtRec))))

def dlBrRec : ProgHOL 64 :=
  .seq (.store (.op .add [lv (nm "fr2"), cw 0]) (lv (nm "top")))
    (.seq (.store (.op .add [lv (nm "fr2"), cw 8]) (lv (nm "node")))
      (.seq (.store (.op .add [lv (nm "fr2"), cw 16]) (cw 3))
        (.seq (.store (.op .add [lv (nm "fr2"), cw 32]) (lv (nm "idx")))
          (.seq (.assign .local (nm "top") (lv (nm "fr2")))
            (.seq (.assign .local (nm "node") (.load .one (childAddrI (nm "node") (nm "idx"))))
              (.seq (.assign .local (nm "level") (.op .add [lv (nm "level"), cw 1]))
                (.assign .local (nm "go") (cw 1))))))))

def dlBr : ProgHOL 64 :=
  .ite (.cmp .equal (lv (nm "level")) (lv (nm "klen")))
    (.ite (.cmp .equal (ldK "node" 168) (cw 0))
      (.assign .local (nm "res") (lv (nm "node")))
      (.seq (.store (.op .add [lv (nm "node"), cw 160]) (cw 0))
        (.seq (.store (.op .add [lv (nm "node"), cw 168]) (cw 0))
          (.call (some (some (.local, nm "res"), none)) (nm "_collapse_branch") [lv (nm "node")]))))
    (.dec (nm "idx") .one (.loadByte kA)
      (.decCall (nm "fr2") .one (nm "scratch_alloc") [cw 40] dlBrRec))

def dlLadder : ProgHOL 64 :=
  .ite (.cmp .equal (lv (nm "node")) (cw 0)) (.assign .local (nm "res") (cw 0))
    (.dec (nm "k") .one (ldK "node" 0)
      (.seq (.ite (.cmp .equal (lv (nm "k")) (cw 0))
          (.call (some (none, none)) (nm "mpt_fail") [cw 2]) .skip)
        (.seq (.call (some (none, none)) (nm "node_invalidate") [lv (nm "node")])
          (.ite (.cmp .equal (lv (nm "k")) (cw 1)) dlLeaf
            (.ite (.cmp .equal (lv (nm "k")) (cw 2)) dlExt dlBr)))))

def dlDescent : ProgHOL 64 := .seq (.assign .local (nm "go") (cw 0)) dlLadder

def dlUnwind : ProgHOL 64 :=
  .dec (nm "fnode") .one (ldK "top" 8)
    (.seq (.ite (.cmp .equal (ldK "top" 16) (cw 2))
        (.call (some (some (.local, nm "res"), none)) (nm "_delete_ext_finish")
          [lv (nm "fnode"), ldK "top" 24, ldK "top" 32, lv (nm "res")])
        (.seq (.store (.op .add [lv (nm "fnode"), cw 32, .panop .mul [ldK "top" 32, cw 8]])
            (lv (nm "res")))
          (.call (some (some (.local, nm "res"), none)) (nm "_collapse_branch") [lv (nm "fnode")])))
      (.assign .local (nm "top") (ldK "top" 0)))

def dlGoCond : ExpHOL 64 := .cmp .notEqual (lv (nm "go")) (cw 0)
def dlTopCond : ExpHOL 64 := .cmp .notEqual (lv (nm "top")) (cw 0)

def delBodyFull : ProgHOL 64 :=
  .dec (nm "top") .one (cw 0) (.dec (nm "res") .one (cw 0) (.dec (nm "go") .one (cw 1)
    (.seq (.while dlGoCond dlDescent)
      (.seq (.while dlTopCond dlUnwind) (.return (lv (nm "res")))))))

def params_dlb : List (MlS × ShapeHOL) :=
  [(nm "node", .one), (nm "key", .one), (nm "klen", .one), (nm "level", .one)]

theorem entry_dlb : fnEntry Guest.Software.guestFn__mpt_delete_node_body =
    (nm "_mpt_delete_node_body", params_dlb, delBodyFull, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_dlb :
    guestCode (nm "_mpt_delete_node_body") = some (params_dlb, delBodyFull, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 278) (by decide)) ⟨_, rfl⟩
    entry_dlb

end InitECandidate.Solver.MemSafe.Ins
