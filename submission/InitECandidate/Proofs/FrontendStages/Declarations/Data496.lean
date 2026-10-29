import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify480
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body496_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 3#64]

def body496_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push"
  [Flapjack.Exp.rStruct
      [Flapjack.Exp.op Flapjack.BinOp.xor
          [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "x"),
            Flapjack.Exp.const 18446744073709551615#64],
        Flapjack.Exp.op Flapjack.BinOp.xor
          [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "x"),
            Flapjack.Exp.const 18446744073709551615#64],
        Flapjack.Exp.op Flapjack.BinOp.xor
          [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "x"),
            Flapjack.Exp.const 18446744073709551615#64],
        Flapjack.Exp.op Flapjack.BinOp.xor
          [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "x"),
            Flapjack.Exp.const 18446744073709551615#64]]]

def body496_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body496_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body496_4 : Prog (BitVec 64) :=
.seq body496_2 body496_3

def body496_5 : Prog (BitVec 64) :=
.seq body496_1 body496_4

def body496_6 : Prog (BitVec 64) :=
.seq body496_0 body496_5

def body496_7 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body496_6

def body496_8 : Prog (BitVec 64) :=
.seq body496_0 body496_1

def body496_9 : Prog (BitVec 64) :=
.seq body496_8 body496_2

def body496_10 : Prog (BitVec 64) :=
.seq body496_9 body496_3

def body496_11 : Prog (BitVec 64) :=
.decCall ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("stack_pop") ([]) body496_10

def originalData496 : Decl (BitVec 64) :=
.function { name := "op_not", inline := false, exported := false, params := [], body := body496_7, returnShape := (Flapjack.Shape.one) }
def simplifiedData496 : Decl (BitVec 64) :=
.function { name := "op_not", inline := false, exported := false, params := [], body := body496_11, returnShape := (Flapjack.Shape.one) }
def original496 := Pancake.PanLang.declToHOL originalData496
def simplified496 := Pancake.PanLang.declToHOL simplifiedData496
end InitECandidate.Proofs.FrontendStages.Declarations
