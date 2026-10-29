import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify519
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body535_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2#64]

def body535_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push" [Flapjack.Exp.var Flapjack.VarKind.local "v"]

def body535_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body535_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body535_4 : Prog (BitVec 64) :=
.seq body535_2 body535_3

def body535_5 : Prog (BitVec 64) :=
.seq body535_1 body535_4

def body535_6 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("address_to_u256") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64]),
        Flapjack.Exp.const 16#64])]) body535_5

def body535_7 : Prog (BitVec 64) :=
.seq body535_0 body535_6

def body535_8 : Prog (BitVec 64) :=
.seq body535_1 body535_2

def body535_9 : Prog (BitVec 64) :=
.seq body535_8 body535_3

def body535_10 : Prog (BitVec 64) :=
.decCall ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("address_to_u256") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64]),
        Flapjack.Exp.const 16#64])]) body535_9

def body535_11 : Prog (BitVec 64) :=
.seq body535_0 body535_10

def originalData535 : Decl (BitVec 64) :=
.function { name := "op_caller", inline := false, exported := false, params := [], body := body535_7, returnShape := (Flapjack.Shape.one) }
def simplifiedData535 : Decl (BitVec 64) :=
.function { name := "op_caller", inline := false, exported := false, params := [], body := body535_11, returnShape := (Flapjack.Shape.one) }
def original535 := Pancake.PanLang.declToHOL originalData535
def simplified535 := Pancake.PanLang.declToHOL simplifiedData535
end InitECandidate.Proofs.FrontendStages.Declarations
