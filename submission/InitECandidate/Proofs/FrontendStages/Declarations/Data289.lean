import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify273
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body289_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "cached")

def body289_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body289_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "cached") (Flapjack.Exp.const 0#64)) body289_0 body289_1

def body289_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 13#64]

def body289_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 8#64]))
  (Flapjack.Exp.const 0#64)) body289_3 body289_1

def body289_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "keccak256"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 8#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 16#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "h"]

def body289_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "h")

def body289_7 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "h")

def body289_8 : Prog (BitVec 64) :=
.seq body289_6 body289_7

def body289_9 : Prog (BitVec 64) :=
.seq body289_5 body289_8

def body289_10 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body289_9

def body289_11 : Prog (BitVec 64) :=
.seq body289_4 body289_10

def body289_12 : Prog (BitVec 64) :=
.seq body289_2 body289_11

def body289_13 : Prog (BitVec 64) :=
.dec ("cached") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 24#64])) body289_12

def body289_14 : Prog (BitVec 64) :=
.seq body289_2 body289_4

def body289_15 : Prog (BitVec 64) :=
.seq body289_5 body289_6

def body289_16 : Prog (BitVec 64) :=
.seq body289_15 body289_7

def body289_17 : Prog (BitVec 64) :=
.decCall ("h") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 32#64]) body289_16

def body289_18 : Prog (BitVec 64) :=
.seq body289_14 body289_17

def body289_19 : Prog (BitVec 64) :=
.dec ("cached") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 24#64])) body289_18

def originalData289 : Decl (BitVec 64) :=
.function { name := "node_hash_cached", inline := false, exported := false, params := [("node", Flapjack.Shape.one)], body := body289_13, returnShape := (Flapjack.Shape.one) }
def simplifiedData289 : Decl (BitVec 64) :=
.function { name := "node_hash_cached", inline := false, exported := false, params := [("node", Flapjack.Shape.one)], body := body289_19, returnShape := (Flapjack.Shape.one) }
def original289 := Pancake.PanLang.declToHOL originalData289
def simplified289 := Pancake.PanLang.declToHOL simplifiedData289
end InitECandidate.Proofs.FrontendStages.Declarations
