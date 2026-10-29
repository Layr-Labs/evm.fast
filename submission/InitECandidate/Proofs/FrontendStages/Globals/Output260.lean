import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data260
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate237
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody260_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 0#64)

def globalBody260_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 0#64)

def globalBody260_2 : Prog (BitVec 64) :=
.seq globalBody260_0 globalBody260_1

def globalBody260_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.const 0#64)

def globalBody260_4 : Prog (BitVec 64) :=
.seq globalBody260_2 globalBody260_3

def globalBody260_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody260_6 : Prog (BitVec 64) :=
.seq globalBody260_4 globalBody260_5

def globalData260 : Decl (BitVec 64) :=
.function { name := "node_invalidate", inline := false, exported := false, params := [("nd", Flapjack.Shape.one)], body := globalBody260_6, returnShape := (Flapjack.Shape.one) }
def globalOutput260 := Pancake.PanLang.declToHOL globalData260
end InitECandidate.Proofs.FrontendStages.Declarations
