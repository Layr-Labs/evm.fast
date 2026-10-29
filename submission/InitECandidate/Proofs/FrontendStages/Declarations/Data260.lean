import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify244
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body260_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 0#64)

def body260_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 0#64)

def body260_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 0#64)

def body260_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body260_4 : Prog (BitVec 64) :=
.seq body260_2 body260_3

def body260_5 : Prog (BitVec 64) :=
.seq body260_1 body260_4

def body260_6 : Prog (BitVec 64) :=
.seq body260_0 body260_5

def body260_7 : Prog (BitVec 64) :=
.seq body260_0 body260_1

def body260_8 : Prog (BitVec 64) :=
.seq body260_7 body260_2

def body260_9 : Prog (BitVec 64) :=
.seq body260_8 body260_3

def originalData260 : Decl (BitVec 64) :=
.function { name := "node_invalidate", inline := false, exported := false, params := [("nd", Flapjack.Shape.one)], body := body260_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData260 : Decl (BitVec 64) :=
.function { name := "node_invalidate", inline := false, exported := false, params := [("nd", Flapjack.Shape.one)], body := body260_9, returnShape := (Flapjack.Shape.one) }
def original260 := Pancake.PanLang.declToHOL originalData260
def simplified260 := Pancake.PanLang.declToHOL simplifiedData260
end InitECandidate.Proofs.FrontendStages.Declarations
