import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify479
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body495_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 3#64]

def body495_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push"
  [Flapjack.Exp.rStruct
      [Flapjack.Exp.op Flapjack.BinOp.xor
          [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "x"),
            Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "y")],
        Flapjack.Exp.op Flapjack.BinOp.xor
          [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "x"),
            Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "y")],
        Flapjack.Exp.op Flapjack.BinOp.xor
          [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "x"),
            Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "y")],
        Flapjack.Exp.op Flapjack.BinOp.xor
          [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "x"),
            Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "y")]]]

def body495_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body495_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body495_4 : Prog (BitVec 64) :=
.seq body495_2 body495_3

def body495_5 : Prog (BitVec 64) :=
.seq body495_1 body495_4

def body495_6 : Prog (BitVec 64) :=
.seq body495_0 body495_5

def body495_7 : Prog (BitVec 64) :=
.decCall ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body495_6

def body495_8 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body495_7

def body495_9 : Prog (BitVec 64) :=
.seq body495_0 body495_1

def body495_10 : Prog (BitVec 64) :=
.seq body495_9 body495_2

def body495_11 : Prog (BitVec 64) :=
.seq body495_10 body495_3

def body495_12 : Prog (BitVec 64) :=
.decCall ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body495_11

def body495_13 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body495_12

def originalData495 : Decl (BitVec 64) :=
.function { name := "op_xor", inline := false, exported := false, params := [], body := body495_8, returnShape := (Flapjack.Shape.one) }
def simplifiedData495 : Decl (BitVec 64) :=
.function { name := "op_xor", inline := false, exported := false, params := [], body := body495_13, returnShape := (Flapjack.Shape.one) }
def original495 := Pancake.PanLang.declToHOL originalData495
def simplified495 := Pancake.PanLang.declToHOL simplifiedData495
end InitECandidate.Proofs.FrontendStages.Declarations
