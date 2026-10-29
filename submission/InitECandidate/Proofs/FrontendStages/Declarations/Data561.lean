import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify545
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body561_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2#64]

def body561_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push" [Flapjack.Exp.var Flapjack.VarKind.local "v"]

def body561_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body561_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body561_4 : Prog (BitVec 64) :=
.seq body561_2 body561_3

def body561_5 : Prog (BitVec 64) :=
.seq body561_1 body561_4

def body561_6 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "benv", Flapjack.Exp.const 88#64]),
  Flapjack.Exp.const 32#64]) body561_5

def body561_7 : Prog (BitVec 64) :=
.decCall ("benv") (Flapjack.Shape.one) ("block_env") ([]) body561_6

def body561_8 : Prog (BitVec 64) :=
.seq body561_0 body561_7

def body561_9 : Prog (BitVec 64) :=
.seq body561_1 body561_2

def body561_10 : Prog (BitVec 64) :=
.seq body561_9 body561_3

def body561_11 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_from_be") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "benv", Flapjack.Exp.const 88#64]),
  Flapjack.Exp.const 32#64]) body561_10

def body561_12 : Prog (BitVec 64) :=
.decCall ("benv") (Flapjack.Shape.one) ("block_env") ([]) body561_11

def body561_13 : Prog (BitVec 64) :=
.seq body561_0 body561_12

def originalData561 : Decl (BitVec 64) :=
.function { name := "op_prevrandao", inline := false, exported := false, params := [], body := body561_8, returnShape := (Flapjack.Shape.one) }
def simplifiedData561 : Decl (BitVec 64) :=
.function { name := "op_prevrandao", inline := false, exported := false, params := [], body := body561_13, returnShape := (Flapjack.Shape.one) }
def original561 := Pancake.PanLang.declToHOL originalData561
def simplified561 := Pancake.PanLang.declToHOL simplifiedData561
end InitECandidate.Proofs.FrontendStages.Declarations
