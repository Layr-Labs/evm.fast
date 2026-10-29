import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify275
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body291_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "cached")

def body291_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body291_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "cached") (Flapjack.Exp.const 0#64)) body291_0 body291_1

def body291_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "r"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "r"), Flapjack.Exp.var Flapjack.VarKind.local "h"]

def body291_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "h")

def body291_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "h")

def body291_6 : Prog (BitVec 64) :=
.seq body291_4 body291_5

def body291_7 : Prog (BitVec 64) :=
.seq body291_3 body291_6

def body291_8 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body291_7

def body291_9 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("node_rlp") ([Flapjack.Exp.var Flapjack.VarKind.local "node"]) body291_8

def body291_10 : Prog (BitVec 64) :=
.seq body291_2 body291_9

def body291_11 : Prog (BitVec 64) :=
.dec ("cached") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 24#64])) body291_10

def body291_12 : Prog (BitVec 64) :=
.seq body291_3 body291_4

def body291_13 : Prog (BitVec 64) :=
.seq body291_12 body291_5

def body291_14 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body291_13

def body291_15 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("node_rlp") ([Flapjack.Exp.var Flapjack.VarKind.local "node"]) body291_14

def body291_16 : Prog (BitVec 64) :=
.seq body291_2 body291_15

def body291_17 : Prog (BitVec 64) :=
.dec ("cached") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 24#64])) body291_16

def originalData291 : Decl (BitVec 64) :=
.function { name := "node_hash", inline := false, exported := false, params := [("node", Flapjack.Shape.one)], body := body291_11, returnShape := (Flapjack.Shape.one) }
def simplifiedData291 : Decl (BitVec 64) :=
.function { name := "node_hash", inline := false, exported := false, params := [("node", Flapjack.Shape.one)], body := body291_17, returnShape := (Flapjack.Shape.one) }
def original291 := Pancake.PanLang.declToHOL originalData291
def simplified291 := Pancake.PanLang.declToHOL simplifiedData291
end InitECandidate.Proofs.FrontendStages.Declarations
