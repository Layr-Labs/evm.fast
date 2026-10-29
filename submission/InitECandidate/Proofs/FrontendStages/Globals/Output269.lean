import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data269
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate253
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody269_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "root_node")

def globalBody269_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "secured")

def globalBody269_2 : Prog (BitVec 64) :=
.seq globalBody269_0 globalBody269_1

def globalBody269_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "m")

def globalBody269_4 : Prog (BitVec 64) :=
.seq globalBody269_2 globalBody269_3

def globalBody269_5 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 16#64]) globalBody269_4

def globalData269 : Decl (BitVec 64) :=
.function { name := "mpt_new", inline := false, exported := false, params := [("root_node", Flapjack.Shape.one), ("secured", Flapjack.Shape.one)], body := globalBody269_5, returnShape := (Flapjack.Shape.one) }
def globalOutput269 := Pancake.PanLang.declToHOL globalData269
end InitECandidate.Proofs.FrontendStages.Declarations
