import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify478
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body494_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 3#64]

def body494_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push"
  [Flapjack.Exp.rStruct
      [Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "x"),
            Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "y")],
        Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "x"),
            Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "y")],
        Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "x"),
            Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "y")],
        Flapjack.Exp.op Flapjack.BinOp.or
          [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "x"),
            Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "y")]]]

def body494_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body494_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body494_4 : Prog (BitVec 64) :=
.seq body494_2 body494_3

def body494_5 : Prog (BitVec 64) :=
.seq body494_1 body494_4

def body494_6 : Prog (BitVec 64) :=
.seq body494_0 body494_5

def body494_7 : Prog (BitVec 64) :=
.decCall ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body494_6

def body494_8 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body494_7

def body494_9 : Prog (BitVec 64) :=
.seq body494_0 body494_1

def body494_10 : Prog (BitVec 64) :=
.seq body494_9 body494_2

def body494_11 : Prog (BitVec 64) :=
.seq body494_10 body494_3

def body494_12 : Prog (BitVec 64) :=
.decCall ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body494_11

def body494_13 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body494_12

def originalData494 : Decl (BitVec 64) :=
.function { name := "op_or", inline := false, exported := false, params := [], body := body494_8, returnShape := (Flapjack.Shape.one) }
def simplifiedData494 : Decl (BitVec 64) :=
.function { name := "op_or", inline := false, exported := false, params := [], body := body494_13, returnShape := (Flapjack.Shape.one) }
def original494 := Pancake.PanLang.declToHOL originalData494
def simplified494 := Pancake.PanLang.declToHOL simplifiedData494
end InitECandidate.Proofs.FrontendStages.Declarations
