import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data366
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate343
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody366_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.const 20#64,
    Flapjack.Exp.var Flapjack.VarKind.local "h"]

def globalBody366_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody366_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "r")

def globalBody366_3 : Prog (BitVec 64) :=
.seq globalBody366_1 globalBody366_2

def globalBody366_4 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("trie_lookup") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 168#64]),
        Flapjack.Exp.const 24#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "h"]) globalBody366_3

def globalBody366_5 : Prog (BitVec 64) :=
.seq globalBody366_0 globalBody366_4

def globalBody366_6 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) globalBody366_5

def globalBody366_7 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody366_6

def globalData366 : Decl (BitVec 64) :=
.function { name := "ws_account_leaf", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := globalBody366_7, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput366 := Pancake.PanLang.declToHOL globalData366
end InitECandidate.Proofs.FrontendStages.Declarations
