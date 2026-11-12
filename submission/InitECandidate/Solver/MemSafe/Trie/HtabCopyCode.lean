import InitECandidate.Solver.MemSafe.Trie.HtabCopyMem
import InitECandidate.Solver.MemSafe.Trie.HtabAddC
import InitECandidate.Solver.MemSafe.Trie.MptNew
import InitECandidate.Solver.MemSafe.Aw.Kit

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# `htab_copy`: the code
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

def htcLd (x : String) (k : Nat) : ExpHOL 64 := .load .one (.op .add [lv (nm x), cw k])

def htcMul (k : ExpHOL 64) : ExpHOL 64 :=
  .panop .mul [.op .add [lv (nm "nodecap"), cw 1], k]

def htcStep (blk : String) (sz : ExpHOL 64) (srcOff : Nat) (dstOff : Nat) (rest : ProgHOL 64) : ProgHOL 64 :=
  .decCall (nm blk) .one (nm "alloc") [sz]
    (.seq (.call (some (none, none)) (nm "memcpy") [lv (nm blk), htcLd "t" srcOff, sz])
      (.seq (.store (.op .add [lv (nm "n"), cw dstOff]) (lv (nm blk))) rest))

def htcBody : ProgHOL 64 :=
  .dec (nm "nodecap") .one (htcLd "t" 80)
    (.dec (nm "stride") .one (htcLd "t" 8)
      (.decCall (nm "n") .one (nm "alloc") [cw 88]
        (.seq (.call (some (none, none)) (nm "memcpy") [lv (nm "n"), lv (nm "t"), cw 88])
          (htcStep "keys" (htcMul (lv (nm "stride"))) 32 32
            (htcStep "nodes" (htcMul (cw 32)) 40 40
              (htcStep "order" (htcMul (cw 8)) 48 48 (.return (lv (nm "n")))))))))

def params_htc : List (MlS × ShapeHOL) := [(nm "t", .one)]

theorem entry_htc : fnEntry Guest.Software.guestFn_htab_copy =
    (nm "htab_copy", params_htc, htcBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

end InitECandidate.Solver.MemSafe.Trie
