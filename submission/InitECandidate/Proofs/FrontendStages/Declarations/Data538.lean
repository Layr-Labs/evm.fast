import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify522
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body538_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2#64]

def body538_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push_word"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64]),
          Flapjack.Exp.const 96#64])]

def body538_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body538_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body538_4 : Prog (BitVec 64) :=
.seq body538_2 body538_3

def body538_5 : Prog (BitVec 64) :=
.seq body538_1 body538_4

def body538_6 : Prog (BitVec 64) :=
.seq body538_0 body538_5

def body538_7 : Prog (BitVec 64) :=
.seq body538_0 body538_1

def body538_8 : Prog (BitVec 64) :=
.seq body538_7 body538_2

def body538_9 : Prog (BitVec 64) :=
.seq body538_8 body538_3

def originalData538 : Decl (BitVec 64) :=
.function { name := "op_calldatasize", inline := false, exported := false, params := [], body := body538_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData538 : Decl (BitVec 64) :=
.function { name := "op_calldatasize", inline := false, exported := false, params := [], body := body538_9, returnShape := (Flapjack.Shape.one) }
def original538 := Pancake.PanLang.declToHOL originalData538
def simplified538 := Pancake.PanLang.declToHOL simplifiedData538
end InitECandidate.Proofs.FrontendStages.Declarations
