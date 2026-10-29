import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify525
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body541_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2#64]

def body541_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push_word"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 56#64])]

def body541_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body541_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body541_4 : Prog (BitVec 64) :=
.seq body541_2 body541_3

def body541_5 : Prog (BitVec 64) :=
.seq body541_1 body541_4

def body541_6 : Prog (BitVec 64) :=
.seq body541_0 body541_5

def body541_7 : Prog (BitVec 64) :=
.seq body541_0 body541_1

def body541_8 : Prog (BitVec 64) :=
.seq body541_7 body541_2

def body541_9 : Prog (BitVec 64) :=
.seq body541_8 body541_3

def originalData541 : Decl (BitVec 64) :=
.function { name := "op_codesize", inline := false, exported := false, params := [], body := body541_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData541 : Decl (BitVec 64) :=
.function { name := "op_codesize", inline := false, exported := false, params := [], body := body541_9, returnShape := (Flapjack.Shape.one) }
def original541 := Pancake.PanLang.declToHOL originalData541
def simplified541 := Pancake.PanLang.declToHOL simplifiedData541
end InitECandidate.Proofs.FrontendStages.Declarations
