import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify350
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body366_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.var Flapjack.VarKind.local "addr", Flapjack.Exp.const 20#64,
    Flapjack.Exp.var Flapjack.VarKind.local "h"]

def body366_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body366_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "r")

def body366_3 : Prog (BitVec 64) :=
.seq body366_1 body366_2

def body366_4 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("trie_lookup") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ws", Flapjack.Exp.const 24#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "h"]) body366_3

def body366_5 : Prog (BitVec 64) :=
.seq body366_0 body366_4

def body366_6 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body366_5

def body366_7 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body366_6

def originalData366 : Decl (BitVec 64) :=
.function { name := "ws_account_leaf", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body366_7, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData366 : Decl (BitVec 64) :=
.function { name := "ws_account_leaf", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body366_7, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original366 := Pancake.PanLang.declToHOL originalData366
def simplified366 := Pancake.PanLang.declToHOL simplifiedData366
end InitECandidate.Proofs.FrontendStages.Declarations
