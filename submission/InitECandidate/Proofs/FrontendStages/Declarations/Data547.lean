import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify531
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body547_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 2#64]

def body547_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "stack_push_word"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 152#64])]

def body547_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pc_add" [Flapjack.Exp.const 1#64]

def body547_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body547_4 : Prog (BitVec 64) :=
.seq body547_2 body547_3

def body547_5 : Prog (BitVec 64) :=
.seq body547_1 body547_4

def body547_6 : Prog (BitVec 64) :=
.seq body547_0 body547_5

def body547_7 : Prog (BitVec 64) :=
.seq body547_0 body547_1

def body547_8 : Prog (BitVec 64) :=
.seq body547_7 body547_2

def body547_9 : Prog (BitVec 64) :=
.seq body547_8 body547_3

def originalData547 : Decl (BitVec 64) :=
.function { name := "op_returndatasize", inline := false, exported := false, params := [], body := body547_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData547 : Decl (BitVec 64) :=
.function { name := "op_returndatasize", inline := false, exported := false, params := [], body := body547_9, returnShape := (Flapjack.Shape.one) }
def original547 := Pancake.PanLang.declToHOL originalData547
def simplified547 := Pancake.PanLang.declToHOL simplifiedData547
end InitECandidate.Proofs.FrontendStages.Declarations
